#include-once
;~ #include "[CommonDLL]\_NTDLLCommonHandle.au3"	; common NTDLL.DLL handle
#include <_ProcessUndocumented.au3>	; Basic Undocumented functions
; ===============================================================================================================================
; <_ProcessUndocumentedList.au3>
;
; 'Undocumented' (though 'suspiciously' documented-in-some-places) Process List function(s).  Uses NTQuery* function(s)
;
; Main Function(s):
;	_ProcessUDListEverything()	; Gets basically anything and everything for every running Process and it's threads
;								;  Big advantage of this is no special privileges or administrative mode required,
;								;   and works from 32->64 bit Processes.
;								; (inspired by Manko's _WinAPI_ThreadsnProcesses module)
;	_ProcessUDListModules()		; Get a List of Module for a Process (with Filtering options), using 'undocumented' functions.
;								; NOTE: 32-bit code can not get modules for 64-bit Processes, and 64-bit code can not
;								;       get 32-bit modules for 32-bit Processes (it will only return 64-bit Wow64 module info)
;
; Wrapper Functions:
;	_ProcessUDIsSuspended()			; Uses _ProcessUDListEverything() in determining if a specific Process is Suspended
;	_ProcessUDGetModuleBaseAddress(); Returns the Base address for the Module in the given Process (utilizes _ProcessUDListModules())
;									;  NOTE that the process name itself is also a module, so its address can also be looked up
;	_ProcessUDGetModuleByAddress()	; Returns module info for the module that contains the given address.
;
; Dependencies:
;	<_ProcessFunctions.au3>			; main Process functions UDF
;	<_ProcessUndocumented.au3>		; 'Undocumented' main functions
;
; See also:
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessListFunctions.au3>		; Process List functions
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
;	<_ProcessUDThreadInfo.au3>		; Shorter form of _ProcessUDListEverything() which retrieves threads info for 1 process
;									; 	not included in the Processes,Threads,DLLs suite due to minimal time difference (~8 ms)
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
; Memory Info: MSDN: 'What do the Task Manager memory columns mean?'
;	@ http://windows.microsoft.com/en-US/windows-vista/What-do-the-Task-Manager-memory-columns-mean
;	'An introductory guide to Windows memory management':
;	@ http://shsc.info/WindowsMemoryManagement
;	'What does "VM Size" mean in the Windows Task Manager? - Stack Overflow'
;	@ http://stackoverflow.com/questions/27407/what-does-vm-size-mean-in-the-windows-task-managerAn
;
; Reference:
; 	See Manko's _WinAPI_ThreadsnProcesses
;	  @ http://www.autoitscript.com/forum/index.php?showtopic=88934
;
; Author: Ascend4nt, inspired by Manko's _WinAPI_ThreadsnProcesses
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	THREAD STATE VALUES	--------------------
; ===================================================================================================================

#cs
; -------------------------------------------------------------------------------------------------------------------
THREAD_STATE enum {
	StateInitialized,	; 0
	StateReady,			; 1
	StateRunning,		; 2
	StateStandby,		; 3
	StateTerminated,	; 4
	StateWait,			; 5
	StateTransition,	; 6
	StateUnknown		; 7
};
; -------------------------------------------------------------------------------------------------------------------
#ce
#cs
; -------------------------------------------------------------------------------------------------------------------
KWAIT_REASON enum {
	Executive,			; 0
	FreePage,			; 1
	PageIn,				; 2
	PoolAllocation,		; 3
	DelayExecution,		; 4
	Suspended,			; 5
	UserRequest,		; 6
	WrExecutive,		; 7
	WrFreePage,			; 8
	WrPageIn,			; 9
	WrPoolAllocation,	; 10
	WrDelayExecution,	; 11
	WrSuspended,		; 12
	WrUserRequest,		; 13
	WrEventPair,		; 14
	WrQueue,			; 15
	WrLpcReceive,		; 16
	WrLpcReply,			; 17
	WrVirtualMemory,	; 18
	WrPageOut,			; 19
	WrRendezvous,		; 20
	Spare2,				; 21
	Spare3,				; 22
	Spare4,				; 23
	Spare5,				; 24
	Spare6,				; 25
	WrKernel			; 26
};
; -------------------------------------------------------------------------------------------------------------------
#ce


; ===================================================================================================================
;	--------------------	GLOBAL STRUCTURE TAGS	--------------------
; ===================================================================================================================

#cs
; -------------------------------------------------------------------------------------------------------------------
; SYSTEM_THREADS:
; ThreadKernelTime, ThreadUserTime, ThreadCreateTime, ThreadWaitTime, ThreadInitialStartAddress, ThreadProcessID,
;   ThreadID, ThreadPriority, ThreadBasePriority, ThreadContextSwitchCount, ThreadState, ThreadWaitReason
; -------------------------------------------------------------------------------------------------------------------
#ce
Dim $tag_SYS_THREAD_INFO="uint64;uint64;uint64;ulong;ptr;ulong_ptr;ulong_ptr;ulong;ulong;ulong;ulong;ulong;"
; IO_COUNTERS: Read/Write/Other Ops Count, Read/Write/Other Transfers
Dim $tag_IO_COUNTERS="uint64;uint64;uint64;uint64;uint64;uint64;"
#cs
; -------------------------------------------------------------------------------------------------------------------
; SYSTEM_PROCESSES (+ VM_COUNTERS):
; NextEntryOffset (in buffer), NumThreads, Reserved[3], CreateTime, UserTime, KernelTime, ImageNameLen, ImageNameMaxLen,
;  ImageName (unicode), BasePriority, ProcessID, ParentPID, HandleCount, SessionID, PageDirectoryBase/Reserved,
; [+ VM_COUNTERS]: PeakVirtualSz, VirtualSz, PageFaultCount, PeakWorkingSetSz, WorkingSetSz, QuotaPeakPagedPoolUsage,
;   QuotaPagedPoolUsage, QuotaPeakNonPagedPoolUsage, QuotaNonPagedPoolUsage, PagefileUsage, PeakPagefileUsage
; -------------------------------------------------------------------------------------------------------------------
#ce
Dim $tag_SYS_PROC_INFO="ulong;ulong;uint64[3];uint64;uint64;uint64;ushort;ushort;ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong;ulong;ulong;ulong_ptr;ulong_ptr;ulong;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;"
If @AutoItX64 Then $tag_SYS_PROC_INFO&="ulong_ptr CommitSz;"	; PageFileUsage/CommitSize (x64-specific duplicated value)
$tag_SYS_PROC_INFO&=$tag_IO_COUNTERS 	; & $tag_SYS_THREAD_INFO [array of 'NumThreads' structures of this type]


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessUDListEverything($vFilter=0,$iMatchMode=0,$bEnumThreads=True)
;
; Function to grab all Process and Thread information from the O/S.
;	Big advantage of this is no special privileges or administrative mode required, and works from 32->64 bit Processes.
;
; *NOTE: Process Creation Time is in UTC(GMT) FileTime [see <_WinTimeFunctions.au3>]
;	     Process Kernel & User Time are expressed in time in 100-nanosecond intervals. Milliseconds = time/1000
;
; $vFilter = (optional) Title or PID# to search for.
;	In title mode this can be direct match, a substring, or a PCRE (see $iMatchMode)
;	In PID# or PPID# mode, this must be a number
; $iMatchMode = mode of matching title, PID# or Parent PID#:
;	0 = default match string (not case sensitive)
;	1 = match substring
;	2 = match regular expression
;	3 = match Process ID #
;	4 = match Parent Process ID #
;	+8 = REVERSE the match mode. (Results returned will only be those that don't match the given criteria)
; $bEnumThreads = If True (default), Threads are enumerated and embedded in the main Process List array
;				  If False, Threads aren't enumerated, and [27] will = ""
;
; Returns:
;	Success: Array of process info (with arrays of thread info embedded if $bEnumThreads=True)
;		[0][0] = Total # of Processes (0 = no matches found)
;		[0][1] = Total # of Threads (cumulative for all found processes)
;		[$i][0] = Process Name
;		[$i][1] = Process ID
;		[$i][2] = Parent PID
;		[$i][3] = Base Priority (8=normal)
;		[$i][4] = Creation Time (FileTime)
;		[$i][5] = User Time (ms)		[division is done in the function (by 1000)]
;		[$i][6] = Kernel Time (ms)	[division is done in the function (by 1000)]
;		[$i][7] = Handle Count
;		[$i][8] = Session ID
;		[$i][9] = Peak Virtual Size
;		[$i][10] = Virtual Size
;		[$i][11] = Page Fault Count
;		[$i][12] = Peak Working Set Size
;		[$i][13] = Working Set Size
;		[$i][14] = Quota Peak Paged Pool Usage
;		[$i][15] = Quota Paged Pool Usage
;		[$i][16] = Quota Peak Non-Paged Pool Usage
;		[$i][17] = Quota Non-Paged Pool Usage
;		[$i][18] = Pagefile Usage
;		[$i][19] = Peak Pagefile Usage
;		[$i][20] = Read Operations Count
;		[$i][21] = Write Operations Count
;		[$i][22] = Other Operations Count
;		[$i][23] = Read Transfers Count
;		[$i][24] = Write Transfers Count
;		[$i][25] = Other Transfers Count
;		[$i][26] = Number of Threads
;		[$i][27] = If $bEnumThreads, an embedded Threads Array (format follows). Otherwise it is set to ""
; --- X64 ONLY  [forget it, removed - same as Pagefile Usage] ---	[$i][28] = Commit Size
; -------------------- EMBEDDED THREADS ARRAY ----------------------------
;		[0][0] = # of Threads (0 = no matches found)
;		[$i][0] = Thread ID
;		[$i][1] = Process ID
;		[$i][2] = Thread Initial Start Address (usually located in Kernel32.dll as a start 'thunk' location)
;		[$i][3] = Thread Base Priority
;		[$i][4] = Thread Priority
;		[$i][5] = Thread Creation Time (FileTime)
;		[$i][6] = Thread User Time (ms)		[division is done in the function (by 1000)]
;		[$i][7] = Thread Kernel Time (ms)	[division is done in the function (by 1000)]
;		[$i][8] = Thread Last Wait State Time (ticks)
;		[$i][9] = Thread Context Switch Count
;		[$i][10] = Thread State 		[see enumerations above]
;		[$i][11] = Thread Wait Reason	[see enumerations above]
;
;	Failure: "", with @error set
;		@error = 1 = Invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 12 = 256KB buffer allocated, but API call still didn't work (doubtful this will ever happen)
;
; Typical @extended error codes:  STATUS_ACCESS_DENIED (0xC0000022), STATUS_INFO_LENGTH_MISMATCH (0xC0000004)
;
; Author: Ascend4nt, inspired by Manko's _WinAPI_ThreadsnProcesses
; ===================================================================================================================

Func _ProcessUDListEverything($vFilter=0,$iMatchMode=0,$bEnumThreads=True)
	Local $aRet,$aBigList,$aThreadList,$stBuffer,$stProcInfo,$stThreadInfo,$pBufPtr,$pThreadPtr
	Local $i,$iTemp,$iThreadOffset,$iThreadStSz,$iX64Offset=0,$iProcIndex=1
	Local $sTitle,$iPID,$iPPID,$bFilterOn=0,$bMatchMade=1,$iNeg=0
	Local $iNumThreads=0,$iTotalProcs=0,$iTotalThreads=0,$iAlloc=4096,$iProcListSz=100
	; x64: Adjust offset for IO Counters
	If @AutoItX64 Then $iX64Offset=1
	; Filter
	If (IsString($vFilter) And $vFilter<>"") Or (IsNumber($vFilter) And $iMatchMode>2) Then $bFilterOn=1
	If BitAND($iMatchMode,8) Then
		$iNeg=-1
		$iMatchMode=BitAND($iMatchMode,7)
	EndIf

	; Loop up to a max of 256K buffer (probably better to limit it further)
	;	Note that only 2 passes should be required on XP+ (Win2000 doesn't return 'required buffer size' in $aRet[4])
	While $iAlloc<262144
		$stBuffer=DllStructCreate("ubyte["&$iAlloc&"]")
		; SystemProcessesAndThreadsInformation (class 5)
		$aRet=DllCall($_COMMON_NTDLL,"long","NtQuerySystemInformation","int",5,"ptr",DllStructGetPtr($stBuffer),"ulong",$iAlloc,"ulong*",0)
		If @error Then Return SetError(2,@error,"")
		If $aRet[0]=0 Then ExitLoop		; STATUS_SUCCESS (0)

		; NTSTATUS error that is not 0xC0000004 (STATUS_INFO_LENGTH_MISMATCH)? Something unknown is wrong.
		If $aRet[0]<>0xC0000004 Then Return SetError(6,$aRet[0],"")
		If $aRet[4] Then
			$iAlloc=$aRet[4]
		Else
			$iAlloc*=2
		EndIf
	WEnd
	If $iAlloc>=262144 Then Return SetError(12,0,'')
	$pBufPtr=$aRet[2]	; (DllStructGetPtr($stBuffer))
	Dim $aBigList[$iProcListSz+1][28]		;+$iX64Offset]	; if want the extra x64 value
	; The two structure sizes below are needed for going through THREAD structures.
	;	Luckily, both are 64-bit aligned (divisible by 8), otherwise we'd need to do fixup math ($i+=8-(BitAnd($i,0x7))
	$iThreadOffset=DllStructGetSize(DllStructCreate($tag_SYS_PROC_INFO))	; x86= 184 bytes;  x64= 256 bytes
	$iThreadStSz=DllStructGetSize(DllStructCreate($tag_SYS_THREAD_INFO))	; x86= 64 bytes; x64= 80 bytes
	While 1
		; First/Next Process Info structure
		$stProcInfo=DllStructCreate($tag_SYS_PROC_INFO,$pBufPtr)

		; Get name.  Index 7 = ImageNameLen, 8 = ImageNameMaxLen, 9 = ImageNamePtr  (1st 2 are in bytes)
		$sTitle=DllStructGetData(DllStructCreate("wchar["&Int(DllStructGetData($stProcInfo,7)/2)&"]",DllStructGetData($stProcInfo,9)),1)
		$iPID=DllStructGetData($stProcInfo,11)	; PID
		If $sTitle="" And $iPID=0 Then $sTitle="System Idle Process"	; special case - no string for System Idle process
		$iPPID=DllStructGetData($stProcInfo,12)	; Parent PID

		If $bFilterOn Then
			Switch $iMatchMode
				Case 0
					If $vFilter<>$sTitle Then $bMatchMade=0
				Case 1
					If StringInStr($sTitle,$vFilter)=0 Then $bMatchMade=0
				Case 2
					If Not StringRegExp($sTitle,$vFilter) Then $bMatchMade=0
				Case 3
					If $vFilter<>$iPID Then $bMatchMade=0
				Case Else
					If $vFilter<>$iPPID Then $bMatchMade=0
			EndSwitch
			$bMatchMade+=$iNeg	; toggles match/no-match if 0x8 set
		EndIf
		If $bMatchMade Then
			$aBigList[$iProcIndex][0]=$sTitle
			$aBigList[$iProcIndex][1]=$iPID
			$aBigList[$iProcIndex][2]=$iPPID
			$aBigList[$iProcIndex][3]=DllStructGetData($stProcInfo,10)	; Base Priority
			$aBigList[$iProcIndex][4]=DllStructGetData($stProcInfo,4)	; Create Time (FileTime)
			$aBigList[$iProcIndex][5]=DllStructGetData($stProcInfo,5)/1000	; User Time (convert from 100-nanosecond interval to ms)
			$aBigList[$iProcIndex][6]=DllStructGetData($stProcInfo,6)/1000	; Kernel Time (convert from 100-nanosecond interval to ms)
			$aBigList[$iProcIndex][7]=DllStructGetData($stProcInfo,13)	; Handle Count
			$aBigList[$iProcIndex][8]=DllStructGetData($stProcInfo,14)	; Session ID
			; VM (Virtual Memory) Counters:
			; Peak Virtual Size, Virtual Size, Page Fault Count [#], Peak Working Set Size, Working Set Size, Quota Peak Paged Pool Usage,
			;  Quota Paged Pool Usage, Quota Peak Non-Paged Pool Usage, Quota Non-Paged Pool Usage, Pagefile Usage, Peak Pagefile Usage
			For $i=9 To 19
				$aBigList[$iProcIndex][$i]=DllStructGetData($stProcInfo,$i+7)	; 16 -> 26
			Next
			; x64-only value (Duplicated Pagefile Usage/Commit Size, in bytes)
;~ 			ConsoleWrite("For '"&$sTitle&"', CommitSz x64 value:"&DllStructGetData($stProcInfo,"CommitSz")&@CRLF)
;~ 			If $iX64Offset Then $aBigList[$iProcIndex][28]=DllStructGetData($stProcInfo,27)

			; IO (Input/Output or Read/Write) Counters:
			; Read,Write,Other Operations Count; Read,Write,Other Transfers Count
			For $i=20 To 25
				$aBigList[$iProcIndex][$i]=DllStructGetData($stProcInfo,$i+7+$iX64Offset)	; 27 [or 28] -> 32 [or 33] (note this is where x64 differs)
			Next
			; Thread counts for Process
			$iNumThreads=DllStructGetData($stProcInfo,2)	; # Threads
			$aBigList[$iProcIndex][26]=$iNumThreads
			$iTotalThreads+=$iNumThreads
	; Now to enumerate the threads
			If $bEnumThreads Then
				Dim $aThreadList[$iNumThreads+1][12]
				$pThreadPtr=$pBufPtr+$iThreadOffset

				For $i=1 To $iNumThreads
					$stThreadInfo=DllStructCreate($tag_SYS_THREAD_INFO,$pThreadPtr)
					$aThreadList[$i][0]=DllStructGetData($stThreadInfo,7)	; Thread ID
					$aThreadList[$i][1]=DllStructGetData($stThreadInfo,6)	; Thread's Process ID (kinda redundant [above], but..)
					$aThreadList[$i][2]=DllStructGetData($stThreadInfo,5)	; Thread Initial Start Address (usually located in Kernel32.dll as a start 'thunk' location)
					$aThreadList[$i][3]=DllStructGetData($stThreadInfo,9)	; Thread Base Priority
					$aThreadList[$i][4]=DllStructGetData($stThreadInfo,8)	; Thread Priority
					$aThreadList[$i][5]=DllStructGetData($stThreadInfo,3)	; Thread Creation Time (FileTime)
					$aThreadList[$i][6]=DllStructGetData($stThreadInfo,2)/1000	; Thread User Time  (convert from 100-nanosecond interval to ms)
					$aThreadList[$i][7]=DllStructGetData($stThreadInfo,1)/1000	; Thread Kernel Time  (convert from 100-nanosecond interval to ms)
					$aThreadList[$i][8]=DllStructGetData($stThreadInfo,4)	; Thread Last Wait State Time (in clock ticks)
					$aThreadList[$i][9]=DllStructGetData($stThreadInfo,10)	; Thread Context Switch Count
					$aThreadList[$i][10]=DllStructGetData($stThreadInfo,11)	; Thread State
					$aThreadList[$i][11]=DllStructGetData($stThreadInfo,12)	; Thread Wait Reason
					; Next rotation
					$pThreadPtr+=$iThreadStSz
				Next
				$aThreadList[0][0]=$iNumThreads
				$aBigList[$iProcIndex][27]=$aThreadList		; Array *within* an array
			Else
				$aBigList[$iProcIndex][27]=""
			EndIf
	; Get ready for next rotation
			$iTotalProcs+=1
			If $bFilterOn And $iMatchMode=3 Then ExitLoop	; Only one possible match for a Process ID, so Exit loop
			$iProcIndex+=1
			If $iProcIndex>$iProcListSz Then
				$iProcListSz+=10
				ReDim $aBigList[$iProcListSz+1][28]		; +$iX64Offset]		; If want the extra x64 value
			EndIf
		EndIf
		$bMatchMade=1
		$iTemp=DllStructGetData($stProcInfo,1)	; next entry offset
		If $iTemp=0 Then ExitLoop
		$pBufPtr+=$iTemp
	WEnd
	ReDim $aBigList[$iTotalProcs+1][28]		; +$iX64Offset]		; If want the extra x64 value
	$aBigList[0][0]=$iTotalProcs
	$aBigList[0][1]=$iTotalThreads
	Return $aBigList
EndFunc


; ===================================================================================================================
; Func _ProcessUDIsSuspended($vProcessID)
;
; Function to determine if a Process is Suspended.  It does this using _ProcessUDListEverything() with a
;	Process ID filter, and then	checking the ThreadState and WaitReason's for each thread in the Process.
;
; $vProcessID = process name or Process ID # of process to check Suspend Status on
;
; Returns:
;	Success: True/False, with @error=0, @extended = # of Threads that ARE suspended (can also be 0)
;	Failure: False with @error set:
;		@error = 1 = Invalid Parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 12 = 256KB buffer allocated, but API call still didn't work (doubtful this will ever happen)
;		@error = 32 = Process ID couldn't be located
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDIsSuspended($vProcessID)
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,False)
	Local $iSuspendCount=0,$aThreads=_ProcessUDListEverything($vProcessID,3)
	If @error Then Return SetError(@error,@extended,False)
	If $aThreads[0][0]=0 Then Return SetError(32,@extended,False)
	$aThreads=$aThreads[1][27]
	; Cycle through Threads and find cases where *both* ThreadState and WaitReason = 5 (Suspended)
	For $i=1 To $aThreads[0][0]
		If $aThreads[$i][10]=5 And $aThreads[$i][11]=5 Then $iSuspendCount+=1
	Next
	; Put the total threads that we found suspended in @extended
	SetExtended($iSuspendCount)
	; If ALL Thread Suspend states ring True, its a pretty good bet the Process is Suspended
	If $iSuspendCount=$aThreads[0][0] Then Return True
	Return False
EndFunc


; ===================================================================================================================
; Func _ProcessUDListModules($hProcess,$sTitleFilter=0,$iTitleMatchMode=0,$iOrder=0)
;
; Returns a list of modules for a given process by reading Process memory and 'undocumented' structures.
;	Special filtering is available (see $iTitleMatchMode parameter)
;	NOTES:
;	  1. This will only retrieve modules of the same bit-mode (in other words, a 32-bit Process can not read from
;		 a 64-bit Process and a 64-bit Process can only read the 64-bit Modules of a 32-bit Process (Wow64 modules))
;	  2. $iOrder mode 2 will only retrieve DLL modules; the executable will not appear in the list,
;		 and the count will be 1 less
;	  3. This can be used as an alternative to _ProcessListModules() with the limitations in #1, and
;	     is also one more way to get the path of an executable (as long as $iOrder<2)
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $sTitleFilter = (optional) Title to search for. This can be direct match, a substring, or a PCRE (see $iTitleMatchMode)
; $iTitleMatchMode = mode of matching title:
;	0 = default match string (not case sensitive)
;	1 = match substring
;	2 = match regular expression
;	+4 = stop at first match (can add or BitOr() this value) - can't be ombined with +8 for obvious reasons.
;	+8 = REVERSE the match mode. (Results returned will only be those that don't match the given criteria)
; $iOrder = Order to read Modules in, default is 0 [Note that '2' will only return DLL's]:
;	0 = Load-Order - Order the modules were Loaded for the Process
;	1 = In-Memory Order - Order that the modules were loaded into Memory for the Process
;	2 = Initialization Order* - Order that the modules were Initialized for the Process
;	  **** NOTE: #2 will NOT retrieve the .EXE module nor count it as a module! ****
;
; Returns:
;	Success: Array of Module info:
;		[0][0]  = Module Count
;		[$i][0] = Module Name
;		[$i][1] = Module Path			; full pathname
;		[$i][2] = Module Handle/Base Address
;		[$i][3] = Module Base Address	; same as #2 (keeping for consistency in returns)
;		[$i][4] = Module Size			; size in bytes
;		[$i][5] = Load Count			; This will be a match to 'Process Usage Count' and 'Global Usage Count'
;										; For many standard DLL's, this will = 65535 (ntdll.dll,kernel32.dll,user32.dll,etc)
;										;  This is why DLLOpen/Close or LoadLibrary/FreeLibrary won't reload or free those
;										;  specific modules, nor increase/decrease handle counts. Those modules are permanently
;										;  loaded by the O/S and available for ALL Processes.
;										;  *Other* DLL's (with non-65535 values) do get affected by those calls however
;		[$i][6] = DLL Entry Point Address	; address of DLL's entry point. **For some modules, this may be 0 **
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDListModules($hProcess,$sTitleFilter=0,$iTitleMatchMode=0,$iOrder=0)
	If $iOrder<0 Then $iOrder=0
	If $iOrder>2 Then $iOrder=2
; Grab the PEB pointer (and a small amount from the PEB)

	Local $pPEB,$stPEBTop,$pLdrData,$stLdrData,$stModuleInfo,$sStructStr,$stTmp,$sTmp,$pMod,$pLastMod,$iOffset
	Local $iArrSz=50,$bMatch1=0,$bMatchMade=1,$iTotal=0,$iNeg=0,$iMaxLoops=500	; (safeguard against endless looping)

	If $sTitleFilter="" Then $sTitleFilter=0

	If BitAND($iTitleMatchMode,8) Then
		$iNeg=-1

	; 'Stop at first match' flag set?
	ElseIf BitAND($iTitleMatchMode,4) And IsString($sTitleFilter) Then
		$iArrSz=1
		$bMatch1=1
	EndIf
	$iTitleMatchMode=BitAND($iTitleMatchMode,3)

	Dim $aModules[$iArrSz+1][7]

	$pPEB=__PUDGetBasic($hProcess,2)	; PEB Pointer
	If @error Then Return SetError(@error,@extended,"")

	$stPEBTop=DllStructCreate("byte;byte;byte;byte;handle;ptr;ptr")	; just the start of the PEB up to 'LdrAddress'
	_ProcessMemoryRead($hProcess,$pPEB,DllStructGetPtr($stPEBTop),DllStructGetSize($stPEBTop))
	If @error Then Return SetError(@error,@extended,"")
	$pLdrData=DllStructGetData($stPEBTop,7)	; LDR_DATA pointer
#cs
	; ----------------------------------------------------------------------------------------------------------------------------
	; LDR_DATA: Length, Initialized, SsHandle, InLoadOrderMods1st, InLoadOrderModsLast,
	;	InMemoryOrderMods1st, InMemoryOrderModsLast, InInitializationOrderMods1st, InInitializationOrderModsLast, EntryInProgress
	; ----------------------------------------------------------------------------------------------------------------------------
#ce
	$stLdrData=DllStructCreate("ulong;byte;ptr;ptr;ptr;ptr;ptr;ptr;ptr;ptr")
	_ProcessMemoryRead($hProcess,$pLdrData,DllStructGetPtr($stLdrData),DllStructGetSize($stLdrData))
	If @error Then Return SetError(@error,@extended,"")
#cs
	; ---------------------------------------------------------------------------------------------------------------------
	; MODULE_INFO_NODE: LoadOrderNext, LoadOrderPrev, MemoryOrderNext, MemoryOrderPrev, InitOrderNext, InitOrderPrev,
	;	BaseAddress, EntryPoint, Size, ModuleFullPathLen, ModuleFullPathMaxLen, ModuleFullPathPtr,
	;	ModuleNameLen, ModuleNameMaxLen, ModuleNamePtr, Flags, LoadCount, TlsIndex, HashTableNext, HashTablePrev, TimeStamp
	; ---------------------------------------------------------------------------------------------------------------------
#ce
	; Create the end part of MODULE_INFO_NODE structure string (cutting off 1st 4 pointers - see below):
	$sStructStr="ptr;ptr;hwnd;ptr;ulong_ptr;ushort;ushort;ptr;ushort;ushort;ptr;ulong;ushort;ushort;ptr;ptr;ulong"
	; Dependent on 'Order', the structure we will be getting pointers to will be pointers *into* the MODULE_INFO_NODE structure
	;	(in other words, LoadOrder gives the FULL structure, MemoryOrder gives the structure 2 ptrs in, InitOrder 4 ptrs in)
	Switch $iOrder
		Case 0
			$sStructStr="ptr;ptr;ptr;ptr;"&$sStructStr	; FULL structure
			$iOffset=7
		Case 1
			$sStructStr="ptr;ptr;"&$sStructStr			; 2-ptrs in structure
			$iOffset=5
		Case Else	; 2
			; Already set up for InitOrder				; 4-ptrs in structure (already set up)
			$iOffset=3
	EndSwitch
	$stModuleInfo=DllStructCreate($sStructStr)	; create tweaked MODULE_INFO_NODE structure

	; Grab 1st and last MODULE_INFO pointers
	$pMod=DllStructGetData($stLdrData,4+$iOrder*2)
	$pLastMod=DllStructGetData($stLdrData,5+$iOrder*2)

	; Enter Loop until last MODULE_INFO structure has been reached (and read)
	While 1
		_ProcessMemoryRead($hProcess,$pMod,DllStructGetPtr($stModuleInfo),DllStructGetSize($stModuleInfo))
		If @error Then Return SetError(@error,@extended,"")

		; Grab Module name
		$stTmp=DllStructCreate("wchar["&Round(DllStructGetData($stModuleInfo,$iOffset+7)/2)&']')	; length is in bytes!
		; Read from string pointer to $stTmp structure (module name)
		_ProcessMemoryRead($hProcess,DllStructGetData($stModuleInfo,$iOffset+8),DllStructGetPtr($stTmp),DllStructGetSize($stTmp))
		If @error Then Return SetError(@error,@extended,"")

		$sTmp=DllStructGetData($stTmp,1)	; Grab string (temporarily)
		If IsString($sTitleFilter) Then
			Switch $iTitleMatchMode
				Case 0
					If $sTitleFilter<>$sTmp Then $bMatchMade=0
				Case 1
					If StringInStr($sTmp,$sTitleFilter)=0 Then $bMatchMade=0
				Case Else
					If Not StringRegExp($sTmp,$sTitleFilter) Then $bMatchMade=0
			EndSwitch
			$bMatchMade+=$iNeg	; toggles match/no-match if 0x8 set
		EndIf
		If $bMatchMade Then
			$iTotal+=1
			If $iTotal>$iArrSz Then
				$iArrSz+=10
				ReDim $aModules[$iArrSz+1][7]
			EndIf
			; Grab Module Full pathname
			$stTmp=DllStructCreate("wchar["&Int(DllStructGetData($stModuleInfo,$iOffset+4)/2)&']')	; length is in bytes!
			; Read from string pointer to $stTmp structure (module pathname)
			_ProcessMemoryRead($hProcess,DllStructGetData($stModuleInfo,$iOffset+5),DllStructGetPtr($stTmp),DllStructGetSize($stTmp))
			If @error Then Return SetError(@error,@extended,"")

			; Store the info
			$aModules[$iTotal][0]=$sTmp								; Module Name
			$aModules[$iTotal][1]=DllStructGetData($stTmp,1)		; Module Pathname
			$aModules[$iTotal][2]=DllStructGetData($stModuleInfo,$iOffset)	; Module Handle/Base Address
			$aModules[$iTotal][3]=$aModules[$iTotal][2]						; Base Address (same, keeping for consistency)
			$aModules[$iTotal][4]=DllStructGetData($stModuleInfo,$iOffset+2)	; Module Size
			$aModules[$iTotal][5]=DllStructGetData($stModuleInfo,$iOffset+10)	; Load Count/Process Usage Count
			$aModules[$iTotal][6]=DllStructGetData($stModuleInfo,$iOffset+1)	; DLL Entry Point Address
			If $aModules[$iTotal][6]=0 Then $aModules[$iTotal][6]=0			; If 0, change it to a non-pointer
			If $bMatch1 Then ExitLoop
		EndIf
		$bMatchMade=1
		$iMaxLoops-=1
		; Was that the last module in the list? [or did the fail-safe run out?]
		If $pMod=$pLastMod Or $iMaxLoops=0 Then ExitLoop
		$pMod=DllStructGetData($stModuleInfo,1)		; Next Module_Info node (1st element)
	WEnd
;~ 	ConsoleWrite("Loop countdown:"&$iMaxLoops&@CRLF)
	ReDim $aModules[$iTotal+1][7]
	$aModules[0][0]=$iTotal
	Return $aModules
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetModuleBaseAddress($hProcess,$sModuleName)
;
; Returns the Base Address for the specified Module name for a given process, using 'undocumented' functions.
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $sModuleName = Module name to get the Base Address for
;
; Returns:
;	Success: Base Addresss. @extended=ModuleSize (in bytes), @error = 0,
;	  UNLESS more than one module of the same name found [shouldn't happen here though], whereas @error is set:
;		@error = -16 = 2+ modules with *same name* were found
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = -1 = no modules found matching criteria
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetModuleBaseAddress($hProcess,$sModuleName)
	Local $aModList=_ProcessUDListModules($hProcess,$sModuleName,4)
	If @error Then Return SetError(@error,@extended,-1)
	If $aModList[0][0]=0 Then Return SetError(-1,0,-1)
	; This *shouldn't* happen:
	If $aModList[0][0]>1 Then SetError(-16)	; notify caller that >1 match was found, but returning 1st instance
	Return SetError(@error,$aModList[1][4],$aModList[1][3])	; SetExtended() actually clears @error, so we must use SetError()
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetModuleByAddress($hProcess,$pAddress)
;
; Returns module info for the module that contains the given address, using 'undocumented' functions.
;	Note the address is generally the module code/data as-loaded-from-disk,
;	 so it won't reocognize memory allocated by a given module AFTER loading.
;	Also note: can't be used on 32-bit addresses from a 64-bit Process or 64-bit addresses from a 32-bit Process.
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $pAddress = Address of memory that should belong to a module
;
; Returns:
;	Success: Array of Module info, @error=0:
;		[0][0]  = Module Count
;		[$i][0] = Module Name
;		[$i][1] = Module Path			; full pathname
;		[$i][2] = Module Handle/Base Address
;		[$i][3] = Module Base Address	; same as #2 (keeping for consistency in returns)
;		[$i][4] = Module Size			; size in bytes
;		[$i][5] = Load Count			; This will be a match to 'Process Usage Count' and 'Global Usage Count'
;										; For many standard DLL's, this will = 65535 (ntdll.dll,kernel32.dll,user32.dll,etc)
;										;  This is why DLLOpen/Close or LoadLibrary/FreeLibrary won't reload or free those
;										;  specific modules, nor increase/decrease handle counts. Those modules are permanently
;										;  loaded by the O/S and available for ALL Processes.
;										;  *Other* DLL's (with non-65535 values) do get affected by those calls however
;		[$i][6] = DLL Entry Point Address	; address of DLL's entry point. **For some modules, this may be 0 **
;	Failure: "" with @error set:
;		@error = 1  = invalid parameter, or process does not exist.
;		@error = 2  = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 16 = Address could not be found in any Module
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetModuleByAddress($hProcess,$pAddress)
	If Ptr($pAddress)=0 Then Return SetError(1,0,"")
	Local $iAddress,$iModAddress,$aModList,$aReturn[7]
	$aModList=_ProcessUDListModules($hProcess)
	If @error Then Return SetError(@error,@extended,"")
	; Pointer comparisons have a history of failing in AutoIt - casting to Int (as long as its a string (hence &'')). fixes this.
	;	Number() has a 32-bit cutoff issue (see trac ticket #1519)
	$iAddress=Int($pAddress&'')
;~	ConsoleWrite("Ptr looking for:"&$pAddress&" as Int:"&$iAddress&@CRLF)
	For $i=1 To $aModList[0][0]
		$iModAddress=Int($aModList[$i][3]&'')
		If $iAddress>=$iModAddress And $iAddress<($iModAddress+$aModList[$i][4]) Then
			For $i2=0 To 6
				$aReturn[$i2]=$aModList[$i][$i2]
			Next
			Return $aReturn
		EndIf
	Next
	Return SetError(16,0,"")
EndFunc
