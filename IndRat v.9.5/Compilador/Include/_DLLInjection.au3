#include-once
#include <_ProcessCreateRemoteThreadStub.au3>
#include <_ProcessCreateRemoteThread.au3>
#include <_ProcessDLLProcFunctions.au3>
#include <_ThreadFunctions.au3>
; ===================================================================================================================
; <_DLLInjection.au3>
;
; Code to Inject and UNinject a DLL into/from a given process.
;
; Functions:
;	_DLLInject()	; Injects a DLL into the given Process
;	_DLLUnInject()	; UnInjects (or decrements ref. count) of a DLL in given Process
;
; Dependencies:
;	<_ThreadFunctions.au3>
;	<_DLLFunctions.au3>
;
; See also:
;	<_DLLStructInject.au3>	; Memory injection & manipulation of DLLStructs
;
; Author(s): Ascend4nt (technique is the most common technique for DLL Injection, though I add Stub code)
; ===================================================================================================================


; ===================================================================================================================
; Func _DLLInject($vProcessID,$sDLLPath)
;
;	Injects a DLL into another process using a Code Stub which calls a single-parameter API function.
;
;	NOTE: The reason for the stub is the potential use of 'RtlCreateUserThread'.  This *requires* a call
;	 to 'ExitThread', otherwise it will keep on running (god/MS only knows where), and Waiting for a Thread to finish
;	 will cause the program to enter an infinite loop.  Plus, the only way to get an exit code from
;	'RtlCreateUserThread' is through the 'ExitThread' call.  This required stuff is handled by the Stub code.
;	 *Regular binary code should be sent the function addresses for anything needed - unless loading API's from DLL's
;	  that aren't part of the target process.
;	  (in Inject/UnInject code, 'kernel32.dll' is all that's needed (which is a part of every non-driver process))
;
;	ADDITIONAL: For 64-bit code, a full 64-bit Module Handle can not be returned due to the Exit Code's 32-bit size limit
;	  (for this reason, use the module name again if you call _DLLUnInject())
;	  *If you *really* need the Module Handle in 64-bit mode, just use _ProcessGetModuleBaseAddress()
;
; $vProcessID = process name or ID
; $sDLLPath = path to DLL file (or just the DLL filename if it exists in one of the standard DLL locations, or
;	in one of the search path locations of the given Process)
;
; Returns:
;	Success: @error=0, and: In 32-bit mode: Module Handle/Base Addresss [for other process]; 64-bit mode: 1
;		NOTE: in x64, if you need to uninject the DLL, you can reuse the name in a call to _DLLUnInject()
;	Failure: 0, with @error set:
;		@error =  1 = invalid parameter, or process does not exist
;		@error =  2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error =  3 = False/Failure returned from API called, or
;					INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error =  6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 10 = DLL Load failed (Thread opened, but load failed [examined exit code of Thread]
;		@error = 16 = Process passed wasn't a number, and does not exist (process ended or is invalid) - ProcessOpen()
;		@error = -1 = no modules found matching criteria
;		@error = -2 = more than one module of the same name found
;		@error = -11 = Trying to create a Thread in a 'Native System' (driver) Process.  This would cause BSOD's
;					  unless the code is specially tailored to run in that type of Process. (safety precaution)
;		@error = 3264 = Can't run 32-bit code in a 64-bit Process
;						(normally should only get this if both Process's are 64-bit but $bWow64Code=True)
;		@error = 6432 = Typically can't run 64-bit code in a 32-bit Process, unless is x86 Code ($bWow64Code=True).
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLLInject($vProcessID,$sDLLPath)
	If Not IsString($sDLLPath) Or $sDLLPath="" Then Return SetError(1,0,0)

    Local $hProcess=0,$hThread=0,$pAllocatedMem=0,$pLoadLibrary,$hInjectedDLL,$stStubAndString,$binStub

	Local $iStubSz,$iDLLPathLen=StringLen($sDLLPath)+1	; 1 extra for NULL-term

	; Strict here in defining the DLL extension.. could remove this check:
	If $iDLLPathLen<=4 Or StringRight($sDLLPath,4)<>".dll" Then Return SetError(1,0,0)

#cs
	; ---------------------------------------------------------------------------------------------------------------
	; Get handle to process, using these access types:
	;	PROCESS_CREATE_THREAD = 0x02 | PROCESS_QUERY_INFORMATION = 0x400
	;	PROCESS_VM_OPERATION = 0x08 | PROCESS_VM_WRITE = 0x20 | PROCESS_VM_READ = 0x10
	;	= [Combined] = 0x043A
	; ---------------------------------------------------------------------------------------------------------------
#ce
	$hProcess=_ProcessOpen($vProcessID,0x043A)
	If @error Then Return SetError(@error,@extended,0)
	$vProcessID=@extended	; in case we were given a ProcessName, _ProcessOpen() returns PID in @extended

	; A once-only loop helps where "goto's" would be helpful
	Do
		$pLoadLibrary=_ProcessGetProcAddress($vProcessID,"kernel32.dll","LoadLibraryW")
		If @error Then ExitLoop

		; Allocate the maximum size of a stub (luckily they are both even-sized, so Unicode string can be appended without align)
		$iStubSz=$STUB_X64_SIZE

		; Allocate memory with $MEM_COMMIT (0x1000), $PAGE_EXECUTE_READWRITE (0x40)
		$pAllocatedMem=_ProcessMemoryAlloc($hProcess,$iStubSz+$iDLLPathLen*2,0x1000,0x40)
		If @error Then ExitLoop

		; Generate binary Thread Stub code
		$binStub=_ProcessGenerateThreadStub($hProcess,$vProcessID,$pLoadLibrary)
		If @error Then ExitLoop

		; Set local copy of stub code and string
		;	(luckily stub code is always an even number, and VirtualAllocEx gives page boundaries, so no alignment necessary)
		$stStubAndString=DllStructCreate("byte["&$iStubSz&"];wchar["&$iDLLPathLen&']')
		DllStructSetData($stStubAndString,1,$binStub)
		DllStructSetData($stStubAndString,2,$sDLLPath)

		If Not _ProcessMemoryWrite($hProcess,$pAllocatedMem,DllStructGetPtr($stStubAndString),$iStubSz+$iDLLPathLen*2) Then ExitLoop

		; We create a thread using a stub and 'LoadLibraryW' function, and pass the allocated memory (string) as the one parameter
		$hThread=_ProcessCreateRemoteThread($hProcess,$pAllocatedMem,$pAllocatedMem+$iStubSz,False,1)
		If @error Then ExitLoop

		ConsoleWrite("Thread ID:"&@extended&@CRLF)

		_ThreadWaitForExit($hThread)

		$hInjectedDLL=_ThreadGetExitCode($hThread)

		SetError(0)		; Important to distinguish ExitLoop types
	Until 1
	; Now that 'loop' has gone through, we can grab any error info (from UDF calls) and close handles before returning a status
	Local $iErr=@error,$iExt=@extended

	; Cleanup before exiting (these functions check for valid handles, so no need for pre-checks)
	_ThreadCloseHandle($hThread)
	_ProcessMemoryFree($hProcess,$pAllocatedMem)	; used for Remote Stubs too (_ProcessDestroyRemoteThreadStub() does the same)
	_ProcessCloseHandle($hProcess)

	; Any errors in above 'loop' calls? Return 'fail' with @error & @extended codes
	If $iErr Then Return SetError($iErr,$iExt,0)

	If $hInjectedDLL=0 Then Return SetError(10,0,0)

	If @AutoItX64 Then
		Return 1
	Else
		; Return module handle (as pointer)
		Return Ptr($hInjectedDLL)
	EndIf
EndFunc


; ===================================================================================================================
; Func _DLLUnInject($vProcessID,$vDLLModule)
;
;	UN-Injects a DLL that was INjected into another process using _DLLInject().
;		(see notes above regarding the Stub code)
;	  NOTE: Either use the DLL handle returned by _DLLInject(), or pass a DLL module string.
;	  This will also decrement the refernce count OR unload other DLL's for a Process if thats your wish
;		(and you are nuts)
;
; $vProcessID = process name or ID
; $vDLLModule = module pointer returned from _DLLInject() [if valid], or module name.
;
; Returns:
;	Success: True, with @extended = Module handle (usually same as module base address?)
;	Failure: False, with @error set:
;		@error =  1 = invalid parameter, or process does not exist
;		@error =  2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error =  3 = False/Failure returned from API called, or
;					INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error =  6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 10 = DLL Free failed (Thread opened, but free failed [examined exit code of Thread]
;		@error = 16 = Process passed wasn't a number, and does not exist (process ended or is invalid) - ProcessOpen()
;		@error = -1 = no modules found matching criteria
;		@error = -2 = more than one module of the same name found
;		@error = -11 = Trying to create a Thread in a 'Native System' (driver) Process.  This would cause BSOD's
;					  unless the code is specially tailored to run in that type of Process. (safety precaution)
;		@error = 3264 = Can't run 32-bit code in a 64-bit Process
;						(normally should only get this if both Process's are 64-bit but $bWow64Code=True)
;		@error = 6432 = Typically can't run 64-bit code in a 32-bit Process, unless is x86 Code ($bWow64Code=True).
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLLUnInject($vProcessID,$vDLLModule)
	If IsString($vDLLModule) Then
		$vDLLModule=_ProcessGetModuleBaseAddress($vProcessID,$vDLLModule)
		If @error Then Return SetError(@error,@extended,False)
	ElseIf Not IsPtr($vDLLModule) Then
		Return SetError(1,0,False)
	EndIf

    Local $hProcess=0,$hThread=0,$pFreeLibrary,$iExitCode=0,$pRemoteStub=0
#cs
	; ---------------------------------------------------------------------------------------------------------------
	; Get handle to process, using these access types:
	;	PROCESS_CREATE_THREAD = 0x02 | PROCESS_QUERY_INFORMATION = 0x400
	;	PROCESS_VM_OPERATION = 0x08 | PROCESS_VM_WRITE = 0x20 | PROCESS_VM_READ = 0x10
	;	= [Combined] = 0x043A
	; ---------------------------------------------------------------------------------------------------------------
#ce
	$hProcess=_ProcessOpen($vProcessID,0x043A)
	If @error Then Return SetError(@error,@extended,0)
	$vProcessID=@extended	; in case we were given a ProcessName, _ProcessOpen() returns PID in @extended

	; A once-only loop helps where "goto's" would be helpful
	Do
		$pFreeLibrary=_ProcessGetProcAddress($vProcessID,"kernel32.dll","FreeLibrary")
		If @error Then ExitLoop

		$pRemoteStub=_ProcessCreateRemoteThreadStub($hProcess,$vProcessID,$pFreeLibrary)
		If @error Then ExitLoop

		; We create a thread using a stub & the 'FreeLibrary' function, and pass a module pointer as the one parameter (perfect size =)
		$hThread=_ProcessCreateRemoteThread($hProcess,$pRemoteStub,$vDLLModule,False,1)
		If @error Then ExitLoop

		ConsoleWrite("Thread ID:"&@extended&@CRLF)

		_ThreadWaitForExit($hThread)

		$iExitCode=_ThreadGetExitCode($hThread)

		SetError(0)		; Important to distinguish ExitLoop types
	Until 1
	; Now that 'loop' has gone through, we can grab any error info (from UDF calls) and close handles before returning a status
	Local $iErr=@error,$iExt=@extended

	; Cleanup before exiting (these functions check for valid handles, so no need for pre-checks)
	_ThreadCloseHandle($hThread)
	_ProcessMemoryFree($hProcess,$pRemoteStub)	; used for Remote Stubs too (_ProcessDestroyRemoteThreadStub() does the same)
	_ProcessCloseHandle($hProcess)

	; Any errors in above 'loop' calls? Return 'fail' with @error & @extended codes
	If $iErr Then Return SetError($iErr,$iExt,0)

	If $iExitCode=0 Then Return SetError(10,0,False)

	; Put module handle in @extended
    Return SetExtended($iExitCode,True)
EndFunc
