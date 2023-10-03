Public Class Form10
    Public sock As Integer
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Form1.S.Send(sock, "TextToSpeech" & Form1.Yy & TextBox1.Text)
    End Sub
End Class