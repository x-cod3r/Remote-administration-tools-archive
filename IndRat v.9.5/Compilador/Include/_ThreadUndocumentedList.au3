#include-once
#include <_ThreadFunctions.au3>
#include <_ThreadUndocumented.au3>
#include <_ProcessListFunctions.au3>
#include <_ProcessUndocumentedList.au3>
; ===============================================================================================================================
; <_ThreadUndocumentedList.au3>
;
; 'Undocumented' (though 'suspiciously' documented-in-some-places) Thread List wrapper functions.  NTQuery, TEB/TIB etc
;
; Main (Wrapper) Functions:
;	_ThreadUDIsSuspended()		; Returns True/False if a given Thread ID is Suspended.
;								;  NOTE: It is recommended to call this function with a Process ID as well
;								;	Additionally: This function will increase the size of stripped Obfuscated code
;								;   due to additional functions it includes as options to getting the Process ID #
;
; Dependencies:
;	<_ThreadFunctions.au3>			; Main Thread functions UDF
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;
; See also:
;	<_ThreadFunctions.au3>			; Main Thread functions UDF
;	<_ThreadContext.au3>			; Special Thread Context functions. ADVANCED and dangerous stuff here
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
;	<TestThreadFunctions.au3>		; GUI Interface allowing interaction with Thread functions
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumented.au3>		; 'Undocumented' Process functions - stuff your Mom told you to stay away from
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<TestProcessFunctions.au3>		; GUI Interface allowing interaction with Process functions
;	<TestProcessFunctionsScratch.au3>	; Misc. tests of Process functions (a little experimental 'playground')
;	<_MemoryFunctionsEx.au3>		; Extended and 'undocumented' Memory Functions
;	<_MemoryScanning.au3>			; Advanced memory scan techniques using Assembly
;	<_ThreadFunctions.au3>			; Thread functions
;	<_DLLFunctions.au3>				; DLL Load/Free Library and GetProcAddress functions
;	<_DLLInjection.au3>				; DLL Injection/UnInjection, using the same technique many others use
;	<_DLLStructInject.au3>			; Memory injection & manipulation of DLLStructs using functions in the _ProcessFunction UDF
;	<_ProcessCPUUsage.au3>			; Function for calculating CPU Usage..
;	<_WinTimeFunctions.au3>			; for use with _ProcessGetTimes()
;	<_WinAPI_GetPerformanceInfo.au3> ; Performance Info (Task-Manager type of stuff) [XP/2003+]
;	<_WinAPI_GetSystemInfo.au3>		; System Info - processor, memory info
;	<_NTQueryInfo.au3>				; my NT-undocumented playground. Lots of crazy stuff..
;
; Semi-related:
;	<_EnumChildWindows.au3>			; (really a _Win type of function though - might be renamed _WinListChildren)
;	<_GetPrivilege_SEDEBUG.au3>		; Adjust privileges for access to processes at higher privilege levels
;	<_PDHPerformanceCounters.au3>	; all kinds of performance, stats, and general info regarding processes (and much more).
;	<_WinWaitEx.au3>		; Waits on a window to 'exist' that matches a process ID. (for situations with same-titled windows)
;
; Various Resources ('Undocumented' and documented):
;
;	NTSTATUS codes - see 'ntstatus.h'
;
;  -----  DATATYPE Info Resources:  -----
;
;	Datatypes in WinAPI C/C++ headers:
;		WinNT.h, WinUser.h, WTypes.h, BaseTsd.h, wdm.h (DDK)
;
;	Fundamental Types (C++) @ MSDN [includes sizes]:
;		http://msdn.microsoft.com/en-us/library/cc953fe1%28VS.80%29.aspx
;	Windows Data Types (Windows) @ MSDN:
;		http://msdn.microsoft.com/en-us/library/aa383751%28VS.85%29.aspx
;
;  -----  UNDOCUMENTED Info Resources:  -----
;
;	Windows API Platform SDK Headers:
;	  winternl.h
;	Windows Driver Kit Headers (WDK or DDK):
;	  ntddk.h
;
;	Undocumented Functions by NTinternals (note: some internal links are broken, you should search the site using google):
;		http://undocumented.ntinternals.net/
;	Undocumented Windows API Structs - Process Hacker:
;		http://processhacker.sourceforge.net/hacking/structs.php
;	NirSoft Windows Vista Kernel Structures:
;		http://www.nirsoft.net/kernel_struct/vista/index.html
;	Win32 Thread Information Block:
;		http://en.wikipedia.org/wiki/Win32_Thread_Information_Block
;
;	UNDOCUMENTED Info Book (**GREAT RESOURCE**):
;		Windows 2000-XP Native API Reference
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ThreadUDIsSuspended($iThreadID,$iPID=-1)
;
; Function to determine if a Thread is Suspended.  Uses _ProcessUDListEverything()
;
; $iThreadID = Thread ID #
; $iPID = (optional) Process ID # associated with Thread ID #, or -1 if unknown.
;	NOTE: This # is recommended to be passed when known, otherwise the function may take much longer than needed.
;
; Returns:
;	Success: True/False with @error=0
;	Failure: False with @error set:
;		@error = 1  = invalid parameter
;		@error = 2  = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3  = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)  [from _ProcessUDListEverything()]
;		@error = 12 = 256KB buffer allocated, but API call still didn't work (doubtful this will ever happen)
;		@error = 32 = Thread ID not found (most likely does not exist)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDIsSuspended($iThreadID,$iPID=-1)
	Local $aThreads,$hThread,$iErr=0
	; Process ID not known? Time to search for it
	If $iPID<0 Then
		; Try the fast way to get the PID first:
		$hThread=_ThreadOpen($iThreadID,$THREAD_QUERY_LIMITED_INFO)
		If Not @error Then
			$iPID=_ThreadUDGetProcessID($hThread)
			$iErr=@error
			_ThreadCloseHandle($hThread)
		EndIf
		; Couldn't get Thread Handle? Get the PID the slower way:
		If @error Or $iErr Then
			$aThreads=_ProcessListThreads($iThreadID,True)
			If @error Then Return SetError(@error,@extended,False)
			If $aThreads[0][0]=0 Then Return SetError(32,@extended,False)
			$iPID=$aThreads[1][1]
		EndIf
	EndIf
	; Now to get the Process/Thread Info from _ProcessUDListEverything()
	$aThreads=_ProcessUDListEverything($iPID,3)
	If @error Then Return SetError(@error,@extended,False)
	If $aThreads[0][0]=0 Then Return SetError(32,@extended,False)
	; Grab the Threads from the 1st element (only one PID will match)
	$aThreads=$aThreads[1][27]
	; Cycle through until Thread ID is found, then return boolean result of ThreadState and WaitReason (True/False)
	For $i=1 To $aThreads[0][0]
		If $iThreadID=$aThreads[$i][0] Then	Return ($aThreads[$i][10]=5 And $aThreads[$i][11]=5)
	Next
	; Not found
	Return SetError(32,0,False)
EndFunc
