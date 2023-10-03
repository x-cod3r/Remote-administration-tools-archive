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
    public partial class formDownloadFile : Form
    {
        public string URL { get; set; }
        public string FileName { get; set; }
        public formDownloadFile()
        {
            InitializeComponent();
        }

        private void formDownloadFile_Load(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            URL = textBox1.Text;
            FileName = textBox2.Text;
            DialogResult = DialogResult.OK;
        }
    }
}
