#include-once
#include "[CommonDLL]\_Kernel32DLLCommonHandle.au3"		; Common Kernel32.DLL handle
; ===================================================================================================================
; <_ThreadFunctions.au3>
;
;	Functions for opening or creating a Thread, querying it, getting/setting data for it, and so on.
;		NOTE: Some functions require Vista/2008+ O/S (see function descriptions/headers),
;		  though Undocumented function alternatives exist (see _ThreadUndocumented.au3)
;		Also: CONTEXT functions moved to <_ThreadContext.au3> due to size/usefulness issue
;
; Functions:
;	_ThreadOpen()			; Opens a handle to a Thread.
;	_ThreadGetCurrentID()	; Gets the current Thread ID #
;	_ThreadCreate()			; Creates a Thread for the current process and returns a handle to it (@extended = Thread ID#)
;	_ThreadGetThreadID()	; Returns Thread ID given a Thread handle. Vista/2008+ req'd. Not necessary for properly written code.
;	_ThreadGetProcessID()	; Returns Process ID given a Thread handle. Vista/2008+ req'd.
;	_ThreadGetPriority()	; Gets the Thread priority
;	_ThreadSetPriority()	; Sets the Thread priority.
;	_ThreadGetAffinityMask() ; Wrapper for _ThreadSetAffinityMask() that quickly sets a thread's affinity to a value (default = 1)
;							;  and back to its original affinity state again.
;							;  NOTE that the better/safer method would be to pass _ProcessGetAffinityMask() as 2nd param
;							;  and even BETTER - use the 'Undocumented' function _ThreadUDGetAffinityMask()
;	_ThreadSetAffinityMask() ; Sets the Affinity Mask for the given Thread. Returns previous Affinity Mask in @extended
;	_ThreadGetTimes()		; Returns Thread Creation, Exit, Kernel/User-mode Times  [<_WinTimeFunctions.au3> is helpful here)
;	_ThreadWaitForExit()	; Waits for a Thread to exit, with optional Timeout
;	_ThreadStillActive()	; Checks to see if a Thread is still active (running)
;	_ThreadGetExitCode()	; Gets the exit code of a Thread that has terminated.
;							; NOTE: 0x103 may mean 'still active' if not a possible exit code.
;							;  Use _ThreadWaitForExit or _ThreadStillActive to make sure
;	_ThreadSuspend()		; Suspends a given Thread, or increases the 'suspend count'
;	_ThreadWow64Suspend()	; ""  "", but for 32-bit threads running on a 64-bit O/S (Vista/2008+ only)
;							;  NOTE: in testing, works same as _ThreadSuspend() for both 32-bit and 64-bit processes!
;	_ThreadResume()			; Resumes a given Thread, or decreases the 'suspend count' if >1
;	_ThreadTerminate()		; Terminates a Thread. *** NOT RECOMMENDED ***
;							;   Use only as a last resort, or if certain that terminating the Thread won't have repercussions.
;	_ThreadCloseHandle()	; Closes a Thread handle (and invalidates it)
;	_ThreadGetWinThreadID()	; Returns the Thread ID # that Created the given Window (also returns Process ID# in @extended)
;
; External (related) Functions:
;	_ThreadGetContext()		; find in <_ThreadContext.au3> (extracted from here due to its bulk and rarity of use)
;
; Ditched ideas (for now):
;	_ThreadWinList()		; like _ProcessWinList() but for individual Threads. Seems to have limited usefulness.
;
; See also:
;	<_ProcessCreateRemoteThread.au3> ; Function to create a Remote Thread
;									;  (falls under _Process UDFs [rather than Threads] due to ProcessOpen requirements)
;	<_ThreadRemote.au3>				; Functions for creating Remote Threads
;	<_ThreadContext.au3>			; Special Thread Context functions. ADVANCED and dangerous stuff here
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
;	<_ThreadUndocumentedList.au3>	; 'Undocumented' Thread List (wrapper) functions
;	<ThreadFunctionsTest.au3>		; GUI Interface allowing interaction with Thread functions
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumented.au3>		; 'Undocumented' Process functions - stuff your Mom told you to stay away from
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<ProcessFunctionsTest.au3>		; GUI Interface allowing interaction with Process functions
;	<TestProcessFunctionsScratch.au3>	; Misc. tests of Process functions (a little experimental 'playground')
;	<_RemoteThreadExecution.au3>	; example use of Threads
;	<_DLLFunctions.au3>				; used by the above
;	<_NTQueryInfo.au3>				; undocumented use of threads [NtQueryInformationThread (or ZwQueryInformationThread)]
;	<_WinTimeFunctions.au3>			; for use with _ThreadGetTimes()
;
; References:
;	MSDN
;
; Author: Ascend4nt
; ===================================================================================================================

; ===================================================================================================================
;	--------------------	LIMITED_INFO ACCESS (O/S-Dependent value)	--------------------
; ===================================================================================================================

If StringRegExp(@OSVersion,"_(XP|200(0|3))") Then	; XP, XPe, 2000, or 2003?
	Dim $THREAD_QUERY_LIMITED_INFO=0x0040	; Regular THREAD_QUERY_INFORMATION access
	Dim $THREAD_SET_LIMITED_INFO=0x0020		; Regular THREAD_SET_INFORMATION access
Else
	Dim $THREAD_QUERY_LIMITED_INFO=0x0800	; Only available on Vista/2008+
	Dim $THREAD_SET_LIMITED_INFO=0x0400		; "" [SetPriority,Get/SetAffinity]
EndIf


; ===================================================================================================================
;	--------------------	GLOBAL CONSTANTS/VARIABLES	--------------------
; ===================================================================================================================

Global Const $_THREAD_STILL_ACTIVE=0x103
Global Const $_THREAD_DEFAULT_STACK_SIZE=262144		; 256KB stack
Global $THREAD_LAST_EXIT_CODE=0,$THREAD_LAST_TID=0


; ===================================================================================================================
;	--------------------	PSEUDO-HANDLE TO SELF	--------------------
; ===================================================================================================================

Global $THREAD_THIS_HANDLE=Ptr(-2)	; should opt instead to use _ThreadOpen(-1,-1) for future compatibility



; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ThreadOpen($iThreadID,$iAccess,$bInheritHandle=False)
;
; Opens a handle to a Thread.
;
; $iThreadID= Thread ID to get handle of. If -1, it will get a pseudo-handle to current Thread
; $iAcccess = Access type (not used when $iThreadID=-1)
; $bInheritHandle = child processes inherit handle? True/False. False is mostly used.
;
; See 'Thread Security and Access Rights (Windows)' at MSDN:
;	http://msdn.microsoft.com/en-us/library/ms686769%28VS.85%29.aspx
;
; Commonly-used access types (combinable) [not applicable for $iThreadID=-1, which has ALL_ACCESS]:
;	THREAD_QUERY_INFORMATION = 0x0040, THREAD_QUERY_LIMITED_INFORMATION = 0x0800 (Vista/2008+),
;	THREAD_SUSPEND_RESUME = 0x0002  [for suspending/resuming a thread],
;	THREAD_TERMINATE = 0x0001 [for Terminating a thread]
;
; Returns:
;	Success: Thread Handle, with @error=0
;	Failure: 0, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error - @extended contains actual @error (see AutoIT help)
;		@error = 3 = API function returned null handle
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadOpen($iThreadID,$iAccess,$bInheritHandle=False)
	Local $aRet
	; Special 'get current Thread handle' request? [Full access is implied, and no inheritance - this is a 'pseudo-handle']
	If $iThreadID=-1 Then
		$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","GetCurrentThread")	; usually the constant -2, but we're keeping it future-OS compatible this way
	Else
		$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","OpenThread","dword",$iAccess,"bool",$bInheritHandle,"dword",$iThreadID)
	EndIf
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)	; 0 = failed!
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ThreadGetCurrentID()
;
; Returns the Thread ID of current process.
;
; Returns:
;	Success: Thread ID # (non-zero)
;	Failure: 0, with @error set:
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = 0 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetCurrentID()
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"dword","GetCurrentThreadId")
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,@error,0)	; 0 = failed!
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ThreadCreate($pFuncPtr,$vParam=0,$bCreateSuspended=False)
;
; Creates a Thread in the current process. The function pointer must point to code to execute.
;	In AutoIt, this must be done by allocating memory (using VirtualAlloc or GlobalAlloc+VirtualProtect) and
;	writing to it using DLLStruct*() functions.
;
; $pFuncPtr = pointer to buffer where Thread to execute is located at
; $vParam = Parameter to pass to Thread (only 1 is allowed) [32-bit on x86, 64-bit on x64]
; $bCreateSuspended = If True, create the Thread and put it in a suspended state immediately.
;					If False, it will execute immediately.
; $iStackSize = stack size to allocate to Thread (0 = allocate default stack)
;	* If set to a value thats <2048 (-1 for example), the function uses the default $_THREAD_DEFAULT_STACK_SIZE)
;
; Returns:
;	Success: Thread Handle, and @extended = Thread ID
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = 0 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadCreate($pFuncPtr,$vParam=0,$bCreateSuspended=False,$iStackSize=0)
	If Not IsPtr($pFuncPtr) Then Return SetError(1,0,0)
	Local $iAttrib
	If $bCreateSuspended Then
		$iAttrib=4	; CREATE_SUSPENDED = 4
	Else
		$iAttrib=0	; thread starts immediately
	EndIf

	If $iStackSize And $iStackSize<2048 Then $iStackSize=$_THREAD_DEFAULT_STACK_SIZE

	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"handle","CreateThread","ptr",0, _
		"ulong_ptr",$iStackSize,"ptr",$pFuncPtr,"ulong_ptr",$vParam,"dword",$iAttrib,"dword*",0)

	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
	$THREAD_LAST_TID=$aRet[6]
;~ 	ConsoleWrite("Thread created successfully, handle="&$aRet[0]&", Thread ID="&$aRet[6]&", CreatedSuspended="&$bCreateSuspended&@CRLF)
	Return SetError(0,$aRet[6],$aRet[0])
EndFunc


; ===================================================================================================================
; Func _ThreadGetProcessID($hThread)
;
; Gets the Process ID # of a Thread that has been opened.
;	NOTE: This function is only available on Vista/2008+ O/S's
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: # and @error = 0
;	Failure: 0 and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetProcessID($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"dword","GetProcessIdOfThread","handle",$hThread)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ThreadGetThreadID($hThread)
;
; Gets the Thread ID # of a Thread that has been opened. This shouldn't be necessary for properly written code.
;	NOTE: This function is only available on Vista/2008+ O/S's
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: # and @error = 0
;	Failure: 0 and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetThreadID($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"dword","GetThreadId","handle",$hThread)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ThreadGetPriority($hThread)
;
; Returns the priority of the given Thread (see GetThreadPriority on MSDN for priority values)
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: # and @error = 0
;		0=Normal, 1-15 = Higher Priority, -1 -> -15 = Lower Priority
;	Failure: -1 and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetPriority($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"int","GetThreadPriority","handle",$hThread)
	If @error Then Return SetError(2,@error,-1)
	; THREAD_PRIORITY_ERROR_RETURN = MAXLONG = 0x7FFFFFFF	[32-bit]
	If $aRet[0]=0x7FFFFFFF Then Return SetError(3,0,-1)	; failed
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ThreadSetPriority($hThread,$iPriority=0)
;
; Sets the priority of the given Thread (see SetThreadPriority on MSDN for priority values)
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_SET_INFORMATION (0x0020) or THREAD_SET_LIMITED_INFORMATION (0x0400) (Vista+) access
; $iPriority = priority value to set the thread too (see MSDN for valid values). 0 = 'Normal' priority
;	0=Normal, 1-15 = Higher Priority, -1 -> -15 = Lower Priority; Special values: 0x00010000, 0x00020000
;
; Returns:
;	Success: True and @error = 0
;	Failure: False and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadSetPriority($hThread,$iPriority=0)
	If Not IsPtr($hThread) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","SetThreadPriority","handle",$hThread,"int",$iPriority)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)	; failed
	Return True
EndFunc


; ===============================================================================================================================
; Func _ThreadGetAffinityMask($hThread,$iTempAffinityMask=1)
;
; Gets the Affinity Mask for the given Thread by utilizing _ThreadSetAffinityMask(). (basically a wrapper)
;	There are no API calls to Get an affinity mask (other than 'Undocumented' _ThreadUDGetAffinityMask(),
;	so we have to set the Thread Affinity Mask, get the *previous* state (as a return value),
;	and finally reset the Thread Affinity mask.
;	(Affinity Mask is a bit mask that defines what processors (logical & physical) something is allowed to run on)
; NOTES: 1. The Bit mask must have the same bits set in the given Process's Affinity Mask (and System Affinity Mask)
;  2. for >64 processors (insanity?), MSDN says this will set the affinity for the Process in a given processor GROUP.
;	(see SetProcessAffinity @ MSDN for more info)
;  3. the better/safer method would be to use the undocumented _ThreadUDGetAffinityMask(), or
;	get the Process affinity and pass that as the 2nd parameter
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_SET_INFORMATION (0x0020) or THREAD_SET_LIMITED_INFORMATION (0x0400)
;	  and the THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access rghts
; $iTempAffinityMask = the value to temporarily set the Thread's affinity mask to in between calls.
;	Note that while '1' is usually a safe bet, the *best* value to pass here is _ProcessGetAffinityMask()
;
; Returns:
;	Success: Affinity Mask with @extended = System Affinity Mask (and @error = 0)
;	Failure: 0 and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _ThreadGetAffinityMask($hThread,$iTempAffinityMask=1)
	If $iTempAffinityMask=0 Then Return SetError(1,0,0)
	; Set temp affinity mask (the only way to retrieve the previous mask)
	_ThreadSetAffinityMask($hThread,$iTempAffinityMask)
	If @error Then Return SetError(@error,@extended,0)
	Local $iPrevAffinity=@extended	; grab previous mask
	; Restore previous Affinity state
	_ThreadSetAffinityMask($hThread,$iPrevAffinity)
	Return $iPrevAffinity	; and return that state
EndFunc


; ===============================================================================================================================
; Func _ThreadSetAffinityMask($hThread,$iAffinityMask)
;
; Sets the Affinity Mask for the given Thread. Returns previous Affinity Mask in @extended
;	(Affinity Mask is a bit mask that defines what processors (logical & physical) something is allowed to run on)
; NOTES: 1. The Bit mask must have the same bits set in the given Process's Affinity Mask (and System Affinity Mask)
;  2. for >64 processors (insanity?), MSDN says this will set the affinity for the Process in a given processor GROUP.
;	(see SetProcessAffinity @ MSDN for more info)
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_SET_INFORMATION (0x0020) or THREAD_SET_LIMITED_INFORMATION (0x0400)
;	  and the THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access rghts
; $iAffinityMask = Bit Mask indicating which processors the Thread should be allowed to run on
;
; Returns:
;	Success: True with @extended = previous Affinity Mask
;	Failure: False and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _ThreadSetAffinityMask($hThread,$iAffinityMask)
	If Not IsPtr($hThread) Or $iAffinityMask=0 Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"dword_ptr","SetThreadAffinityMask","handle",$hThread,"dword_ptr",$iAffinityMask)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0]=0 Then Return SetError(3,0,False)	; failed
	Return SetExtended($aRet[0],True)
EndFunc


; ===================================================================================================================
; Func _ThreadGetTimes($hThread,$iTimeToGet=-1)
;
; Function to get the Thread Time(s) [in FileTime*] for a Thread  This can be one (or all) of the following:
;	Thread Creation Time (when the Thread was started)
;	Thread Exit Time (if the Thread exited while a handle is open, this gets the time of exit)
;	Thread Kernel Time (amount of time executing in Kernel mode)
;	Thread User Time (amount of time executing in User mode
; *NOTE: Thread Creation Time and Exit Time are in UTC(GMT) FileTime
;	     Thread Kernel & User Time are expressed in time in 100-nanosecond intervals. Milliseconds = time/1000
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
; $iTimeToGet = Time(s) to get. Possible values are:
;	-1 = get ALL times, returns an array
;	 0 = get Thread Creation Time
;	 1 = get Thread Exit Time (if applicable)
;	 2 = get Thread Kernel Time
;	 3 = get Thread User Time
;
; Returns:
;	Success: A single time as 'FileTime', or an array if $iTimeToGet=-1.
;	  NOTE: Thread Creation Time and Exit Time are in UTC(GMT) FileTime
;		    Thread Kernel & User Time are expressed in time in 100-nanosecond intervals. Milliseconds = time/1000
;		[0] = Thread Creation Time
;		[1] = Thread Exit Time (if applicable)
;		[2] = Thread Kernel Time (amount of time executing in Kernel mode)
;		[3] = Thread User Time (amount of time executing in User mode)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetTimes($hThread,$iTimeToGet=-1)
	If Not IsPtr($hThread) Or $iTimeToGet>3 Then Return SetError(1,0,-1)

	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetThreadTimes","handle",$hThread,"uint64*",0,"uint64*",0,"uint64*",0,"uint64*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	; Return ALL?
	If $iTimeToGet<0 Then
		Dim $aTimes[4]=[$aRet[2],$aRet[3],$aRet[4],$aRet[5]]
		Return $aTimes
	EndIf
	Return $aRet[$iTimeToGet+2]
EndFunc


; ===================================================================================================================
; Func _ThreadWaitForExit($hThread,$iTimeOut=-1)
;
; Waits for a Thread to exit, or the timeout to occur, whichever comes first.
;	Returns True/False, meaning thread exited (True) or is still running (False)
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with SYNCHRONIZE (0x00100000) access
; $iTimeOut = timeout in milliseconds (1000 = 1 second) to wait for it to exit
;	If -1, the function will wait indefinitely until the Thread exits
;
; Returns:
;	Success: True (thread exited)
;	Failure: False, with @error set:
;		@error = 1 = invalid parameters
;		@error = 2 = DLLCall error (@extended contains DLLCall's error code - see AutoIT help)
;		@error = 4 = unknown error [error code returned in @extended)
;		@error = 16 = Timed Out (exit is still running even after the TimeOut period)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadWaitForExit($hThread,$iTimeOut=-1)
	If Not IsPtr($hThread) Or $iTimeOut<-1 Then Return SetError(1,0,-1)
#cs
	; --------------------------------------------------------------------------------------------------
	; For TimeOut, 'INFINITE' is declared as 0xFFFFFFFF in WinBase.h, which is the same as -1 in AutoIT
	; --------------------------------------------------------------------------------------------------
	; NOTE: calling 'WaitForSingleObject' with a TimeOut other than 0 from a Thread that creates a GUI
	;	causes the Process to appear deadlocked, and will never give a timeout error.
	; For this reason, we enter a loop.
	; --------------------------------------------------------------------------------------------------
#ce
	Local $aRet,$iTimer
	$iTimer=TimerInit()
	While 1
		$aRet=DllCall($_COMMON_KERNEL32DLL,"dword","WaitForSingleObject","handle",$hThread,"dword",0)
		If @error Then Return SetError(2,@error,False)
		If $aRet[0]=0 Then Return True	; If 0, Object is 'Signaled' (exited)
		If $aRet[0] And $aRet[0]<>0x0102 Then Return SetError(4,$aRet[0],False)	; WAIT_TIMEOUT = 0x0102 [258] (timed out, still running) - which we'd expect for 0 timeout
		If $iTimeOut>-1 And TimerDiff($iTimer)>$iTimeOut Then Return SetError(16,0,False)
		Sleep(10)	; don't want to consume ALL of the CPU
	WEnd
EndFunc


; ===================================================================================================================
; Func _ThreadStillActive($hThread)
;
; Checks to see if a Thread is still running.
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with SYNCHRONIZE (0x00100000) access
;
; Returns:
;	Success: True with @error = 0. @extended = 16 means 'TimedOut' (ignore)
;	Failure: False, with @error set:
;		@error = 1 = invalid parameters
;		@error = 2 = DLLCall error (@extended contains DLLCall's error code - see AutoIT help)
;		@error = 3 = unknown error [error code returned in @extended)
;		**@error = 16 is NOT a failure (see above)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadStillActive($hThread)
	Local $bRet=_ThreadWaitForExit($hThread,0)
	If @error=16 Then Return SetError(0,16,True)
	Return SetError(@error,@extended,Not $bRet)
EndFunc


; ===================================================================================================================
; Func _ThreadGetExitCode($hThread)
;
; Gets the exit code from a thread.  0x103 *may* mean the thread is still active if this isn't a typical exit code.
;	To find out for sure if the thread exited, use _ThreadWaitForExit() or _ThreadStillActive()
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: exit code from Thread, @error = 0
;		NOTE: Exit code 0x103 typically means Thread is Still Active/Running, though it truly depends on the Thread's
;		  exit code number range.  It *could* be a legit exit code.  To find out if the thread TRULY exited, first use
;		  _ThreadWaitForExit() or _ThreadStillActive()
;	Failure: -1, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = 0 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetExitCode($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,-1)
	; NOTE: Exit code is listed as dword* (unsigned value), but I put it as int* to allow signed returns.
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetExitCodeThread","handle",$hThread,"int*",0)
	If @error Then Return SetError(2,@error,-1)
;~ 	ConsoleWrite("GetExitCodeThread return: "&$aRet[0]&", Exit Code="&$aRet[2]&@CRLF)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	$THREAD_LAST_EXIT_CODE=$aRet[2]
	Return $aRet[2]
EndFunc


; ===================================================================================================================
; Func _ThreadSuspend($hThread), _ThreadWow64Suspend($hThread)
;
; Suspends a Thread, or if already suspended, it increases the suspended count #.
;	Note the 'Wow64' version is for 32-bit applications running on a 64-bit O/S (Vista/2008+ only).
;	To determine which function to call, first determine if the *Process* is Wow64 (_ProcessIsWow64()).
;	_ThreadResume() will work for both types of Threads.
;
; NOTE: In testing, both work on both 32-bit and 64-bit processes!  Seems a waste..
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_SUSPEND_RESUME (0x0002) access
;
; Returns:
;	Success: True
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = -1 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadSuspend($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"int","SuspendThread","handle",$hThread)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0]=-1 Then Return SetError(3,0,False)	; Failed?  [GetLastError() contains more info]
;~ 	ConsoleWrite("Thread suspended successfully"&@CRLF)
	Return True
EndFunc

; Wow64 version (for a 32-bit process running on x64 O/S)	; NOTE: In practice, it made no difference which API is called

Func _ThreadWow64Suspend($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"int","Wow64SuspendThread","handle",$hThread)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0]=-1 Then Return SetError(3,0,False)	; Failed?  [GetLastError() contains more info]
;~ 	ConsoleWrite("Thread suspended successfully"&@CRLF)
	Return True
EndFunc


; ===================================================================================================================
; Func _ThreadResume($hThread)
;
; Resumes a suspended thread, or if it has a suspend count > 1, decrements this number.
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_SUSPEND_RESUME (0x0002) access
;
; Returns:
;	Success: True/False with @error=0 (False when ResumeThread returns -1)
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = -1 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadResume($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"int","ResumeThread","handle",$hThread)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0]=-1 Then Return SetError(3,0,False)	; Failed?  [GetLastError() contains more info]
;~ 	ConsoleWrite("Thread resumed successfully"&@CRLF)
	Return True
EndFunc


; ===================================================================================================================
; Func _ThreadTerminate($hThread,$iExitCode=0)
;
; Terminates the Thread and gives it an exit code
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Thread should have been opened with THREAD_TERMINATE (0x0001) access
; $iExitCode = Exit Code to use (returned by _ThreadGetExitCode())
;
; Returns:
;	Success: True with @error=0
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = 0 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadTerminate($hThread,$iExitCode=0)
	If Not IsPtr($hThread) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","TerminateThread","handle",$hThread,"int",$iExitCode)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)	; False (failure) return
;~ 	ConsoleWrite("Thread terminated successfully"&@CRLF)
	Return True
EndFunc


; ===================================================================================================================
; Func _ThreadCloseHandle(ByRef $hThread)
;
; Closes the Thread handle and invalidates $hThread if successful
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;
; Returns:
;	Success: True, @error = 0, $hThread is set to 0 to invalidate it
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = 0 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadCloseHandle(ByRef $hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","CloseHandle","handle",$hThread)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
;~ 	ConsoleWrite("Thread handle successfully closed"&@CRLF)
	$hThread=0	; Invalidate the handle
	Return True
EndFunc


; ===================================================================================================================
; Func _ThreadGetWinThreadID($hWnd)
;
; Returns the Thread ID # of the Thread that created the given Window.  @extended = Process ID #
;	(Basically WinGetProcess() but with the Thread ID info sought after)
;
; $hWnd = Handle of Window to get the Thread ID # for
; $vUSER32DLL = Optional, a handle to user32.dll (retrieved with DLLOpen())
;
; Returns:
;	Success: Thread ID # with @error=0, @extended = Process ID #
;	Failure: 0, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = 0 Returned from API call (failure - call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadGetWinThreadID($hWnd,$vUSER32DLL="user32.dll")
	If Not IsHWnd($hWnd) Or $vUSER32DLL<0 Then Return SetError(1,0,0)
	Local $aRet=DllCall($vUSER32DLL,"dword","GetWindowThreadProcessId","hwnd",$hWnd,"dword*",0)
	If @error Then Return SetError(2,@error,0)
	If $aRet[0]=0 Then Return SetError(3,0,0)
	Return SetExtended($aRet[2],$aRet[0])
EndFunc
