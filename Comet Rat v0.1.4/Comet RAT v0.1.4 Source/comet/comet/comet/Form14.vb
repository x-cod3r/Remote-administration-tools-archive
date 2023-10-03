Imports System.IO

Public Class Form14

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        On Error Resume Next
        Text = Label2.Text + " & Download"


        Dim folders = (Application.StartupPath & "/bookbinder/" & (TextBox2.Text) & "/Download\" + Label2.Text)





        If File.Exists(folders) Then
            PictureBox1.Hide()
            Label2.Hide()
            Me.Close()
        End If
    End Sub

    Private Sub Form14_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next
        PictureBox1.Controls.Add(Label2)
        'Form5.TextBox3.Text = TextBox1.Text
        Timer1.Enabled = True

    End Sub
End Class