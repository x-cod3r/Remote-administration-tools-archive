Public Class backconnection
    Dim x, y As Integer

    Private Sub backconnection_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        x = Screen.PrimaryScreen.WorkingArea.Width - Me.Width
        y = Screen.PrimaryScreen.WorkingArea.Height
        Me.Location = New Point(x, y)
        Me.TopMost = True
        Timer1.Start()
        My.Computer.Audio.Play(My.Resources.Soun, AudioPlayMode.Background)
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        If Not y <= Screen.PrimaryScreen.WorkingArea.Height - Me.Height Then
            y -= 5
            Me.Location = New Point(x, y)
        Else
            Threading.Thread.Sleep(500)
            Me.Close()
        End If
    End Sub

    Private Sub backconnection_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PictureBox2.Click, PictureBox1.Click, MyBase.Click
        Me.Close()
    End Sub
End Class