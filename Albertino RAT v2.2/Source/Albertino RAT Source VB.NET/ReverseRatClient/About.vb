Imports System.Windows.Forms
Imports System.Diagnostics
Imports System

Public Class About


    Private Sub Register_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Title.Text = My.Application.Info.ProductName
        Version.Text = String.Format("Version {0}", My.Application.Info.Version.ToString)
        CR.Text = My.Application.Info.Copyright
        URL.Text = "WebSite:"
       

    End Sub


    Private Sub http_LinkClicked(ByVal sender As System.Object, ByVal e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles http.LinkClicked
        Process.Start(http.Text)
    End Sub


    Private Sub LinkLabel1_LinkClicked(ByVal sender As System.Object, ByVal e As System.Windows.Forms.LinkLabelLinkClickedEventArgs) Handles http2.LinkClicked
        Process.Start(http2.Text)
    End Sub
End Class
