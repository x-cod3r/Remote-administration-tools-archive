using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLMiscServer.Forms
{
    public partial class formComputerPower : Form
    {
        public string PowerMethod { get; set; }
        public int PowerDelay { get; set; }
        public formComputerPower()
        {
            InitializeComponent();
        }

        private void formComputerPower_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (rbShutdown.Checked) PowerMethod = "s";
            if (rbRestart.Checked) PowerMethod = "r";
            if (rbLogOff.Checked) PowerMethod = "l";
            PowerDelay = (int)numericUpDown1.Value;
            DialogResult = DialogResult.OK;
        }
    }
}
