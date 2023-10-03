using MLRat.Client;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace MLRatClient.Networking
{
    public delegate void OnSendCallback(MLConnection sender, Guid PluginId, object[] data);
    public class MLConnection : IClientHost
    {
        private OnSendCallback _sendcallback;
        private Guid _pluginID;
        private Assembly ExecutingAssembly = null;
        public MLConnection(Guid pid, OnSendCallback callback)
        {
            _sendcallback = callback;
            _pluginID = pid;
            ExecutingAssembly = Assembly.GetExecutingAssembly();
        }

        public void Send(params object[] data)
        {
            if (_sendcallback != null)
                _sendcallback(this, _pluginID, data);
        }

        public string GetExecutingLocation()
        {
            try
            {
                return ExecutingAssembly.Location;
            }
            catch
            {
                return string.Empty;
            }
        }
    }
}
