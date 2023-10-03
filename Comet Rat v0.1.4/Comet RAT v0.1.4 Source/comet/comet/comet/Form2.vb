Imports System.IO
Public Class Form2

  




    Private Sub Form2_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        AvTextbox1.Text = My.Settings.port
     




    End Sub



    Private Sub ClsButtonBlue1_Click(sender As Object, e As EventArgs) Handles ClsButtonBlue1.Click
        NumericUpDown1.Value = AvTextbox1.Text




        ClsButtonBlue1.Enabled = True
        ClsButtonOrange1.Enabled = True
        Try

            Form1.S = New KX
            Form1.S.Start(NumericUpDown1.Value)



        Catch : End Try
        Form1.ToolStripStatusLabel3.Text = "The Case of The Port |- Connected To The Following Port : " & NumericUpDown1.Value.ToString
        Form1.ToolStripStatusLabel3.ForeColor = System.Drawing.SystemColors.HotTrack

        Me.Hide()
        My.Settings.port = AvTextbox1.Text

        My.Settings.Save()
    End Sub

    Private Sub ClsButtonOrange1_Click(sender As Object, e As EventArgs) Handles ClsButtonOrange1.Click
        On Error Resume Next
        Form1.ToolStripStatusLabel3.Text = "Listening On Port : ----"

        ClsButtonBlue1.Enabled = True
        ClsButtonOrange1.Enabled = False
        For Each x As ListViewItem In Form1.L1.Items
            Form1.S.Disconnect(x.ToolTipText)
        Next
        Form1.S.stops()

        End
    End Sub


End Class