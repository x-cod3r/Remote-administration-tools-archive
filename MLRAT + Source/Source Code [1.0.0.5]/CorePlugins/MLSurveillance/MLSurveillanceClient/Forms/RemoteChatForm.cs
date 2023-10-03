using MLRat.Client;
using MLSurveillanceSharedCode.Network;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MLSurveillanceClient.Forms
{
    public partial class RemoteChatForm : Form
    {
        IClientHost networkHost;
        public RemoteChatForm(IClientHost initNet)
        {
            InitializeComponent();
            networkHost = initNet;
        }

        private void inputBox_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyCode == Keys.Enter && inputBox.Text != string.Empty)
            {
                networkHost.Send((byte)NetworkCommand.RemoteChat, (byte)RemoteChatCommand.Message, inputBox.Text);
                AddMessage("YOU: {0}", inputBox.Text);
                inputBox.Text = "";
            }
        }

        void AddMessage(string s, params object[] args)
        {
            chatLog.Text += string.Format(s, args) + Environment.NewLine;
        }

        private void inputBox_TextChanged(object sender, EventArgs e)
        {

        }

        public void SetnetworkHost(IClientHost network)
        {
            networkHost = network;
        }

        public void NewMessage(string message)
        {
            this.Invoke((MethodInvoker)delegate ()
            {
                AddMessage("Admin: {0}", message);
            });
        }
        public void Destroy()
        {
            Dispose();
        }
        private void RemoteChatForm_Load(object sender, EventArgs e)
        {

        }
    }
}
