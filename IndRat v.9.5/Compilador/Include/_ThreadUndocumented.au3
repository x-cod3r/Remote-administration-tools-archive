#include-once
#include "[CommonDLL]\_NTDLLCommonHandle.au3"	; common NTDLL.DLL handle
#include <_ProcessFunctions.au3>	; _ThreadUDIsWow64() requires this
; ===============================================================================================================================
; <_ProcessUndocumented.au3>
;
; 'Undocumented' (though 'suspiciously' documented-in-some-places) Thread manipulation functions.  NTQuery, TEB/TIB etc
;	  NOTE: 32-bit Processes getting info for 64-bit Processes have some limitations:
;		- _ThreadUDGetStartAddress() will fail (pointer size difference)
;		- Anything else that requires the TEB/TIB or PEB structure will also fail from 32-bit to a 64-bit Process.
;
; Main Functions:
;	_ThreadUDGetThreadID()		; Retrieves the Thread ID for a given Thread handle. Unneccessary for properly written code.
;	_ThreadUDGetProcessID()		; Retrieves the Process ID for a given Thread.
;	_ThreadUDGetAffinityMask()	; Retrieves the Affinity Mask for a given Thread.
;	_ThreadUDGetStartAddress()	; Retrieves the Start Address of the given Thread
;
; Wrapper Functions:
;	_ThreadUDIsWow64()			; Determines if the Thread is running in Wow64 (needs Process functions to Query this)
;
; Extra Wrapper Functions:
;	_ThreadUDIs32Bit()		; Returns True if Thread is 32-bit (makes _ThreadUDIsWow64() use more simpler)
;	_ThreadUDIs64Bit()		; Returns True if Thread is 64-bit (makes _ThreadUDIsWow64() use more simpler)
;
; INTERNAL-ONLY!! Functions:		; do NOT call these directly!!
;	__TUDQueryThread()		; Main interface to the 'NtQueryInformationThread' function
;	__TUDGetBasic()			; Proxy function used by a few other functions - gets the Basic Info class data
;
; See also:
;	<_ThreadFunctions.au3>			; main Thread functions UDF
;	<_ThreadRemote.au3>				; Functions for creating Remote Threads
;	<_ThreadContext.au3>			; Special Thread Context functions. ADVANCED and dangerous stuff here
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
;	<_ThreadUndocumentedList.au3>	; 'Undocumented' Thread List (wrapper) functions
;	<_ThreadUDGetTEB.au3>			; Function to retrieve 'undocumented' structure
;	<TestThreadFunctions.au3>		; GUI Interface allowing interaction with Thread functions
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumented.au3>		; 'Undocumented' Process functions - stuff your Mom told you to stay away from
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<_ProcessUDGetPEB.au3>			; Function to retrieve 'undocumented' structure
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
;	--------------------	INTERNAL-ONLY!! FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func __TUDQueryThread($hThread,$iProcInfoClass,$vProcInfoData,$iProcInfoSz,$sProcInfoType="ptr")
;
; Internal Function used for calling NtQueryInformationThread.
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
; $iThreadInfoClass = # of the type of Thread information to get.  These class #'s aren't all listed on MSDN or
;	in the header files. (ntddk.h does have many listed. remember to count from 0!)
; $vThreadInfoData = usually a pointer to a DLLStruct, though it may just be a datatype pointer (ex: 'ulong*')
; $iThreadInfoSz = size of data to transfer - usually DllStructGetSize(), but can also be the size of a datatype
;				(remember x64 compatibility!)
; $sThreadInfoType = DLLCall()-type of $vProcInfoData (usually type 'ptr')
;
; Returns:
;	Success: Array returned from DLLCall(), and if a DLLStruct was passed, it was probably updated. @error = 0 or 7:
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;	Failure: "" with @error set:
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;
; Author: Ascend4nt
; ===================================================================================================================

Func __TUDQueryThread($hThread,$iThreadInfoClass,$vThreadInfoData,$iThreadInfoSz,$sThreadInfoType="ptr")
	Local $aRet=DllCall($_COMMON_NTDLL,"long","NtQueryInformationThread","handle",$hThread,"int",$iThreadInfoClass,$sThreadInfoType,$vThreadInfoData,"ulong",$iThreadInfoSz,"ulong*",0)
	If @error Then Return SetError(2,@error,"")
	; NTSTATUS of something OTHER than STATUS_SUCCESS (0)?
	If $aRet[0] Then Return SetError(6,$aRet[0],"")
	If $aRet[5]<>$iThreadInfoSz Then SetError(7,0)	; Size mismatch
	Return $aRet
;~ 	If $aRet[5]<>$iSysInfoLen Then ConsoleWriteError("Size mismatch: $stInfo struct length="&$iSysInfoLen&", ReturnLength="&$aRet[5]&@LF)
EndFunc


; ===================================================================================================================
; Func __TUDGetBasic($hThread,$iInfo)
;
; In-between function for getting THREAD_BASIC_INFO via __TUDQueryThread()
;
; Author: Ascend4nt
; ===================================================================================================================

Func __TUDGetBasic($hThread,$iInfo)
	If Not IsPtr($hThread) Then Return SetError(1,0,-1)
	; Thread_Basic_Info: Thread Exit Status, TEB Base Address, Process ID, Thread ID, Affinity Mask, Priority, Base Priority
	Local $stTBI=DllStructCreate("ulong;ptr;ulong_ptr;ulong_ptr;ulong;ulong;ulong")
	__TUDQueryThread($hThread,0,DllStructGetPtr($stTBI),DllStructGetSize($stTBI))
	If @error Then Return SetError(@error,@extended,-1)
	Return DllStructGetData($stTBI,$iInfo)
EndFunc


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ThreadUDGetThreadID($hThread)
;
; Function to get the Thread ID #.  Not needed for properly written code.
;	This is an alternative method of getting the Thread ID, since the official API version was Vista+ only.
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Thread ID #, with @error=0
;	Failure: 0 with @error set:
;		@error = 1 = Invalid Parameter
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDGetThreadID($hThread)
	Local $iTID=__TUDGetBasic($hThread,4)
	If @error Then Return SetError(@error,@extended,0)
	Return $iTID
EndFunc


; ===================================================================================================================
; Func _ThreadUDGetProcessID($hThread)
;
; Function to get the Process ID # for the given Thread.
;	This is an alternative method of getting the Process ID, since the official API version was Vista+ only.
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Process ID #, with @error=0
;	Failure: 0 with @error set:
;		@error = 1 = Invalid Parameter
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDGetProcessID($hThread)
	Local $iPID=__TUDGetBasic($hThread,3)
	If @error Then Return SetError(@error,@extended,0)
	Return $iPID
EndFunc


; ===================================================================================================================
; Func _ThreadUDGetAffinityMask($hThread)
;
; Function to get the Thread's current Affinity Mask.
;	Included because there is no standard API call to simply get an Affinity Mask for a Thread.
;	 The only way to get it without the Undocumented API call is to jump through some hoops:
;	 (_ThreadSetAffinity must be called twice, and the 1st call's return value must be returned)
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Thread Affinity, with @error=0
;	Failure: 0 with @error set:
;		@error = 1 = Invalid Parameter
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDGetAffinityMask($hThread)
	Local $iAffMask=__TUDGetBasic($hThread,5)
	If @error Then Return SetError(@error,@extended,0)
	Return $iAffMask
EndFunc


; ===================================================================================================================
; Func _ThreadUDGetStartAddress($hThread)
;
; Function to get the Thread's Start Address - where the Thread's code officially starts.
;	(*NOT* the Kernel32.dll thunk start address, and not the 'Park' address in ntdll.dll when Suspended either)
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION access
;
; Returns:
;	Success: Start address, with @error=9
;	Failure: 0 with @error set:
;		@error =  1 = Invalid Parameter
;		@error =  2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error =  6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error =  7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;		@error = -1 = Address of 0 returned (invalid obviously). This happens alot with Native System Processes (drivers)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDGetStartAddress($hThread)
	If Not IsPtr($hThread) Then Return SetError(1,0,0)
	Local $iPtrSz=4,$aRet
	If @AutoItX64 Then $iPtrSz*=2
	$aRet=__TUDQueryThread($hThread,9,0,$iPtrSz,"ptr*")
	If @error Then Return SetError(@error,@extended,0)
	If $aRet[3]=0 Then Return SetError(-1,0,0)
	Return $aRet[3]
EndFunc


; ===================================================================================================================
; Func _ThreadUDIsWow64($hThread)
;
; Determines if Thread is an x86 (32-bit) Thread running on an x64 O/S
;	MSDN:
;	  'WOW64 is the x86 emulator that allows 32-bit Windows-based applications to run seamlessly on 64-bit Windows'
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: 0/False or 1 (true) and @error=0
;	Failure: False, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code returned in @extended
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDIsWow64($hThread)
	Local $hProcess,$iProcessID=_ThreadUDGetProcessID($hThread)			; need process ID
	If @error Then Return SetError(@error,@extended,False)
	$hProcess=_ProcessOpen($iProcessID,$PROCESS_QUERY_LIMITED_INFO)		; and the Process Handle
	If @error Then Return SetError(@error,@extended,False)
	Local $bIsWow64=_ProcessIsWow64($hProcess),$iErr=@error,$iExt=@extended	; declarations and also a sequence of instructions
	_ProcessCloseHandle($hProcess)
	Return SetError($iErr,$iExt,$bIsWow64)
EndFunc


; ===================================================================================================================
; Func _ThreadUDIs32Bit($hThread)
;
; Determines if Thread is a 32-bit Thread. (makes using _ThreadUDIsWow64() easier)
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: 0/False or 1/True and @error=0
;	Failure: False, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code returned in @extended
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDIs32Bit($hThread)
	If @OSArch<>"X64" And @OSArch<>"IA64" Then
		If Not IsPtr($hThread) Then SetError(1,0)
		Return True
	EndIf
	If _ThreadUDIsWow64($hThread) Then Return True
	Return SetError(@error,@extended,False)
EndFunc


; ===================================================================================================================
; Func _ThreadUDIs64Bit($hThread)
;
; Determines if Thread is a 64-bit Thread. (makes using _ThreadUDIsWow64() easier)
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: 0/False or 1 (true) and @error=0
;	Failure: False, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code returned in @extended
;		@error = 7 = NtQueryInformationThread Size mismatch ($aRet[5]<>$iThreadInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDIs64Bit($hThread)
	If @OSArch="X64" Or @OSArch="IA64" Then
		If _ThreadUDIsWow64($hThread) Then Return False
		Return SetError(@error,@extended,True)
	EndIf
	If Not IsPtr($hThread) Then SetError(1,0)
	Return False
EndFunc
