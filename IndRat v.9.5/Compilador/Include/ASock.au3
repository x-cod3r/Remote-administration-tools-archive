Global Const $FD_READ = 1
Global Const $FD_WRITE = 2
Global Const $FD_OOB = 4
Global Const $FD_ACCEPT = 8
Global Const $FD_CONNECT = 16
Global Const $FD_CLOSE = 32
Local $hWs2_32 = -1

Func _ASocket($iAddressFamily = 2, $iType = 1, $iProtocol = 6)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	Local $hSocket = DllCall($hWs2_32, "uint", "socket", "int", $iAddressFamily, "int", $iType, "int", $iProtocol)
	If @error Then
		SetError(1, @error)
		Return -1
	EndIf
	If $hSocket[ 0 ] = -1 Then
		SetError(2, _WSAGetLastError())
		Return -1
	EndIf
	Return $hSocket[ 0 ]
EndFunc   ;==>_ASocket

Func _ASockShutdown($hSocket)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	Local $iRet = DllCall($hWs2_32, "int", "shutdown", "uint", $hSocket, "int", 2)
	If @error Then
		SetError(1, @error)
		Return False
	EndIf
	If $iRet[ 0 ] <> 0 Then
		SetError(2, _WSAGetLastError())
		Return False
	EndIf
	Return True
EndFunc   ;==>_ASockShutdown

Func _ASockClose($hSocket)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	Local $iRet = DllCall($hWs2_32, "int", "closesocket", "uint", $hSocket)
	If @error Then
		SetError(1, @error)
		Return False
	EndIf
	If $iRet[ 0 ] <> 0 Then
		SetError(2, _WSAGetLastError())
		Return False
	EndIf
	Return True
EndFunc   ;==>_ASockClose

Func _ASockSelect($hSocket, $hWnd, $uiMsg, $iEvent)
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	Local $iRet = DllCall( _
			$hWs2_32, _
			"int", "WSAAsyncSelect", _
			"uint", $hSocket, _
			"hwnd", $hWnd, _
			"uint", $uiMsg, _
			"int", $iEvent _
			)
	If @error Then
		SetError(1, @error)
		Return False
	EndIf
	If $iRet[ 0 ] <> 0 Then
		SetError(2, _WSAGetLastError())
		Return False
	EndIf
	Return True
EndFunc   ;==>_ASockSelect

; Note: you can see that $iMaxPending is set to 5 by default.
; IT DOES NOT MEAN THAT DEFAULT = 5 PENDING CONNECTIONS
; 5 == SOMAXCONN, so don't worry be happy
Func _ASockListen($hSocket, $sIP, $uiPort, $iMaxPending = 5); 5 == SOMAXCONN => No need to change it.
	Local $iRet
	Local $stAddress

	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )

	$stAddress = __SockAddr($sIP, $uiPort)
	If @error Then
		SetError(@error, @extended)
		Return False
	EndIf
	
	$iRet = DllCall($hWs2_32, "int", "bind", "uint", $hSocket, "ptr", DllStructGetPtr($stAddress), "int", DllStructGetSize($stAddress))
	If @error Then
		SetError(3, @error)
		Return False
	EndIf
	If $iRet[ 0 ] <> 0 Then
		$stAddress = 0; Deallocate
		SetError(4, _WSAGetLastError())
		Return False
	EndIf
	
	$iRet = DllCall($hWs2_32, "int", "listen", "uint", $hSocket, "int", $iMaxPending)
	If @error Then
		SetError(5, @error)
		Return False
	EndIf
	If $iRet[ 0 ] <> 0 Then
		$stAddress = 0; Deallocate
		SetError(6, _WSAGetLastError())
		Return False
	EndIf
	
	Return True
EndFunc   ;==>_ASockListen

Func _ASockConnect($hSocket, $sIP, $uiPort)
	Local $iRet
	Local $stAddress
	
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	
	$stAddress = __SockAddr($sIP, $uiPort)
	If @error Then
		SetError(@error, @extended)
		Return False
	EndIf
	
	$iRet = DllCall($hWs2_32, "int", "connect", "uint", $hSocket, "ptr", DllStructGetPtr($stAddress), "int", DllStructGetSize($stAddress))
	If @error Then
		SetError(3, @error)
		Return False
	EndIf
	
	$iRet = _WSAGetLastError()
	If $iRet = 10035 Then; WSAEWOULDBLOCK
		Return True; Asynchronous connect attempt has been started.
	EndIf
	SetExtended(1); Connected immediately
	Return True
EndFunc   ;==>_ASockConnect

; A wrapper function to ease all the pain in creating and filling the sockaddr struct
Func __SockAddr($sIP, $iPort, $iAddressFamily = 2)
	Local $iRet
	Local $stAddress
	
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	
	$stAddress = DllStructCreate("short; ushort; uint; char[8]")
	If @error Then
		SetError(1, @error)
		Return False
	EndIf
	
	DllStructSetData($stAddress, 1, $iAddressFamily)
	$iRet = DllCall($hWs2_32, "ushort", "htons", "ushort", $iPort)
	DllStructSetData($stAddress, 2, $iRet[ 0 ])
	$iRet = DllCall($hWs2_32, "uint", "inet_addr", "str", $sIP)
	If $iRet[ 0 ] = 0xffffffff Then; INADDR_NONE
		$stAddress = 0; Deallocate
		SetError(2, _WSAGetLastError())
		Return False
	EndIf
	DllStructSetData($stAddress, 3, $iRet[ 0 ])
	
	Return $stAddress
EndFunc   ;==>__SockAddr

Func _WSAGetLastError()
	If $hWs2_32 = -1 Then $hWs2_32 = DllOpen( "Ws2_32.dll" )
	Local $iRet = DllCall($hWs2_32, "int", "WSAGetLastError")
	If @error Then
		ConsoleWrite("+> _WSAGetLastError(): WSAGetLastError() failed. Script line number: " & @ScriptLineNumber & @CRLF)
		SetExtended(1)
		Return 0
	EndIf
	Return $iRet[ 0 ]
EndFunc   ;==>_WSAGetLastError


; Got these here:
; http://www.autoitscript.com/forum/index.php?showtopic=5620&hl=MAKELONG
Func _MakeLong($LoWord, $HiWord)
	Return BitOR($HiWord * 0x10000, BitAND($LoWord, 0xFFFF)); Thanks Larry
EndFunc   ;==>_MakeLong

Func _HiWord($Long)
	Return BitShift($Long, 16); Thanks Valik
EndFunc   ;==>_HiWord

Func _LoWord($Long)
	Return BitAND($Long, 0xFFFF); Thanks Valik
EndFunc   ;==>_LoWord



