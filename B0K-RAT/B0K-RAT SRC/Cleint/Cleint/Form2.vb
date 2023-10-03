Imports System.CodeDom.Compiler
Public Class Form2
    Dim stub, text1, text2 As String
    Const spl As String = "abccba"

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim s As New SaveFileDialog

        s.ShowDialog()
        If s.FileName > "" Then
            text1 = TextBox1.Text
            text2 = TextBox2.Text
            FileOpen(1, Application.StartupPath & "\stub.exe", OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
            stub = Space(LOF(1))
            FileGet(1, stub)
            FileClose(1)
            FileOpen(1, s.FileName & ".exe", OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
            FilePut(1, stub & spl & text1 & spl & text2)
            FileClose(1)
            
            MsgBox("Done")
            Me.Close()
        End If
    End Sub

    Private Sub CheckBox1_CheckedChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub
End Class