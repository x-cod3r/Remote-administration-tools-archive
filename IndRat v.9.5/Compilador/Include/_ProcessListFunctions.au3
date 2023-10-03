#include-once
#include <_ProcessFunctions.au3>	; necessary base functions
#include <WinAPI.au3>	; _WinAPI_GetLastError() for __PFCreateToolHelp32Snapshot(), _WinAPI_GetAncestor() & _WinAPI_GetWindowLong() for _ProcessWinList()
; ===============================================================================================================================
; <_ProcessListFunctions.au3>
;
;	Functions for Process List functions (processes, modules, heaps, threads, GUI windows)
;	  NOTES:
;		- Admin rights are required for getting Handles to certain Processes (also depends on type of Access),
;		  and possibly Debug Privileges (see <_GetPrivilege_SEDEBUG.au3>)
;		- EVEN with Debug Privileges, some Processes on Vista+ are 'protected' and can only be accessed via the
;		  PROCESS_QUERY_LIMITED_INFORMATION access type.  This limits the information and operations that can be performed.
;		  (Audiodg.exe is one example of a protected process).
;	   ALSO: 32-bit Processes getting info for 64-bit Processes have some limitations:
;		- _ProcessListHeaps() and  _ProcessListModules() functions will not work in 32-bit mode for a 64-bit Process
;
; List/Enumeration Functions (all but 2 functions here utilize CreateToolHelp32Snapshot):
;	_ProcessListEx()		; Get a List of Processes with extended info (like ProcessList but with Parent PID, etc)
;	_ProcessListWTS()		; Get a List of Processes like ProcessList, with extra info: Session ID and Owner/'User Name' info
;	_ProcessListHeaps()		; Get a List of Heap information for a Process (with optional Heap-walking)
;	_ProcessListThreads()	; Get a List of Threads for *all* processes, or filtered for a select Process
;	_ProcessListModules()	; Get a List of Module for a Process (with Filtering options)
;							;  NOTE: Getting 32-bit Modules in addition to 64-bit modules may cause the main EXE to be listed twice
;							;  (at the start of the 32-bit Modules list).  This generally only happens when probing 32-bit Processes.
;	_ProcessWinList()		; Get a List of Window handles belonging to a Process, with filter options
;	_ProcessesWinList()		; Get a List of Windows belonging to Process(es) of a given *name*, with filter options.
;
; Extra Wrapper Functions:
;	_ProcessGetChildren()	; Returns child process(es) info for given process (utilizes _ProcessListEx())
;	_ProcessGetParent()		; Returns parent process information for given process (utilizes _ProcessListEx())
;	_ProcessGetModuleBaseAddress()	; Returns the Base address for the Module in the given process (utilizes _ProcessListModules())
;									;  NOTE that the process name itself is also a module, so its address can also be looked up
;	_ProcessGetModuleByAddress()	; Returns module info for the module that contains the given address.
;
; INTERNAL-ONLY!! Functions:		; do NOT call these directly!!
;	__PFCreateToolHelp32Snapshot()	; For _ProcessList* functions
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
; Author: Ascend4nt, parts of _ProcessListWTS borrowed from Manko's "_WinAPI_ProcessListOWNER_WTS.au3" UDF (API call, Owner lookup)
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	INTERNAL-ONLY!! FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func __PFCreateToolHelp32Snapshot($iProcessID,$iFlags)
;
; Begins a 'Snapshot' enumeration process, which should be continued using the enumeration functions listed below.
;	After completion, the Snapshot handle needs to be closed using __PFCloseHandle()
;
; $iProcessID = Process ID # of process to begin 'Snapshot' of.  If 0, it means the current process
; $iFlags can be any combination of the below (though one at a time is recommended)
;
; TH32CS_INHERIT		0x80000000 (indicates if snapshot handle should be inheritable - not really useful for us)
; TH32CS_SNAPALL = all of the below OR'd together
; TH32CS_SNAPHEAPLIST	0x00000001	[use Heap32ListFirst and Heap32ListNext]
; TH32CS_SNAPMODULE		0x00000008	[use Module32FirstW and Module32NextW]
;									(enumerates either 32-bit modules or 64-bit modules depending on this process's mode)
;		; MSDN NOTE: To include the 32-bit modules of the process specified in th32ProcessID from a 64-bit process, use the TH32CS_SNAPMODULE32 flag.
;
; TH32CS_SNAPMODULE32	0x00000010	[use Module32FirstW and Module32NextW]
;~ ;									(if enumerating 32-bit modules when calling from a 64bit Process)
;		; MSDN NOTE: If the function fails with ERROR_BAD_LENGTH, retry the function until it succeeds.
;
; TH32CS_SNAPPROCESS	0x00000002	[use Process32FirstW and Process32NextW]
; TH32CS_SNAPTHREAD		0x00000004	[use Thread32First and Thread32Next]
;
; Returns:
;	Success: Handle to 'Snapshot'
;	Failure: -1 with @error set:
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned (and Module Snapshot NOT selected)
;		@error = 4 = INVALID_HANDLE_VALUE returned, Module Snapshot selected, but after 10 loops still couldn't get
;
; NOTES:
; - This may fail if Privilege mode is not set due to access restrictions on certain processes.
;	ALSO, it may fail on Processes being debugged or in a semi-suspended state (-1 or 4 will be returned)
;	 (This actually includes AutoIt3 processes in a 'Script Paused' state)
; - After done with the Snapshot, the handle must be discarded using __PFCloseHandle()
; - MSDN: If the specified process is a 64-bit process and the caller is a 32-bit process, this function fails and
;		the last error code is ERROR_PARTIAL_COPY (299). This is only a problem when the Process ID # is needed.
;		(i.e. only for Module and Heap enumeration)
;
; Author: Ascend4nt
; ===================================================================================================================

Func __PFCreateToolHelp32Snapshot($iProcessID,$iFlags)
	; Parameter checking not done!! (INTERNAL only!)
	Local $aRet
	; Enter a loop in the case of a Module snapshot returning -1 and LastError=ERROR_BAD_LENGTH.  We'll try a max of 10 times
	For $i=1 To 10
		$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","CreateToolhelp32Snapshot","dword",$iFlags,"dword",$iProcessID)
		If @error Then Return SetError(2,@error,-1)
		; INVALID_HANDLE_VALUE (-1) ?
		If $aRet[0]=-1 Then
			; Heap (0x1) or Module (0x8 or 0x18) Snapshot?  MSDN recommends retrying the API call if LastError=ERROR_BAD_LENGTH (24)
			If BitAND($iFlags,0x19) And _WinAPI_GetLastError()=24 Then ContinueLoop
			; Else - other error, invalid handle
			Return SetError(3,0,-1)
		EndIf
		Sleep(0)	; delay the next attempt
	Next
	If $aRet[0]=-1 Then Return SetError(4,0,-1)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessListEx($vFilter=0,$iMatchMode=0)
;
; Function to replicate ProcessList() functionality but to provide the full details available,
;	including Parent process ID, Thread count, and Base Priority of threads in that process.
;	Also, special filtering is available (see $iMatchMode parameter)
;
; $vFilter = (optional) Title or PID# to search for.
;	In title mode this can be direct match, a substring, or a PCRE (see $iMatchMode)
;	In PID# mode, this must be a number
; $iMatchMode = mode of matching title, PID# or Parent PID#:
;	0 = default match string (not case sensitive)
;	1 = match substring
;	2 = match regular expression
;	3 = match Process ID #
;	4 = match Parent Process ID #
;	+8 = REVERSE the match mode. (Results returned will only be those that don't match the given criteria)
;
; Return:
;	Success: Array of processes:
;		[0][0] = # of Processes (0 = no matches found)
;		[$i][0] = Process Name
;		[$i][1] = Process ID #
;		[$i][2] = Parent Process ID #
;		[$i][3] = Thread Count
;		[$i][4] = Threads Base Priority
;	Failure: "" with @error set:
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;
; NOTE: "System Idle Process" (PID #0) will be listed as "[System Process]"
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessListEx($vFilter=0,$iMatchMode=0)
	Local $hTlHlp,$aRet,$iPID,$iPPID,$sTitle
	Local $bMatchMade=1,$iTotal=0,$iArrSz=100,$aProcesses[$iArrSz+1][5],$bFilterOn=0,$iNeg=0
	; ProcessEntry32: Size, Usage, Process ID#, Default Heap ID, Module ID, Threads, Parent PID#, Base Priority, Flags, ExeFile
	Local $stProcEntry=DllStructCreate("dword;dword;dword;ulong_ptr;dword;dword;dword;long;dword;wchar[260]"),$pStPointer=DllStructGetPtr($stProcEntry)
	DllStructSetData($stProcEntry,1,DllStructGetSize($stProcEntry))

	If (IsString($vFilter) And $vFilter<>"") Or (IsNumber($vFilter) And $iMatchMode>2) Then $bFilterOn=1
	If BitAND($iMatchMode,8) Then
		$iNeg=-1
		$iMatchMode=BitAND($iMatchMode,7)
	EndIf

	; TH32CS_SNAPPROCESS 0x00000002  (Process ID=0)
	;	TH32CS_SNAPNOHEAPS 0x40000000 (noted on Windows CE to prevent memory problems as Heaps are captured along with processes by default)
	$hTlHlp=__PFCreateToolHelp32Snapshot(0,0x40000002)
	If @error Then Return SetError(@error,@extended,"")

	; Get first process
	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Process32FirstW","handle",$hTlHlp,"ptr",$pStPointer)

	While 1
		If @error Then
			Local $iErr=@error
			__PFCloseHandle($hTlHlp)
			Return SetError(2,$iErr,"")
		EndIf
		; False returned? Likely no more processes found [LastError should equal ERROR_NO_MORE_FILES (18)]
		If Not $aRet[0] Then ExitLoop

		$sTitle=DllStructGetData($stProcEntry,10)
		$iPID=DllStructGetData($stProcEntry,3)
		$iPPID=DllStructGetData($stProcEntry,7)
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
			$iTotal+=1
			If $iTotal>$iArrSz Then
				$iArrSz+=10
				ReDim $aProcesses[$iArrSz+1][5]
			EndIf
			$aProcesses[$iTotal][0]=$sTitle
			$aProcesses[$iTotal][1]=$iPID
			$aProcesses[$iTotal][2]=$iPPID
			$aProcesses[$iTotal][3]=DllStructGetData($stProcEntry,6)	; Thread Count
			$aProcesses[$iTotal][4]=DllStructGetData($stProcEntry,8)	; Thread Base Priority
			If $bFilterOn And $iMatchMode=3 Then ExitLoop	; Only one possible match for a Process ID, so Exit loop
		EndIf
		$bMatchMade=1
		; Next process
		$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Process32NextW","handle",$hTlHlp,"ptr",$pStPointer)
	WEnd
	__PFCloseHandle($hTlHlp)
	ReDim $aProcesses[$iTotal+1][5]
	$aProcesses[0][0]=$iTotal
	Return $aProcesses
EndFunc


; ===================================================================================================================
; Func _ProcessGetChildren($vProcessID)
;
; Function to retrieve Child process(es) information for the given process.
;
; $vProcessID = process name or Process ID # of process to find the child processes of
;
; Return:
;	Success: Array of processes:
;		[0][0] = # of Child Processes (0 = none found)
;		[$i][0] = Process Name
;		[$i][1] = Process ID #
;		[$i][2] = Parent Process ID #
;		[$i][3] = Thread Count
;		[$i][4] = Threads Base Priority
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetChildren($vProcessID)
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,"")
	Local $aProcList=_ProcessListEx($vProcessID,4)
	Return SetError(@error,@extended,$aProcList)
EndFunc


; ===================================================================================================================
; Func _ProcessGetParent($vProcessID)
;
; Function to retrieve Parent process information for the given process.
;
; $vProcessID = process name or Process ID # of process to find the parent process of
;
; Return:
;	Success: Array describing parent process, OR @error=16 and @extended = Parent PID (no longer in existence)
;	  Array format:
;		[0] = Process Name
;		[1] = Process ID #
;		[2] = Parent Process ID #
;		[3] = Thread Count
;		[4] = Threads Base Priority
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = 16 = Parent process information not found, but Parent PID # found - returned in @extended ('half-success')
;		@error = 32 = Couldn't locate the passed process (likely doesn't exist)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetParent($vProcessID)
	Local $i,$aProcList,$aParentInfo[5],$iParentPID
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,"")

	$aProcList=_ProcessListEx($vProcessID,3)	; first get current PID info
	If @error Then Return SetError(@error,@extended,"")
	If $aProcList[0][0]=0 Then Return SetError(32,0,"")
	$iParentPID=$aProcList[1][2]
	$aProcList=_ProcessListEx($iParentPID,3)	; then get parent PID info
	If @error Then Return SetError(@error,@extended,"")
	If $aProcList[0][0]=0 Then Return SetError(16,$iParentPID,"")
	For $i=0 To 4
		$aParentInfo[$i]=$aProcList[1][$i]
	Next
	Return $aParentInfo
#cs
;	*slightly* faster way:
	$aProcList=_ProcessListEx()
	If @error Then Return SetError(@error,@extended,"")
	For $i=1 To $aProcList[0][0]
		If $aProcList[$i][1]=$vProcessID Then
			; Found current process. Now go through list again and find process matching parent PID
			$iParentPID=$aProcList[$i][2]
			For $i=1 To $aProcList[0][0]
				If $aProcList[$i][1]=$iParentPID Then
					For $i2=0 To 4
						$aParentInfo[$i2]=$aProcList[$i][$i2]
					Next
					Return $aParentInfo
				EndIf
			Next
			; Parent is gone, but we have the PID
			Return SetError(16,$iParentPID,"")
		EndIf
	Next
	; Couldn't locate!
	Return SetError(32,0,"")
#ce
EndFunc


; ===================================================================================================================
; Func _ProcessListHeaps($vProcessID,$bHeapWalk=False,$bCompleteList=False)
;
; Function to get all the heaps belonging to a process and optionally walk through them.
;	!!WARNING!!: Walking through the heaps, WILL take a LOT of time and resources.
;	   $bCompleteList makes it worse - It returns every allocation for every heap in a process!
;
; $vProcessID = process name or Process ID # of process to walk the heaps on
; $bHeapWalk = If False, will only get the Heap basic information. If True, it will walk through each block
;	of the heap. Note this is extremly time- and resource-intensive. $bCompleteList=True will make it even more so!
; $bCompleteList = If True, will retrieve ALL heap data - EVERY block of EVERY heap of a process! (NOT recommended)
;			If False, and $bHeapWalk is True, will still walk the list - but only to retrieve the total size of all heaps
;
; Return:
;	Success: Array of heap info:
;		[0][0] = Heap Count
;		[$i][0]= Handle to the Heap Block [pointer to the top]
;		[$i][1]= Address of *official* start of the Heap
;		[$i][2]= Size of the Heap in bytes - *If* $bHeapWalk is True. (NOT recommended due to time/resources)
;		[$i][3]= Heap Flags:  either:
;			LF32_FIXED = 1		(block is in a fixed unmoveable location)
;			LF32_FREE = 2		(block is not used [FREE!])
;			LF32_MOVEABLE = 4	(block can be moved)
;		[$i][4]= Heap ID	; used internally by heap walk ToolHelp32Snapshot functions [might get rid of this..]
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2,6 = DLLCall() error. @extended = actual DLLCall error code  [6 = inner loop calls]
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessListHeaps($vProcessID,$bHeapWalk=False,$bCompleteList=False)
	If $bCompleteList And Not $bHeapWalk Then Return SetError(1,0,"")
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,"")

	Local $hTlHlp,$aRet,$iErr,$iHeapID,$iTotal=0,$iHeapSz,$iHeapTotalSz,$iArrSz=20
	If $bCompleteList Then $iArrSz=5000
	Dim $aHeapList[$iArrSz+1][5]
	; HeapList32: Size, Process ID, Heap ID, Flags
	Local $stHeapList=DllStructCreate("ulong_ptr;dword;ulong_ptr;dword"),$pHLPointer=DllStructGetPtr($stHeapList)
	DllStructSetData($stHeapList,1,DllStructGetSize($stHeapList))
	; HeapEntry32: Size, Handle, Address, Block Size, Flags, Lock Count, Reserved, Process ID, Heap ID
	Local $stHeapEntry=DllStructCreate("ulong_ptr;handle;ptr;ulong_ptr;dword;dword;dword;dword;ulong_ptr"),$pHEPointer=DllStructGetPtr($stHeapEntry)
	DllStructSetData($stHeapEntry,1,DllStructGetSize($stHeapEntry))

	; TH32CS_SNAPHEAPLIST 0x00000001
	$hTlHlp=__PFCreateToolHelp32Snapshot($vProcessID,1)
	If @error Then Return SetError(@error,@extended,"")

	; Get first heap
	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Heap32ListFirst","handle",$hTlHlp,"ptr",$pHLPointer)
	While 1
		If @error Then
			$iErr=@error
			__PFCloseHandle($hTlHlp)
			Return SetError(2,$iErr,"")
		EndIf
		; False returned? No more heaps [LastError should equal ERROR_NO_MORE_FILES (18)]
		If Not $aRet[0] Then Exitloop

		; Flags.. meaning? MSDN says should always be = HF32_DEFAULT (1), but this doesn't seem to be the case..
;~ 		ConsoleWrite("~>Uncaptured data from Heap32ListFirst/Next - Flags:"&DllStructGetData($stHeapList,4)&@CRLF)
		$iHeapID=DllStructGetData($stHeapList,3)
;~ 		ConsoleWrite("~>Heap ID for Heap32ListFirst/Next:"&$iHeapID&@CRLF)

		$iHeapTotalSz=0
		; 1st Heap block..
		$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Heap32First","ptr",$pHEPointer,"dword",$vProcessID,"ulong_ptr",$iHeapID)
		While 1
			If @error Then
				$iErr=@error
				__PFCloseHandle($hTlHlp)
				Return SetError(6,$iErr,"")
			EndIf
			; False returned? No more blocks on heap
			If Not $aRet[0] Then Exitloop

			$iHeapSz=DllStructGetData($stHeapEntry,4)

			If $bCompleteList Or $iHeapTotalSz=0 Then
				$iTotal+=1
				If $iTotal>$iArrSz Then
					$iArrSz+=1000
					ReDim $aHeapList[$iArrSz+1][5]
				EndIf
				$aHeapList[$iTotal][0]=DllStructGetData($stHeapEntry,2)	; Heap Block (top)
				$aHeapList[$iTotal][1]=DllStructGetData($stHeapEntry,3)	; Heap Start
				If $bCompleteList Then $aHeapList[$iTotal][2]=$iHeapSz	; Heap Size
				$aHeapList[$iTotal][3]=DllStructGetData($stHeapEntry,5)	; Heap Flags
				$aHeapList[$iTotal][4]=$iHeapID							; Heap ID (used by ToolHelp functions)
				; Process ID is same as on entry, Heap ID is same as $iHeapID
			EndIf

			If Not $bHeapWalk Then ExitLoop
			$iHeapTotalSz+=$iHeapSz

			; Next block on heap
			$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Heap32Next","ptr",$pHEPointer)
		WEnd
		If $bHeapWalk And Not $bCompleteList Then $aHeapList[$iTotal][2]=$iHeapTotalSz
		; Next heap
		$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Heap32ListNext","handle",$hTlHlp,"ptr",$pHLPointer)
	WEnd
	__PFCloseHandle($hTlHlp)
	ReDim $aHeapList[$iTotal+1][5]
	$aHeapList[0][0]=$iTotal
	Return $aHeapList
EndFunc


; ===================================================================================================================
; Func _ProcessListThreads($vFilterID=-1,$bThreadFilter=False)
;
; Function to list running threads on the system. Can be filtered using parameter.
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

Func _ProcessListThreads($vFilterID=-1,$bThreadFilter=False)
	If IsString($vFilterID) And Not StringIsDigit($vFilterID) Then
		If $bThreadFilter Then Return SetError(1,0,"")
		$vFilterID=ProcessExists($vFilterID)
		If $vFilterID=0 Then Return SetError(1,0,"")
	EndIf
;~ 	ConsoleWrite("Process ID on entry:"&$vFilterID&@CRLF)
	Local $hTlHlp,$aRet,$iCurPID,$iCurTID,$iTotal=0,$iArrSz=500,$aThreads[$iArrSz+1][3]
	; ThreadEntry32: Size, Usage, Thread ID, Process ID, Base Priority, Delta Priority, Flags
	Local $stThreadEntry=DllStructCreate("dword;dword;dword;dword;long;long;dword"),$pTEPointer=DllStructGetPtr($stThreadEntry)
	DllStructSetData($stThreadEntry,1,DllStructGetSize($stThreadEntry))

	; TH32CS_SNAPTHREAD	0x00000004  (PID=0 because it takes snapshot of ALL threads regardless)
	$hTlHlp=__PFCreateToolHelp32Snapshot(0,4)
	If @error Then Return SetError(@error,@extended,"")

	; Get first thread
	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Thread32First","handle",$hTlHlp,"ptr",$pTEPointer)

	While 1
		If @error Then
			Local $iErr=@error
			__PFCloseHandle($hTlHlp)
			Return SetError(2,$iErr,"")
		EndIf
		; False returned? Likely no more threads found [LastError should equal ERROR_NO_MORE_FILES (18)]
		If Not $aRet[0] Then ExitLoop

		$iCurPID=DllStructGetData($stThreadEntry,4)						; Process ID (PID)
		$iCurTID=DllStructGetData($stThreadEntry,3)						; Thread ID (TID)
		If $vFilterID<0 Or (Not $bThreadFilter And $vFilterID=$iCurPID) Or ($bThreadFilter And $vFilterID=$iCurTID) Then
			$iTotal+=1
			If $iTotal>$iArrSz Then
				$iArrSz+=50
				ReDim $aThreads[$iArrSz+1][3]
			EndIf
			$aThreads[$iTotal][0]=$iCurTID
			$aThreads[$iTotal][1]=$iCurPID
			$aThreads[$iTotal][2]=DllStructGetData($stThreadEntry,5)	; Thread Base Priority
			If $bThreadFilter Then ExitLoop		; only one matching Thread is possible with a Thread ID
		EndIf
		; Next thread
		$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Thread32Next","handle",$hTlHlp,"ptr",$pTEPointer)
	WEnd
	__PFCloseHandle($hTlHlp)
	ReDim $aThreads[$iTotal+1][3]
	$aThreads[0][0]=$iTotal
	Return $aThreads
EndFunc


; ===================================================================================================================
; Func _ProcessListModules($vProcessID,$sTitleFilter=0,$iTitleMatchMode=0,$bList32bitMods=False)
;
; Returns a list of modules for a given process. Special filtering is available (see $iTitleMatchMode parameter)
;	Note: this is yet another way to get the path of an executable (the 1st 'module' on the list).
;	  Of course - it can't be used on an x64 process from a 32-bit process, which is why you'd need to use alternatives.
;
; $vProcessID = process name or Process ID # of process to get module information on
; $sTitleFilter = (optional) Title to search for. This can be direct match, a substring, or a PCRE (see $iTitleMatchMode)
; $iTitleMatchMode = mode of matching title:
;	0 = default match string (not case sensitive)
;	1 = match substring
;	2 = match regular expression
;	+4 = stop at first match (can add or BitOr() this value) - can't be ombined with +8 for obvious reasons.
;	+8 = REVERSE the match mode. (Results returned will only be those that don't match the given criteria)
; $bList32bitMods* = If True, and running in 64-bit mode on a 64bit O/S, this will grab additional 32-bit modules
;	that are attached to a given 32-bit process. (its confusing - but yes, 64-bit modules are attached as well)
;	False returns strictly 64-bit modules for 32-bit processes.
;
;	*See CreateToolHelp32Snapshot on MSDN for information on TH32CS_SNAPMODULE & TH32CS_SNAPMODULE32
;
; Returns:
;	Success: Array of Module info:
;		[0][0] = Module Count
;		[$i][0] = Module Name
;		[$i][1] = Module Path			; full pathname
;		[$i][2] = Module Handle
;		[$i][3] = Module Base Address	; in testing, this and the Handle are the same..
;		[$i][4] = Module Size
;		[$i][5] = Process Usage Count	; according to MSDN, this and Global Usage Count are the same (also in testing)
;										; For many standard DLL's, this will = 65535 (ntdll.dll,kernel32.dll,user32.dll,etc)
;										;  This is why DLLOpen/Close or LoadLibrary/FreeLibrary won't reload or free those
;										;  specific modules, nor increase/decrease handle counts. Those modules are permanently
;										;  loaded by the O/S and available for ALL Processes.
;										;  *Other* DLL's (with non-65535 values) do get affected by those calls however
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessListModules($vProcessID,$sTitleFilter=0,$iTitleMatchMode=0,$bList32bitMods=False)
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,"")

	Local $hTlHlp,$aRet,$sTitle,$bMatchMade=1,$iTotal=0,$bMatch1=0,$iArrSz=40,$iNeg=0

	If $sTitleFilter="" Then $sTitleFilter=0

	If BitAND($iTitleMatchMode,8) Then
		$iNeg=-1

	; 'Stop at first match' flag set?
	ElseIf BitAND($iTitleMatchMode,4) And IsString($sTitleFilter) Then
		$iArrSz=1
		$bMatch1=1
	EndIf
	$iTitleMatchMode=BitAND($iTitleMatchMode,3)

	Dim $aModules[$iArrSz+1][6]
	; MAX_MODULE_NAME32 = 255  (+1 = 256), MAX_PATH = 260
	; ModuleEntry32: Size, Module ID, Process ID, Global Usage Count, Process Usage Count, Base Address, Module Size, Module Handle, Module Name, Module Path
	Local $stModEntry=DllStructCreate("dword;dword;dword;dword;dword;ptr;dword;handle;wchar[256];wchar[260]"),$pMEPointer=DllStructGetPtr($stModEntry)
	DllStructSetData($stModEntry,1,DllStructGetSize($stModEntry))

	If $bList32bitMods Then
		; TH32CS_SNAPMODULE32	0x00000010  + 	; TH32CS_SNAPMODULE		0x00000008
		$hTlHlp=__PFCreateToolHelp32Snapshot($vProcessID,0x18)
	Else
		; TH32CS_SNAPMODULE		0x00000008
		$hTlHlp=__PFCreateToolHelp32Snapshot($vProcessID,8)
	EndIf

	If @error Then Return SetError(@error,@extended,"")

	; Get first module
	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Module32FirstW","handle",$hTlHlp,"ptr",$pMEPointer)

	While 1
		If @error Then
			Local $iErr=@error
			__PFCloseHandle($hTlHlp)
			Return SetError(2,$iErr,"")
		EndIf
		; False returned? Likely no more modules found [LastError should equal ERROR_NO_MORE_FILES (18)]
		If Not $aRet[0] Then ExitLoop

		$sTitle=DllStructGetData($stModEntry,9)					; file name
		If IsString($sTitleFilter) Then
			Switch $iTitleMatchMode
				Case 0
					If $sTitleFilter<>$sTitle Then $bMatchMade=0
				Case 1
					If StringInStr($sTitle,$sTitleFilter)=0 Then $bMatchMade=0
				Case Else
					If Not StringRegExp($sTitle,$sTitleFilter) Then $bMatchMade=0
			EndSwitch
			$bMatchMade+=$iNeg	; toggles match/no-match if 0x8 set
		EndIf
		If $bMatchMade Then
			$iTotal+=1
			If $iTotal>$iArrSz Then
				$iArrSz+=10
				ReDim $aModules[$iArrSz+1][6]
			EndIf
			$aModules[$iTotal][0]=$sTitle
			$aModules[$iTotal][1]=DllStructGetData($stModEntry,10)	; full path
			$aModules[$iTotal][2]=DllStructGetData($stModEntry,8)	; module handle/address (normally same as Base Address)
			$aModules[$iTotal][3]=DllStructGetData($stModEntry,6)	; module base address
			$aModules[$iTotal][4]=DllStructGetData($stModEntry,7)	; module size
			$aModules[$iTotal][5]=DllStructGetData($stModEntry,5)	; process usage count (same as Global usage count)
			; Process ID is same as on entry, Module ID always = 1, Global Usage Count = Process Usage Count
			If $bMatch1 Then ExitLoop
		EndIf
		$bMatchMade=1
		; Next module
		$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Module32NextW","handle",$hTlHlp,"ptr",$pMEPointer)
	WEnd
	__PFCloseHandle($hTlHlp)
	ReDim $aModules[$iTotal+1][6]
	$aModules[0][0]=$iTotal
	Return $aModules
EndFunc


; ===================================================================================================================
; Func _ProcessGetModuleBaseAddress($vProcessID,$sModuleName,$bList32bitMods=False,$bGetWow64Instance=False)
;
; Returns the Base Address for the specified Module name for a given process.
;
; $vProcessID = process name or Process ID # of process to get module information on
; $sModuleName = Module name to get the Base Address for
; $bList32bitMods* = If True, and running in 64-bit mode on a 64bit O/S, this will grab additional 32-bit modules
;	that are attached to a given 32-bit process. (its confusing - but yes, 64-bit modules are attached as well)
;	False returns strictly 64-bit modules for 32-bit processes.
; $bGetWow64Instance = If $bList32bitMods=True and more than one instance matching $sModuleName is found,
;	this determines whether the 1st (64-bit) or 2nd (32-bit) module base address is returned.
;
;	*See CreateToolHelp32Snapshot on MSDN for information on TH32CS_SNAPMODULE & TH32CS_SNAPMODULE32
;
; Returns:
;	Success: Base Addresss. @extended=ModuleSize (in bytes), @error = 0,
;	  UNLESS more than one module of the same name found, whereas @error is set:
;		@error = -16 = 2+ modules with *same name* were found (happens in Wow64), and $bGetWow64Instance=False
;			If $bGetWow64Instance is False, the *first* module's address is returned. (otherwise, @error=0)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter, or process does not exist.
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = -1 = no modules found matching criteria
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetModuleBaseAddress($vProcessID,$sModuleName,$bList32bitMods=False,$bGetWow64Instance=False)
	Local $i=0,$aModList
	If Not $bList32bitMods Then $i=4	; flag 4 = stop at 1st match (only if 32-bit modules aren't being listed)

	$aModList=_ProcessListModules($vProcessID,$sModuleName,$i,$bList32bitMods)
	If @error Then Return SetError(@error,@extended,-1)
	If $aModList[0][0]=0 Then Return SetError(-1,0,-1)
	; If a Wow64 Process (and $bList32bitMods=True), its possible more than one module name will match
	If $aModList[0][0]>1 Then
		If $bList32bitMods And $bGetWow64Instance Then Return SetExtended($aModList[2][4],$aModList[2][3])
		SetError(-16)	; notify caller that >1 match was found, but returning 1st instance since $bGetWow64Instance=False
	EndIf
	Return SetError(@error,$aModList[1][4],$aModList[1][3])	; SetExtended() actually clears @error, so we must use SetError()
EndFunc


; ===================================================================================================================
; Func _ProcessGetModuleByAddress($vProcessID,$pAddress)
;
; Returns module info for the module that contains the given address.
;	Note the address is generally the module code/data as-loaded-from-disk,
;	 so it won't reocognize memory allocated by a given module AFTER loading.
;	Also note: can't be used on an x64 process from a 32-bit process.
;
; $vProcessID = process name or Process ID # of process to get module information on
; $pAddress = Address of memory that should belong to a module
;
; Returns:
;	Success: Array of Module info, @error=0:
;		[0] = Module Name
;		[1] = Module Path			; full pathname
;		[2] = Module Handle
;		[3] = Module Base Address	; in testing, this and the Handle are the same..
;		[4] = Module Size
;		[5] = Process Usage Count	; according to MSDN, this and Global Usage Count are the same (also in testing)
;									; For many standard DLL's, this will = 65535 (ntdll.dll,kernel32.dll,user32.dll,etc)
;									;  This is why DLLOpen/Close or LoadLibrary/FreeLibrary won't reload or free those
;									;  specific modules, nor increase/decrease handle counts. Those modules are permanently
;									;  loaded by the O/S and available for ALL Processes.
;									;  *Other* DLL's (with non-65535 values) do get affected by those calls however
;	Failure: "" with @error set:
;		@error = 1  = invalid parameter, or process does not exist.
;		@error = 2  = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3  = INVALID_HANDLE_VALUE returned from __PFCreateToolHelp32Snapshot()
;		@error = 16 = Address could not be found in any Module
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetModuleByAddress($vProcessID,$pAddress)
	If Ptr($pAddress)=0 Then Return SetError(1,0,"")
	Local $iAddress,$iModAddress,$aModList,$aReturn[6]
	$aModList=_ProcessListModules($vProcessID,0,0,True)
	If @error Then Return SetError(@error,@extended,"")
	; Pointer comparisons have a history of failing in AutoIt - casting to Int (as long as its a string (hence &'')). fixes this.
	;	Number() has a 32-bit cutoff issue (see trac ticket #1519)
	$iAddress=Int($pAddress&'')
;	ConsoleWrite("Ptr looking for:"&$pAddress&" as Int:"&$iAddress&@CRLF)
	For $i=1 To $aModList[0][0]
		$iModAddress=Int($aModList[$i][3]&'')
		If $iAddress>=$iModAddress And $iAddress<($iModAddress+$aModList[$i][4]) Then
			For $i2=0 To 5
				$aReturn[$i2]=$aModList[$i][$i2]
			Next
			Return $aReturn
		EndIf
	Next
	Return SetError(16,0,"")
EndFunc


; ===================================================================================================================
; Func _ProcessListWTS($vFilter=0,$iMatchMode=0,$vWTSAPI32DLL="wtsapi32.dll")
;
; Function similar to ProcessList() and _ProcessListEx(), except this one retrieves Session ID and Owner information.
;	Also, special filtering is available (see $iMatchMode parameter)
;	WARNING: Terminal Services must be running for this function to properly work (per MS).
;	 On plain Windows 2000, this function will not work without Terminal Services installed.
;	 *Also, Elevated Privileges are required to get Owner info for certain processes (ie. SID ptr's = NULL).
;
; $vFilter = (optional) Title or PID# to search for.
;	In title mode this can be direct match, a substring, or a PCRE (see $iMatchMode)
;	In PID# mode, this must be a number
; $iMatchMode = mode of matching title or PID#
;	0 = default match string (not case sensitive)
;	1 = match substring
;	2 = match regular expression
;	3 = match Process ID #
;	+8 = REVERSE the match mode. (Results returned will only be those that don't match the given criteria)
; $vWTSAPI32DLL = Optional, a handle to wtsapi32.dll (retrieved with DLLOpen())
;
; Return:
;	Success: Array of processes:
;		[0][0] = # of Processes
;		[$i][0] = Process Name
;		[$i][1] = Process ID #
;		[$i][2] = Session ID #
;		[$i][3] = Owner Name/'User Name'
;	Failure: "" with @error set:
;		@error = 1 = invalid params ($vWTSAPI32DLL)
;		@error = 2 = DLLCall() error. @extended = actual DLLCall error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; NOTE: "System Idle Process" (PID #0) will be listed as "[System Process]"
;
; Author: Ascend4nt, parts of function borrowed from Manko's "_WinAPI_ProcessListOWNER_WTS.au3" UDF (API call, Owner lookup)
; ===================================================================================================================

Func _ProcessListWTS($vFilter=0,$iMatchMode=0,$vWTSAPI32DLL="wtsapi32.dll")
	If $vWTSAPI32DLL<0 Then Return SetError(1,0,"")
	Local $aRet,$iTotalStructs,$sTitle,$iPID,$pWTSBase
	Local $iOffset=0,$aSidInfo,$bMatchMade=1,$iTotal=0,$bFilterOn=0,$iNeg=0
	; WTS_PROCESS_INFO Struct: SessionID,ProcessID,ProcessName(ptr),SID ptr
	Local $stWTSProcInfo,$iStructSz=DllStructGetSize(DllStructCreate("dword;dword;ptr;ptr"))	; Calculate Structure Size
	Local $stStBuf=DllStructCreate("wchar[260]"),$pStBuf=DllStructGetPtr($stStBuf)	; buffer for Process Name strings (+ptr)

	If (IsString($vFilter) And $vFilter<>"") Or (IsNumber($vFilter) And $iMatchMode>2) Then $bFilterOn=1
	If BitAND($iMatchMode,8) Then
		$iNeg=-1
		$iMatchMode=BitAND($iMatchMode,3)
	EndIf

	; WTS_CURRENT_SERVER_HANDLE = NULL (0)
	$aRet=DllCall($vWTSAPI32DLL,"bool","WTSEnumerateProcessesW","handle",0,"dword",0,"dword",1,"ptr*",0,"dword*",0)
	If @error Then Return SetError(2,@error,"")
	If Not $aRet[0] Then Return SetError(3,0,"")
	$iTotalStructs=$aRet[5]
	Dim $aProcList[$iTotalStructs+1][4]
	$pWTSBase=$aRet[4]
	; Special Note: The 'Process Name' pointer is a pointer to a null-term string of *unknown* length!  Grabbing an
	;	arbitrary # of wchars (260,100,etc) can cause crashes, so to prevent that, we use a null-term-search-&-copy-to-buffer call
	For $i=1 To $iTotalStructs
		$stWTSProcInfo=DllStructCreate("dword;dword;ptr;ptr",$pWTSBase+$iOffset)

		$aRet=DllCall($_COMMON_KERNEL32DLL,"ptr","lstrcpynW","ptr",$pStBuf,"ptr",DllStructGetData($stWTSProcInfo,3),"int",260)
		If @error Or $aRet[0]=0 Then DllStructSetData($stStBuf,1,"")	; unlikely occurence - avoids If/Else/Endif
		$sTitle=DllStructGetData($stStBuf,1)	; Set Title from Buffer (via strcpy from null-term Process Name pointer (index 3))

		$iPID=DllStructGetData($stWTSProcInfo,2)	; Process ID
		If $bFilterOn Then
			Switch $iMatchMode
				Case 0
					If $vFilter<>$sTitle Then $bMatchMade=0
				Case 1
					If StringInStr($sTitle,$vFilter)=0 Then $bMatchMade=0
				Case 2
					If Not StringRegExp($sTitle,$vFilter) Then $bMatchMade=0
				Case Else
					If $vFilter<>$iPID Then $bMatchMade=0
			EndSwitch
			$bMatchMade+=$iNeg	; toggles match/no-match if 0x8 set
		EndIf
		If $bMatchMade Then
			$iTotal+=1
			$aProcList[$iTotal][0]=$sTitle								; Process name
			$aProcList[$iTotal][1]=$iPID								; Process ID
			$aProcList[$iTotal][2]=DllStructGetData($stWTSProcInfo,1)	; Session ID
			$aSidInfo=_Security__LookupAccountSid(DllStructGetData($stWTSProcInfo,4))	; from SID ptr (might be NULL!)
			If IsArray($aSidInfo) Then $aProcList[$iTotal][3]=$aSidInfo[0]	; Owner Name
			If $bFilterOn And $iMatchMode=3 Then ExitLoop	; Only one possible match for a Process ID, so Exit loop
		EndIf
		$bMatchMade=1
		$iOffset+=$iStructSz
	Next
	; Setup System Idle process missing fields (will only be in this order if no filtering..)
	If $iTotal And $aProcList[1][1]=0 Then
		$aProcList[1][0]="[System Process]"		; could also be 'System Idle Process', but leaving same as _ProcessListEx() result
		$aProcList[1][3]="SYSTEM"
	EndIf
	; Also setup 'System' process missing field (not set for Vista+)
	If $iTotal>1 And $aProcList[2][0]="System" Then $aProcList[2][3]="SYSTEM"

	; Free the memory per MSDN
	DllCall($vWTSAPI32DLL,"none","WTSFreeMemory","ptr",$pWTSBase)
	If @error Then SetExtended(@error)	; Register the error code in @extended, but there's nothing else that can be done
	ReDim $aProcList[$iTotal+1][4]
	$aProcList[0][0]=$iTotal
	Return $aProcList
EndFunc


; ===================================================================================================================
; Func _ProcessWinList($vProcessID,$sTitle=0,$bOnlyGetVisible=False,$bOnlyGetRoot=False,$bOnlyGetAltTab=False)
;
; Simple function to enumerate windows matching a given process.
;	Note that this will only check the first found process (the most recently created one), unless a Process ID is passed
;
; $vProcessID= Process Name or Process ID (preferred)
; $sTitle = If a string, used to match the title of the window "" matches windows with no titles. non-string matches all
; $bOnlyGetVisible = If True, only grab windows that are Visible
; $bOnlyGetRoot = If True, only grab windows that are the root. May not be needed anymore..
; $bOnlyGetAltTab = If True, only grab windows that appear in the Alt-Tab/Taskbar window list.
;	 Note that this list is not always the same as the Applications appearing in Task Manager!
;
; Returns:
;	Success: An array of [0][0] elements. If [0][0]=0, then nothing found
;		[0][0] = count of matching windows
;		[$i][0] = window Title
;		[$i][1] = window handle
;	Failure: "" with @error = 1 (process/process ID not found)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessWinList($vProcessID,$sTitle=0,$bOnlyGetVisible=False,$bOnlyGetRoot=False,$bOnlyGetAltTab=False)
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,"")
	If $bOnlyGetAltTab Then $bOnlyGetVisible=1	; Alt-Tab windows must be visible too, so ensure this param is True.
	Local $aWinList,$aEnumList,$hWndCur,$iCount=0,$iCurMatchCriteria=0,$iTotalCriteriaToMatch=0,$iExStyle

	If IsString($sTitle) Then
		$aWinList=WinList($sTitle)
	Else
		$aWinList=WinList()
	EndIf
	Dim $aEnumList[$aWinList[0][0]+1][2]

	If $bOnlyGetAltTab Then
		$iTotalCriteriaToMatch+=1
		$bOnlyGetVisible=1		; Alt-Tab windows are visible, so force this
	EndIf
	If $bOnlyGetVisible Then $iTotalCriteriaToMatch+=1
	If $bOnlyGetRoot Then $iTotalCriteriaToMatch+=1

	For $i=1 To $aWinList[0][0]
		$hWndCur=$aWinList[$i][1]
		If $vProcessID=WinGetProcess($hWndCur) Then
			If $bOnlyGetVisible And BitAND(WinGetState($hWndCur),2)=2 Then $iCurMatchCriteria+=1
			If $bOnlyGetRoot And _WinAPI_GetAncestor($hWndCur,2)=$hWndCur Then $iCurMatchCriteria+=1
			If $bOnlyGetAltTab Then
				; $GWL_EXSTYLE	= 0xFFFFFFEC <Constants.au3>
				$iExStyle=_WinAPI_GetWindowLong($hWndCur,-20)
				; Extended Style bits WS_EX_NOACTIVATE (0x08000000) and WS_EX_TOOLWINDOW (0x80) indicate non-Alt-Tab windows,
				;	but if bit WS_EX_APPWINDOW (0x040000) is set, then it is still Alt-Tab-able
				If BitAND($iExStyle,0x08000080)=0 Or BitAND($iExStyle,0x040000) Then $iCurMatchCriteria+=1
			EndIf
			If $iCurMatchCriteria=$iTotalCriteriaToMatch Then
				$iCount+=1
				$aEnumList[$iCount][0]=$aWinList[$i][0]
				$aEnumList[$iCount][1]=$hWndCur
			EndIf
			$iCurMatchCriteria=0
		EndIf
	Next
	$aEnumList[0][0]=$iCount
	ReDim $aEnumList[$iCount+1][2]
	Return $aEnumList
EndFunc


; ===================================================================================================================
; Func _ProcessesWinList($sProcess,$sTitle=0,$bOnlyGetVisible=False,$bOnlyGetRoot=False,$bOnlyGetAltTab=False)
;
; Simple function to enumerate windows matching processes of a given name.  (Best used with >1 process)
;
; $sProcess = Process name. (ex: 'explorer.exe')
; $sTitle = If a string, used to match the title of the window "" matches windows with no titles. non-string matches all
; $bOnlyGetVisible = If True, only grab windows that are Visible
; $bOnlyGetRoot = If True, only grab windows that are the root. May not be needed anymore..
; $bOnlyGetAltTab = If True, only grab windows that appear in the Alt-Tab/Taskbar window list.
;	 Note that this list is not always the same as the Applications appearing in Task Manager!
;
; Returns:
;	Success: An array of [0][0] elements. If [0][0]=0, then nothing found
;		[0][0]  = count of matching windows
;		[$i][0] = Process name
;		[$i][1] = Process ID # (PID)
;		[$i][2] = Window Title
;		[$i][3] = Window handle
;	Failure: "" with @error = 16 (process/process ID not found)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessesWinList($sProcess,$sTitle=0,$bOnlyGetVisible=False,$bOnlyGetRoot=False,$bOnlyGetAltTab=False)
	Local $i,$i2,$aWinList,$aProcList,$iCurPID,$iCount=0,$hWndCur,$iCurMatchCriteria=0,$iTotalCriteriaToMatch=0,$iExStyle
	$aProcList=ProcessList($sProcess)
	If IsString($sTitle) Then
		$aWinList=WinList($sTitle)
	Else
		$aWinList=WinList()
	EndIf
	If $aWinList[0][0]=0 Then Return SetError(16,0,'')
;	Process Name, PID, Window Title, HWND
	Dim $aMatches[$aWinList[0][0]+1][4]

	If $bOnlyGetAltTab Then
		$iTotalCriteriaToMatch+=1
		$bOnlyGetVisible=1		; Alt-Tab windows are visible, so force this
	EndIf
	If $bOnlyGetVisible Then $iTotalCriteriaToMatch+=1
	If $bOnlyGetRoot Then $iTotalCriteriaToMatch+=1

	For $i=1 To $aWinList[0][0]
		$hWndCur=$aWinList[$i][1]
		$iCurPID=WinGetProcess($hWndCur)
		For $i2=1 To $aProcList[0][0]
			If $iCurPID=$aProcList[$i2][1] Then
				If $bOnlyGetVisible And BitAND(WinGetState($hWndCur),2)=2 Then $iCurMatchCriteria+=1
				If $bOnlyGetRoot And _WinAPI_GetAncestor($hWndCur,2)=$hWndCur Then $iCurMatchCriteria+=1
				If $bOnlyGetAltTab Then
					; $GWL_EXSTYLE	= 0xFFFFFFEC <Constants.au3>
					$iExStyle=_WinAPI_GetWindowLong($hWndCur,-20)
					; Extended Style bits WS_EX_NOACTIVATE (0x08000000) and WS_EX_TOOLWINDOW (0x80) indicate non-Alt-Tab windows,
					;	but if bit WS_EX_APPWINDOW (0x040000) is set, then it is still Alt-Tab-able
					If BitAND($iExStyle,0x08000080)=0 Or BitAND($iExStyle,0x040000) Then $iCurMatchCriteria+=1
				EndIf
				If $iCurMatchCriteria=$iTotalCriteriaToMatch Then
				$iCount+=1
				$aMatches[$iCount][0]=$aProcList[$i2][0]
				$aMatches[$iCount][1]=$iCurPID
				$aMatches[$iCount][2]=$aWinList[$i][0]
				$aMatches[$iCount][3]=$hWndCur
				EndIf
				$iCurMatchCriteria=0
				ExitLoop
			EndIf
		Next
	Next
	If $iCount=0 Then Return SetError(32,0,'')
	ReDim $aMatches[$iCount+1][4]
	$aMatches[0][0]=$iCount
	Return $aMatches
EndFunc
