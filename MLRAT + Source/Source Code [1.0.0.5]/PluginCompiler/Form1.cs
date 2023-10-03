using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PluginCompiler
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            try
            {
                FileStream _compiledPlugin;
                using (SaveFileDialog sfd = new SaveFileDialog())
                {
                    sfd.Filter = "MLRat Plugin File|*.MLP";
                    if (sfd.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                        return;
                    _compiledPlugin = new FileStream(sfd.FileName, FileMode.Create);
                }
                FileStream serverPlugin = new FileStream(serverPluginPath.Text, FileMode.Open);
                FileStream clientPlugin = new FileStream(clientPluginPath.Text, FileMode.Open);
                byte[] _serverLen = BitConverter.GetBytes(serverPlugin.Length);
                byte[] _clientLen = BitConverter.GetBytes(clientPlugin.Length);

                _compiledPlugin.Write(_serverLen, 0, 4);
                _compiledPlugin.Write(_clientLen, 0, 4);
                byte[] Buffer = new byte[1000];
                int bytesRead = 0;
                while ((bytesRead = serverPlugin.Read(Buffer, 0, Buffer.Length)) > 0)
                {
                    _compiledPlugin.Write(Buffer, 0, bytesRead);
                }
                while ((bytesRead = clientPlugin.Read(Buffer, 0, Buffer.Length)) > 0)
                {
                    _compiledPlugin.Write(Buffer, 0, bytesRead);
                }
                serverPlugin.Close();
                clientPlugin.Close();
                _compiledPlugin.Close();

                serverPlugin.Dispose();
                clientPlugin.Dispose();
                _compiledPlugin.Dispose();

                MessageBox.Show("Done");
            }
            catch(Exception ex)
            {
                MessageBox.Show(ex.ToString(), "Error");
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            
            using (OpenFileDialog ofd = new OpenFileDialog())
            {
                ofd.Filter = "Dll File|*.dll";
                if (ofd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    clientPluginPath.Text = ofd.FileName;   
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            using (OpenFileDialog ofd = new OpenFileDialog())
            {
                ofd.Filter = "Dll File|*.dll";
                if (ofd.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                {
                    serverPluginPath.Text = ofd.FileName;
                }
            }
        }
    }
}
