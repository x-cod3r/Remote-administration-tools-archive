#include-once
#include <_ProcessFunctions.au3>	; _ProcessIs32Bit(), _ProcessIs64Bit()
#include <_ProcessUndocumented.au3>	; _ProcessUDGetSubSystemInfo()
#include <_ThreadFunctions.au3>		; for setting $THREAD_LAST_TID (user will need this module for control too)
; ===================================================================================================================
; <_ProcessCreateRemoteThread.au3>
;
; One function to create a Thread in a Remote (external) Process.
;	This function checks the Process SubSystem to make sure its not a Native Process (driver) that
;	is being injected into, avoiding potential BSOD's.
;	Technically these processes can be injected into (see InjLib), but require a lot of jumping through hoops.
;	Also, bit-mode is checked to make sure it matches the given Process, as this can cause a crash as well.
;	  There *is* an option to inject into a 32-bit Process (32-bit code only!) from a 64-bit process though.
;
; Functions:
;	_ProcessCreateRemoteThread()	; create a Thread in another Process
;
; References:
;	"InjLib - A Library that implements remote code injection for all Windows versions - CodeProject"
;		@ http://www.codeproject.com/kb/library/InjLib.aspx
;	MSDN, NTInternals
;
; Author: Ascend4nt
; ===================================================================================================================

; ===================================================================================================================
;	--------------------	GLOBAL CALL INFORMATION VARIABLES	--------------------
; ===================================================================================================================

; Last Method: 1 = normal, -1 = Undocumented. Last TID = Thread ID of last created Thread
Global $REMOTE_THREAD_LAST_METHOD=0,$REMOTE_THREAD_LAST_TID=0


; ===================================================================================================================
;	--------------------	MAIN FUNCTION	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessCreateRemoteThread($hProcess,$pCodePtr,$vParam=0,$bCreateSuspended=False,$iUndocumented=0,$bWow64Code=False))
;
; Creates a Thread in a Remote Process that has had code injected into allocated memory.
;	See "_ProcessFunctions.au3" for calls to open a process, allocate memory, read and write to the Process,
;	and later free memory in the Process. See '_ThreadFunctions' for functions to Suspend/Resume/Terminate and
;	get an Exit Code from the Thread.
;
;	Note this *REQUIRES* the Process to call 'ExitThread' when exiting when using the alternate 'RtlCreateUserThread'
;	  (Otherwise it may not terminate correctly, and the Exit Code will be lost)
;
;	ALSO IMPORTANT!! Do NOT attempt to inject code into Processes with a different bit-mode than THIS Process.
;	  I *do* allow 64-bit to 32-bit Process code injection with $bWow64Code=True, but it had BETTER be 32-bit code!
;	  (also see in-code notes)
;
; $hProcess = Process handle of the Process to create a Remote Thread in
;	NOTE: Process must have been Opened with these attributes (0x043A total):
;	   PROCESS_CREATE_THREAD, PROCESS_QUERY_INFORMATION, PROCESS_VM_OPERATION, PROCESS_VM_WRITE, and PROCESS_VM_READ;
; $pCodePtr = pointer to Code Address where Thread to execute is located at
;	NOTE: Memory must have been allocated using _ProcessMemoryAlloc() with $PAGE_EXECUTE_READWRITE access
; $vParam = Parameter to pass to Thread (only 1 is allowed) [32-bit on x86, 64-bit on x64]
; $bCreateSuspended = If True, create the Thread and put it in a suspended state immediately.
;					If False (default), it will execute immediately.
; $iUndocumented = Determines usage of 'Undocumented' API call 'RtlCreateUserThread'.  Possible values:
;	1 = Use only if normal method does not work
;	0 = (default): do NOT use the Undocumented method (if the regular method fails)
;	-1 = FORCE use of this method (skipping regular method)
; $bWow64Code = If True, and *this* process is running in 64-bit mode, and the process being injected into is running
;	in 32-bit mode, this will allow the code to try executing despite the difference in bit-modes.  The code had
;	better be 32-bit (with optional embedded 'Heavens Gate' code), but do not pass pointers to 64-bit module functions
;	(like the 64-bit 'ntdll.dll' and 'wow64' interface DLL's). 	Pointers inside the Process's 32-bit address space
;	(32-bit modules or allocated memory) *can* be truncated down to 32-bit. This is due to the requirement that
;	any address within a 32-bit Process's address space MUST be 32-bit and accessible to the application
;	(existing in its address space), so truncating should not be a problem.
;
;	Recommended: at the minimum, _RemoteThreadXBase functions for setting up code and data and executing it.
;
; Returns:
;	Success: Thread Handle, and @extended = Thread ID, with the following variables set:
;		$REMOTE_THREAD_LAST_METHOD is set: -1 = Undocumented Thread creation, 1 = Regular Thread Creation
;		$REMOTE_THREAD_LAST_TID & $THREAD_LAST_TID set: Thread ID # (same as @extended)
;	Failure: 0, with @error set:
;		@error =  1 = invalid parameter
;		@error =  2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error =  3 = 0 Returned from API call (failure - call GetLastError for info)
;		@error =  6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = -11 = Trying to create a Thread in a 'Native System' (driver) Process.  This would cause BSOD's
;					  unless the code is specially tailored to run in that type of Process. (safety precaution)
;		@error = 3264 = Can't run 32-bit code in a 64-bit Process
;						(normally should only get this if both Process's are 64-bit but $bWow64Code=True)
;		@error = 6432 = Can't run 64-bit code in a 32-bit Process, unless its x86 32-bit Code ($bWow64Code=True)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessCreateRemoteThread($hProcess,$pCodePtr,$vParam=0,$bCreateSuspended=False,$iUndocumented=0,$bWow64Code=False)
	If Not IsPtr($hProcess) Or Not IsPtr($pCodePtr) Then Return SetError(1,0,0)

;~ 	ConsoleWrite("_ProcessCreateRemoteThread called. $hProcess="&$hProcess&", $pCodePtr="&$pCodePtr&", $vParam="&$vParam& _
;~ 		", $bCreateSuspended="&$bCreateSuspended&", $bForceRtl="&$bForceRtl&@CRLF)
	Local $iAttrib,$aRet,$stClientID
#cs
	; -------------------------------------------------------------------------------------------------
	; Injecting into Native System Processes/Drivers will cause a crash most times unless the code is
	;	specially crafted.  I believe only Native NTDLL.DLL functions can be called from it,
	;	and a special exit technique is required, and *possibly* SEH (structured exception handling).
	;	Its easier to just AVOID ever injecting code into those types of Processes.
	; -------------------------------------------------------------------------------------------------
#ce
	If _ProcessUDGetSubSystemInfo($hProcess)=1 Then Return SetError(-11,0,0)	; 1 = Native System Process (driver)
#cs
	; ---------------------------------------------------------------------------------------------------
	; 32/64 Bit-mode incompatibilities?
	; ---------------------------------------------------------------------------------------------------
	; Also Important - don't inject code into a Process running in a different bit-mode
	;	While the 'Wow64' layer allows accessing lower-bit modes through API calls,
	;	actually *injecting* 64-bit code into a 32-bit Process is a recipe for disaster!
	;	HOWEVER - it is possible to inject 32-bit code from a 64-bit Process into one, as long as it
	;	uses its own DLL search methods and NO 64-bit pointers. The $bWow64Code param is for this case.
	;
	;	Also, the so-called 'Heaven's Gate' technique *might* make it possible to access 64-bit
	;	modules/memory from 32-bit mode (NTDLL.DLL and 2 others that aren't very helpful), but
	;	you will only have access to NTDLL.DLL functions if you can even manage to get 'to' Heaven's Gate.
	;	With NTDLL.DLL, you could further inject another process and THEN get access to other functions,
	;	but what are you, nuts?!  Either way, the $bWow64Code param should allow that code too.
	;	ADDITIONALLY, You *could* also try 'Heaven's Gate' *from* a 32-bit Process with _ThreadCreate(),
	;	however, thats another module altogether.
	; ---------------------------------------------------------------------------------------------------
#ce
	If @AutoItX64 Then
		If _ProcessIs32Bit($hProcess) Then
			If Not $bWow64Code Then Return SetError(6432,0,0)
		Else
			If $bWow64Code Then Return SetError(3264,0,0)
		EndIf
	Else
		If _ProcessIs64Bit($hProcess) Then Return SetError(3264,0,0)	; shouldn't really get here if Access mode set properly
	EndIf

	If $iUndocumented>=0 Then
		; Attempt 1: Use the standard API call

		; Set attributes based on whether the code should be started in a Suspended state or not (leave stack size at default)
		If $bCreateSuspended Then
			$iAttrib=4	; CREATE_SUSPENDED = 4
		Else
			$iAttrib=0	; thread starts immediately
		EndIf

		$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","CreateRemoteThread","handle",$hProcess,"ptr",0,"ulong_ptr",0, _
			"ptr",$pCodePtr,"ulong_ptr",$vParam,"dword",$iAttrib,"dword*",0)
		If @error Then Return SetError(2,@error,0)
		ConsoleWrite("CreateRemoteThread return: handle:"&$aRet[0]&" Thread ID:"&$aRet[7]&@CRLF)
		If $aRet[0] Then
			$REMOTE_THREAD_LAST_METHOD=1
			$THREAD_LAST_TID=$aRet[7]			; save Thread ID
			$REMOTE_THREAD_LAST_TID=$aRet[7]
			Return SetExtended($aRet[7],$aRet[0])	; Thread ID in extended
		EndIf
		If $iUndocumented=0 Then Return SetError(3,0,0)	; not allowed to attempt Undocumented version?
	EndIf

	; Failure on Attempt 1, or $iUndocumented<0: Use the 'undocumented' API call
	;	Note this *REQUIRES* the Process to call 'ExitThread' to exit in order to get a proper Exit code

	$stClientID=DllStructCreate("ulong_ptr;ulong_ptr")		; CLIENT_ID structure (Process ID, Thread ID)

	$aRet=DllCall($_COMMON_NTDLL,"long","RtlCreateUserThread","handle",$hProcess,"ptr",0,"bool",$bCreateSuspended,"ulong",0, _
		"ulong*",0,"ulong*",0,"ptr",$pCodePtr,"ulong_ptr",$vParam,"handle*",0,"ptr",DllStructGetPtr($stClientID))
	If @error Then Return SetError(2,@error,0)

	If $aRet[0] Then Return SetError(6,$aRet[0],0)	; Not STATUS_SUCCESS? Return with NTSTATUS in @extended

	$THREAD_LAST_TID=DllStructGetData($stClientID,2)	; get Thread ID #
;~ 	ConsoleWrite("Status-success returned from RtlCreateUserThread(). StackReserved value:"&$aRet[5]&", StackCommit value:"&$aRet[6]& _
;~ 		", Handle:"&$aRet[9]&", Thread ID#:"&$THREAD_LAST_TID&", Process ID#:"&DllStructGetData($stClientID,1)&@CRLF)
	$REMOTE_THREAD_LAST_METHOD=-1
	$REMOTE_THREAD_LAST_TID=$THREAD_LAST_TID

	Return SetExtended($THREAD_LAST_TID,$aRet[9])	; Thread ID in extended
EndFunc
