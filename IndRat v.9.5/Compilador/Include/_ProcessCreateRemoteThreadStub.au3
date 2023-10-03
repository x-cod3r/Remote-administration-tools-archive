#include-once
#include <_ProcessFunctions.au3>	; _ProcessIs32Bit(), _ProcessIs64Bit()
#include <_ProcessDLLProcFunctions.au3>	; _ProcessGetProcAddress()
; ===================================================================================================================
; <_ProcessCreateRemoteThreadStub.au3>
;
;  Functions used to create a small Remote Thread Stub to start and Exit (quickly, hopefully) a Remote Thread
;	that was created using the 'undocumented' mode in _ProcessCreateRemoteThread(), and optionally inject it.
;	It is suggested that the better route would be to code this into the binary code itself, however
;	this can be used for simple execution of things like DLL Inject/UnInject and regular 0-to-1 parameter API calls -
;	 *as long as any pointers passed are pointers WITHIN the process*. (**int64 returns wont work in x86)
;	NOTE: MUST DESTROY AN INJECTED STUB *AFTER* THREAD TERMINATION AND *BEFORE* PROGRAM EXIT
;
; Functions:
;	_ProcessGenerateThreadStub()	; Creates the binary code for a Thread Stub, but doesn't inject it
;	_ProcessCreateRemoteThreadStub(); Creates a remote Thread Stub, injects it, and returns a pointer to it
;									; NOTE that this *MUST* be destroyed AFTER the Thread has terminated, and
;									; *BEFORE* program Exit.  It will not free itself on its own.
;	_ProcessDestroyRemoteThreadStub()	; Destroys the Remote Stub created by _ProcessCreateRemoteThreadStub()
;										; As above, note that this MUST be done AFTER Thread termination
;
; See also:
;	<_ProcessCreateRemoteThread.au3>
;	<_DLLInjection.au3>
;
; Author: Ascend4nt
; ===================================================================================================================


; ===================================================================================================================
;	--------------------	GLOBAL CONSTANTS	--------------------
; ===================================================================================================================


Global Const $STUB_X86_SIZE=16,$STUB_X64_SIZE=32	; useful in allocating memory that includes a stub


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessGenerateThreadStub($hProcess,$iProcessID,$pCodePtr,$bWow64Code=False)
;
; Function to create the Binary data for a Thread Stub to be injected into a Remote Process.
;	This code can be injected alongside other code/data, as long as it is:
;	1. allocated with PAGE_EXECUTE_READWRITE protection, and
;	2. the code is aligned on a 16-byte address [since VirtualAllocEx returns page-aligned ptrs, set this at the start]
;	Optionally the code can be allocated and injected on its own: _ProcessCreateRemoteThreadStub() will do this,
;	 though the separate allocation will take up more memory due to allocation granularity
;	 [one small allocation can use 64KB of memory!])
;
; $hProcess = handle to opened process
;	NOTE: Process must have been Opened with these attributes (0x043A total):
;	   PROCESS_CREATE_THREAD, PROCESS_QUERY_INFORMATION, PROCESS_VM_OPERATION, PROCESS_VM_WRITE, and PROCESS_VM_READ
; $iProcessID = Process ID #
; $pCodePtr = pointer to Code Address where Thread to execute is located at
;	NOTE: Memory must have been allocated using _ProcessMemoryAlloc() with $PAGE_EXECUTE_READWRITE access
; $bWow64Code = If True, and *this* process is running in 64-bit mode, and the process being injected into is running
;	in 32-bit mode, this will ensure the Stub created is 32-bit code.
;	NOTE the pointer MUST be 32-bit sized (or can be cut down to 32-bit)
;	 Since any address within a 32-bit Process's address space MUST be 32-bit and accessible to the application
;	 (existing in its address space), this should not be a problem.
;
; Returns:
;	Success: Binary data containing the Remote Stub code, @extended=Binary code size, @error = 0
;	Failure: 0, with @error set:
;		@error =  1 = invalid parameter or process does not exist
;		@error =  2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error =  3 = False/Failure returned from API called, or
;					INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = -1 = kernel32.dll module not found
;		@error = 3264 = Can't run 32-bit code in a 64-bit Process
;						(normally should only get this if both Process's are 64-bit but $bWow64Code=True)
;		@error = 6432 = Can't run 64-bit code in a 32-bit Process, unless its x86 32-bit Code ($bWow64Code=True)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGenerateThreadStub($hProcess,$iProcessID,$pCodePtr,$bWow64Code=False)
;~ 	Local Const $binRemoteThreadStubx86='0x58B8FEEDFACEFFD050B8DECAFBADFFD0'
;~ 	Local Const $binRemoteThreadStubx64='0x4883EC2848B8FEEDFACE00000000FFD04889C148B8DECAFBAD00000000FFD090'
	Local $iPtrSize=4,$sX64="",$pExitThread,$binStubCode,$iBinLen

	If @AutoItX64 Then
		If _ProcessIs32Bit($hProcess) Then
			If Not $bWow64Code Then Return SetError(6432,0,0)
		Else
			If $bWow64Code Then Return SetError(3264,0,0)
			$sX64="00000000"
			$iPtrSize=8
		EndIf
	Else
		If _ProcessIs64Bit($hProcess) Then Return SetError(3264,0,0)	; shouldn't really get here if Access mode set properly
	EndIf

	If $iPtrSize=4 Then
		$binStubCode='0x58B8FEEDFACEFFD050B8DECAFBADFFD0'									; x86 Code (32-bit)
		$iBinLen=$STUB_X86_SIZE
	Else
		$binStubCode='0x4883EC2848B8FEEDFACE00000000FFD04889C148B8DECAFBAD00000000FFD090'	; x64 Code (64-bit)
		$iBinLen=$STUB_X64_SIZE
	EndIf
;~ 	$iBinLen=BinaryLen($binStubCode)

	$pExitThread=_ProcessGetProcAddress($iProcessID,"kernel32.dll","ExitThread",$bWow64Code,$bWow64Code)
	If @error And @error<>-16 Then Return SetError(@error,@extended,0)

	$binStubCode=Binary(StringReplace(StringReplace($binStubCode,"FEEDFACE"&$sX64,StringTrimLeft(BinaryMid($pCodePtr,1,$iPtrSize),2)),"DECAFBAD"&$sX64,StringTrimLeft(BinaryMid($pExitThread,1,$iPtrSize),2)))
	Return SetExtended($iBinLen,$binStubCode)
EndFunc


; ===================================================================================================================
; Func _ProcessCreateRemoteThreadStub($hProcess,$iProcessID,$pCodePtr,$bWow64Code=False)
;
; Function to create and inject a Remote Thread Stub.
;	NOTE: This Stub MUST be destroyed AFTER Thread has terminated and BEFORE program Exit!
;
; $hProcess = handle to opened process
;	NOTE: Process must have been Opened with these attributes (0x043A total):
;	   PROCESS_CREATE_THREAD, PROCESS_QUERY_INFORMATION, PROCESS_VM_OPERATION, PROCESS_VM_WRITE, and PROCESS_VM_READ
; $iProcessID = Process ID #
; $pCodePtr = pointer to Code Address where Thread to execute is located at
;	NOTE: Memory must have been allocated using _ProcessMemoryAlloc() with $PAGE_EXECUTE_READWRITE access
; $bWow64Code = If True, and *this* process is running in 64-bit mode, and the process being injected into is running
;	in 32-bit mode, this will ensure the Stub created is 32-bit code.
;	NOTE the pointer MUST be 32-bit sized (or can be cut down to 32-bit)
;	 Since any address within a 32-bit Process's address space MUST be 32-bit and accessible to the application
;	 (existing in its address space), this should not be a problem.
;
; Returns:
;	Success: Pointer to Remote Thread Stub, @error = 0
;	Failure: 0, with @error set:
;		@error =  1 = invalid parameter or process does not exist
;		@error =  2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error =  3 = False/Failure returned from API called, or
;					INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = -1 = kernel32.dll module not found
;		@error = -11 = Trying to create a Thread in a 'Native System' (driver) Process.  This would cause BSOD's
;					  unless the code is specially tailored to run in that type of Process. (safety precaution)
;		@error = 3264 = Can't run 32-bit code in a 64-bit Process
;						(normally should only get this if both Process's are 64-bit but $bWow64Code=True)
;		@error = 6432 = Can't run 64-bit code in a 32-bit Process, unless its x86 32-bit Code ($bWow64Code=True)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessCreateRemoteThreadStub($hProcess,$iProcessID,$pCodePtr,$bWow64Code=False)
	Local $pRtlStub,$binStubCode,$stLocalStub,$iBinLen

	$binStubCode=_ProcessGenerateThreadStub($hProcess,$iProcessID,$pCodePtr,$bWow64Code)
	If @error Then Return SetError(@error,@extended,0)
	$iBinLen=@extended	; Binary code length

	; $MEM_COMMIT (0x1000), $PAGE_EXECUTE_READWRITE (0x40)
	$pRtlStub=_ProcessMemoryAlloc($hProcess,$iBinLen,0x1000,0x40)
	If @error Then Return SetError(@error,@extended,0)

	Local $stLocalStub=DllStructCreate("byte["&$iBinLen&"]")
	DllStructSetData($stLocalStub,1,$binStubCode)

	If Not _ProcessMemoryWrite($hProcess,$pRtlStub,DllStructGetPtr($stLocalStub),$iBinLen) Then
		Local $iErr=@error,$iExt=@extended
		_ProcessMemoryFree($hProcess,$pRtlStub)
		Return SetError($iErr,$iExt,0)
	EndIf
	Return $pRtlStub
EndFunc


; ===================================================================================================================
; Func _ProcessDestroyRemoteThreadStub($hProcess,$pStub)
;
; Function to free memory allocated for a Thread stub allocated using _ProcessCreateRemoteThreadStub()
;
; $hProcess = handle to opened process
;	Process should have been opened with at least PROCESS_VM_OPERATION (0x08)
; $pStub = Address of memory to free (returned from _ProcessCreateRemoteThreadStub())
;
; Returns:
;	Success: True
;	Falure: False, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'. Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessDestroyRemoteThreadStub($hProcess,$pStub)
	Local $vRet=_ProcessMemoryFree($hProcess,$pStub)
	Return SetError(@error,@extended,$vRet)
EndFunc
