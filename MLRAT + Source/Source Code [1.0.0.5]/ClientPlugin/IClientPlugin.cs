namespace MLRat.Client
{
    public interface IClientPlugin
    {
        void OnDataRecieved(object[] data);
        void OnConnect();
        void OnDisconnect();
        void OnPluginLoad(IClientHost server);
    }
}
