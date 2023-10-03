Public Class RemoteShell
    Public sock As Integer

    Private Sub RemoteShell_KeyDown(ByVal sender As System.Object, ByVal e As System.Windows.Forms.KeyEventArgs) Handles TextBox2.KeyDown, RichTextBox1.KeyDown, MyBase.KeyDown
        If e.KeyCode = Keys.Enter Then
            Form1.S.Send(sock, "rs" & "|U|" & ENB(TextBox2.Text))
            TextBox2.Clear()
        End If
    End Sub


    Private Sub RemoteShell_FormClosing(ByVal sender As System.Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles MyBase.FormClosing
        Form1.S.Send(sock, "rs" & "|U|" & ENB("exit"))
        TextBox2.Clear()
        Form1.S.Send(sock, "rsc" & "|U|")
    End Sub

    Private Sub RemoteShell_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub RichTextBox1_TextChanged(sender As Object, e As EventArgs) Handles RichTextBox1.TextChanged

    End Sub

    Private Sub BackgroundWorker1_DoWork(sender As Object, e As System.ComponentModel.DoWorkEventArgs) Handles BackgroundWorker1.DoWork

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged

    End Sub
End Class