Imports System.ComponentModel
Imports System.Runtime.InteropServices

Public Class Form35
    Public xxx As Integer
    Public WithEvents bw As BackgroundWorker = New BackgroundWorker
    Dim state As Integer
    Dim time As Integer
    'Dim dx As New TextBox
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Sub processmanage_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
        MenuStrip1.Renderer = New clsVistaToolStripRenderer
        Panel1.Hide()
        Me.Opacity = 0.8R

        SetWindowTheme(PListView.Handle, "explorer", Nothing)
        TextBox1.Hide()
        TextBox2.Hide()



        HuraAlertBox1.Show()
        Timer3.Enabled = True

        Timer2.Enabled = True



        If state = 1 Then
            RefreshToolStripMenuItem.ToolTipText = "Auto Update Every " & time / 1000 & " Sec."
            Timer1.Interval = time
            Timer1.Start()
        Else
            RefreshToolStripMenuItem.ToolTipText = ""
            Timer1.Stop()
        End If
        Form1.S.Send(xxx, "GetProcesses")




    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        PListView.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()

        End If


        On Error Resume Next


    End Sub

    Private Sub KillProcessToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles KillProcessToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In PListView.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(xxx, "KillProcess" & Form1.Yy & allprocess)
        PListView.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()
        End If
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshToolStripMenuItem.Click
        Me.Opacity = 0.8R
        HuraAlertBox1.Show()

        Timer3.Enabled = True



        PListView.Items.Clear()
        Threading.Thread.Sleep(100)
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()
        End If
        Timer2.Enabled = True
    End Sub
    Private Sub BackgroundWorker1_DoWork(ByVal sender As System.Object, ByVal e As System.ComponentModel.DoWorkEventArgs) Handles bw.DoWork
        Dim worker As BackgroundWorker = CType(sender, BackgroundWorker)
        Threading.Thread.Sleep(100)
    End Sub

    Private Sub BackgroundWorker1_RunWorkerCompleted(ByVal sender As Object, ByVal e As System.ComponentModel.RunWorkerCompletedEventArgs) Handles bw.RunWorkerCompleted
        Form1.S.Send(xxx, "GetProcesses")
    End Sub

    Private Sub SuspendToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SuspendToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In PListView.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(xxx, "SProcess" & Form1.Yy & allprocess)


    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs)






    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        On Error Resume Next
        'Dim KeyIndex As Integer
        'KeyIndex = 1


        For Each Process As ListViewItem In PListView.Items


            If Process.Text.Contains("csrss") Then

                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("svchost") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("System") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("winlogon") Then
                Process.ImageIndex = 1
                Process.BackColor = Color.LightSteelBlue
                'Dim aa = PListView.View = (KeyIndex = 1)
            ElseIf Process.Text.Contains("lsm") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("wininit") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("IntelTechnologyAccessService") Then
                Process.BackColor = Color.LightSteelBlue

            ElseIf Process.Text.Contains("SearchIndexer") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("services") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("explorer") Then
                Process.ImageIndex = 2
                'Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("chrome") Then
                Process.ImageIndex = 3
            ElseIf Process.Text.Contains("notepad") Then
                Process.ImageIndex = 4
            ElseIf Process.Text.Contains("cmd") Then
                Process.ImageIndex = 5
            ElseIf Process.Text.Contains("conhost") Then
                Process.ImageIndex = 5
            ElseIf Process.Text.Contains("firefox") Then
                Process.ImageIndex = 6
            ElseIf Process.Text.Contains("regedit") Then
                Process.ImageIndex = 7
            ElseIf Process.Text.Contains("WinRAR") Then
                Process.ImageIndex = 8
            ElseIf Process.Text.Contains("iexplore") Then
                Process.ImageIndex = 9
            ElseIf Process.Text.Contains("Skype") Then
                Process.ImageIndex = 10
            ElseIf Process.Text.Contains("smss") Then
                Process.BackColor = Color.LightSteelBlue
            ElseIf Process.Text.Contains("ProcessHacker") Then
                Process.ImageIndex = 11
            ElseIf Process.Text.Contains("taskmgr") Then
                Process.ImageIndex = 11
            ElseIf Process.Text.Contains("Process") Then
                Process.ImageIndex = 11
            ElseIf Process.Text.Contains("Spark") Then
                Process.ImageIndex = 12
            ElseIf Process.Text.Contains("procexp") Then
                Process.ImageIndex = 13
            ElseIf Process.Text.Contains("procexp64") Then
                Process.ImageIndex = 13
            ElseIf Process.Text.Contains("HWorks32") Then
                Process.ImageIndex = 14
            ElseIf Process.Text.Contains("Maxthon") Then
                Process.ImageIndex = 15
            ElseIf Process.Text.Contains("wordpad") Then
                Process.ImageIndex = 16

            End If

        Next

















      





    End Sub





    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        TextBox1.Text = "N [ x ]".Replace("x", PListView.Items.Count)
        HuraAlertBox1.Show()
        TextBox2.Text += 1
        If TextBox2.Text = 5 Then

            Me.Opacity = 9.9R
            HuraAlertBox1.Hide()

            TextBox2.Text = 1
            Timer3.Enabled = False
        End If
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
        TextBox2.Text = 1
        Timer3.Enabled = True
    End Sub




    Private Sub RestToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RestToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In PListView.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(xxx, "RestProcess" & Form1.Yy & allprocess)
        PListView.Items.Clear()
        If Not bw.IsBusy = True Then
            bw.RunWorkerAsync()
        End If
    End Sub


    Private Sub PListView_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
    Sub yyt()




        Dim f As New Form9


        f.Show()


        'f.Label1.Text = Label1.Text




        'Form9.Show()
        f.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(0).Text

        f.TextBox1.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(0).Text
        f.TextBox2.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(1).Text
        f.TextBox3.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(2).Text
        f.TextBox4.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(3).Text
        f.TextBox5.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(4).Text
        f.TextBox6.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(5).Text
        f.TextBox7.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(6).Text
        f.TextBox8.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(7).Text
        f.TextBox9.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(8).Text
        f.TextBox10.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(9).Text


        If f.TextBox10.Text = "" Then
            f.TextBox10.Text = "nothing"
        End If



        f.TextBox11.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(10).Text
        f.TextBox12.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(11).Text
        f.TextBox13.Text = PListView.Items.Item(PListView.FocusedItem.Index).SubItems.Item(12).Text
        f.TopMost = True
        f.TopMost = False

    End Sub
    Private Sub PListView_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles PListView.MouseDoubleClick


        yyt()



    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs) Handles ToolStripStatusLabel1.Click

    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick
        Dim C As String
        C = PListView.Items.Count.ToString
        ToolStripStatusLabel1.Text = "Process(" & C & ")"
    End Sub

    Private Sub PListView_SelectedIndexChanged_1(sender As Object, e As EventArgs) Handles PListView.SelectedIndexChanged

    End Sub

   
    Private Sub ToolStripMenuItem2_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem2.Click
        PListView.Columns.Item(0).ListView.Sorting = SortOrder.None
    End Sub

    Private Sub ToolStripMenuItem3_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem3.Click
        PListView.Columns.Item(0).ListView.Sorting = SortOrder.Descending
    End Sub

    Private Sub ToolStripMenuItem4_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem4.Click
        PListView.Columns.Item(0).ListView.Sorting = SortOrder.Ascending
    End Sub




    Private Sub SdaToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SdaToolStripMenuItem.Click
        Dim allprocess As String = ""
        For Each item As ListViewItem In PListView.SelectedItems
            allprocess += (item.Text & "ProcessSplit")
        Next
        Form1.S.Send(xxx, "SProcessr" & Form1.Yy & allprocess)
    End Sub

    Private Sub PropertiesToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PropertiesToolStripMenuItem.Click
        yyt()
    End Sub
End Class