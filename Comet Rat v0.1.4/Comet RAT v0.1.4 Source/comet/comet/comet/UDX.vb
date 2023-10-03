Public Class UDX

    Private Sub Install_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        Me.Hide()
    End Sub

    Private Sub Install_Load(sender As Object, e As EventArgs) Handles MyBase.Load

    End Sub

    Private Sub temp2_CheckedChanged(sender As Object, e As EventArgs) Handles temp2.CheckedChanged
        If temp2.Checked = True Then
            sys2.Checked = False
            Form3.css.Checked = False
        Else

        End If
    End Sub

    Private Sub sys2_CheckedChanged(sender As Object, e As EventArgs) Handles sys2.CheckedChanged
        If sys2.Checked = True Then
            Form3.css.Checked = False
            temp2.Checked = False
        Else

        End If
    End Sub
End Class