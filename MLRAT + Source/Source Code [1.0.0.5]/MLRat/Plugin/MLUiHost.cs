using System;
using System.Drawing;
using MLRat.Server;
using ServerPlugin.InterfaceHandle;

namespace MLRat.Plugin
{
    public delegate void OnContextMenuAdd(MLPlugin plugin, MLRatContextEntry[] contextEntrys);
    public delegate IMLRatColumn OnColumnItemAdd(MLPlugin plugin, string name, string defaultValue);
    public delegate Image GetImageDelegate(string name);
    public delegate void OnLogDelegate(MLPlugin plugin, string text, Color c);
    public class MLUiHost : IServerUIHandler
    {
        private OnContextMenuAdd OnContextAdd;
        private OnColumnItemAdd OnColumnAdd;
        private MLPlugin _plugin;
        private GetImageDelegate _getImage;
        private OnLogDelegate logCallback;

        public MLUiHost(MLPlugin plugin, OnContextMenuAdd callback, OnColumnItemAdd _columnAdd, GetImageDelegate _getImagecallback, OnLogDelegate _logCallback)
        {
            _getImage = _getImagecallback;
            _plugin = plugin;
            OnContextAdd = callback;
            OnColumnAdd = _columnAdd;
            logCallback = _logCallback;
        }

        public IMLRatColumn AddColumn(string name, string defaultValue)
        {
            return OnColumnAdd(_plugin, name, defaultValue);
        }

        public void AddContext(params MLRatContextEntry[] entry)
        {
            if (OnContextAdd != null)
                OnContextAdd(_plugin, entry);
        }

        public Image GetImage(string name)
        {
            if (_getImage != null)
                return _getImage(name);
            return null;
        }

        public void Log(string value, Color c)
        {
            if (logCallback != null)
                logCallback(_plugin, value, c);
        }
    }
}
