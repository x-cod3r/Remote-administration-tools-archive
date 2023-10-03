Public Class Chatt
    Public sock As Integer

    Private Sub Chatt_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        Form1.s.Send(sock, "ccl")
    End Sub

    Private Sub Chatt_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Form1.s.Send(sock, "ochat")
        Recv.Text = "Chat Succeeded Connected ..."
    End Sub

    Private Sub Sendbox_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles Sendbox.KeyPress
        If e.KeyChar = Chr(Keys.Enter) Then
            If Sendbox.Text = "" Then Exit Sub
            Recv.Text += Environment.NewLine & "You : " & Sendbox.Text
            Form1.S.Send(sock, "recv" & "|U|" & Sendbox.Text)
            Sendbox.Text = ""
        End If
    End Sub

    Private Sub Chatt_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        Recv.ScrollToCaret()
    End Sub
End Class