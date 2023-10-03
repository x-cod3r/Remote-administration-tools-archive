#include-once
#include "[CommonDLL]\_Kernel32DLLCommonHandle.au3"		; Common Kernel32.DLL handle
; ===================================================================================================================
; <_DLLFunctions.au3>
;
;	Functions to query, load and free DLL's, and get Procedure addresses.
;		NOTE: Unlike DllOpen/Close(), these functions work with and return actual handles from Windows API calls.
;		  (plus, 'GetProcAddress' isn't an AutoIT function)
;
; Already-Loaded DLL/Main .EXE Functions:
;	_DLL_GetLoadedLibraryHandle()	; Gets the handle for an already-loaded DLL (or base .EXE)
;	_DLL_GetModuleFilename()		; Gets the full pathname for the given DLL handle
;	_DLL_ForcePermanentLoad()		; Forces the given DLL to be permanently loaded (handle, address, or string allowed)
;									; XP/2003+ O/S required
;	_DLL_GetHandleFromAddress()		; Gets the base DLL or main .EXE module handle from a given address
;									; XP/2003+ O/S required (there is an alternative in _ProcessListFunctions.au3 though)
;
; Main DLL Load/Get-Address Functions:
;	_DLL_LoadLibrary()		; Loads a DLL (or increments DLL-load count), returns a handle to it
;	_DLL_FreeLibrary()		; Frees/Releases the DLL (and memory) as loaded by _DLL_LoadLibrary()
;							;  (or decrements DLL-load count)
;	_DLL_GetProcAddress()	; Returns a pointer to the procedure address of a function within the given DLL
;
; Wrapper Functions:
;	_DLL_GetBaseAndProcAddresses()	; Gets the Base DLL address and the address of any # of passed functions
;									;  (Loading/Freeing [if needed] of DLL is handled within.)
;	_DLL_GetBaseAndProcAddress()	; Gets the Base DLL address and a single function address
;									;  (uses _DLL_GetBaseAndProcAddresses)
;
; *INTERNAL* Functions:
;	__DLL_GetModuleHandleEx()	; Used by _DLL_GetHandleFromAddress(), _DLL_ForcePermanentLoad(). Requires XP/2003+ O/S
;
; See also:
;	<_RemoteThreadExecution.au3>	; UDF which relies on these functions
;	<_ThreadFunctions.au3>			; utilized by the above UDF
;	<TestDLLFunctionAddress.au3>	; interactive get-proc-address test
;	<TestDLLFunctionsScratch.au3>	; tests of this module
;
; Author: Ascend4nt
; ===================================================================================================================


; ===================================================================================================================
;	--------------------	INTERNAL-ONLY!! FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func __DLL_GetModuleHandleEx($vModule,$iFlags,$vModuleType="wstr")
;
;	* INTERNAL FUNCTION *
;
; XP/2003 + O/S's only!
;
; Calls 'GetModuleHandleEx' for various functions in this UDF.
;
; $vModule = Either 1. the handle of the module, or a pointer to memory within it, or
;			2. the name of the loaded .DLL file name - WITHOUT the path.
; $iFlags = flags to send to GetModuleHandleEx:
;	0x00 = increment the reference count
;	0x01 = GET_MODULE_HANDLE_EX_FLAG_PIN (forces the module to stay loaded until program termination)
;	0x02 = GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT (don't change the reference count)
;			NOTE: If this is set, then _DLL_FreeLibrary() would need to be called after to decrement the count
;	0x04 = GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS  (required if $vModule is a handle/pointer)
;
; Returns:
;	Success: Handle with @error=0
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func __DLL_GetModuleHandleEx($vModule,$iFlags,$vModuleType="wstr")
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetModuleHandleExW","dword",$iFlags,$vModuleType,$vModule,"handle*",0)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
	Return $aRet[3]
EndFunc


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================



; ===================================================================================================================
; Func _DLL_GetHandleFromAddress($pAddress)
;
; XP/2003 + O/S's only!  Alternative: _ProcessGetModuleByAddress() in _ProcessListFunctions.au3
;
; Gets an already-loaded DLL's handle based on an address.
;	The name of the module can be found using _DLL_GetModuleFilename, though for more info its better
;	to just use _ProcessGetModuleByAddress(), or _ProcessListModules() or _ProcessGetBaseAddress()
;
; $pAddress = Either the handle of the module, or a pointer to memory within it
;
; Returns:
;	Success: Handle with @error=0
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_GetHandleFromAddress($pAddress)
	If Ptr($pAddress)=0 Then Return SetError(1,0,0)
	; Flags = GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS (0x04) + GET_MODULE_HANDLE_EX_FLAG_UNCHANGED_REFCOUNT (0x02)
	Local $vRet=__DLL_GetModuleHandleEx($pAddress,0x06,"ptr")
	Return SetError(@error,@extended,$vRet)
EndFunc


; ===================================================================================================================
; Func _DLL_ForcePermanentLoad($vModule)
;
; XP/2003 + O/S's only!
;
; Forces an already-loaded DLL module to be PERMANENTLY loaded in thie Process.
;	This means no amount of calls to _DLL_FreeLibrary(), or the built-in DllClose() will ever unload the DLL.
;	It will only get unloaded at program termination.
;
; $vModule = Either 1. the handle of the module, or a pointer to memory within it, or
;			2. the name of the loaded .DLL file name - with or without the path.
;
; Returns:
;	Success: Handle to module with @error=0
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_ForcePermanentLoad($vModule)
	Local $vRet, $sType,$iFlags=0x01	; Flags: GET_MODULE_HANDLE_EX_FLAG_PIN (0x01)
	If IsPtr($vModule) Then
		$sType="ptr"
		$iFlags+=0x04			; Flags 'OR'd with GET_MODULE_HANDLE_EX_FLAG_FROM_ADDRESS (0x04)
	ElseIf IsString($vModule) Then
		$sType="wstr"
	Else
		Return SetError(1,0,0)
	EndIf
	$vRet=__DLL_GetModuleHandleEx($vModule,$iFlags,$sType)
	Return SetError(@error,@extended,$vRet)
EndFunc


; ===================================================================================================================
; Func _DLL_GetLoadedLibraryHandle($sDLLName=0)
;
; Gets the DLL handle for an already-loaded DLL. For the executable itself, leave $sModule as ""
;
; $sDLLName = Name of main .EXE or a loaded .DLL file name - with or without the path.
;			  Default value of 0 returns the main executable's module handle
;
; Returns:
;	Success: handle to the DLL library (or main Executable)
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_GetLoadedLibraryHandle($sDLLName=0)
	If Not IsString($sDLLName) And $sDLLName<>0 Then Return SetError(1,0,0)
	Local $aRet,$sType='wstr'
	; 0 -> get current executable module handle
	If $sDLLName=0 Then $sType='ptr'
	$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","GetModuleHandleW",$sType,$sDLLName)
	If @error Then Return SetError(2,@error,0)
	If $aRet=0 Then Return SetError(3,0,0)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _DLL_GetModuleFilename($hDLLModule)
;
; Gets the full pathname for the given module handle.
;
; $hDLLModule = DLL Handle.
;
; Returns:
;	Success: non-zero result (@error = 0). If successful, $hDLLModule is invalidated (set to 0)
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_GetModuleFilename($hDLLModule)
	If Not IsPtr($hDLLModule) Then Return SetError(1,0,"")
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"dword","GetModuleFileNameW","handle",$hDLLModule,"wstr","","dword",65536)
	If @error Then Return SetError(2,@error,0)
	If $aRet=0 Then Return SetError(3,0,0)
	If StringLeft($aRet[2],4)="\\?\" Then Return StringTrimLeft($aRet[2],4)	; may be returned with this prefix according to MSDN
	Return $aRet[2]
EndFunc


; ===================================================================================================================
; Func _DLL_LoadLibrary($sDLLName)
;
; Loads the DLL (loads it into memory or increments the DLL-load count)
;	NOTE: Certain DLL's are permanently 'loaded' for all Processes, and Loading/Freeing them has no effect
;	  other than getting their address. Examples: ntdll.dll, kernel32.dll, user32.dll, gdi32.dll (and others)
;
; $sDLLName = DLL file name. This doesn't need a full path if it included in the DLL search-path pattern,
;	otherwise a full pathname is required.
;
; Returns:
;	Success: handle to the DLL library
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_LoadLibrary($sDLLName)
	If Not IsString($sDLLName) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"handle","LoadLibraryW","wstr",$sDLLName)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
;~  	ConsoleWrite("_DLL_LoadLibrary("&$sDLLName&") call succeeded, return: "&$aRet[0]&@CRLF)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _DLL_FreeLibrary(ByRef $hDLLModule)
;
; Frees the DLL (unloads it or or decrements the DLL-load count).
;	Note: If successful, $hDLLModule will be invalidated (set to 0)
;	ALSO: Certain DLL's are permanently 'loaded' for all Processes, and Loading/Freeing them has no effect
;	  other than getting their address. Examples: ntdll.dll, kernel32.dll, user32.dll, gdi32.dll (and others)
;
; $hDLLModule = DLL Handle
;	NOTE: The handle will be invalidated if call is successful (set to 0)
;
; Returns:
;	Success: non-zero result (@error = 0). If successful, $hDLLModule is invalidated (set to 0)
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_FreeLibrary(ByRef $hDLLModule)
	If Not IsPtr($hDLLModule) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","FreeLibrary","handle",$hDLLModule)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
	$hDLLModule=0
;~  	ConsoleWrite("_DLL_FreeLibrary() call succeeded, return: "&$aRet[0]&@CRLF)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _DLL_GetProcAddress($hDLLModule,$vProcName)
;
; Given the DLL loaded via _DLL_LoadLibrary(), this function will lookup the passed Function name and
;	return its address.  Note: $vProcName can also be set to an ordinal value (#)
;	Also note: If the Procedure name is a string, it will be sent as an ANSI/ASCII string.
;
; $hDLLModule = DLL Handle
; $vProcName = Procedure name (as listed in Windows API on MSDN, or through exports in DLLExportViewer),
;	or 'ordinal value' (# indicating the function index). If the Procedure name is a string, it will
;	be sent as an ANSI/ASCII string.
;
; Returns:
;	Success: Procedure Address pointer, @error=0
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_GetProcAddress($hDLLModule,$vProcName)
	If Not IsPtr($hDLLModule) Then Return SetError(1,0,0)
	Local $aRet,$sProcType
	; Distinguish between procedure name and ordinal value (#):
	If StringIsDigit($vProcName) Then
		$sProcType="long_ptr"
	ElseIf IsString($vProcName) Then
		$sProcType="str"
	Else
		Return SetError(1,0,0)
	EndIf
	$aRet=DllCall($_COMMON_KERNEL32DLL,"ptr","GetProcAddress","handle",$hDLLModule,$sProcType,$vProcName)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
;~ 	ConsoleWrite("_DLL_GetProcAddress("&$sProcName&") call succeeded, return: "&$aRet[0]&@CRLF)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _DLL_GetBaseAndProcAddresses($sDLLName,$sFuncs,$sSep=';',$bUnloadDLL=True)
;
; Wrapper function to get the Base and Function address for the passed parameters.
;	Returns a x-element array (DLL Module Base Address, Function addresses)
;	NOTE: The # of Functions (separated by $sSep) is returned in @extended
;	ALSO: If any *single* function name is not found, this will fail, regardless of any found function names.
;
; $sDLLName = DLL file name. This doesn't need a full path if it is included in the DLL search-path pattern,
;	otherwise a full pathname is required.
; $sFuncs = Procedure names or ordinal-values (separated with $sSep) to get addresses for.
; $sSep = separator to use in splitting up function names
; $bUnloadDLL = If True (default), Free's the DLL handle, and if its not a permanently-loaded DLL, or
;	its load-count is 0, it will unload the DLL.
;	**NOTE: If False, the caller must call _DLL_FreeLibrary() for the DLL Module (using array[0] as a parameter)**
;
; Returns:
;	Success: x-element array, with @error=0 and @extended=number of function addresses
;		[0] = DLL Module Base Address
;		[1] = 1st Function/Procedure Address
;		[->x] = last Function/Procedure Address
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_GetBaseAndProcAddresses($sDLLName,$sFuncs,$sSep=';',$bUnloadDLL=True)
	Local $pFunc,$hDLLModule,$aFuncs,$aPtrs,$iErr=0,$iExt,$iTotal=0

	$hDLLModule=_DLL_LoadLibrary($sDLLName)
	If @error Then Return SetError(@error,@extended,"")

	$aFuncs=StringSplit($sFuncs,$sSep,1)
	Dim $aPtrs[$aFuncs[0]+1]
	$aPtrs[0]=$hDLLModule		; the Base DLL Address (and Handle)

	For $i=1 To $aFuncs[0]
		$pFunc=_DLL_GetProcAddress($hDLLModule,$aFuncs[$i])
		If @error Then
			$iErr=@error
			$iExt=@extended
			ExitLoop
		EndIf
		$aPtrs[$i]=$pFunc
		$iTotal+=1
	Next
	If $bUnloadDLL Or $iErr Then _DLL_FreeLibrary($hDLLModule)
	If $iErr Then Return SetError($iErr,$iExt,"")
	Return SetExtended($iTotal,$aPtrs)
EndFunc


; ===================================================================================================================
; Func _DLL_GetBaseAndProcAddress($sDLLName,$vProcName)
;
; Wrapper function to get the Base and Function address for the passed parameters.
;	Returns a 2-element array (DLL Module Base Address, Function address)
;	NOTE: If more than one function name was passed, this will only return the 1st function address.
;
; $sDLLName = DLL file name. This doesn't need a full path if it is included in the DLL search-path pattern,
;	otherwise a full pathname is required.
; $vProcName = Procedure name (as listed in Windows API on MSDN, or through exports in DLLExportViewer),
;	or 'ordinal value' (# indicating the function index). If the Procedure name is a string, it will
;	be sent as an ANSI/ASCII string.
; $bUnloadDLL = If True (default), Free's the DLL handle, and if it is not a permanently-loaded DLL, or
;	its load-count is 0, it will unload the DLL.
;	**NOTE: If False, the caller must call _DLL_FreeLibrary() for the DLL Module (using element [0] as a parameter)**
;
; Returns:
;	Success: 2-element array, with @error=0:
;		[0] = DLL Module Base Address
;		[1] = Function/Procedure Address
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error = 3 = False/Failure returned from API called
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLL_GetBaseAndProcAddress($sDLLName,$vProcName,$bUnloadDLL=True)
	Local $aPtrs=_DLL_GetBaseAndProcAddresses($sDLLName,$vProcName,$bUnloadDLL)
	If @error Then Return SetError(@error,@extended,"")
	If @extended>1 Then ReDim $aPtrs[2]
	Return $aPtrs
EndFunc
