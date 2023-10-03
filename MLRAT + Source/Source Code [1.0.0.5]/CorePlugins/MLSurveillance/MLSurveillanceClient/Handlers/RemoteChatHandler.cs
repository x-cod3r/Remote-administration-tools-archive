using MLRat.Client;
using MLSurveillanceClient.Forms;
using MLSurveillanceSharedCode.Network;
using System.Threading;
using System.Windows.Forms;

namespace MLSurveillanceClient.Handlers
{
    public static class RemoteChatHandler
    {
        private static IClientHost NetworkHost;
        private static RemoteChatForm chatForm = null;
        public static void SetNetworkHost(IClientHost network)
        {
            NetworkHost = network;
            if (chatForm != null)
            {
                chatForm.SetnetworkHost(network);
            }
        }

        public static void NewMessage(string message)
        {
            if(chatForm != null)
            {
                chatForm.NewMessage(message);
            }
        }

        public static void Handle(object[] data)
        {
            RemoteChatCommand command = (RemoteChatCommand)data[1];
            switch (command)
            {
                case RemoteChatCommand.Start:
                    StartChat();
                    break;
                case RemoteChatCommand.Stop:
                    Disconnect();
                    break;
                case RemoteChatCommand.Message:
                    NewMessage((string)data[2]);
                    break;
            }
        }

        public static void StartChat()
        {
            if (chatForm == null)
            {
                new Thread(() =>
                {
                    chatForm = new RemoteChatForm(NetworkHost);
                    chatForm.ShowDialog();
                }).Start();
            }
        }

        public static void Disconnect()
        {
            if (chatForm != null)
            {
                chatForm.Invoke((MethodInvoker)delegate ()
                {
                    chatForm.Close();
                    chatForm.Dispose();
                    chatForm = null;
                });
            }
        }
    }
}
