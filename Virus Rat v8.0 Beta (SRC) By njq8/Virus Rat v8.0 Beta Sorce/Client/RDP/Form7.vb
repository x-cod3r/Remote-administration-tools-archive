Public Class Form7
    Public sock As Integer
    'Public p As String
    Private Sub Form7_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Form1.S.Send(sock, "getlog")
    End Sub

End Class