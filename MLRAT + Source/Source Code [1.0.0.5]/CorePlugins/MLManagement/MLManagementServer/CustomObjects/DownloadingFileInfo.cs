using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MLManagementServer.CustomObjects
{
    public class DownloadingFileInfo
    {
        public FileStream Stream { get; set; }
        public string DownloadLocation { get; set; }
    }
}
