using MLRat.Server;
using System;
using System.Collections.Generic;
using System.Text;

namespace ServerPlugin.InterfaceHandle
{
    public interface IMLRatColumn
    {
        void Update(IClient client, string value);
    }
}
