Public Class Report
    Dim x, y As Integer
    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        x = Screen.PrimaryScreen.WorkingArea.Width - Me.Width
        y = Screen.PrimaryScreen.WorkingArea.Height
        Me.Location = New Point(x, y)
        Me.TopMost = True
        Timer1.Start()

    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        If Not y <= Screen.PrimaryScreen.WorkingArea.Height - Me.Height Then
            y -= 5
            Me.Location = New Point(x, y)
        Else
            Threading.Thread.Sleep(1000)
            Me.Close()
        End If

    End Sub
End Class