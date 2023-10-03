using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.CustomObjects
{
    public class RegistryNodeData
    {
        public bool LoadedNodes { get; set; }
        public bool LoadedValues { get; set; }
        public bool NodeDeniedAccess { get; set; }
        public bool VauesDeniedAccess { get; set; }
        public string Path { get; set; }
        public Dictionary<string, string> Keys { get; set; }
        public RegistryNodeData()
        {
            Path = string.Empty;
        }
    }
}
