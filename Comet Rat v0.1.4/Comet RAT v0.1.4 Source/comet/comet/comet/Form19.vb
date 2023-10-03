Imports System.IO

Public Class Form19

    Private Sub Form19_Load(sender As Object, e As EventArgs) Handles MyBase.Load

        On Error Resume Next
        TextBox1.Hide()

        TextBox1.Text = Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(0).Text


        Dim folderss = (Application.StartupPath & "/bookbinder/" & (TextBox1.Text) + "\Star.01")

        If File.Exists(folderss) Then

            PictureBox1.Hide()

        Else

            PictureBox1.Show()
        End If







        Dim folders = (Application.StartupPath & "/bookbinder/" & (TextBox1.Text) + "\R.txt")



        If File.Exists(folders) Then
            Dim XKL As String
            XKL = System.IO.File.ReadAllText(folders)
            RichTextBox1.Text = XKL

        Else
            RichTextBox1.Text = "Erorr"
        End If




    End Sub

    Private Sub RichTextBox1_TextChanged(sender As Object, e As EventArgs) Handles RichTextBox1.TextChanged
        On Error Resume Next
        Dim folders = (Application.StartupPath & "/bookbinder/" & (TextBox1.Text) + "\R.txt")

        My.Computer.FileSystem.WriteAllText(folders, RichTextBox1.Text, False)
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        RichTextBox1.Text = ""
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim x As New SaveFileDialog With {.Filter = "(*.rtf)|*.rtf"}
        If x.ShowDialog = Windows.Forms.DialogResult.OK Then
            RichTextBox1.SaveFile(x.FileName)
        End If
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        On Error Resume Next
        PictureBox1.Hide()
        Dim folders = (Application.StartupPath & "/bookbinder/" & (TextBox1.Text) + "\Star.01")
        My.Computer.FileSystem.WriteAllText(folders, "Star", False)
        PictureBox2.Show()
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        Dim folderss = (Application.StartupPath & "/bookbinder/" & (TextBox1.Text) + "\Star.01")

        If File.Exists(folderss) Then

            PictureBox1.Show()

            File.Delete(folderss)

        End If
    End Sub
End Class