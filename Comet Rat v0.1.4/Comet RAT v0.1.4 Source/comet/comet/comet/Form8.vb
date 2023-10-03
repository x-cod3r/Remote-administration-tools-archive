Public Class Form8
    Public xxx As Integer

    Private Sub TextBox1_KeyPress(sender As Object, e As KeyPressEventArgs) Handles TextBox1.KeyPress
        If e.KeyChar = Chr(Keys.Enter) Then
            RichTextBox1.Text += TextBox1.Text & vbNewLine

            Form1.S.Send(xxx, "A" & "|U|" & TextBox1.Text)
            TextBox1.Clear()
            TextBox1.Text = ""
        End If
    End Sub

    Private Sub TextBox1_MouseDoubleClick(sender As Object, e As MouseEventArgs) Handles TextBox1.MouseDoubleClick

    End Sub
    Private Sub TextBox1_TextChanged(sender As Object, e As EventArgs) Handles TextBox1.TextChanged

    End Sub

    Private Sub Form8_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        TextBox2.Text = 1
      
    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Process.Start("osk")
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        TextBox2.Text += 1
        If TextBox2.Text = 5 Then RichTextBox1.Text += "K"
        'Keyboards Succeeded Connected ...

        If TextBox2.Text = 7 Then RichTextBox1.Text += "e"
        If TextBox2.Text = 9 Then RichTextBox1.Text += "y"
        If TextBox2.Text = 11 Then RichTextBox1.Text += "b"
        If TextBox2.Text = 13 Then RichTextBox1.Text += "o"
        If TextBox2.Text = 15 Then RichTextBox1.Text += "a"
        If TextBox2.Text = 17 Then RichTextBox1.Text += "r"
        If TextBox2.Text = 19 Then RichTextBox1.Text += "d"
        'If TextBox2.Text = 21 Then RichTextBox1.Text += "s"
        If TextBox2.Text = 23 Then RichTextBox1.Text += " "
        If TextBox2.Text = 25 Then RichTextBox1.Text += "S"
        If TextBox2.Text = 27 Then RichTextBox1.Text += "u"
        If TextBox2.Text = 29 Then RichTextBox1.Text += "c"
        If TextBox2.Text = 31 Then RichTextBox1.Text += "c"
        If TextBox2.Text = 33 Then RichTextBox1.Text += "e"
        If TextBox2.Text = 35 Then RichTextBox1.Text += "e"
        If TextBox2.Text = 37 Then RichTextBox1.Text += "d"
        If TextBox2.Text = 39 Then RichTextBox1.Text += "e"
        If TextBox2.Text = 41 Then RichTextBox1.Text += "d"
        If TextBox2.Text = 43 Then RichTextBox1.Text += " "
        If TextBox2.Text = 45 Then RichTextBox1.Text += "C"
        If TextBox2.Text = 47 Then RichTextBox1.Text += "o"
        If TextBox2.Text = 49 Then RichTextBox1.Text += "n"
        If TextBox2.Text = 51 Then RichTextBox1.Text += "n"
        If TextBox2.Text = 53 Then RichTextBox1.Text += "e"
        If TextBox2.Text = 55 Then RichTextBox1.Text += "c"
        If TextBox2.Text = 57 Then RichTextBox1.Text += "t"
        If TextBox2.Text = 59 Then RichTextBox1.Text += "e"
        If TextBox2.Text = 61 Then RichTextBox1.Text += "d"
        If TextBox2.Text = 63 Then RichTextBox1.Text += " "
        If TextBox2.Text = 65 Then RichTextBox1.Text += "."
        If TextBox2.Text = 67 Then RichTextBox1.Text += "."
        If TextBox2.Text = 69 Then RichTextBox1.Text += "."
        If TextBox2.Text = 71 Then RichTextBox1.Text += vbNewLine
        If TextBox2.Text = 74 Then Timer1.Enabled = False

    End Sub
End Class