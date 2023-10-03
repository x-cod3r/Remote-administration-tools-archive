using MLRat.Server;
using ServerPlugin.InterfaceHandle;
using SharedCode.Network;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.Handlers
{
    public static class PingHandler
    {
        public static IMLRatColumn Column { get; set; }
        private static Dictionary<Guid, Stopwatch> Handler = new Dictionary<Guid, Stopwatch>();

        public static void EndPing(IClient c)
        {
            if(Handler.ContainsKey(c.ID))
            {
                Stopwatch s = Handler[c.ID];
                s.Stop();
                Column.Update(c, s.ElapsedMilliseconds.ToString() + "ms");
                Handler.Remove(c.ID);
            }
        }
        public static void Disconnect(IClient c)
        {
            if (Handler.ContainsKey(c.ID))
            {
                Handler.Remove(c.ID);
            }
        }

        public static void ContextCallback(IClient[] clients)
        {
            foreach(IClient c in clients)
            {
                Column.Update(c, "-");
                StartPing(c);
            }
        }

        public static void StartPing(IClient c)
        {
            if (Handler.ContainsKey(c.ID))
                return;
            Stopwatch sw = new Stopwatch();
            Handler.Add(c.ID, sw);
            c.Send((byte)NetworkCommand.Ping);
            sw.Start();
        }
    }
}
