using ServerPlugin.InterfaceHandle;
using System.Drawing;

namespace MLRat.Server
{
    public interface IServerUIHandler
    {
        void AddContext(params MLRatContextEntry[] entry);
        IMLRatColumn AddColumn(string name, string defaultVaule);
        void Log(string value, Color c);
        Image GetImage(string name);
    }
}
