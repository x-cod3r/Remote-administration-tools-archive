using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLMiscServer
{
    public partial class formTextToSpeech : Form
    {
        public string TextToSay { get; set; }
        public int SaySpeed { get; set; }
        public formTextToSpeech()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            SaySpeed = tbSpeed.Value - 10;
            TextToSay = rtbText.Text;
            if (string.IsNullOrWhiteSpace(TextToSay))
                return;
            DialogResult = DialogResult.OK;
        }
    }
}
