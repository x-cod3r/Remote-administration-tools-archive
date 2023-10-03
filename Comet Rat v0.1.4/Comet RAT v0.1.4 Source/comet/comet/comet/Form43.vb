Public Class Form43

    Private Sub Form43_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Me.TransparencyKey = BackColor
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Label3.Text += 1
        If Label3.Text = 100 Then
            Me.Hide()
            Form11.Show()
            Timer1.Enabled = False
            Me.Hide()
        End If

    End Sub
End Class