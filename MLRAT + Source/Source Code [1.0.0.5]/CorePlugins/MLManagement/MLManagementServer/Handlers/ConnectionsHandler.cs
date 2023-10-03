using MLManagementServer.Forms;
using MLRat.Server;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.Handlers
{
    public static class ConnectionsHandler
    {
        static Dictionary<Guid, formConnections> FormHandler = new Dictionary<Guid, formConnections>();
        static IServerUIHandler UIHost;
        public static void SetUIHost(IServerUIHandler h)
        {
            UIHost = h;
        }
        public static void Handle(IClient client, object[] data)
        {
            ConnectionsCommand command = (ConnectionsCommand)data[1];
            if(command == ConnectionsCommand.Table)
            {
                if (FormHandler.ContainsKey(client.ID))
                {
                    string[] names = (string[])data[2];
                    string[] localAddr = (string[])data[3];
                    string[] remoteAddr = (string[])data[4];
                    byte[] states = (byte[])data[5];
                    for(int i = 0; i < names.Length; i++)
                    {
                        FormHandler[client.ID].AddConnection(names[i], localAddr[i], remoteAddr[i], ((ConnectionStates)states[i]).ToString());
                    }
                }
            }
        }

        public static void ContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                Start(c);
        }

        public static void Start(IClient c)
        {
            if (!FormHandler.ContainsKey(c.ID))
            {
                formConnections form = new formConnections(c, UIHost.GetImage("ethernet_port.png"));
                form.FormClosed += Form_FormClosed;
                FormHandler.Add(c.ID, form);
                form.Show();
            }
        }

        public static void Disconnect(IClient c)
        {
            if(FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].Close();
            }
        }

        private static void Form_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            formConnections form = (formConnections)sender;
            if(FormHandler.ContainsKey(form.Client.ID))
            {
                FormHandler.Remove(form.Client.ID);
            }
            form.Dispose();
        }

        enum ConnectionStates : byte
        {
            Closed = 1,
            Listening = 2,
            SYN_Sent = 3,
            Syn_Recieved = 4,
            Established = 5,
            Finish_Wait_1 = 6,
            Finish_Wait_2 = 7,
            Closed_Wait = 8,
            Closing = 9,
            Last_ACK = 10,
            Time_Wait = 11,
            Delete_TCB = 12
        }
    }
}
