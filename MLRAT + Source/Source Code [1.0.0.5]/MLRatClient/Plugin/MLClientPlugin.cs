using MLRat.Client;
using MLRat.Cryptography;
using System;
using System.Reflection;
namespace MLRatClient.Plugin
{
    class MLClientPlugin
    {
        private byte[] ClientPluginBytes;
        public Guid ServerPluginID { get; private set; }
        public Guid ClientPluginID { get; private set; }
        public string Checksum { get; private set; }
        public IClientPlugin ClientPlugin { get; private set; }
        public string Path { get; set; }
        public MLClientPlugin(byte[] _cpb)
        {
            ClientPluginBytes = _cpb;
            Checksum = Hash.Md5(_cpb);
        }

        public bool Load()
        {
            try
            {
                Assembly _clientPlugin = Assembly.Load(ClientPluginBytes);
                foreach (Type t in _clientPlugin.GetTypes())
                {
                    if (typeof (IClientPlugin).IsAssignableFrom(t))
                    {
                        ClientPlugin = (IClientPlugin)Activator.CreateInstance(t);
                        ClientPluginID = t.GUID;
                        break;
                    }
                }
                if (ClientPluginID == null)
                    throw new Exception("Failed to load client plugin");

                return true;
            }
            catch(Exception ex)
            {
                Console.WriteLine("Fail load reason: {0}", ex);
                return false;
            }
        }
    }
}
