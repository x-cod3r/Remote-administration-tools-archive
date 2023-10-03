using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLRat.Plugin
{
    public partial class pluginDisplay : UserControl
    {
        private MLPlugin Plugin;
        public pluginDisplay(MLPlugin _plugin)
        {
            InitializeComponent();
            Plugin = _plugin;
        }

        private void pluginDisplay_Load(object sender, EventArgs e)
        {
            pluginName.Text = Plugin.PluginInfomation.PluginName;
            descLabel.Text = Plugin.PluginInfomation.Description;
            devName.Text = Plugin.PluginInfomation.Developer;
            serverID.Text= Plugin.ServerPluginID.ToString("n");
            clientID.Text = Plugin.ClientPluginID.ToString("n");
        }
    }
}
