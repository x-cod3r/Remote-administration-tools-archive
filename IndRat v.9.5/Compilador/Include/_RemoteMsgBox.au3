#include-once
; Lastest version of Obfuscator now works correctly with include's and Adlib*/OnAutoItExit*/HotKeySet/DLLCallbackRegister functions:
;~ #obfuscator_ignore_funcs __RMBTOnExit
;~ Wrapping a function with #obfuscator_off + #obfuscator_on keeps the function name, but the Adlib*/OnAutoItExit*/HotKeySet/DLLCallbackRegister functions get obfuscated!
#include <_ProcessCreateRemoteThread.au3>
#include <_ProcessDLLProcFunctions.au3>
#include <_ProcessListFunctions.au3>
#include <_WinAPI_GetOSVersionInfo.au3>
;~ #include <_DLLStructDisplay.au3>		; DEBUG
; ===============================================================================================================================
; <_RemoteMsgBox.au3>
;
; Functions for creating a Remote MessageBox Thread, using either the typical or WTS MessageBox API call.
;
; Main Functions:
;	_RemoteMsgBoxThreadCreate()		; Creates the Remote MessageBox Thread
;	_RemoteMsgBoxClose()			; Closes the Remote MessageBox and/or terminates the Thread if needed
;
; INTERNAL Functions:
;	_TerminalServicesRunning()		; Determines if Terminal Services is running (req'd for WTSSendMessage MessageBox)
;	_DLLStructGetRemoteAddress()	; Calculates the address in a remote Process's address space of a structure item
;	__RMBTOnExit()					; If the Remote Message Box is created and not closed before exit, this is called
;
; See also:
;	<TestProcessRemoteThreadInject.au3>	; uses this UDF's functions (for now)
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	BINARY THREAD CODE	--------------------
; ===================================================================================================================


Global $binRemoteMsgBox
If @AutoItX64 Then
	$binRemoteMsgBox='0x58E8120200004889C33986E0030000747E488D9608010000488D8E30010000E8B8020000488986000100004885C00F84BF00000068FFFFFFFF488D86FC000000505368400001004889D88B86F4030000D1E0508B86F00300004801F0504883EC204989D9448B8EEC03000041D1E14989D8448B86E80300004901F04889DA8B96E40300004889D9FF9600010000EB4A488D9620010000488D8EF0010000E83A020000488986180100004885C0744549C7C1400001004889D98B8EE80300004C8D040E8B8EF0030000488D140E4889D94883EC20FF96180100004889D948FFC9E8450200004889D98B8EF8030000FF96B00100004889D948FFC9EBF29000000000000000000000000057545353656E644D657373616765570000000000000000004D657373616765426F785700909090900000000000000000000000000000000077747361706933322E646C6C0090909000000000000000000000000000000000000000000000000000000000000000004C6F61644C69627261727941009090900000000000000000467265654C6962726172790090909090000000000000000047657450726F634164647265737300900000000000000000457869745468726561640090909090900000000000000000536C656570009090000000000000000001000000000000002E2E2E0090909090000000000000000000000000000000007573657233322E646C6C0090909090900000000000000000488B34244883EE06488986600100004989C7488D96D0030000488996580100004889CF4C8B274C89A6D8010000488B5F0848899E980100004831C04809C374054909C475075B48FFC84157C34883EC28488D96700100004C89E1FFD348898668010000488D96880100004C89E1FFD348898680010000488D96D00100004C89E1FFD3488986C8010000488D96B80100004C89E1FFD3488986B00100004883C4284885C074A04831C0483986800100007494483986C8010000748B483986680100007482C353524889CB48833B00751E4883EC28488D4B10FF96680100004883C4284885C07421488903488B14244883EC28488B0BFF96980100004883C4284885C0740448FF430848899E100200005A5BC34889C8488B8E100200004885C975044889C8C34889C252E8020000005AC35341544889C84885C0746F4889C348833B00745E4889D14883F9007C0E48294B0848FF4B0874047802EB4F488D86D80100004839D8750A48C7430801000000EB394883EC28488B0BFF96800100004883C4284885C0742348C7030000000048399E10020000750B48C786100200000000000048C7430800000000415C5BC39090909090909090909090'
	$binWow64RemoteMsgBox='0xE88B01000089C339868803000074658D8ECC000000518D8EEC00000051E89A0200008986C800000085C00F848C00000089D848508D86C4000000505368400001008B869C030000D1E0508B869803000001F0508B8694030000D1E0508B869003000001F050FFB68C03000053FF96C8000000EB3B8D8EE0000000518D8E7801000051E8350200008986DC00000085C0742B68400001008B869003000001F0508B869803000001F05053FF96DC0000008B86A003000050FF964401000031C048EBF4909090000000000000000057545353656E644D6573736167655700000000004D657373616765426F785700000000000000000077747361706933322E646C6C009090900000000000000000000000004C6F61644C696272617279410090909000000000467265654C696272617279000000000047657450726F634164647265737300900000000045786974546872656164009000000000536C65657000909000000000010000006B65726E656C33322E646C6C0090909000000000000000007573657233322E646C6C0090000000008B342483EE058D8E80030000898E080100008B442408898604010000E86800000085C075035B48C389C38D8E1001000051528D8E2401000051528D8E5801000051528D8E480100005152FFD3898644010000FFD3898654010000FFD3898620010000FFD389860C01000085C074B731C039862001000074AD39865401000074A5398644010000749DC389F531D2648B52308B520CFF72188B52148B7228528DBD680100000FB74A26D1E983F90D757066AD3C617D063C417C020420AE7561E2EF8B52108995600100008B423C01D08B407885C0744A01D0508B582001D38B401885C0743A488B348301D68DBD34010000B90F000000F3A675E789C1588B582401D30FB70C4B8B581C01D38B048B01D08985300100005B5B89EEC331C0EBF8585A39142474F58B12E96EFFFFFF5589E5538B5D08833B00751289D983C10851FF960C01000085C0741689038B038B4D0C5150FF963001000085C07403FF4304899E8C0100005B5DC208008B868C01000085C0740B8B5424045250E803000000C204005589E5538B450885C0745A89C3833B00744C8B4D0C83F9007C0C294B04FF4B0474047802EB3F8D866001000039D87509C7430401000000EB2C8B0350FF962001000085C0741FC70300000000399E8C010000750AC7868C01000000000000C74304000000005B5DC208009090909090'
Else
	$binRemoteMsgBox='0xE88701000089C33986F802000074658D8ED4000000518D8EF400000051E8030200008986D000000085C00F849500000089D848508D86CC000000505368400001008B860C030000D1E0508B860803000001F0508B8604030000D1E0508B860003000001F050FFB6FC02000053FF96D0000000EB3B8D8EE8000000518D8E7401000051E89E0100008986E400000085C0743468400001008B860003000001F0508B860803000001F05053FF96E400000031C04850E8AA0100008B861003000050FF964C01000031C048EBF49090000000000000000057545353656E644D6573736167655700000000004D657373616765426F785700000000000000000077747361706933322E646C6C009090900000000000000000000000004C6F61644C696272617279410090909000000000467265654C696272617279000000000047657450726F634164647265737300900000000045786974546872656164009000000000536C65657000909000000000010000002E2E2E0000000000000000007573657233322E646C6C0090000000008B342483EE058D8EF0020000898E100100008B7C240889BE0C0100008B178996680100008B5F04899E3801000031C009C3740409C275035B48C38D8E1801000051528D8E2C01000051528D8E6001000051528D8E500100005152FFD389864C010000FFD389865C010000FFD3898628010000FFD389861401000085C074B931C039862801000074AF39865C01000074A739864C010000749FC35589E5538B5D08833B00751289D983C10851FF961401000085C0741689038B038B4D0C5150FF963801000085C07403FF4304899E880100005B5DC208008B868801000085C0740B8B5424045250E803000000C204005589E5538B450885C0745A89C3833B00744C8B4D0C83F9007C0C294B04FF4B0474047802EB3F8D866801000039D87509C7430401000000EB2C8B0350FF962801000085C0741FC70300000000399E88010000750AC7868801000000000000C74304000000005B5DC20800909090909090909090909090'
EndIf


; ===================================================================================================================
;	--------------------	THREAD INFORMATION	--------------------
; ===================================================================================================================


Global $RMSGBOX_THREAD_CREATED=False,$RMSGBOX_CLOSING=False
; Process handle, Thread handle, Remote code address, Process ID, Thread ID, Process name, MsgBox Title string
Global $RMSGBOX_THREAD_INFO[7]=[0,0,0,0,0,"",""]


; ===================================================================================================================
;	--------------------	INTERNAL FUNCTIONS	--------------------
; ===================================================================================================================


; ===============================================================================================================================
; Func _TerminalServicesRunning()
;
; INTERNAL function - Simply determines if Terminal Services is installed/running.
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _TerminalServicesRunning()
	Local $iSuite=_WinAPI_GetOSVersionInfo(7)
	If @error Then Return SetError(@error,@extended,False)
	; VER_SUITE_TERMINAL (0x10)	+ VER_SUITE_SINGLEUSERTS (0x0100)
	Return BitAND($iSuite,0x0110)<>0
EndFunc


; ===============================================================================================================================
; Func _DLLStructGetRemoteAddress($stStruct,$vIndex,$pRemoteData)
;
; INTERNAL function - Simply calculates the Remote address of an item in a struct.
;	(assumption is that the structures reflect one another)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _DLLStructGetRemoteAddress($stStruct,$vIndex,$pRemoteData)
	If Not IsPtr($pRemoteData) Then Return SetError(1,0,0)
	Local $pElement=DllStructGetPtr($stStruct,$vIndex)
	If @error Then Return SetError(1,@error,0)
	Return $pRemoteData+Number($pElement-DllStructGetPtr($stStruct))
EndFunc


; ===============================================================================================================================
; Func __RMBTOnExit()
;
; INTERNAL function - called on Exit if Remote MessageBox Thread was created.
;
; Author: Ascend4nt
; ===============================================================================================================================
;~ #obfuscator_off
Func __RMBTOnExit()
;~ #obfuscator_on
	If $RMSGBOX_THREAD_CREATED Then _RemoteMsgBoxClose(2500,True)
;~ 	OnAutoItExitUnregister("__RMBTOnExit")	; shouldn't be called directly..
EndFunc



; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================



; ===============================================================================================================================
; Func _RemoteMsgBoxClose($iTimeOut=0,$bForce=False)
;
; Closes a Remote MessageBox Thread (either the typical or WTSSendMessage one).
;	Attempts to use the 'friendly' way of closing it, if possible.
;	Otherwise, if it can't and $bForce=True, it will forcibly terminate the Thread.
;
; Returns:
;	Success: True
;	Failure: False if error with @error set:
;		@error =  1 = invalid param
;		@error = -1 = Remote MessageBox Thread not created
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _RemoteMsgBoxClose($iTimeOut=0,$bForce=False)
	Local $hWnd,$hThread,$bClosed=False,$iExitCode
	; Test 1st if this function has already been called (Adlib and On-Exit functions can conflict in calling this)
	If $RMSGBOX_CLOSING Then Return SetError(16,0,False)
	; Test parameter and if Thread is actually active
	If $iTimeOut<0 Then Return SetError(1,0,False)
	If Not $RMSGBOX_THREAD_CREATED Then Return SetError(-1,0,False)
	$RMSGBOX_CLOSING=True	; Prevent further calls to this function *while* this function is running

	$hThread=$RMSGBOX_THREAD_INFO[1]
	If IsPtr($hThread) Then
		$iTimer=TimerInit()
		While 1
			$hWnd=WinGetHandle("[TITLE:"&$RMSGBOX_THREAD_INFO[6]&"; CLASS:#32770]")
			If Not @error Or ($iTimeOut And TimerDiff($iTimer)>=$iTimeOut) Or Not _ThreadStillActive($hThread) Then ExitLoop
			Sleep(10)
		WEnd
		If _ThreadStillActive($hThread) Then
			ConsoleWrite(" - Still Active!")
			If $hWnd<>"" Then
				ConsoleWrite("...Found window, sending close message")
				WinClose($hWnd)
			EndIf
			If Not _ThreadWaitForExit($hThread,200) Then
				If $bForce Then
					ConsoleWrite(" Thread Still Alive - Forcing termination!")
					_ThreadTerminate($hThread,1234)
					_ThreadWaitForExit($hThread,200)
					$bClosed=True
				Else
					ConsoleWrite(" Force not specified, leaving thread open")
				EndIf
			Else
				$bClosed=True
			EndIf
			ConsoleWrite(@CRLF)
		Else
			$bClosed=True
		EndIf
		If $bClosed Then
			$iExitCode=_ThreadGetExitCode($hThread)
			_ProcessMemoryFree($RMSGBOX_THREAD_INFO[0],$RMSGBOX_THREAD_INFO[2])
			ConsoleWrite("_ProcessMemoryFree result: @error="&@error&", @extended="&@extended&@CRLF)
			_ThreadCloseHandle($hThread)
			ConsoleWrite("Thread close result: @error="&@error&", @extended="&@extended&@CRLF)
			_ProcessCloseHandle($RMSGBOX_THREAD_INFO[0])
			ConsoleWrite("_ProcessCloseHandle result: @error="&@error&", @extended="&@extended&@CRLF)
			For $i=0 To 6
				$RMSGBOX_THREAD_INFO[$i]=0
			Next
			$RMSGBOX_THREAD_CREATED=False
			ConsoleWrite("Cleaned house on Thread"&@CRLF)
			OnAutoItExitUnregister("__RMBTOnExit")
			$RMSGBOX_CLOSING=False
			Return SetExtended($iExitCode,True)
		EndIf
	EndIf
	$RMSGBOX_CLOSING=False
	Return False
EndFunc


; ===============================================================================================================================
; Func _RemoteMsgBoxThreadCreate($iProcessID,$bStartSuspended=False,$sExtraText='')
;
; For the given Process name/ID, this will create a Remote MessageBox Thread (either the typical or WTSSendMessage MessageBox).
;	On success, the global $RMSGBOX* variables will be set, and the __RMBTOnExit() function will be registered on exit.
;	A call to _RemoteMsgBoxClose() will close the box, free the memory, and unregister the exit function.
;
; $iProcessID = Process ID # (ideally), or Process name
; $bStartSuspended = If True, start the process in a Suspended state. Otherwise, it will be started on function exit.
; $sExtraText = Any extra text to show inside messagebox (such as 'timing out in..' seconds)
;
; Returns:
;	Success: True
;	Failure: False if error with @error set:
;		@error =  1 = invalid param
;		@error = -1 = Remote MessageBox Thread not created
;		@error = -2 = Terminal Services not installed/running (required for WTSSendMessage version of MsgBox) - Win2000 prob usually
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info). Could be due to lower Privilege level
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 16 = Process passed wasn't a number, and does not exist (process ended or is invalid)
;		@error = -11 = Trying to create a Thread in a 'Native System' (driver) Process.  This would cause BSOD's
;					  unless the code is specially tailored to run in that type of Process. (safety precaution)
;		@error = 3264 = Can't run 32-bit code in a 64-bit Process
;						(normally should only get this if both Process's are 64-bit but $bWow64Code=True)
;		@error = 6432 = Can't run 64-bit code in a 32-bit Process, unless its x86 32-bit Code ($bWow64Code=True)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _RemoteMsgBoxThreadCreate($iProcessID,$bStartSuspended=False,$sExtraText='')
	If $RMSGBOX_THREAD_CREATED Then Return SetError(-1,0,False)
	Local $hProcess,$sProcess,$hThread,$sMsgBoxTitle,$sMsgBoxText,$iThisSession,$iProcessSession,$bUseWTSFunc=False,$bWow64Code=False
	Local $aTemp,$sProcessDataStruct,$stMsgBox,$hKernel32DLL=0,$pGetProcAddress=0,$binRemoteCode,$iBinSize,$pRemoteCode,$iThreadID
	$hProcess=_ProcessOpen($iProcessID,0x043A)
	If @error Then Return SetError(@error,@extended,False)
	$iProcessID=@extended
	$sProcess=_ProcessGetFilename($hProcess)	; we won't bother error-checking this (not entirely needed)

	ConsoleWrite("_RemoteMsgBoxThreadCreate called, vars so far: $hProcess:"&$hProcess&", $sProcess: '"&$sProcess&"', $iProcessID="&$iProcessID&", $bStartSuspended="&$bStartSuspended&@CRLF)

	; Check if there's any GUI created for the Process
	$aTemp=_ProcessWinList($iProcessID)
	If @error Or $aTemp[0][0]=0 Then $bUseWTSFunc=True	; no? Need to use WTS function

	; Check if process is in same session (see below)
	$iThisSession=_ProcessUDGetSessionID($PROCESS_THIS_HANDLE)
	$iProcessSession=_ProcessUDGetSessionID($hProcess)

	; As opposed to MessageBox, which can only display in the current session's desktop (and only if a GUI was created),
	;	WTSSendMessage can open a MsgBox, regardless of GUI, in another session - ASSUMING the Process has a high enough privilege
	If $iThisSession<>$iProcessSession Then $bUseWTSFunc=True

	; Need Terminal Services Running (mostly just a problem with Win2000)
	If $bUseWTSFunc And Not _TerminalServicesRunning() Then Return SetError(-2,0,False)

	$binRemoteCode=$binRemoteMsgBox

	If _ProcessIs32Bit($hProcess) Then
		If @AutoItX64 Then
			$binRemoteCode=$binWow64RemoteMsgBox
			$bWow64Code=True
		EndIf
		$sProcessDataStruct="dword;dword"
	Else
		$sProcessDataStruct="ptr;ptr"
		$bWow64Code=False
	EndIf
	$iBinSize=BinaryLen($binRemoteCode)
	; Ensure code-size is aligned to 16-byte boundary (code *start* will be already aligned to 16-byte boundary by VirtualAllocEx)
	;	(all my code is already pre-aligned to 16-bytes, but its always good to have a backup plan..)
	$iBinSize=Ceiling($iBinSize/16)*16
	; insert code at start of Structure string
	$sProcessDataStruct="byte["&$iBinSize&"];"&$sProcessDataStruct
	; Could do this to cut down on size of Threads, but we'll just let the Threads do all this work:
	;~ $pMessageBoxFunc=_ProcessGetProcAddress($iProcessID,"user32.dll","MessageBoxW",$bWow64Code,$bWow64Code)

	$pGetProcAddress=_ProcessGetProcAddress($iProcessID,"kernel32.dll","GetProcAddress",$bWow64Code,$bWow64Code)
	If @error Then Return SetError(@error,@extended,False)
	$hKernel32DLL=Ptr(@extended)
	ConsoleWrite("_ProcessGetProcAddress returns: $pGetProcAddress="&$pGetProcAddress&", $hKernel32DLL="&$hKernel32DLL&@CRLF)

	$sMsgBoxTitle="Message Box from another Process ["&$sProcess&"]"
	If $bUseWTSFunc Then $sMsgBoxTitle="WTS "&$sMsgBoxTitle
	$sMsgBoxText="This message box is running in process '"&$sProcess&"' (PID #"&$iProcessID&", TID # **********)"
	If $iThisSession<>$iProcessSession Then $sMsgBoxText&=@CRLF&"Source Session ID#"&$iProcessSession&", Target Session ID#"&$iThisSession
	If $bWow64Code Then $sMsgBoxText&=@CRLF&"** Code injected is 32-bit (in Wow64 Mode), whereas Source Process is 64-bit! **"
;~ 	$sMsgBoxText&=@CRLF&"10 second timeout"
	$sMsgBoxText&=$sExtraText

	$stMsgBox=DllStructCreate($sProcessDataStruct&";dword;dword;dword;dword;dword;dword;dword;wchar["&StringLen($sMsgBoxTitle)+1&"];wchar["&StringLen($sMsgBoxText)+1&"];dword")

	; Allocate memory with $MEM_COMMIT (0x1000), $PAGE_EXECUTE_READWRITE (0x40)
	$pRemoteCode=_ProcessMemoryAlloc($hProcess,DllStructGetSize($stMsgBox),0x1000,0x40)
	If @error Then Return SetError(@error,@extended,False)
;~ 	$iOffset=@extended
	ConsoleWrite("_ProcessMemoryAlloc return:"&$pRemoteCode&", @error="&@error&", @extended="&@extended&@CRLF)

	$pMsgBoxBaseStPtr=DllStructGetPtr($stMsgBox)

	; Exit code
	DllStructSetData($stMsgBox,10,1234)
	; MessageBox type:
	If $bUseWTSFunc Then
		DllStructSetData($stMsgBox,4,1)	; type (non-zero = WTS Message Box)
		DllStructSetData($stMsgBox,5,$iThisSession)				; Session ID
		DllStructSetData($stMsgBox,7,StringLen($sMsgBoxTitle))	; Title String length
		DllStructSetData($stMsgBox,9,StringLen($sMsgBoxText))	; Text String length
	Else
		DllStructSetData($stMsgBox,4,0)	; Regular MessageBox
		; The MsgBox function in the external Process's address space - could pass a converted pointer
;~ 		DllStructSetData($stMsgBox,xx,$pMessageBoxFunc)
	EndIf
	; Set strings
	DllStructSetData($stMsgBox,11,$sMsgBoxTitle)
	DllStructSetData($stMsgBox,12,$sMsgBoxText)
	; Offsets to strings (from base of code allocation) - we need to calculate where they are relative to the base of the structure
	DllStructSetData($stMsgBox,6,DllStructGetPtr($stMsgBox,11)-$pMsgBoxBaseStPtr)
	DllStructSetData($stMsgBox,8,DllStructGetPtr($stMsgBox,12)-$pMsgBoxBaseStPtr)
	; Required Handle/Base Address and GetProcAddress pointers
	DllStructSetData($stMsgBox,2,$hKernel32DLL)
	DllStructSetData($stMsgBox,3,$pGetProcAddress)
	; Set the code, of course!
	DllStructSetData($stMsgBox,1,$binRemoteCode)
	Do
		; And transfer the code & data all at once.
		If Not _ProcessMemoryWrite($hProcess,$pRemoteCode,$pMsgBoxBaseStPtr,DllStructGetSize($stMsgBox)) Then ExitLoop
		; Create thread, suspended, with option of using Undocumented call. (Parameter = ptr to Kernel32DLL Handle)
		$hThread=_ProcessCreateRemoteThread($hProcess,$pRemoteCode,_DLLStructGetRemoteAddress($stMsgBox,2,$pRemoteCode),True,1,$bWow64Code)
	Until 1
	; Either call produced an error?  Cleanup and exit
	If @error Then
		Local $iErr=@error,$iExt=@extended
		_ProcessMemoryFree($hProcess,$pRemoteCode)
		_ProcessCloseHandle($hProcess)
		Return SetError($iErr,$iExt,False)
	EndIf
	$iThreadID=@extended
	; The reason we started it as suspended: inserting ThreadID
	$sMsgBoxText=StringReplace($sMsgBoxText,"**********",$iThreadID)
	; Re-set msgbox text
	DllStructSetData($stMsgBox,12,$sMsgBoxText)
	; And rewrite it (no error checking since there is text there already anyway)
	_ProcessMemoryWrite($hProcess,_DLLStructGetRemoteAddress($stMsgBox,12,$pRemoteCode),DllStructGetPtr($stMsgBox,12),StringLen($sMsgBoxText)*2+2)
	; And length in chars if WTSSendMessage MessageBox (machine-code will convert to # bytes)
	If $bUseWTSFunc Then
		DllStructSetData($stMsgBox,9,StringLen($sMsgBoxText)+1)
		; We don't need to worry if there's an error at this point (previous value is fine)
		_ProcessMemoryWrite($hProcess,_DLLStructGetRemoteAddress($stMsgBox,9,$pRemoteCode),DllStructGetPtr($stMsgBox,9),4)
	EndIf
	; Set all the variables into the array
	Dim $RMSGBOX_THREAD_INFO[7]=[$hProcess,$hThread,$pRemoteCode,$iProcessID,$iThreadID,$sProcess,$sMsgBoxTitle]
	OnAutoItExitRegister("__RMBTOnExit")
	$RMSGBOX_THREAD_CREATED=True
;~ 	_DLLStructDisplay($stMsgBox,$sProcessDataStruct&";dword Type;dword SessionID;dword TitleOffset;dword TitleLen;dword TextOffset;dword TextLen;dword ExitCode;wchar["&StringLen($sMsgBoxTitle)+1&"];wchar["&StringLen($sMsgBoxText)+1&"]")
;~ 	MsgBox(0,"About to start","About to begin thread at address:"&$pRemoteCode)	; Allows debugging/breakpoints
	If Not $bStartSuspended Then _ThreadResume($hThread)
	Return True
EndFunc
