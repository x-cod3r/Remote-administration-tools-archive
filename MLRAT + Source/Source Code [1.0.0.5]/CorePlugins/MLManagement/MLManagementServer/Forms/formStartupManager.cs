using MLRat.Server;
using SharedCode.Network;
using System;
using System.Windows.Forms;

namespace MLManagementServer.Forms
{
    public partial class formStartupManager : Form
    {
        public IClient Client { get; set; }
        public formStartupManager(IClient c)
        {
            Client = c;
            InitializeComponent();
            this.Text = string.Format("Startup Manager ({0})", c.GetVariable<string>("Username", ""));
        }

        public void AddStartupItem(string name, string path, byte type)
        {
            ListViewItem i = new ListViewItem(name);
            i.SubItems.Add(path);
            i.Group = lvStartup.Groups[((StartupType)type).ToString()];
            AddItem(i);
        }
        void AddItem(ListViewItem i)
        {
            Invoke((MethodInvoker)delegate ()
            {
                lvStartup.Items.Add(i);
            });
            
        }
        private void formStartupManager_Load(object sender, System.EventArgs e)
        {
            Client.Send((byte)NetworkCommand.StartupManager, (byte)StartupManagerCommand.GetStartupItems);
        }
    }
}
