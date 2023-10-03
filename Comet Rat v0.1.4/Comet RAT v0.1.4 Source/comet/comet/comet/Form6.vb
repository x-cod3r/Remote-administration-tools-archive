Public Class Form6

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click

    End Sub

    Private Sub PictureBox1_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles PictureBox1.MouseDoubleClick
        Dim s As New SaveFileDialog
        s.Filter = "Pic|*.png"
        If s.ShowDialog = Windows.Forms.DialogResult.OK Then
            PictureBox1.Image.Save(s.FileName)
        End If
    End Sub

    Private Sub Form6_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        PictureBox1.Controls.Add(Label1)
        PictureBox1.Controls.Add(Label2)
    End Sub

    Private Sub Label2_Click(sender As Object, e As EventArgs) Handles Label2.Click
        Dim s As New SaveFileDialog
        s.Filter = "Pic|*.png"
        If s.ShowDialog = Windows.Forms.DialogResult.OK Then
            PictureBox1.Image.Save(s.FileName)
        End If
    End Sub

    Private Sub Label2_MouseMove(sender As Object, e As MouseEventArgs) Handles Label2.MouseMove
        Label2.ForeColor = Color.DimGray

    End Sub

    Private Sub PictureBox1_MouseMove(sender As Object, e As MouseEventArgs) Handles PictureBox1.MouseMove
        Label2.ForeColor = Color.Crimson
    End Sub
End Class