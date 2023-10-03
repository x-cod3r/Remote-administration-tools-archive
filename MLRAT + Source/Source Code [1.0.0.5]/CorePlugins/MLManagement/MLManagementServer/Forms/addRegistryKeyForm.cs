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
    public partial class addRegistryKeyForm : Form
    {
        public string NewKey { get; set; }
        public string NewValue { get; set; }
        public addRegistryKeyForm()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            NewKey = textBox1.Text;
            NewValue = textBox2.Text;
            DialogResult = DialogResult.OK;
        }

        private void addRegistryKeyForm_Load(object sender, EventArgs e)
        {

        }
    }
}
