Public Class Form1


    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim lol = IO.File.ReadAllBytes(TextBox1.Text)
            Array.Reverse(lol, 0, lol.Length)
            IO.File.WriteAllBytes(TextBox1.Text & "reversed", lol)
            MessageBox.Show("Created file at: " & TextBox1.Text & "reversed")
        Catch
            MessageBox.Show("Error")
        End Try



    End Sub
  

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim OpenFileDialog1 As New OpenFileDialog
        OpenFileDialog1.Title = "File"

        '    OpenFileDialog1.



        OpenFileDialog1.ShowDialog()

        TextBox1.Text = OpenFileDialog1.FileName

    End Sub

    Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub
End Class
