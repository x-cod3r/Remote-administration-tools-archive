Imports System.IO
Public Class Form2
    '####################################################################################
    '### Coded By Umbrella-Win7 - OsamaCoder#############################################
    '### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
    '####################################################################################


    Private Sub Form2_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Try
            Dim aa As String() = Split(File.ReadAllText(Application.StartupPath & "\Settings.ini"), "|")
            If aa(0) = "true" Then CheckBox3.Checked = True Else CheckBox3.Checked = False
            NumericUpDown1.Value = aa(1)
            TextBox1.Text = aa(2)
            '// If aa(3) = "true" Then CheckBox1.Checked = True Else CheckBox1.Checked = False
            '  If aa(3) = "true" Then Form1.SkinCrafter1.SkinFile = Application.StartupPath & "\skins\" & aa(4)
        Catch : End Try
    End Sub

    Private Sub Button5_Click(sender As System.Object, e As System.EventArgs) Handles Button5.Click
        Try
            If File.Exists(Application.StartupPath & "\Settings.ini") Then File.Delete(Application.StartupPath & "\Settings.ini")
            Dim a As String
            If CheckBox3.Checked = True Then a += "true|" Else a += "false|"
            a += NumericUpDown1.Value & "|"
            a += TextBox1.Text & "|"
            ' If CheckBox2.Checked = True Then a += "true|" Else a += "false|"
            '// If CheckBox1.Checked = True Then a += "true|" Else a += "false|"
            '// a += ListBox1.SelectedItem.ToString & "|"
            File.WriteAllText(Application.StartupPath & "\Settings.ini", a)
            Form1.pw = TextBox1.Text
        Catch : End Try
    End Sub

    Private Sub Button4_Click(sender As System.Object, e As System.EventArgs) Handles Button4.Click
        Button4.Enabled = False
        Button2.Enabled = True
        Try

            Form1.S = New SocketServer
            Form1.S.Start(NumericUpDown1.Value)

            'Button1.Enabled = False

        Catch : End Try
        Form1.ToolStripStatusLabel3.Text = "Listening On Port : " & NumericUpDown1.Value.ToString
    End Sub

    Private Sub CheckBox4_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles CheckBox4.CheckedChanged
        If CheckBox4.Checked = True Then
            TextBox1.UseSystemPasswordChar = False
        Else
            TextBox1.UseSystemPasswordChar = True
        End If
    End Sub

    Private Sub Button1_Click(sender As System.Object, e As System.EventArgs) Handles Button1.Click
        Me.Hide()
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Form1.ToolStripStatusLabel3.Text = "Listening On Port : ----"

        Button4.Enabled = True
        Button2.Enabled = False
        For Each x As ListViewItem In Form1.L1.Items
            Form1.S.Disconnect(x.ToolTipText)
        Next
        Form1.S.stops()
    End Sub
End Class