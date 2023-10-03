Public Class Form33
    Public xxx As Integer

    Dim RichTextBox2 As New RichTextBox




    Public yy As String = "|U|"




    Private Sub Form33_Load(sender As Object, e As EventArgs) Handles MyBase.Load
     
    End Sub

    Private Sub CheckBox1_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked = True Then

            CheckBox2.Checked = False
        End If

    End Sub

    Private Sub CheckBox2_CheckedChanged(sender As Object, e As EventArgs) Handles CheckBox2.CheckedChanged
        If CheckBox2.Checked = True Then

            CheckBox1.Checked = False
        End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim xxx# = Form5.ListView1.SelectedItems.Count

        If xxx = 0 Then


            If CheckBox2.Checked = True Then
                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(xxx, "showfolderfile" & yy & TextBox2.Text & TextBox4.Text)
                Next

            End If
            If CheckBox1.Checked = True Then
                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(xxx, "hidefolderfile" & yy & TextBox2.Text & TextBox4.Text)
                Next

            End If

            Me.Close()
        Else
            MsgBox("Please select the item", MsgBoxStyle.Exclamation)

        End If
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Me.Close()
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click

    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        'TextBox4.Text = "sssss.exe"
        On Error Resume Next

        Dim aa As String = TextBox4.Text
        Dim aa1 As String = TextBox4.Text
        RichTextBox2.Text = aa.LastIndexOf(".")


        Dim xx1 As String = TextBox4.Text
        RichTextBox2.Text = xx1.Substring(RichTextBox2.Text)

        Timer1.Enabled = False
        TextBox1.Text = RichTextBox2.Text
        If TextBox1.Text = ".vbs" Then
            PictureBox2.ImageLocation = "IOS\sys\wscript_1.ico"
            TextBox7.Text = "Microsoft ® Windows Based Script Host"
        ElseIf TextBox1.Text = ".vbe" Then
            PictureBox2.ImageLocation = "IOS\sys\wscript_1.ico"
            TextBox7.Text = "Microsoft ® Windows Based Script Host"
        ElseIf TextBox1.Text = ".js" Then
            PictureBox2.ImageLocation = "IOS\sys\wscript_1.ico"
            TextBox7.Text = "Microsoft ® Windows Based Script Host"

        ElseIf TextBox1.Text = ".rar" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_2.png"
            TextBox7.Text = "WinRAR archiver"
        ElseIf TextBox1.Text = ".zip" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_2.png"
            TextBox7.Text = "WinRAR archiver"
        ElseIf TextBox1.Text = ".png" Then
            PictureBox2.ImageLocation = "IOS\sys\imge_3.png"
            TextBox7.Text = "Pictures Windows Viewer"
        ElseIf TextBox1.Text = ".ico" Then
            PictureBox2.ImageLocation = "IOS\sys\imge_3.png"
            TextBox7.Text = "Pictures Windows Viewer"
        ElseIf TextBox1.Text = ".bmp" Then
            PictureBox2.ImageLocation = "IOS\sys\imge_3.png"
            TextBox7.Text = "Pictures Windows Viewer"
        ElseIf TextBox1.Text = ".jpg" Then
            PictureBox2.ImageLocation = "IOS\sys\imge_3.png"
            TextBox7.Text = "Pictures Windows Viewer"
        ElseIf TextBox1.Text = ".gif" Then
            PictureBox2.ImageLocation = "IOS\sys\imge_3.png"
            TextBox7.Text = "Pictures Windows Viewer"
        ElseIf TextBox1.Text = ".txt" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_4.png"
            TextBox7.Text = "Notepad"
        ElseIf TextBox1.Text = ".rtf" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_4.png"
            TextBox7.Text = "Notepad"
        ElseIf TextBox1.Text = ".ini" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_4.png"
            TextBox7.Text = "Notepad"
        ElseIf TextBox1.Text = ".log" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_4.png"
            TextBox7.Text = "Notepad"
        ElseIf TextBox1.Text = ".log" Then
            PictureBox2.ImageLocation = "IOS\sys\Icon_4.png"
            TextBox7.Text = "Notepad"
        ElseIf TextBox1.Text = ".pif" Then
            PictureBox2.ImageLocation = "IOS\sys\OD.png"
            TextBox7.Text = " MS-DOS‬‬ ‎(.pif)‎"
        ElseIf TextBox1.Text = ".lnk" Then
            PictureBox2.ImageLocation = "IOS\sys\OD.png"
            TextBox7.Text = "(.lnk)‎"
        ElseIf TextBox1.Text = "-1" Then
            PictureBox2.ImageLocation = "IOS\sys\Fx.png"
            TextBox7.Text = "(.folder)‎"
            TextBox1.Text = "Files folder"
        End If

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click

    End Sub
End Class