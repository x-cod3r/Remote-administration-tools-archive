using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.CustomObjects
{
    public class FileBucketInfo
    {
        public string RemotePath { get; set; }
        public string RemoteDestination { get; set; }
        public string RemoteDestinationDirectory { get; set; }
        public string RemoteDirectory { get; set; }
        public string RenameTo { get; set; }
        public object DisplayInfo { get; set; }
        public Guid ID { get; set; }
        public bool DoingOperation { get; set; }
    }
}
