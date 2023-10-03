Imports System.Drawing

Public Class imagepreview


    Public img As Image

    

    Private Sub imagepreview_Shown(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Shown
        Me.Width = img.Width
        Me.Height = img.Height
        PictureBox1.Image = img
    End Sub
End Class