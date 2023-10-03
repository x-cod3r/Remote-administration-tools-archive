namespace MLSurveillanceSharedCode.Network
{
    public enum NetworkCommand : byte
    {
        RemoteChat,
        RemoteDesktop
    }

    public enum RemoteChatCommand : byte
    {
        Start,
        Stop,
        Message
    }

    public enum RemoteDesktopCommand : byte
    {
        SetQuality,
        RequestFrame,
        Frame,
        noChangeFrame,
        GetMonitors,
        MonitorResponce
    }
}
