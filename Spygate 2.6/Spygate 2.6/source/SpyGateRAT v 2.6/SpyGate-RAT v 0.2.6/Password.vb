Public Class Password
    Public sock As Integer
    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        Dim C As String
        C = ListView1.Items.Count.ToString
        ToolStripStatusLabel1.Text = "Password(" & C & ")"
    End Sub

    Private Sub Password_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Timer1.Start()
    End Sub

    Private Sub SaveInTextToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SaveInTextToolStripMenuItem.Click
        Dim o As New SaveFileDialog
        o.Filter = "Txtpass|*.Txt"
        If o.ShowDialog = Windows.Forms.DialogResult.OK Then
            For Each ll As ListViewItem In ListView1.Items
                My.Computer.FileSystem.WriteAllText(o.FileName, "URL : " & ll.SubItems(0).Text & " User : " & ll.SubItems(1).Text & "Pass  : " & ll.SubItems(2).Text, True)
            Next
            MsgBox("OK")
        End If
    End Sub

    Private Sub CopyUserToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyUserToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(1).Text.ToString)
        Catch ex As Exception

        End Try
    End Sub

    Private Sub CopyPasswordToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyPasswordToolStripMenuItem.Click
        Try
            My.Computer.Clipboard.SetText(ListView1.FocusedItem.SubItems(2).Text.ToString)

        Catch ex As Exception

        End Try
    End Sub

    Private Sub OpenURLToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenURLToolStripMenuItem.Click
        Try
            Process.Start(ListView1.FocusedItem.SubItems(0).Text.ToString)
        Catch ex As Exception

        End Try

    End Sub
End Class