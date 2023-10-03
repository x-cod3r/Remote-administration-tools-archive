Imports System.ComponentModel

Public Class processmanage
    Public sock As Integer
    Public WithEvents bw As BackgroundWorker = New BackgroundWorker
    Dim state As Integer
    Dim time As Integer

    Private Sub processmanage_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If state = 1 Then
            RefreshToolStripMenuItem.ToolTipText = "Auto Update Every " & time / 1000 & " Sec."
            Timer1.Interval = time
            Timer1.Start()
        Else
            RefreshToolStripMenuItem.ToolTipText = ""
            Timer1.Stop()
        End If
        Form1.s.Send(sock, "GetProcesses")
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        PListView.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()
        End If
    End Sub

    Private Sub KillProcessToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles KillProcessToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In PListView.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.s.Send(sock, "KillProcess" & Form1.yY & allprocess)
        PListView.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()
        End If
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshToolStripMenuItem.Click
        PListView.Items.Clear()
        Threading.Thread.Sleep(100)
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()
        End If
    End Sub
    Private Sub BackgroundWorker1_DoWork(ByVal sender As System.Object, ByVal e As System.ComponentModel.DoWorkEventArgs) Handles bw.DoWork
        Dim worker As BackgroundWorker = CType(sender, BackgroundWorker)
        Threading.Thread.Sleep(100)
    End Sub

    Private Sub BackgroundWorker1_RunWorkerCompleted(ByVal sender As Object, ByVal e As System.ComponentModel.RunWorkerCompletedEventArgs) Handles bw.RunWorkerCompleted
        Form1.s.Send(sock, "GetProcesses")
    End Sub

    Private Sub SuspendToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SuspendToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In PListView.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(sock, "SProcess" & Form1.Yy & allprocess)
    End Sub
End Class