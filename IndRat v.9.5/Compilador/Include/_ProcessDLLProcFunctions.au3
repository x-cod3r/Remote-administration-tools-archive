#include-once
#include <_DLLFunctions.au3>
#include <_ProcessListFunctions.au3>
; ===============================================================================================================================
; <_ProcessDLLProcFunctions.au3>
;
; Wrapper functions for translating DLL base & function addresses to external DLL base & function addresses where
;	there is a possibility of the DLL being located in a different area of the external Process's memory
;
; Functions:
;	_ProcessGetProcAddresses()	; Returns pointers to base DLL & functions in an external Process
;	_ProcessGetProcAddress()	; Returns a single pointer to a function in an external Process (@extended=Base DLL)
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	PROCESS PROC-ADDRESS WRAPPER FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessGetProcAddresses($iProcessID,$sDLLName,$sFuncs,$sSep=';',$bList32bitMods=False,$bGetWow64Instance=False)
;
; Wrapper function to get the Base DLL address & Function addresses for an external Process using basic math.
;	Returns an array of addresses as they exist in the given Process's address space.
;	NOTE: The # of Functions (separated by $sSep) is returned in @extended
;	ALSO: If any *single* function name is not found, this will fail, regardless of any found function names.
;
; $iProcessID = Process ID # of external Process to use in converting Function addresses.
; $sDLLName = DLL file name. This doesn't need a full path if it is included in the DLL search-path pattern,
;	otherwise a full pathname is required.
; $sFuncs = Procedure names or ordinal-values (separated with $sSep) to get addresses for.
; $sSep = separator to use in splitting up function names
; $bList32bitMods* = If True, and running in 64-bit mode on a 64bit O/S, this will grab additional 32-bit modules
;	that are attached to a given 32-bit process. (its confusing - but yes, 64-bit modules are attached as well)
;	False returns strictly 64-bit modules for 32-bit processes.
; $bGetWow64Instance = If $bList32bitMods=True and more than one instance matching $sModuleName is found,
;	this determines whether the 1st (64-bit) or 2nd (32-bit) module base address is returned.
;
; Returns:
;	Success: x-element array, with @error=0 and @extended=number of function addresses
;		[0] = DLL Module Base Address (in the given Process's address space)
;		[1>x] = Function/Procedure Address as it exists in the given Process's address space
;	Failure: "" with @error set:
;		@error =  1 = invalid parameter, or process does not exist.
;		@error =  2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error =  3 = False/Failure returned from API called, or
;					INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = -1 = no modules found matching criteria
;		@error = -2 = more than one module of the same name found
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetProcAddresses($iProcessID,$sDLLName,$sFuncs,$sSep=';',$bList32bitMods=False,$bGetWow64Instance=False)
	Local $pExtBase,$hDLLModule,$aPtrs,$aExtPtrs,$iTotal

	; Strip path when passing DLL (if a full path is passed)
	$pExtBase=_ProcessGetModuleBaseAddress($iProcessID,StringRegExpReplace($sDLLName,"(.*?)([^\\]+)$","$2"),$bList32bitMods,$bGetWow64Instance)
	If @error Then Return SetError(@error,@extended,"")

	$aPtrs=_DLL_GetBaseAndProcAddresses($sDLLName,$sFuncs,$sSep)
	If @error Then Return SetError(@error,@extended,"")
	$iTotal=@extended
	Dim $aExtPtrs[$iTotal+1]	; Size to fit DLL base + # of Procedure Addresses

	$hDLLModule=$aPtrs[0]	; Grab *our* DLL base address
	$aExtPtrs[0]=$pExtBase	; Set external DLL base address

	; Now calculate external Process addresses
	; FunctionAddress-DLLBase = offset. Add ModuleBase of other Process to get offset to same function in that memory space
	For $i=1 To $iTotal
		$aExtPtrs[$i]=$aPtrs[$i]-$hDLLModule+$pExtBase
	Next
	Return SetExtended($iTotal,$aExtPtrs)
EndFunc


; ===================================================================================================================
; Func _ProcessGetProcAddress($iProcessID,$sDLLName,$sFunc,$bList32bitMods=False,$bGetWow64Instance=False)
;
; Wrapper function to get the Function address for an external Process using basic math. (+ @extended = DLL Base Address)
;	Returns the address of the function as it exists in the given Process's address space.
;	NOTE: If more than one function name was passed, this will only return the 1st function address.
;	ALSO: @extended must be cast to pointer for it to be properly recognized by other functions [Ptr(@extended)]
;
; $iProcessID = Process ID # of external Process to use in converting Function address.
; $sDLLName = DLL file name. This doesn't need a full path if it is included in the DLL search-path pattern,
;	otherwise a full pathname is required.
; $sFunc = Procedure name or ordinal-value to get address for.
; $bList32bitMods* = If True, and running in 64-bit mode on a 64bit O/S, this will grab additional 32-bit modules
;	that are attached to a given 32-bit process. (its confusing - but yes, 64-bit modules are attached as well)
;	False returns strictly 64-bit modules for 32-bit processes.
; $bGetWow64Instance = If $bList32bitMods=True and more than one instance matching $sModuleName is found,
;	this determines whether the 1st (64-bit) or 2nd (32-bit) module base address is returned.
;
; Returns:
;	Success: Function/Procedure Address as it exists in the given Process's address space, @error=0
;		@extended=DLL base address (must be cast back to pointer using Ptr(@extended))
;	Failure: 0 with @error set:
;		@error =  1 = invalid parameter, or process does not exist.
;		@error =  2 = DLLCall error, with @extended = DLLCall error code (see AutoIT help)
;		@error =  3 = False/Failure returned from API called, or
;					INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = -1 = no modules found matching criteria
;		@error = -2 = more than one module of the same name found
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetProcAddress($iProcessID,$sDLLName,$sFunc,$bList32bitMods=False,$bGetWow64Instance=False)
	Local $aExtPtrs=_ProcessGetProcAddresses($iProcessID,$sDLLName,$sFunc,$bList32bitMods,$bGetWow64Instance)
	If @error Then Return SetError(@error,@extended,0)
	Return SetExtended($aExtPtrs[0],$aExtPtrs[1])
EndFunc