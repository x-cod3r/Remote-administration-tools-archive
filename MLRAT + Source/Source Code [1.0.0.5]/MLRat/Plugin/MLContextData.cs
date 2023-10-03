using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MLRat.Server;

namespace MLRat.Plugin
{
    public class MLContextData
    {
        public MLRatContextEntry ContextData { get; set; }
        public MLPlugin Plugin { get; set; }
    }
}
