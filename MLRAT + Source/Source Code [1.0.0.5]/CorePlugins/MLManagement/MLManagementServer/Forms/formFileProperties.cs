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
    public partial class formFileProperties : Form
    {
        public Guid ID { get; set; }
        public formFileProperties(Guid _id)
        {
            InitializeComponent();
            ID = _id;
        }

        private void formFileProperties_Load(object sender, EventArgs e)
        {

        }

        public void HandleData(object[] data)
        {
            Guid pid = (Guid)data[2];
            if (pid != ID)
                return;
            Invoke((MethodInvoker)delegate ()
            {
                tbName.Text = (string)data[3];
                tbPath.Text = (string)data[4];
                tbCreation.Text = (string)data[5];
                tbModified.Text = (string)data[6];
                lbSize.Text= (string)data[7] + " b";
                lbReadOnly.Text= ((bool)data[8]).ToString();
                lbSystem.Text = ((bool)data[9]).ToString();
            });
        }
    }
}
