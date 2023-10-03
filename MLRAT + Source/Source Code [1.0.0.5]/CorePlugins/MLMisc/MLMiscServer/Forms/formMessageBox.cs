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
    public partial class formMessageBox : Form
    {
        public formMessageBox()
        {
            InitializeComponent();
            foreach(string value in typeof(MessageBoxButtons).GetEnumNames())
            {
                cbButtons.Items.Add(value);
            }
            if(cbButtons.Items.Count > 0)
            {
                cbButtons.SelectedIndex = 0;
            }
        }

        private void formMessageBox_Load(object sender, EventArgs e)
        {
            
        }
    }
}
