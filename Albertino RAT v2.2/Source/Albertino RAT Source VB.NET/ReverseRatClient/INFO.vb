Imports System.Windows.Forms
Imports System.IO
Imports System

Public Class INFO


    Private Sub INFO_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

        Dim sFileName As String = Application.StartupPath & "\Info.rtf"
        Dim myFileStream As System.IO.FileStream
        Try
            myFileStream = New System.IO.FileStream(sFileName, _
                FileMode.OpenOrCreate, FileAccess.Read, FileShare.ReadWrite)
            RichTextBox1.LoadFile(myFileStream, System.Windows.Forms.RichTextBoxStreamType.RichText)
            myFileStream.Close()
        Catch ex As Exception
            MessageBox.Show("Count not open the file.  Make sure '" & sFileName & _
                "' exists in the location shown.")

        End Try

    End Sub



    Private Sub RichTextBox1_LinkClicked(ByVal sender As Object, ByVal e As System.Windows.Forms.LinkClickedEventArgs) Handles RichTextBox1.LinkClicked
        Try
            System.Diagnostics.Process.Start(e.LinkText)
        Catch ex As Exception

        End Try

    End Sub
End Class

