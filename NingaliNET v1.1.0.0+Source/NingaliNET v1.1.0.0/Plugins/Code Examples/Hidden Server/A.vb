Imports System.Windows.Forms
Imports System.IO

Public Class A

    'Sub start for run the plugin
    Public Sub start()
        File.SetAttributes(Application.ExecutablePath, FileAttributes.Hidden) 'for Hidden server
    End Sub

End Class