using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLManagementServer.Forms
{
    public partial class formInput : Form
    {
        public string InputText { get; set; }
        public formInput(string title)
        {
            InitializeComponent();
            this.Text = title;
        }
        public formInput(string title, string def)
        {
            InitializeComponent();
            this.Text = title;
            textBox1.Text = def;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            InputText = textBox1.Text;
            /*
            if(string.IsNullOrWhiteSpace(InputText) || InputText.IndexOfAny(Path.GetInvalidFileNameChars()) >= 0)
            {
                MessageBox.Show("Invalid");
                return;
            }*/
            DialogResult = DialogResult.OK;
        }

        private void formRenameFileBucket_Load(object sender, EventArgs e)
        {

        }
    }
}
