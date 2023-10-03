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
    public partial class editRegistryKeyForm : Form
    {
        public string NewValue { get; set; }
        public editRegistryKeyForm(string key)
        {
            InitializeComponent();
            this.Text += " - " + key;
        }

        private void editRegistryKeyForm_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            NewValue = textBox1.Text;
            DialogResult = DialogResult.OK;
        }
    }
}
