Public Class Form7
    Public xxx As Integer

    Private Sub ToolStripStatusLabel1_Click(sender As Object, e As EventArgs)

    End Sub

    Private Sub Form7_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub ToolStripStatusLabel1_Click_1(sender As Object, e As EventArgs)

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Form1.S.Send(xxx, "getcli")
    End Sub
End Class