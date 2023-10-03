using ServerPlugin.InterfaceHandle;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MLRat.Server;

namespace MLRat.Plugin
{
    public delegate void OnColumnUpdate(MLRatColumn sender, MLPlugin plugin, IClient client, string value);
    public class MLRatColumn : IMLRatColumn
    {
        public int Index { get; set; }
        public MLPlugin Parent { get; set; }
        private OnColumnUpdate UpdateCallback;
        public MLRatColumn(OnColumnUpdate _update)
        {
            UpdateCallback = _update;
        }
        public void Update(IClient client, string value)
        {
            UpdateCallback(this, Parent, client, value);
        }
    }
}
