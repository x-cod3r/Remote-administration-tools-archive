Public Class Form25
    Public xxx As Integer
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Form1.S.Send(xxx, "closeprocess" & "|U|" & TextBox1.Text)
    End Sub

    Private Sub closeprocess_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class