; #INDEX# =======================================================================================================================
; Title .........: ProcCall
; AutoIt Version : 3.3.0.0+
; Language ......: English
; Description ...: Functions that assist with low-level communication and IPC.
; Author(s) .....: Janus Thorborg (Shaggi)
; ===============================================================================================================================
#AutoIt3Wrapper_UseX64=n
#include-once
#OnAutoItStartRegister "__ProcCall_Startup"
#include <Memory.au3>
#include <WinApi.au3>
#include <Array.au3>
#include <Misc.au3>
; #CURRENT# =====================================================================================================================
; ProcCall
; ProcCallbackRegister
; ProcCallback
; ProcCallbackFree
; GetRemoteModuleHandle
; GetRemoteModuleList
; OpenProcess
; GetRemoteProcAddress
; DllCallEx
; ===============================================================================================================================
; #INTERNAL_USE_ONLY# ===========================================================================================================
; _SwapEndian
; _AddressOf
; _GetExitCodeThread
; _AssembleReturn
; _Assemble
; _CreateArgumentCode
; _WriteCode
; _Allocate
; _WriteProcessMemory
; _ReadProcessMemory
; _CloseHandle
; _CreateToolhelp32Snapshot
; _Module32First
; _Module32Next
; _CreateRemoteThread
; _GetProcAddress
; _GetSecurityInfo
; _SetSecurityInfo
; _VirtualAllocEx
; _VirtualFreeEx
; _CallWindowProc
; ===============================================================================================================================
; #ENUMS# =======================================================================================================================
Global Enum 	$ERROR_GETTING_HANDLE = 1, 	$ERROR_ODD_ARGUMENTS, 		$ERROR_RETRIEVING_ARGUMENTS, _
				$ERROR_INVALID_TYPE, 		$ERROR_UNKNOWN_CONVENTION, 	$ERROR_USERHALT, _
				$ERROR_WRITING_CODE, 		$ERROR_CREATING_THREAD, 	$ERROR_INAPPROPIATE_FUNCTION, _
				$ERROR_BAD_CALLBACK, 		$ERROR_ACCESS_DENIED, 		$ERROR_INVALID_HANDLE, _
				$ERROR_MODULE_NOT_FOUND,	$ERROR_INVALID_PROCESS,		$ERROR_GETTING_INFO, _
				$ERROR_SETTING_INFO
; #CONSTANTS# ===================================================================================================================
Global Const $TH32CS_SNAPHEAPLIST  = 0x00000001
Global Const $TH32CS_SNAPPROCESS   =  0x00000002
Global Const $TH32CS_SNAPTHREAD    = 0x00000004
Global Const $TH32CS_SNAPMODULE    = 0x00000008
Global Const $TH32CS_SNAPMODULE32  = 0x00000010
Global Const $TH32CS_SNAPALL       = BitOR($TH32CS_SNAPHEAPLIST,$TH32CS_SNAPPROCESS,$TH32CS_SNAPTHREAD,$TH32CS_SNAPMODULE)
Global Const $TH32CS_INHERIT       = 0x80000000
If Not IsDeclared("MAX_PATH") Then Global Const $MAX_PATH = 260
If Not IsDeclared("MAX_MODULE_NAME32") Then Global Const $MAX_MODULE_NAME32 = 255
Global Const $CALL_INSTRUCTION_SIZE = 0x5
Global Enum $DLL_Kernel32 = 1, $DLL_Advapi32, $DLL_User32
Global Enum $EDX = 1, $ECX, $EAX, $EDI, $ESI, $ESP, $EBX, $EBP
Global Const $SE_KERNEL_OBJECT = 6
Global Const $DACL_SECURITY_INFORMATION = 0x00000004
Global Const $ERROR_SUCCESS = 0
;Global Const $WRITE_DAC = 0x00040000
Global Const $UNPROTECTED_DACL_SECURITY_INFORMATION = 0x20000000
;Global Const $READ_CONTROL = 0x00020000
; ===============================================================================================================================
; #TAGS# =======================================================================================================================
Global Const $tagMODULEENTRY32 =  "DWORD   dwSize;" & _
								  "DWORD   th32ModuleID;" & _
								  "DWORD   th32ProcessID;" & _
								  "DWORD   GlblcntUsage;" & _
								  "DWORD   ProccntUsage;" & _
								  "ptr     modBaseAddr;" & _ ;(BYTE * modBaseAddr)
								  "DWORD   modBaseSize;" & _
								  "handle hModule;" & _
								  "char   szModule[" & $MAX_MODULE_NAME32 + 1 & "];" & _
								  "char   szExePath[" & $MAX_PATH & "];"
; #VARIABLES# ===================================================================================================================
Global $__Memory_Deallocations[1]
Global $__Memory_Sizes[1]
If Not IsDeclared("__Dll__HandleIndex") Then Global $__Dll__HandleIndex[1] = [0]
Global $nDummy
Global $_Confirm = False
Global $__ProcCall_Start = 0
; #FUNCTION# ====================================================================================================================
; Name...........: DllCallEx
; Description ...: Calls the function located at address $uFunction with the parameters specified in $Param n with the types
;				   $Type n and returns a type corrosponding to $sRet.
;
; Syntax.........: DllCallEx($uFunction, $sRet, [$Type1 = 0, $Param1 = 0,$Type n = 0, $Param n = 0])
; Parameters ....: $uFunction			- The address to be called. This must be a number, if you only have a string or an ordinal,
;										  use GetProcAddress first.
;				   $sRet				- String specifiying the return type.
;				   $Type				- String specifiying the type. This can contain special keywords. See remarks.
;				   $Param				- The value to be passed.
; Return values .: Success              - Depends on return type.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......: Use exactly as DllCall. See ProcCall for further notes. $Type1 and $Param1 can be two equally sized arrays with arguments.
; Related .......: DllCall, ProcCall
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func DllCallEx($uFunction,$sRet,$Type1 = 0, $Param1 = 0, _
		$Type2 = 0, $Param2 = 0, _
		$Type3 = 0, $Param3 = 0, _
		$Type4 = 0, $Param4 = 0, _
		$Type5 = 0, $Param5 = 0, _
		$Type6 = 0, $Param6 = 0, _
		$Type7 = 0, $Param7 = 0, _
		$Type8 = 0, $Param8 = 0, _
		$Type9 = 0, $Param9 = 0, _
		$Type10 = 0, $Param10 = 0, _
		$Type11 = 0, $Param11 = 0, _
		$Type12 = 0, $Param12 = 0, _
		$Type13 = 0, $Param13 = 0, _
		$Type14 = 0, $Param14 = 0, _
		$Type15 = 0, $Param15 = 0, _
		$Type16 = 0, $Param16 = 0, _
		$Type17 = 0, $Param17 = 0, _
		$Type18 = 0, $Param18 = 0, _
		$Type19 = 0, $Param19 = 0, _
		$Type20 = 0, $Param20 = 0)
	;	Check that user doesn't pass a string name like original DllCall - use this instead
	If IsString($uFunction) And NOT StringIsXDigit($uFunction) Then Return SetError($ERROR_INAPPROPIATE_FUNCTION)
	;	Fetch arguments
	Local $nParams = (@NumParams - 2) / 2
	If Mod(@NumParams, 2) Then Return SetError($ERROR_ODD_ARGUMENTS)
	If $nParams And IsArray($Type1) Then
		Local $Params = $Param1
		Local $Types = $Type1
	Else
		Local $Params[1] = [$nParams]
		Local $Types[1] = [$nParams]
		For $i = 1 To $nParams
			Execute("_ArrayAdd($Params,$Param" & $i & ")")
			If @error Then Return SetError($ERROR_RETRIEVING_ARGUMENTS)
			Execute("_ArrayAdd($Types,$Type" & $i & ")")
			If @error Then Return SetError($ERROR_RETRIEVING_ARGUMENTS)
		Next
	EndIf
	Switch $nParams
		Case 0
			Return _CallWindowProc($uFunction)
		Case Else
			;_ArrayDisplay($Params)
			;_ArrayDisplay($Types)
			Local $sCode, $pThread, $iRet, $ThreadID, $pCodePointer, $pParam = 0
			Local $Arguments = _CreateArgumentCode(_WinApi_GetCurrentProcess(), "stdcall", $Params, $Types) ;Argument passing
			;ConsoleWrite($Arguments & @CRLF)
			If @Error Then Return SetError($ERROR_INVALID_TYPE)

			#cs
				* Code is assembled here. We dont use popad/push because we dont preserve eax.
				* Registers ebp, ebx, esi and edi is preserved.
				* Return value stored in eax.
			#ce
			$sCode &= "0x" & _
					"55" & _               						;PUSH EBP
					"53" & _               						;PUSH EBX
					"56" & _               						;PUSH ESI
					"57" & _               						;PUSH EDI
					$Arguments & _
					"33C0" & _          						;XOR EAX,EAX
					"BB" & _SwapEndian($uFunction) & _			;MOV EBX, uFunction
					"FFD3" & _									;CALL EBX //We call EBX so we dont get problems with linking
					"5F" & _               						;POP EDI
					"5E" & _               						;POP ESI
					"5B" & _               						;POP EBX
					"5D" & _               						;POP EBP
					_AssembleReturn($sRet) & _
					"C3" 										;RETN
			$pStruct = DllStructCreate("byte[" & BinaryLen($sCode) & "]")
			DlLStructSetData($pStruct,1,$sCode)
			$pCodePointer = DllStructGetPtr($pStruct)
			If $_Confirm Then
				ConsoleWrite($pCodePointer & @CRLF)
				ClipPut($pCodePointer)
				If MsgBox(1, "ProcCall", "Confirm execution of code at " & $pCodePointer & ".") = 2 Then Return SetError($ERROR_USERHALT)
			EndIf
			Return _CallWindowProc($pCodePointer)
	EndSwitch
EndFunc
; ===============================================================================================================================
; #FUNCTION# ====================================================================================================================
; Name...........: ProcCall
; Description ...: Calls the function located at address $sCallingConv with the convention $sCallingConv inside the process $sProcess,
;				   with the parameters specified in $Param n with the types $Type n and returns a type corrosponding to $sRet.
;
; Syntax.........: ProcCall($sProcess, $sCallingConv, $uFunction, $sRet, [$Type1 = 0, $Param1 = 0,$Type n = 0, $Param n = 0])
; Parameters ....: $sProcess      		- Either an open handle to the process, a process ID or the process name.
;				   $sCallingConv		- A string that specifies the calling convention. Either "fastcall" or "stdcall".
;				   $uFunction			- The address to be called. This must be a number, if you only have a string or an ordinal,
;										  use GetRemoteProcAddress firstly.
;				   $sRet				- String specifiying the return type.
;				   $Type				- String specifiying the type. This can contain special keywords. See remarks.
;				   $Param				- The value to be passed.
; Return values .: Success              - Depends on return type.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......: All types and syntax are similar to DllStruct types. The type parameter can contain extra symbols. If an asterisk
;				   is used (*), the function will pass a pointer to the $Param, which is written in the process on the fly. Example:
;				   "char*". If an ampersand is provided, the function will dereference the value. This should only be used with pointer
;				   types. Example: "&ptr". If the keyword "static" is provided, the function will not delete and free the memory used with
;				   the param after the function has returned. This should only be used with pointers. Example: "static byte*".
;				   If a handle is passed as the first parameter, it must have PROCESS_ALL_ACCESS rights. $Type1 and $Param1 can be two
;				   equally sized arrays with arguments.
; Related .......: DllCall, DllCallEx
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func ProcCall($sProcess, $sCallingConv, $uFunction, $sRet, $Type1 = 0, $Param1 = 0, _
		$Type2 = 0, $Param2 = 0, _
		$Type3 = 0, $Param3 = 0, _
		$Type4 = 0, $Param4 = 0, _
		$Type5 = 0, $Param5 = 0, _
		$Type6 = 0, $Param6 = 0, _
		$Type7 = 0, $Param7 = 0, _
		$Type8 = 0, $Param8 = 0, _
		$Type9 = 0, $Param9 = 0, _
		$Type10 = 0, $Param10 = 0, _
		$Type11 = 0, $Param11 = 0, _
		$Type12 = 0, $Param12 = 0, _
		$Type13 = 0, $Param13 = 0, _
		$Type14 = 0, $Param14 = 0, _
		$Type15 = 0, $Param15 = 0, _
		$Type16 = 0, $Param16 = 0, _
		$Type17 = 0, $Param17 = 0, _
		$Type18 = 0, $Param18 = 0, _
		$Type19 = 0, $Param19 = 0, _
		$Type20 = 0, $Param20 = 0)
	;	Check for supported calling conventions
	If ($sCallingConv <> "stdcall") AND ($sCallingConv <> "fastcall") Then Return SetError($ERROR_UNKNOWN_CONVENTION)
	;	Accept both handles, processID and process name
	Local $Handle_Passed = False
	If Not IsPtr($sProcess) Then
		Local $Pid = ProcessExists($sProcess)
		Local $pHandle = OpenProcess($Pid, $PROCESS_ALL_ACCESS)
	Else
		Local $pID = True
		Local $Handle_Passed = True
		Local $pHandle = $sProcess
	EndIf
	If Not $pHandle Or Not $Pid Then Return SetError($ERROR_GETTING_HANDLE)

	;	Check for odd arguments
	Local $nParams = (@NumParams - 4) / 2
	If Mod(@NumParams, 2) Then Return SetError($ERROR_ODD_ARGUMENTS)

	;	Get arguments
	If $nParams And IsArray($Type1) Then
		Local $Params = $Param1
		Local $Types = $Type1
	Else
		Local $Params[1] = [$nParams]
		Local $Types[1] = [$nParams]
		For $i = 1 To $nParams
			Execute("_ArrayAdd($Params,$Param" & $i & ")")
			If @error Then Return SetError($ERROR_RETRIEVING_ARGUMENTS)
			Execute("_ArrayAdd($Types,$Type" & $i & ")")
			If @error Then Return SetError($ERROR_RETRIEVING_ARGUMENTS)
		Next
	EndIf
	;_ArrayDisplay($Params)
	;_ArrayDisplay($Types)

	Local $sCode, $pThread, $iRet, $ThreadID, $pCodePointer, $pParam = 0
	Local $Arguments = _CreateArgumentCode($pHandle, $sCallingConv, $Params, $Types) ;Argument passing
	If @Error Then Return SetError($ERROR_INVALID_TYPE)

	#cs
		* Code is assembled here. We dont use popad/push because we dont preserve eax.
		* Registers ebp, ebx, esi and edi is preserved.
		* Return value stored in eax.
	#ce
	$sCode &= "0x" & _
			"55" & _               						;PUSH EBP
			"53" & _               						;PUSH EBX
			"56" & _               						;PUSH ESI
			"57" & _               						;PUSH EDI
			$Arguments & _
			"33C0" & _          						;XOR EAX,EAX
			"BB" & _SwapEndian($uFunction) & _			;MOV EBX, uFunction
			"FFD3" & _									;CALL EBX //We call EBX so we dont get problems with linking
			"5F" & _               						;POP EDI
			"5E" & _               						;POP ESI
			"5B" & _               						;POP EBX
			"5D" & _               						;POP EBP
			_AssembleReturn($sRet) & _
			"C3" 										;RETN
	$pCodePointer = _Allocate($pHandle, StringLen($sCode) / 2)
	;MsgBox(262144,'Debug line ~' & @ScriptLineNumber,'Selection:' & @lf & '	$pCodePointer = _Allocate($pHandle, StringLen($sCode) / 2)' & @lf & @lf & 'Return:' & @lf & 	$pCodePointer) ;### Debug MSGBOX
	;If Not _WriteCode($pCodePointer, $pHandle, $sCode) Then Return SetError($ERROR_WRITING_CODE)
	_WriteCode($pCodePointer, $pHandle, $sCode)
	If $_Confirm Then
		ConsoleWrite($pCodePointer & @CRLF)
		ClipPut($pCodePointer)
		If MsgBox(1, "ProcCall", "Confirm execution of code at " & $pCodePointer & ".") = 2 Then Return SetError($ERROR_USERHALT)
	EndIf
	$pThread = _CreateRemoteThread($pHandle, 0, 0, $pCodePointer, $pParam, 0, $ThreadID)
	$iRet = WaitForThreadAndGetReturnCode($pThread)

	For $i = 1 To $__Memory_Deallocations[0]
		_VirtualFreeEx($pHandle, $__Memory_Deallocations[$i], $__Memory_Sizes[$i], $MEM_DECOMMIT)
	Next
	_CloseHandle($pThread)
	If Not $Handle_Passed Then _CloseHandle($pHandle)
	Return $iRet
EndFunc   ;==>ProcCall
; #FUNCTION# ====================================================================================================================
; Name...........: ProcCallBackRegister
; Description ...: Analyses and creates the function corrosponding to the input given. It returns an array with call and cleanup
;				   specific information intended to be used with ProcCallBack and ProcCallBackFree. This creates a high-speed version
;				   of ProcCall (around 10-20 times faster, because it doesn't have to create the function each time). Inteded to be
;				   used for polling the same function many times.
; Syntax.........: ProcCallbackRegister($sProcess, $sCallingConv, $uFunction, $sRet, [$Type1 = 0, $Param1 = 0,$Type n = 0, $Param n = 0])
; Parameters ....: $sProcess      		- Either an open handle to the process, a process ID or the process name.
;				   $sCallingConv		- A string that specifies the calling convention. Either "fastcall" or "stdcall".
;				   $uFunction			- The address to be called. This must be a number, if you only have a string or an ordinal,
;										  use GetRemoteProcAddress firstly.
;				   $sRet				- String specifiying the return type. If this is "void", the function won't wait for the return.
;				   $Type				- String specifiying the type. This can contain special keywords. See remarks.
;				   $Param				- The value to be passed.
; Return values .: Success              - Returns an array to be used with ProcCallBack and ProcCallBackFree.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......: All types and syntax are similar to DllStruct types. The type parameter can contain extra symbols. If an asterisk
;				   is used (*), the function will pass a pointer to the $Param, which is written in the process on the fly. Example:
;				   "char*". If an ampersand is provided, the function will dereference the value. This should only be used with pointer
;				   types. Example: "&ptr". If the keyword "static" is provided, the function will not delete and free the memory used with
;				   the param after the function has returned. This should only be used with pointers. Example: "static byte*".
;				   If a handle is passed as the first parameter, it must have PROCESS_ALL_ACCESS rights.
;
;				   To call the function registrered by this function, pass the return of this function to ProcCallBack. Remember to
;				   call DllCallBackFree when you're done with the callback. $Type1 and $Param1 can be two
;				   equally sized arrays with arguments.
; Related .......: DllCall, DllCallEx
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func ProcCallbackRegister($sProcess, $sCallingConv, $uFunction, $sRet, $Type1 = 0, $Param1 = 0, _
		$Type2 = 0, $Param2 = 0, _
		$Type3 = 0, $Param3 = 0, _
		$Type4 = 0, $Param4 = 0, _
		$Type5 = 0, $Param5 = 0, _
		$Type6 = 0, $Param6 = 0, _
		$Type7 = 0, $Param7 = 0, _
		$Type8 = 0, $Param8 = 0, _
		$Type9 = 0, $Param9 = 0, _
		$Type10 = 0, $Param10 = 0, _
		$Type11 = 0, $Param11 = 0, _
		$Type12 = 0, $Param12 = 0, _
		$Type13 = 0, $Param13 = 0, _
		$Type14 = 0, $Param14 = 0, _
		$Type15 = 0, $Param15 = 0, _
		$Type16 = 0, $Param16 = 0, _
		$Type17 = 0, $Param17 = 0, _
		$Type18 = 0, $Param18 = 0, _
		$Type19 = 0, $Param19 = 0, _
		$Type20 = 0, $Param20 = 0)
	;	Check for supported calling conventions
	If ($sCallingConv <> "stdcall") AND ($sCallingConv <> "fastcall") Then Return SetError($ERROR_UNKNOWN_CONVENTION)
	;	Accept both handles, processID and process name
	Local $Handle_Passed = False
	If Not IsPtr($sProcess) Then
		Local $Pid = ProcessExists($sProcess)
		Local $pHandle = OpenProcess($Pid, $PROCESS_ALL_ACCESS)
	Else
		Local $pID = True
		Local $Handle_Passed = True
		Local $pHandle = $sProcess
	EndIf
	If Not $pHandle Or Not $Pid Then Return SetError($ERROR_GETTING_HANDLE)

	;	Check for odd arguments
	Local $nParams = (@NumParams - 4) / 2
	If Mod(@NumParams, 2) Then Return SetError($ERROR_ODD_ARGUMENTS)

	;	Get arguments
	If $nParams And IsArray($Type1) Then
		Local $Params = $Param1
		Local $Types = $Type1
	Else
		Local $Params[1] = [$nParams]
		Local $Types[1] = [$nParams]
		For $i = 1 To $nParams
			Execute("_ArrayAdd($Params,$Param" & $i & ")")
			If @error Then Return SetError($ERROR_RETRIEVING_ARGUMENTS)
			Execute("_ArrayAdd($Types,$Type" & $i & ")")
			If @error Then Return SetError($ERROR_RETRIEVING_ARGUMENTS)
		Next
	EndIf
	;_ArrayDisplay($Params)
	;_ArrayDisplay($Types)
	Local $Old_Allocations = $__Memory_Deallocations
	Global $__Memory_Deallocations[1] = [0]
	Local $sCode, $pThread, $iRet, $ThreadID, $pCodePointer, $pParam = 0
	Local $Arguments = _CreateArgumentCode($pHandle, $sCallingConv, $Params, $Types) ;Argument passing
	If @Error Then Return SetError($ERROR_INVALID_TYPE)

	#cs
		* Code is assembled here. We dont use popad/push because we dont preserve eax.
		* Registers ebp, ebx, esi and edi is preserved.
		* Return value stored in eax.
	#ce
	$sCode &= "0x" & _
			"55" & _               						;PUSH EBP
			"53" & _               						;PUSH EBX
			"56" & _               						;PUSH ESI
			"57" & _               						;PUSH EDI
			$Arguments & _
			"33C0" & _          						;XOR EAX,EAX
			"BB" & _SwapEndian($uFunction) & _			;MOV EBX, uFunction
			"FFD3" & _									;CALL EBX //We call EBX so we dont get problems with linking
			"5F" & _               						;POP EDI
			"5E" & _               						;POP ESI
			"5B" & _               						;POP EBX
			"5D" & _               						;POP EBP
			_AssembleReturn($sRet) & _
			"C3" 										;RETN
	$pCodePointer = _Allocate($pHandle, StringLen($sCode) / 2)
	;If Not _WriteCode($pCodePointer, $pHandle, $sCode) Then Return SetError($ERROR_WRITING_CODE)
	_WriteCode($pCodePointer, $pHandle, $sCode)
	Local $Ret[3][$__Memory_Deallocations[0]+5]
	For $i = 1 To $__Memory_Deallocations[0]
		$Ret[1][$i] = $__Memory_Deallocations[$i]
		$Ret[2][$i] = $__Memory_Sizes[$i]
	Next
	$Ret[0][0] = $__Memory_Deallocations[0]
	$Ret[0][1] = $pCodePointer
	$Ret[0][2] = $pHandle
	$Ret[0][3] = $Handle_Passed
	$Ret[0][4] = $sRet
	$__Memory_Deallocations = $Old_Allocations
	Return $Ret
EndFunc   ;==>ProcCallBackRegister
; #FUNCTION# ====================================================================================================================
; Name...........: ProcCallBack
; Description ...: Calls the callback from ProcCallBackRegister.
;
; Syntax.........: ProcCallback(ByRef $ProcSettings)
; Parameters ....: $ProcSettings		- As returned by ProcCallBackRegister.
; Return values .: Success              - Depends on return type specified in ProcCallBackRegister.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......:
; Related .......: DllCall, ProcCall, ProcCallBackRegister, ProcCallBackFree
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func ProcCallback(ByRef $ProcSettings)
	If NOT IsArray($ProcSettings) Then Return SetError($ERROR_BAD_CALLBACK)
	If $_Confirm Then
		ConsoleWrite($ProcSettings[0][1] & @CRLF)
		ClipPut($ProcSettings[0][1])
		If MsgBox(1, "ProcCall", "Confirm execution of code at " & $ProcSettings[0][1] & ".") = 2 Then Return SetError($ERROR_USERHALT)
	EndIf
	$pThread = _CreateRemoteThread($ProcSettings[0][2], 0, 0, $ProcSettings[0][1], 0, 0, 0)
	Switch $ProcSettings[0][4]
		Case "void"
			_closeHandle($pThread)
			Return 0
		Case Else
			$iRet = WaitForThreadAndGetReturnCode($pThread)
			_CloseHandle($pThread)
	EndSwitch
	Return $iRet
EndFunc   ;==>ProcCallback
; #FUNCTION# ====================================================================================================================
; Name...........: ProcCallBackFree
; Description ...: Frees all resources associated with the callback and invalidates it.
; Syntax.........: ProcCallbackFree(ByRef $ProcSettings)
; Parameters ....: $ProcSettings		- As returned by ProcCallBackRegister.
; Return values .: Success              - Depends on return type specified in ProcCallBackRegister.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......: Remember to call this after a callback has been registrered.
; Related .......: ProcCallBackRegister, ProcCallBack
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func ProcCallbackFree(ByRef $ProcSettings)
	If NOT IsArray($ProcSettings) Then Return SetError($ERROR_BAD_CALLBACK)
	For $i = 1 To $ProcSettings[0][0]
		_VirtualFreeEx($ProcSettings[0][2], $ProcSettings[1][$i], $ProcSettings[2][$i], $MEM_DECOMMIT)
	Next
	If $ProcSettings[0][3] Then
		_CloseHandle($ProcSettings[0][2])
	EndIf
	$ProcSettings = 0
	Return True
EndFunc   ;==>ProcCallBackFree
; #FUNCTION# ====================================================================================================================
; Name...........: GetRemoteProcAddress
; Description ...: Gets a functions address in a loaded module inside a process. Similar to GetProcAddress, just with an extra param.
; Syntax.........: GetRemoteProcAddress($Proc, $sModule, $lpProc)
; Parameters ....: $Proc	      		- Either an open handle to the process, a process ID or the process name.
;				   $sModule				- Either the string name of the module or a handle to the module.
;				   $lpProc				- Either a string name of the function, an ordinal value or an number which is added to the module's
;										  base address.
; Return values .: Success              - The address of the function.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......:
; Related .......: ProcCall, GetRemoteModuleHandle, GetProcAddress
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func GetRemoteProcAddress($Proc, $sModule, $lpProc)
	Switch VarGetType($lpProc)
		Case "Int32" ;Ordinal passed
			Local $Type = "dword"
			Local $Value = _WinAPI_LoWord(_Iif($lpProc < 0, -$lpProc, $lpProc))
		Case "String" ;Function name passed
			Local $Type = "char*"
			Local $Value = $lpProc
		Case Else
			Return SetError($ERROR_INVALID_TYPE)
	EndSwitch
	If IsString($sModule) Then
		Local $Handle = GetRemoteModuleHandle($Proc, $sModule)
	Else
		Local $Handle = $sModule
	EndIf
	Local $uFunction = _GetProcAddress(_WinAPI_GetModuleHandle("kernel32.dll"), "GetProcAddress")
	Local $iRet = ProcCall($Proc, _
			"stdcall", _
			$uFunction, _
			"ptr", _
			"handle", $Handle, _
			$Type, $Value)
	If @Error Then Return SetError(@Error)
	Return $iRet
EndFunc   ;==>GetRemoteProcAddress
; #FUNCTION# ====================================================================================================================
; Name...........: GetRemoteModuleList
; Description ...: Returns an 2d array with the string name of the modules and the handles to them.
; Syntax.........: GetRemoteModuleList($sProcess)
; Parameters ....: $sProcess	      	- Either a process ID or the process name.
; Return values .: Success              - An array - where:
;										  $Array[0][0] = count
;										  $Array[n][0] = name of the module
;										  $Array[n][0] = handle to the module
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 14/06/2011
; Remarks .......:
; Related .......: _WinApi_GetModuleHandle, GetRemoteModuleHandle, GetProcAddress
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func GetRemoteModuleList($sProcess)
	Local $Pid = ProcessExists($sProcess)
	If Not $Pid Then Return SetError($ERROR_GETTING_HANDLE)
	$modEntry = DllStructCreate($tagMODULEENTRY32)
	DllStructSetData($modEntry,"dwSize",DLlStructGetSize($modEntry))
	$hTool = _CreateToolhelp32Snapshot($TH32CS_SNAPMODULE, $pID);
	If _WinApi_GEtLastError() = 5 Then Return $ERROR_ACCESS_DENIED
	Local $sModules[1] = [0], $Handles[1] = [0], $Count = 0
    If NOT _Module32First($hTool, $modEntry) Then Return $ERROR_INVALID_HANDLE
	Do
		If @Error Then ExitLoop
		_ArrayAdd($sModules,DllStructGetData($modEntry,"szModule"))
		_ArrayAdd($Handles,DllStructGetData($modEntry,"hModule"))
		$Count += 1
	Until NOT _Module32Next($hTool, $modEntry)
	Local $iRet[$Count +1][2]
	$iRet[0][0] = $Count
	For $i = 1 to $Count
		$iRet[$i][0] = $sModules[$i]
		$iRet[$i][1] = $Handles[$i]
	Next
	_CloseHandle($hTool)
	Return $iRet
EndFunc   ;==>GetRemoteProcAddress
; #FUNCTION# ====================================================================================================================
; Name...........: GetRemoteModuleHandle
; Description ...: Gets a handle to the module specified, in the process.
; Syntax.........: GetRemoteModuleHandle($sProcess, $sModuleName)
; Parameters ....: $Proc	      		- Either a process ID or the process name.
;				   $sModule				- The string name of the value.
; Return values .: Success              - The base address of the module.
;                  Failure              - @error is set. See header for debug.
; Author ........: Janus Thorborg (Shaggi)
; Modified.......: 07/08/2011
; Remarks .......: Module names are compared case indepently.
; Related .......: _WinApi_GetModuleHandle, GetRemoteModuleList
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func GetRemoteModuleHandle($sProcess, $sModuleName)
	Local $Pid = ProcessExists($sProcess)
	If Not $Pid Then Return SetError($ERROR_GETTING_HANDLE)
	$modEntry = DllStructCreate($tagMODULEENTRY32)
	DllStructSetData($modEntry,"dwSize",DLlStructGetSize($modEntry))
	$hTool = _CreateToolhelp32Snapshot($TH32CS_SNAPMODULE, $pID);
	If _WinApi_GEtLastError() = 5 Then Return SetError($ERROR_ACCESS_DENIED,@Error)
    If NOT _Module32First($hTool, $modEntry) Then Return SetError($ERROR_INVALID_HANDLE,@Error)
	Do
		If @Error Then ExitLoop
		If $sModulename = DllStructGetData($modEntry,"szModule") Then
			_CloseHandle($hTool)
			Return DllStructGetData($modEntry,"hModule")
		EndIf
	Until NOT _Module32Next($hTool, $modEntry)
	_CloseHandle($hTool)
	Return SetError($ERROR_MODULE_NOT_FOUND)
EndFunc   ;==>GetRemoteModuleHandle
; #FUNCTION# ====================================================================================================================
; Name...........: OpenProcess
; Description ...: Opens a process. Overwrite the DACL of target process as a fallback if the process has dropped rights. Doesn't
;				   require the user to be logged in with system or admin. This is similar to the normal OpenProcess, however this
;				   can acquire access to higher-privileged process.
; Syntax.........: OpenProcess($pID, $Rights[, $bCleanUp = False])
; Parameters ....: $pID	      			- Either a process ID or the process name.
;				   $Rights				- The desired access.
;				   $bCleanUp			- If set to false, the function will not raise the target process state back to normal.
; Return values .: Success              - A handle is returned to the process.
;                  Failure              - @error is set. See header for debug.
; Author ........: asp, Shaggi, Rain
; Modified.......: 07/08/2011
; Remarks .......: Tries with debug privilege first, then overwrites dacl and resets it back to original state.
; Related .......: _WinApi_OpenProcess()
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func OpenProcess($Pid, $Rights,$bCleanUp = True)
	$PID = ProcessExists($Pid)
	If Not $Pid Then Return SetError($ERROR_INVALID_PROCESS,@ERROR)
	Local $process = _WinAPI_OpenProcess($Rights, False, $Pid, True);
	If $process Then Return $process
	Local $dacl = DllStructCreate("ptr")
	Local $secdesc = DllStructCreate("ptr")
	Local $dacl_target = DllStructCreate("ptr")
	Local $secdesc_target = DllStructCreate("ptr")
	If _GetSecurityInfo(_WinAPI_GetCurrentProcess(), $SE_KERNEL_OBJECT, $DACL_SECURITY_INFORMATION, 0, 0, DllStructGetPtr($dacl, 1), 0, DllStructGetPtr($secdesc, 1)) Then Return SetError($ERROR_GETTING_INFO,@ERROR)
	$process = _WinAPI_OpenProcess(BitOR($WRITE_DAC, $READ_CONTROL), 0, $Pid)
	If Not $process Then Return False
	If _GetSecurityInfo($process, $SE_KERNEL_OBJECT, $DACL_SECURITY_INFORMATION, 0, 0, DllStructGetPtr($dacl_target, 1), 0, DllStructGetPtr($secdesc_target, 1)) Then Return SetError($ERROR_GETTING_INFO,@ERROR)
	If _SetSecurityInfo($process, $SE_KERNEL_OBJECT, BitOR($DACL_SECURITY_INFORMATION, $UNPROTECTED_DACL_SECURITY_INFORMATION), 0, 0, DllStructGetData($dacl, 1), 0) Then Return SetError($ERROR_SETTING_INFO,@ERROR)
	_CloseHandle($process)
	$hProc = _WinAPI_OpenProcess($Rights, False, $Pid, True)
	If Not $hProc Then Return SetError($ERROR_GETTING_HANDLE,@Error)
	If $bCleanUp Then
		If _SetSecurityInfo($hProc, $SE_KERNEL_OBJECT, BitOR($DACL_SECURITY_INFORMATION, $UNPROTECTED_DACL_SECURITY_INFORMATION), 0, 0, DllStructGetData($dacl_target, 1), 0) Then Return SetError($ERROR_SETTING_INFO,@ERROR)
	EndIf
	Return $hProc
EndFunc   ;==>OpenProcess
; #INTERNAL_FUNCTIONS# ====================================================================================================================
; /*****************************************
; *		Calculates the inline machine code
; *		offset for a relative call to an address
; *****************************************/
Func _AddressOf($AbsAddress, $Instruction, $offset = 0)
	; Relative address = (ABSOLUTE_CALL_ADDRESS - (START_OF_CURRENT_ROUTINE + OFFSET_OF_CURRENT_INSTRUCTION)) - CALL_INSTRUCTION_SIZE
	Return _SwapEndian((Number($AbsAddress) - (Number($Instruction) + Number($offset))) - Number($CALL_INSTRUCTION_SIZE))
EndFunc   ;==>_AddressOf
; /*****************************************
; *		Swaps the endianness of a value
; *****************************************/
Func _SwapEndian($iValue)
	Return Hex(Binary($iValue))
EndFunc   ;==>_SwapEndian
; /*****************************************
; *		Outputs opcode from a return type,
; *		whoose result gets stored in %eax.
; *****************************************/
Func _AssembleReturn($sReturn)
	Switch StringLower($sReturn)
		Case "byte"
			Return "33DB" & _          	;XOR EBX,EBX
					"0FB6D8" & _        ;MOVZX EBX,AL	Zero pad %al
					"33C0" & _          ;XOR EAX,EAX
					"8BC3" 				;MOV EAX,EBX	Return needs to be in EAX if _GetExitCodeThread should work.
		Case Else ;More to be added. - Shorts/words?
			Return ""
	EndSwitch
EndFunc   ;==>_AssembleReturn
; /*****************************************
; *		Creates opcode for parameter pushing
; *		based on calling convention and
; *		parameters.
; *****************************************/
Func _CreateArgumentCode($hProc, $Conv, ByRef $Pams, ByRef $Types)
	If Not $Pams[0] Then Return ""
	Local $Code
	Switch $Conv
		Case "stdcall"
			For $i = $Pams[0] To 1 Step -1 ; in stdcall arguments is passed right->left
				$Code &= _Assemble($hProc, $Pams[$i], $Types[$i])
			Next
			Return $Code
		Case "fastcall"
			Select ; fastcall passes two first arguments into ECX and EDX
				Case $Pams[0] = 1
					If DllStructGetSize(DllStructCreate($Types[1])) <= 4 Then
						Return _Assemble($hProc, $Pams[1], $Types[1], $ECX)
					Else
						Return _Assemble($hProc, $Pams[1], $Types[1])
					EndIf
				Case $Pams[0] = 2
					Local $Struct, $Count = 0
					For $i = 1 To $Pams[0] ; Argument valuation is done left -> right
						$Struct = DllStructCreate($Types[$i])
						If @error Then Return SetError($ERROR_INVALID_TYPE)
						If DllStructGetSize($Struct) <= 4 Then
							Switch $Count
								Case 0
									$Code &= _Assemble($hProc, $Pams[$i], $Types[$i], $ECX)
									_ArrayDelete($Pams, $i)
									_ArrayDelete($Types, $i)
									$Pams[0] -= 1
									$Types[0] -= 1
									$Count += 1
									$i -= 1
								Case 1
									$Code &= _Assemble($hProc, $Pams[$i], $Types[$i], $EDX)
									_ArrayDelete($Pams, $i)
									_ArrayDelete($Types, $i)
									$Pams[0] -= 1
									$Types[0] -= 1
									ExitLoop
							EndSwitch
						EndIf
					Next
					Return $Code
				Case $Pams[0] > 2
					Local $Struct, $Count = 0
					For $i = 1 To $Pams[0] ; Argument valuation is done left -> right
						$Struct = DllStructCreate($Types[$i])
						If @error Then Return SetError($ERROR_INVALID_TYPE)
						If DllStructGetSize($Struct) <= 4 Then
							Switch $Count
								Case 0
									$Code &= _Assemble($hProc, $Pams[$i], $Types[$i], $ECX)
									_ArrayDelete($Pams, $i)
									_ArrayDelete($Types, $i)
									$Pams[0] -= 1
									$Types[0] -= 1
									$Count += 1
									$i -= 1
								Case 1
									$Code &= _Assemble($hProc, $Pams[$i], $Types[$i], $EDX)
									_ArrayDelete($Pams, $i)
									_ArrayDelete($Types, $i)
									$Pams[0] -= 1
									$Types[0] -= 1
									ExitLoop
							EndSwitch
						EndIf
					Next
					For $i = $Pams[0] To 1 Step -1 ; in stdcall arguments is passed right->left
						$Code &= _Assemble($hProc, $Pams[$i], $Types[$i])
					Next
					Return $Code
			EndSelect
	EndSwitch
EndFunc   ;==>_CreateArgumentCode
; /*****************************************
; *		Waits for a thread and returns its
; *		exit code.
; *****************************************/
Func WaitForThreadAndGetReturnCode($thread)
	_WinAPI_WaitForSingleObject($thread)
	Return _GetExitCodeThread($thread)
EndFunc   ;==>WaitForThreadAndGetReturnCode
; /*****************************************
; *		Allocates $size memory and returns
; *		a pointer to it.
; *****************************************/
Func _Allocate($hProc, $Size = 512)
	Local $pPointer = _VirtualAllocEx($hProc, 0, $Size, BitOR($MEM_RESERVE, $MEM_COMMIT), $PAGE_EXECUTE_READWRITE)
	_ArrayAdd($__Memory_Deallocations, $pPointer)
	$__Memory_Deallocations[0] += 1
	_ArrayAdd($__Memory_Sizes, $Size)
	Return $pPointer
EndFunc   ;==>_Allocate
; /*****************************************
; *		Writes the binary code $sCode to the
; *		location $pPointer points to in the
; *		process $hProc.
; *****************************************/
Func _WriteCode($pPointer, $hProc, $sCode)
	$CodeStruct = DllStructCreate("byte[" & StringLen($sCode) & "]")
	DllStructSetData($CodeStruct, 1, $sCode)
	Local $BytesWritten
	_WriteProcessMemory($hProc, $pPointer, DllStructGetPtr($CodeStruct), DllStructGetSize($CodeStruct), $BytesWritten)
	Return $BytesWritten == DllStructGetSize($CodeStruct)
EndFunc   ;==>_WriteCode
; /*****************************************
; *		Assembles push statement for a specific
; *		type.
; *****************************************/
Func _Assemble($hProc, $sParameter, $Type, $Register = 0)
	Local $sType = _Iif(StringInStr($Type, "static"), StringTrimLeft($Type, 6), $Type)
	Select
		Case StringInStr($sType, "*") ;by reference passing
			If _
					StringInStr($sType, "wchar") Or _
					StringInStr($sType, "char") Or _
					StringInStr($sType, "byte") Then
				$CodeStruct = DllStructCreate(StringTrimRight($sType, 1) & "[" & StringLen($sParameter) & "]")
				DllStructSetData($CodeStruct, 1, $sParameter)
			Else
				$CodeStruct = DllStructCreate(StringTrimRight($sType, 1))
				DllStructSetData($CodeStruct, 1, $sParameter)
			EndIf
			If @error Then Return SetError($ERROR_INVALID_TYPE)
			Local $pPointer = _VirtualAllocEx($hProc, 0, DllStructGetSize($CodeStruct), BitOR($MEM_RESERVE, $MEM_COMMIT), $PAGE_EXECUTE_READWRITE)
			If Not StringInStr($Type, "static") Then
				_ArrayAdd($__Memory_Deallocations, $pPointer)
				$__Memory_Deallocations[0] += 1
				_ArrayAdd($__Memory_Sizes, DllStructGetSize($CodeStruct))
			EndIf
			Local $BytesWritten
			_WriteProcessMemory($hProc, $pPointer, DllStructGetPtr($CodeStruct), DllStructGetSize($CodeStruct), $BytesWritten)
			;Print($pPointer & @CRLF & _SwapEndian($pPointer))
			Switch $Register
				Case 0
					Return "68" & _SwapEndian($pPointer) ;PUSH PARAM
				Case $ECX
					Return "B9" & _SwapEndian($pPointer) ;MOV ECX, PARAM
				Case $EDX
					Return "BA" & _SwapEndian($pPointer);MOV EDX, PARAM
			EndSwitch
		Case StringInStr($sType, "&") ;by adress of
			Switch $Register
				Case 0
					Return "FF35" & _SwapEndian($sParameter) ;PUSH DWORD PTR:[PARAM]
				Case $ECX
					Return "8B0D" & _SwapEndian($sParameter) ;MOV ECX, [PARAM]
				Case $EDX
					Return "8B15" & _SwapEndian($sParameter);MOV EDX, [PARAM]
			EndSwitch
		Case Else
			Switch $Register
				Case 0
					Return "68" & _SwapEndian($sParameter)
				Case $ECX
					Return "B9" & _SwapEndian($sParameter)
				Case $EDX
					Return "BA" & _SwapEndian($sParameter)
			EndSwitch
	EndSelect
EndFunc   ;==>_Assemble
; /*****************************************
; *		Initializes the library, ensures we
; *		are running under x86 and opens some dlls.
; *		Called automatically on startup.
; *****************************************/
Func __ProcCall_Startup()
	If @AutoItX64 Then
		Local $Res = MsgBox(52, "ProcCall Warning", "It seems you are trying to run this program in " & _
				"64-bit mode. Please note that this is NOT supported and your program " & _
				"will most likely crash. Continue?")
		If $Res = 7 Then Exit
	EndIf
	If Not IsDeclared("__ProcCall_Start") Then Global $__ProcCall_Start = 0
	If Not $__ProcCall_Start Then
		$__ProcCall_Start += 1
		If Not IsDeclared("__Dll__HandleIndex") Then Global $__Dll__HandleIndex[1] = [0]
		_ArrayAdd($__Dll__HandleIndex, DllOpen("Kernel32.dll"))
		_ArrayAdd($__Dll__HandleIndex, DllOpen("Advapi32.dll"))
		_ArrayAdd($__Dll__HandleIndex, DllOpen("User32.dll"))
		$__Dll__HandleIndex[0] += 3
		OnAutoItExitRegister("__ProcCall_ShutDown")
	EndIf
EndFunc   ;==>__ProcCall_Startup
; /*****************************************
; *		Frees libraries.
; *		Called automatically on shutdown.
; *****************************************/
Func __ProcCall_ShutDown()
	If $__ProcCall_Start Then
		$__ProcCall_Start = 0
		For $i = 1 To $__Dll__HandleIndex[0]
			DllClose($__Dll__HandleIndex[$i])
		Next
		Global $__Dll__HandleIndex[1] = [0]
	EndIf
EndFunc   ;==>__ProcCall_ShutDown
; #Win32_API FUNCTIONS # ====================================================================================================================
; /*****************************************
; *		Gets exit code of an thread
; *****************************************/
Func _GetExitCodeThread($thread)
	Local $Dummy = DllStructCreate("uint")
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "BOOL", "GetExitCodeThread", "handle", $thread, "ptr", DllStructGetPtr($Dummy))
	Return Dec(Hex(DllStructGetData($Dummy, 1)))
EndFunc   ;==>_GetExitCodeThread
; /*****************************************
; *		Gets security context of an process
; *****************************************/
Func _GetSecurityInfo($handle, $ObjectType, $SecurityInfo, $ppsidOwner, $ppsidGroup, $ppDacl, $ppSacl, $ppSecurityDescriptor)
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_Advapi32], "long", "GetSecurityInfo", _
			"ptr", $handle, _
			"int", $ObjectType, _
			"dword", $SecurityInfo, _
			"ptr", $ppsidOwner, _
			"ptr", $ppsidGroup, _
			"ptr", $ppDacl, _
			"ptr", $ppSacl, _
			"ptr", $ppSecurityDescriptor)
	Return $Call[0]
EndFunc   ;==>_GetSecurityInfo
; /*****************************************
; *		Sets security context of an process
; *****************************************/
Func _SetSecurityInfo($handle, $ObjectType, $SecurityInfo, $psidOwner, $psidGroup, $pDacl, $pSacl)
	$Call = DllCall($__Dll__HandleIndex[$DLL_Advapi32], "long", "SetSecurityInfo", _
			"ptr", $handle, _
			"int", $ObjectType, _
			"dword", $SecurityInfo, _
			"ptr", $psidOwner, _
			"ptr", $psidGroup, _
			"ptr", $pDacl, _
			"ptr", $pSacl)
	Return $Call[0]
EndFunc   ;==>_SetSecurityInfo
; /*****************************************
; *		Reads memory in a process
; *****************************************/
Func _ReadProcessMemory($hProcess, $pBaseAddress, $pBuffer, $iSize)
	Local $aResult = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "bool", "ReadProcessMemory", "handle", $hProcess, "ptr", $pBaseAddress, "ptr", $pBuffer, "ulong_ptr", $iSize, "ulong_ptr*", 0)
	Return $aResult[0]
EndFunc   ;==>_ReadProcessMemory
; /*****************************************
; *		Writes memory in a process
; *****************************************/
Func _WriteProcessMemory($hProcess, $pBaseAddress, $pBuffer, $iSize, ByRef $iWritten)
	Local $aResult = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "bool", "WriteProcessMemory", "handle", $hProcess, "ptr", $pBaseAddress, "ptr", $pBuffer, "ulong_ptr", $iSize, "ulong_ptr*", $iWritten)
	$iWritten = $aResult[5]
	Return $aResult[0]
EndFunc   ;==>_WriteProcessMemory
; /*****************************************
; *		Closes a handle
; *****************************************/
Func _CloseHandle($aHandle)
	Local $aResult = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "bool", "CloseHandle", "handle", $aHandle)
	Return $aResult[0]
EndFunc   ;==>_CloseHandle
; /*****************************************
; *		Retrieves a handle to a snapshot of
; *		the process.
; *****************************************/
Func _CreateToolhelp32Snapshot($iFlags, $pID)
	Local $aResult = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "handle", "CreateToolhelp32Snapshot", "dword", $iFlags,"dword",$pID)
	Return $aResult[0]
EndFunc   ;==>_CloseHandle
; /*****************************************
; *		Copies information about the first module
; *		into the $Module buffer
; *****************************************/
Func _Module32First($hSnapshot,Byref $Module)
	Local $aResult = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "bool", "Module32First", "handle", $hSnapshot,"ptr",DlLStructGetPtr($Module))
	Return $aResult[0]
EndFunc   ;==>_CloseHandle
; /*****************************************
; *		Copies information about the next module
; *		into the $Module buffer
; *****************************************/
Func _Module32Next($hSnapshot, ByRef $Module)
	Local $aResult = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "bool", "Module32Next", "handle", $hSnapshot,"ptr",DlLStructGetPtr($Module))
	Return $aResult[0]
EndFunc   ;==>_CloseHandle
; /*****************************************
; *		Retrieves the corrosponding address
; *		to an ordinal or a string function
; *		in a module
; *****************************************/
Func _GetProcAddress($hModule, $lpProcName)
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "handle", "GetProcAddress", _
			"handle", $hModule, _
			"str", $lpProcName)
	Return $Call[0]
EndFunc   ;==>_GetProcAddress
; /*****************************************
; *		Creates a thread in another process
; *****************************************/
Func _CreateRemoteThread($hProcess, $lpThreadAttributes, $dwStackSize, $lpStartAddress, $lpParameter, $dwCreationFlags, $lpThreadId)
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "ptr", "CreateRemoteThread", _
			"ptr", $hProcess, _
			"ptr", $lpThreadAttributes, _
			"uint", $dwStackSize, _
			"ptr", $lpStartAddress, _
			"ptr", $lpParameter, _
			"dword", $dwCreationFlags, _
			"ptr", $lpThreadId)
	Return $Call[0]
EndFunc   ;==>_CreateRemoteThread
; /*****************************************
; *		Allocates virtual memory in another process
; *****************************************/
Func _VirtualAllocEx($hProcess, $pAddress, $iSize, $iAllocation, $iProtect)
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "ptr", "VirtualAllocEx", "handle", $hProcess, "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iAllocation, "dword", $iProtect)
	Return $Call[0]
EndFunc   ;==>_VirtualAllocEx
; /*****************************************
; *		Frees virtual memory in another process
; *****************************************/
Func _VirtualFreeEx($hProcess, $pAddress, $iSize, $iFreeType)
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_Kernel32], "bool", "VirtualFreeEx", "handle", $hProcess, "ptr", $pAddress, "ulong_ptr", $iSize, "dword", $iFreeType)
	Return $Call[0]
EndFunc   ;==>_VirtualFreeEx
; /*****************************************
; *		Calls a window procedure.
; *****************************************/
Func _CallWindowProc($lpWinProc,$hWnd = 0,$Msg = 0,$wParam = 0,$lParam = 0)
	Local $Call = DllCall($__Dll__HandleIndex[$DLL_User32],"lresult","CallWindowProc", _
			"ptr",$lpWinProc, _
			"hwnd",$hWnd, _
			"uint",$Msg, _
			"wparam",$wParam, _
			"lparam",$lParam)
	Return $Call[0]
EndFunc