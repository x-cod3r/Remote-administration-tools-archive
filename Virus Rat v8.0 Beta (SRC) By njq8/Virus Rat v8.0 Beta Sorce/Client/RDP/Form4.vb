Public Class Form4
    Public sock As Integer
    Private Sub Form4_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub CopyToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CopyToolStripMenuItem.Click
        Dim o As New SaveFileDialog
        o.Filter = "Txtpass|*.Txt"
        If o.ShowDialog = Windows.Forms.DialogResult.OK Then
            For Each ll As ListViewItem In ListView1.Items
                My.Computer.FileSystem.WriteAllText(o.FileName, "URL : " & ll.SubItems(0).Text & " User : " & ll.SubItems(1).Text & "Pass  : " & ll.SubItems(2).Text, True)
            Next
            MsgBox("OK")
        End If
    End Sub

    Private Sub CopyPasswordToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CopyPasswordToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(1).Text.ToString)
        Catch ex As Exception

        End Try

    End Sub

    Private Sub CopyPasswordToolStripMenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CopyPasswordToolStripMenuItem1.Click
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(2).Text.ToString)

        Catch ex As Exception

        End Try

    End Sub

    Private Sub OpenUrlToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles OpenUrlToolStripMenuItem.Click
        Try
            Process.Start(ListView1.FocusedItem.SubItems(0).Text.ToString)
        Catch ex As Exception

        End Try

    End Sub
End Class