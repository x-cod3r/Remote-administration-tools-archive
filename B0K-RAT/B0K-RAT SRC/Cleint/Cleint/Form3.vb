Public Class Process
    Public sock As Integer
    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        ListView1.Items.Clear()
        Form1.s.Send(sock, "GetProcesses")

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.s.Send(sock, "KillProcess" & Form1.yy & allprocess)

    End Sub
End Class