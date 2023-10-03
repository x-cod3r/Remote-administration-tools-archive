Public Class Form3

    '####################################################################################
    '### Coded By Umbrella-Win7 - OsamaCoder#############################################
    '### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
    '####################################################################################

    Private Sub Form3_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Recv.Text = "Server Succeeded Connected..."
    End Sub

    Private Sub Sendbox_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles Sendbox.KeyPress
        If e.KeyChar = Chr(Keys.Enter) Then
            If Sendbox.Text = "" Then Exit Sub
            Recv.Text += Environment.NewLine & "You : " & Sendbox.Text
            Form1.C.Send("recv" & "|U|" & Sendbox.Text)
            Sendbox.Text = ""
        End If
    End Sub

    Private Sub Recv_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Recv.Resize
        Recv.ScrollToCaret()
    End Sub
End Class