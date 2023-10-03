using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLRat.Handlers
{
    public delegate void OnSettingsChange(string setting, object value);
    public class ClientSettings
    {
        private Dictionary<string, object> SettingsManager = new Dictionary<string, object>();
        private Dictionary<string, OnSettingsChange> SettingsWatch = new Dictionary<string, OnSettingsChange>();
        public T GetSetting<T>(string name, T defaultValue)
        {
            string nLower = name.ToLower();
            if (SettingsManager.ContainsKey(nLower))
                return (T)SettingsManager[nLower];
            else
                return defaultValue;
        }
        public void UpdateSetting(string name, object value)
        {
            string nLower = name.ToLower();
            if (SettingsManager.ContainsKey(nLower))
                SettingsManager[nLower] = value;
            else
                SettingsManager.Add(nLower, value);
            if (SettingsWatch.ContainsKey(nLower))
            {
                OnSettingsChange change = SettingsWatch[nLower];
                if (change != null)
                    change(nLower, value);
            }
        }

        public void WatchSetting(string name, OnSettingsChange onChange)
        {
            string nLower = name.ToLower();
            if (SettingsWatch.ContainsKey(nLower))
                SettingsWatch[nLower] = onChange;
            else
                SettingsWatch.Add(nLower, onChange);
        }
    }
}
