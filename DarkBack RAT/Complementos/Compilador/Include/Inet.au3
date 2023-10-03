#include-once

#include "WinAPI.au3"
#include "Date.au3"
#include "InetConstants.au3"

; #INDEX# =======================================================================================================================
; Title .........: Edit Constants
; AutoIt Version : 3.0
; Language ......: English
; Description ...: Functions that assist with Internet.
; Author(s) .....: Larry, Ezzetabi, Jarvis Stubblefield, Wes Wolfe-Wolvereness, Wouter, Walkabout, Florian Fida, guinness
; Dll ...........: wininet.dll, ws2_32.dll
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _GetIP
; _INetExplorerCapable
; _INetGetSource
; _INetMail
; _INetSmtpMail
; _TCPIpToName
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; __SmtpTrace
; __SmtpSend
; __TCPIpToName_szStringRead
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: guinness
; ===============================================================================================================================
Func _GetIP()
	Local $aGetIPURL[4] = [3, "http://checkip.dyndns.org/", "http://api.exip.org/?call=ip", "http://www.myexternalip.com/raw"], $aReturn = 0, $sReturn = ""
	For $i = 1 To $aGetIPURL[0]
		$sReturn = InetRead($aGetIPURL[$i])
		If @error Or $sReturn == "" Then ContinueLoop
		$aReturn = StringRegExp(BinaryToString($sReturn), "[\d\.]{7,15}", 3)
		If @error = 0 Then
			$sReturn = $aReturn[0]
			ExitLoop
		EndIf
		$sReturn = ""
	Next
	If $sReturn == "" Then Return SetError(1, 0, -1)
	Return $sReturn
EndFunc   ;==>_GetIP

; #FUNCTION# ====================================================================================================================
; Author ........: Wes Wolfe-Wolvereness <Weswolf at aol dot com>
; ===============================================================================================================================
Func _INetExplorerCapable($s_IEString)
	If StringLen($s_IEString) <= 0 Then Return SetError(1, 0, '')
	Local $s_IEReturn
	Local $n_IEChar
	For $i_IECount = 1 To StringLen($s_IEString)
		$n_IEChar = '0x' & Hex(Asc(StringMid($s_IEString, $i_IECount, 1)), 2)
		If $n_IEChar < 0x21 Or $n_IEChar = 0x25 Or $n_IEChar = 0x2f Or $n_IEChar > 0x7f Then
			$s_IEReturn = $s_IEReturn & '%' & StringRight($n_IEChar, 2)
		Else
			$s_IEReturn = $s_IEReturn & Chr($n_IEChar)
		EndIf
	Next
	Return $s_IEReturn
EndFunc   ;==>_INetExplorerCapable

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren.
; ===============================================================================================================================
Func _INetGetSource($sURL, $fString = True)
	Local $sString = InetRead($sURL, $INET_FORCERELOAD)
	Local $iError = @error, $iExtended = @extended
	If $fString = Default Or $fString Then $sString = BinaryToString($sString)
	Return SetError($iError, $iExtended, $sString)
EndFunc   ;==>_INetGetSource

; #FUNCTION# ====================================================================================================================
; Author ........: Wes Wolfe-Wolvereness <Weswolf at aol dot com>, modified by Emiel Wieldraaijer
; ===============================================================================================================================
Func _INetMail($s_MailTo, $s_MailSubject, $s_MailBody)
	Local $prev = Opt("ExpandEnvStrings", 1)
	Local $var, $dflt = RegRead('HKCU\Software\Clients\Mail', "")
	If $dflt = "Windows Live Mail" Then
		$var = RegRead('HKCR\WLMail.Url.Mailto\Shell\open\command', "")
	Else
		$var = RegRead('HKCR\mailto\shell\open\command', "")
	EndIf
	Local $ret = Run(StringReplace($var, '%1', _INetExplorerCapable('mailto:' & $s_MailTo & '?subject=' & $s_MailSubject & '&body=' & $s_MailBody)))
	Local $nError = @error, $nExtended = @extended
	Opt("ExpandEnvStrings", $prev)
	Return SetError($nError, $nExtended, $ret)
EndFunc   ;==>_INetMail

; #FUNCTION# ====================================================================================================================
; Author ........: Asimzameer, Walkabout
; Modified.......: Jpm
; ===============================================================================================================================
Func _INetSmtpMail($s_SmtpServer, $s_FromName, $s_FromAddress, $s_ToAddress, $s_Subject = "", $as_Body = "", $s_helo = "", $s_first = " ", $b_trace = 0)
	If $s_SmtpServer = "" Or $s_FromAddress = "" Or $s_ToAddress = "" Or $s_FromName = "" Or StringLen($s_FromName) > 256 Then Return SetError(1, 0, 0)
	If $s_helo = "" Then $s_helo = @ComputerName

	If TCPStartup() = 0 Then Return SetError(2, 0, 0)

	Local $s_IPAddress, $i_Count
	StringRegExp($s_SmtpServer, "(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)")
	If @extended Then
		$s_IPAddress = $s_SmtpServer
	Else
		$s_IPAddress = TCPNameToIP($s_SmtpServer)
	EndIf
	If $s_IPAddress = "" Then
		TCPShutdown()
		Return SetError(3, 0, 0)
	EndIf
	Local $v_Socket = TCPConnect($s_IPAddress, 25)
	If $v_Socket = -1 Then
		TCPShutdown()
		Return SetError(4, 0, 0)
	EndIf

	Local $s_Send[6], $s_ReplyCode[6] ; Return code from SMTP server indicating success
	$s_Send[0] = "HELO " & $s_helo & @CRLF
	If StringLeft($s_helo, 5) = "EHLO " Then $s_Send[0] = $s_helo & @CRLF
	$s_ReplyCode[0] = "250"

	$s_Send[1] = "MAIL FROM: <" & $s_FromAddress & ">" & @CRLF
	$s_ReplyCode[1] = "250"
	$s_Send[2] = "RCPT TO: <" & $s_ToAddress & ">" & @CRLF
	$s_ReplyCode[2] = "250"
	$s_Send[3] = "DATA" & @CRLF
	$s_ReplyCode[3] = "354"

	Local $aResult = _Date_Time_GetTimeZoneInformation()
	Local $bias = -$aResult[1] / 60
	Local $biasH = Int($bias)
	Local $biasM = 0
	If $biasH <> $bias Then $biasM = Abs($bias - $biasH) * 60
	$bias = StringFormat(" (%+.2d%.2d)", $biasH, $biasM)

	$s_Send[4] = "From:" & $s_FromName & "<" & $s_FromAddress & ">" & @CRLF & _
			"To:" & "<" & $s_ToAddress & ">" & @CRLF & _
			"Subject:" & $s_Subject & @CRLF & _
			"Mime-Version: 1.0" & @CRLF & _
			"Date: " & _DateDayOfWeek(@WDAY, 1) & ", " & @MDAY & " " & _DateToMonth(@MON, 1) & " " & @YEAR & " " & @HOUR & ":" & @MIN & ":" & @SEC & $bias & @CRLF & _
			"Content-Type: text/plain; charset=US-ASCII" & @CRLF & _
			@CRLF
	$s_ReplyCode[4] = ""

	$s_Send[5] = @CRLF & "." & @CRLF
	$s_ReplyCode[5] = "250"

	; open stmp session
	If __SmtpSend($v_Socket, $s_Send[0], $s_ReplyCode[0], $b_trace, "220", $s_first) Then Return SetError(50, 0, 0)

	; send header
	For $i_Count = 1 To UBound($s_Send) - 2
		If __SmtpSend($v_Socket, $s_Send[$i_Count], $s_ReplyCode[$i_Count], $b_trace) Then Return SetError(50 + $i_Count, 0, 0)
	Next

	; send body records (a record can be multiline : take care of a subline beginning with a dot should be ..)
	For $i_Count = 0 To UBound($as_Body) - 1
		; correct line beginning with a dot
		If StringLeft($as_Body[$i_Count], 1) = "." Then $as_Body[$i_Count] = "." & $as_Body[$i_Count]

		If __SmtpSend($v_Socket, $as_Body[$i_Count] & @CRLF, "", $b_trace) Then Return SetError(500 + $i_Count, 0, 0)
	Next

	; close the smtp session
	$i_Count = UBound($s_Send) - 1
	If __SmtpSend($v_Socket, $s_Send[$i_Count], $s_ReplyCode[$i_Count], $b_trace) Then Return SetError(5000, 0, 0)

	TCPCloseSocket($v_Socket)
	TCPShutdown()
	Return 1
EndFunc   ;==>_INetSmtpMail

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __SmtpTrace
; Description ...: Used internally within this file, not for general use
; Syntax.........: __SmtpTrace ( $str [, $timeout = 0] )
; Author ........: Asimzameer, Walkabout
; Modified.......: Jpm
; ===============================================================================================================================
Func __SmtpTrace($str, $timeout = 0)
	Local $W_TITLE = "SMTP trace"
	Local $s_SmtpTrace = ControlGetText($W_TITLE, "", "Static1")
	$str = StringLeft(StringReplace($str, @CRLF, ""), 70)
	$s_SmtpTrace &= @HOUR & ":" & @MIN & ":" & @SEC & " " & $str & @LF
	If WinExists($W_TITLE) Then
		ControlSetText($W_TITLE, "", "Static1", $s_SmtpTrace)
	Else
		SplashTextOn($W_TITLE, $s_SmtpTrace, 400, 500, 500, 100, 4 + 16, "", 8)
	EndIf
	If $timeout Then Sleep($timeout * 1000)
EndFunc   ;==>__SmtpTrace

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __SmtpSend
; Description ...: Used internally within this file, not for general use
; Syntax.........: __SmtpSend ( $v_Socket, $s_Send, $s_ReplyCode, $b_trace [, $s_IntReply="" [, $s_first=""]] )
; Author ........: Asimzameer, Walkabout
; Modified.......: Jpm
; ===============================================================================================================================
Func __SmtpSend($v_Socket, $s_Send, $s_ReplyCode, $b_trace, $s_IntReply = "", $s_first = "")
	Local $s_Receive, $i, $timer
	If $b_trace Then __SmtpTrace($s_Send)

	If $s_IntReply <> "" Then

		; Send special first char to awake smtp server
		If $s_first <> -1 Then
			If TCPSend($v_Socket, $s_first) = 0 Then
				TCPCloseSocket($v_Socket)
				TCPShutdown()
				Return 1; cannot send
			EndIf
		EndIf

		; Check intermediate reply before HELO acceptation
		$s_Receive = ""
		$timer = TimerInit()
		While StringLeft($s_Receive, StringLen($s_IntReply)) <> $s_IntReply And TimerDiff($timer) < 45000
			$s_Receive = TCPRecv($v_Socket, 1000)
			If $b_trace And $s_Receive <> "" Then __SmtpTrace("intermediate->" & $s_Receive)
		WEnd
	EndIf

	; Send string.
	If TCPSend($v_Socket, $s_Send) = 0 Then
		TCPCloseSocket($v_Socket)
		TCPShutdown()
		Return 1; cannot send
	EndIf

	$timer = TimerInit()

	$s_Receive = ""
	While $s_Receive = "" And TimerDiff($timer) < 45000
		$i += 1
		$s_Receive = TCPRecv($v_Socket, 1000)
		If $s_ReplyCode = "" Then ExitLoop
	WEnd

	If $s_ReplyCode <> "" Then
		; Check replycode
		If $b_trace Then __SmtpTrace($i & " <- " & $s_Receive)

		If StringLeft($s_Receive, StringLen($s_ReplyCode)) <> $s_ReplyCode Then
			TCPCloseSocket($v_Socket)
			TCPShutdown()
			If $b_trace Then __SmtpTrace("<-> " & $s_ReplyCode, 5)
			Return 2; bad receive code
		EndIf
	EndIf

	Return 0
EndFunc   ;==>__SmtpSend

; #FUNCTION# ====================================================================================================================
; Author ........: Florian Fida
; ===============================================================================================================================
Func _TCPIpToName($sIp, $iOption = Default, $hDll_Ws2_32 = Default)
	Local $INADDR_NONE = 0xffffffff, $AF_INET = 2, $sSeparator = @CR
	If $iOption = Default Then $iOption = 0
	If $hDll_Ws2_32 = Default Then $hDll_Ws2_32 = "ws2_32.dll"
	Local $vaDllCall = DllCall($hDll_Ws2_32, "ulong", "inet_addr", "STR", $sIp)
	If @error Then Return SetError(1, 0, "") ; inet_addr DllCall Failed
	Local $vbinIP = $vaDllCall[0]
	If $vbinIP = $INADDR_NONE Then Return SetError(2, 0, "") ; inet_addr Failed
	$vaDllCall = DllCall($hDll_Ws2_32, "ptr", "gethostbyaddr", "ptr*", $vbinIP, "int", 4, "int", $AF_INET)
	If @error Then Return SetError(3, 0, "") ; gethostbyaddr DllCall Failed
	Local $vptrHostent = $vaDllCall[0]
	If $vptrHostent = 0 Then
		$vaDllCall = DllCall($hDll_Ws2_32, "int", "WSAGetLastError")
		If @error Then Return SetError(5, 0, "") ; gethostbyaddr Failed, WSAGetLastError Failed
		Return SetError(4, $vaDllCall[0], "") ; gethostbyaddr Failed, WSAGetLastError = @extended
	EndIf
	Local $vHostent = DllStructCreate("ptr;ptr;short;short;ptr", $vptrHostent)
	Local $sHostnames = __TCPIpToName_szStringRead(DllStructGetData($vHostent, 1))
	If @error Then Return SetError(6, 0, $sHostnames) ; strlen/sZStringRead Failed
	If $iOption = 1 Then
		Local $vh_aliases
		$sHostnames &= $sSeparator
		For $i = 0 To 63 ; up to 64 Aliases
			$vh_aliases = DllStructCreate("ptr", DllStructGetData($vHostent, 2) + ($i * 4))
			If DllStructGetData($vh_aliases, 1) = 0 Then ExitLoop ; Null Pointer
			$sHostnames &= __TCPIpToName_szStringRead(DllStructGetData($vh_aliases, 1))
			If @error Then
				SetError(7) ; Error reading array
				ExitLoop
			EndIf
		Next
		Return StringSplit(StringStripWS($sHostnames, 2), @CR)
	Else
		Return $sHostnames
	EndIf
EndFunc   ;==>_TCPIpToName

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __TCPIpToName_szStringRead
; Description ...: Used internally within this file, not for general use
; Syntax.........: __TCPIpToName_szStringRead ( $iszPtr [, $iLen = -1] )
; Author ........: Florian Fida
; ===============================================================================================================================
Func __TCPIpToName_szStringRead($iszPtr, $iLen = -1)
	Local $vszString
	If $iszPtr < 1 Then Return "" ; Null Pointer
	If $iLen < 0 Then $iLen = _WinAPI_StringLenA($iszPtr)
	$vszString = DllStructCreate("char[" & $iLen & "]", $iszPtr)
	If @error Then Return SetError(2, 0, "")
	Return SetExtended($iLen, DllStructGetData($vszString, 1))
EndFunc   ;==>__TCPIpToName_szStringRead
