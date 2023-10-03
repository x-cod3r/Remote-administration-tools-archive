#include-once
#include <_ProcessListFunctions.au3>	; for _ProcessListThreads() function
; ===============================================================================================================================
; <_ThreadListFunctions.au3>
;
;	Functions for Thread List functions
;	  NOTES:
;		- Admin rights are required for getting Handles to certain Processes (also depends on type of Access),
;		  and possibly Debug Privileges (see <_GetPrivilege_SEDEBUG.au3>)
;		- EVEN with Debug Privileges, some Processes on Vista+ are 'protected' and can only be accessed via the
;		  PROCESS_QUERY_LIMITED_INFORMATION access type.  This limits the information and operations that can be performed.
;		  (Audiodg.exe is one example of a protected process).
;	   ALSO: 32-bit Processes getting info for 64-bit Processes have some limitations:
;		- _ProcessListHeaps() and  _ProcessListModules() functions will not work in 32-bit mode for a 64-bit Process
;
; Wrapper Functions:
;	_ThreadList()		; just a simple wrapper for _ProcessListThreads()
;	_ThreadExists()		; uses _ProcessListThreads() to determine if a Thread # exists
;
; See also:
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessUndocumented.au3>		; 'Undocumented' Process functions - stuff your Mom told you to stay away from
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<TestProcessFunctions.au3>		; GUI Interface allowing interaction with Process functions
;	<TestProcessFunctionsScratch.au3>	; Misc. tests of Process functions (a little experimental 'playground')
;	<_MemoryFunctionsEx.au3>		; Extended and 'undocumented' Memory Functions
;	<_MemoryScanning.au3>			; Advanced memory scan techniques using Assembly
;	<_ThreadFunctions.au3>			; Thread functions
;	<_ThreadRemote.au3>				; Functions for creating Remote Threads
;	<_ThreadContext.au3>			; Special Thread Context functions. ADVANCED and dangerous stuff here
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
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
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
; Func _ThreadList($vFilterID=-1,$bThreadFilter=False)
;
; Function to list running threads on the system. Can be filtered using parameter.
;	(This is a simple wrapper to call _ProcessListThreads())
;
; $vFilterID = -1 for ALL threads for all processes, or a Thread ID, Process name, or Process ID # to get threads for
; $bThreadFilter = If False, and $vFilterID>=0 Then $vFilterID represents a Process ID or name
;					 If TRUE, however, $vFilterID is treated as a Thread ID filter, and will return at most 1 match
;
; Returns:
;	Success: Array of Thread info:
;		[0][0] = Thread Count
;		[$i][0] = Thread ID
;		[$i][1] = Process ID
;		[$i][2] = Thread Base Priority
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadList($vFilterID=-1,$bThreadFilter=False)
	Local $vRet=_ProcessListThreads($vFilterID,$bThreadFilter)
	Return SetError(@error,@extended,$vRet)
EndFunc


; ===================================================================================================================
; Func _ThreadExists($iThreadID)
;
; Function simply verifies that the given Thread ID # exists
;	(uses _ProcessListThreads() to determine this)
;
; $iThreadID = Thread ID # to check the existence of
;
; Returns:
;	Success: True, with @error=0
;	Failure: False with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadExists($iThreadID)
	Local $aThreads=_ProcessListThreads($iThreadID,True)
	If @error Then Return SetError(@error,@extended,False)
	If $aThreads[0][0]=0 Or $aThreads[1][0]<>$iThreadID Then Return False
	Return True
EndFunc
