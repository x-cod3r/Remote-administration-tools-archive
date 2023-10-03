#include-once
#include "[CommonDLL]\_NTDLLCommonHandle.au3"	; Common NTDLL.DLL handle
#include <_ProcessFunctions.au3>			; _ProcessMemoryRead()
; ===============================================================================================================================
; <_ProcessUndocumented.au3>
;
; 'Undocumented' (though 'suspiciously' documented-in-some-places) Process manipulation functions.  NTQuery, PEB etc
;	  NOTE: 32-bit Processes getting info for 64-bit Processes have some limitations:
;		- _ProcessUDGetStrings() will not work in 32-bit mode for a 64-bit Process
;		- Anything else that requires the PEB structure will also fail from 32-bit to a 64-bit Process. (so far, only the above listed)
;
; Main Functions:
;	_ProcessUDGetStrings()		; Retrieves Command Line, Current Directory, Invokation method, Environment, etc strings.
;	_ProcessUDGetPID()			; Retrieves the Process ID for a given Process handle. Unnecessary for properly written code.
;	_ProcessUDGetParentPID()	; Retrieves the Parent Process ID for a given Process - fastest method!
;	_ProcessUDGetSessionID()	; Retrieves the Session ID for a given Process (uses Process *Handles* vs the standard API call)
;	_ProcessUDGetHandleCount()	; Retrieves count of open handles for a Process
;
; Memory Functions:
;	_ProcessUDGetMemInfo()	; Returns information on Memory usage of the Process
;							; (Virtual Size elements are what distinguish this call from _ProcessGetMemInfo())
;	_ProcessUDGetHeaps()	; Returns an array of Process heaps (base pointers)
;
; Misc. Functions:
;	_ProcessUDGetSubSystemInfo()	; Returns the Image SubSystem type for the Process.
;									; Typical returns: 1 (Native System Process), 2 (GUI), 3 (CUI)
;
; Suspend/Resume Functions:
;	_ProcessUDSuspend()		; Suspends the given Process (or increments Suspend count)
;	_ProcessUDResume()		; Resumes the given Process (or decrements the Suspend count)
;
; INTERNAL-ONLY!! Functions:		; do NOT call these directly!!
;	__PUDQueryProcess()		; Main interface to the 'NtQueryInformationProcess' function
;	__PUDGetBasic()			; Proxy function used by a few other functions - gets the Basic Info class data
;
; Future Planned Functions:
;	Too many 'undocumented' functions to choose from! (but whats most useful is the question..)
;
; Retired Functions:
;	_ProcessUDGetIOCounters()	; Returns information on I/O Counters (read/write operation counts and bytes) for given Process
;								; RETIRED REASON: MSDN documentation issue (now fixed). It *is* available since Win2000.
;
; Dependencies:
;	<_ProcessFunctions.au3>			; main Process functions UDF
;
; See also:
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<_ProcessUDGetPEB.au3>			; Function to retrieve 'undocumented' structure
;	<TestProcessFunctions.au3>		; GUI Interface allowing interaction with Process functions
;	<TestProcessFunctionsScratch.au3>	; Misc. tests of Process functions (a little experimental 'playground')
;	<_MemoryFunctionsEx.au3>		; Extended and 'undocumented' Memory Functions
;	<_MemoryScanning.au3>			; Advanced memory scan techniques using Assembly
;	<_ThreadFunctions.au3>			; Thread functions
;	<_ThreadRemote.au3>				; Functions for creating Remote Threads
;	<_ThreadContext.au3>			; Special Thread Context functions. ADVANCED and dangerous stuff here
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
;	<_ThreadUDGetTEB.au3>			; Function to retrieve 'undocumented' structure
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
; Func __PUDQueryProcess($hProcess,$iProcInfoClass,$vProcInfoData,$iProcInfoSz,$sProcInfoType="ptr")
;
; Internal Function used for calling NtQueryInformationProcess.
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $iProcInfoClass = # of the type of Process information to get.  These class #'s aren't all listed on MSDN or
;	in the header files. (ntddk.h does have many listed. remember to count from 0!)
; $vProcInfoData = usually a pointer to a DLLStruct, though it may just be a datatype pointer (ex: 'ulong*')
; $iProcInfoSz = size of data to transfer - usually DllStructGetSize(), but can also be the size of a datatype
;				(remember x64 compatibility!)
; $sProcInfoType = DLLCall()-type of $vProcInfoData (usually type 'ptr')
;
; Returns:
;	Success: Array returned from DLLCall(), and if a DLLStruct was passed, it was probably updated. @error = 0 or 7:
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;	Failure: "" with @error set:
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;
; Author: Ascend4nt
; ===================================================================================================================

Func __PUDQueryProcess($hProcess,$iProcInfoClass,$vProcInfoData,$iProcInfoSz,$sProcInfoType="ptr")
	Local $aRet=DllCall($_COMMON_NTDLL,"long","NtQueryInformationProcess","handle",$hProcess,"int",$iProcInfoClass,$sProcInfoType,$vProcInfoData,"ulong",$iProcInfoSz,"ulong*",0)
	If @error Then Return SetError(2,@error,"")
	; NTSTATUS of something OTHER than STATUS_SUCCESS (0)?
	If $aRet[0] Then Return SetError(6,$aRet[0],"")
	If $aRet[5]<>$iProcInfoSz Then SetError(7,0)	; Size mismatch
	Return $aRet
;~ 	If $aRet[5]<>$iSysInfoLen Then ConsoleWriteError("Size mismatch: $stInfo struct length="&$iSysInfoLen&", ReturnLength="&$aRet[5]&@LF)
EndFunc


; ===================================================================================================================
; Func __PUDGetBasic($hProcess,$iInfo)
;
; In-between function for getting PROCESS_BASIC_INFO via __PUDQueryProcess()
;
; Author: Ascend4nt
; ===================================================================================================================

Func __PUDGetBasic($hProcess,$iInfo)
	If Not IsPtr($hProcess) Then Return SetError(1,0,-1)
	; Process_Basic_Info: Exit Status, PEB Base Address, Affinity Mask, Base Priority, Process ID#, Parent Process ID#
	Local $stPBI=DllStructCreate("ulong_ptr;ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr")
	__PUDQueryProcess($hProcess,0,DllStructGetPtr($stPBI),DllStructGetSize($stPBI))
	If @error Then Return SetError(@error,@extended,-1)
	Return DllStructGetData($stPBI,$iInfo)
EndFunc


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessUDGetPID($hProcess)
;
; Function to get the Process ID from a Process Handle. This shouldn't be necessary for properly written code.
;	Useful for Win2000 and WinXP pre-SP1, which do not have the API function 'GetProcessId'.
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Process ID #, @error=0
;	Failure: 0, with @error set:
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetPID($hProcess)
	Local $vRet=__PUDGetBasic($hProcess,5)
	If @error Then Return SetError(@error,@extended,0)
	Return $vRet
EndFunc

; ===================================================================================================================
; Func _ProcessUDGetParentPID($hProcess)
;
; Function to get the Parent Process ID from a 'child' Process Handle. Quicker than _ProcessGetParent().
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Parent Process ID #, @error=0
;	Failure: 0, with @error set:
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetParentPID($hProcess)
	Local $vRet=__PUDGetBasic($hProcess,6)
	If @error Then Return SetError(@error,@extended,0)
	Return $vRet
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetSessionID($hProcess)
;
; Function to return Session ID # for the given Process handle.
;   Same functionality as _ProcessGetSessionID(), except this works on Process Handles instead of Process IDs.
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Session ID # and @error=0
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetSessionID($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,-1)
	Local $aRet=__PUDQueryProcess($hProcess,24,0,4,"ulong*")
	If @error Then Return SetError(@error,@extended,-1)
	Return $aRet[3]
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetHandleCount($hProcess)
;
; Function to return the # of handles currently open by the given Process
;	Useful for Win2000 and WinXP pre-SP1, which do not have the API function 'GetProcessHandleCount'.
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
;	Success: # with @error = 0
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended contains DLLCall()'s error code
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetHandleCount($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,-1)
	Local $aRet=__PUDQueryProcess($hProcess,20,0,4,"ulong*")
	If @error Then Return SetError(@error,@extended,-1)
	Return $aRet[3]
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetMemInfo($hProcess,$iInfoToGet=-1)
;
; Function to return Memory Usage information for the given Process.  This is *mostly* the same as _ProcessGetMemInfo(),
;	except this also returns Virtual Size information.  I'm not entirely clear on the meaning of this extra information.
;	ALSO of note: Does in fact work for 32-to-64-bit Processes.
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $iInfoToGet = Memory Info to Get. Possible values are:
;	-1 = get ALL times, returns an array
;	 0 = Page Fault Count [# of times memory must be swapped from disk to memory]
;	 1 = Peak Working Set Size [in bytes]
;	 2 = Working Set Size (main memory usage) [in bytes]
;	 3 = Quota Peak Paged Pool Usage [in bytes]
;	 4 = Quota Paged Pool Usage [in bytes]
;	 5 = Quota Peak NON-Paged Pool Usage [in bytes]
;	 6 = Quota NON-Paged Pool Usage [in bytes]
;	 7 = Page File Usage [in bytes]
;	 8 = Peak Page File Usage [in bytes]
;	 9 = Peak Virtual Size [in bytes]
;	 10 = Virtual Size [in bytes]
;
; Returns:
;	Success: A single value (all except PageFaultCount are in Bytes), or an array if $iInfoToGet=-1.
;		[0] = Page Fault Count [# of times memory must be swapped from disk to memory]
;		[1] = Peak Working Set Size
;		[2] = Working Set Size (main memory usage)
;		[3] = Quota Peak Paged Pool Usage
;		[4] = Quota Paged Pool Usage
;		[5] = Quota Peak NON-Paged Pool Usage
;		[6] = Quota NON-Paged Pool Usage
;		[7] = Page File Usage
;		[8] = Peak Page File Usage
;		[9] = Peak Virtual Size [in bytes]
;		[10] = Virtual Size [in bytes]
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetMemInfo($hProcess,$iCounterToGet=-1)
	If Not IsPtr($hProcess) Or $iCounterToGet>10 Then Return SetError(1,0,-1)

	; VM_Counters: Peak Virtual Size, Virtual Size, # Page Faults, Peak Working Set Size, Working Set Size, Quota Peak Paged Pool Usage, Quota Paged Pool Usage, Quota Peak NonPaged Pool Usage, Quota NonPaged Pool Usage, Page File Usage, Peak Page File Usage
	Local $stVMCounters=DllStructCreate("ulong_ptr;ulong_ptr;dword;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr")
	__PUDQueryProcess($hProcess,3,DllStructGetPtr($stVMCounters),DllStructGetSize($stVMCounters))
	If @error Then Return SetError(@error,@extended,-1)
	; Return ALL?
	If $iCounterToGet<0 Then
		Dim $aMemInfo[11]
		; Structure Index 1 and 2 are mapped to array [9] and [10] for compatible return with _ProcessGetMemInfo()
		For $i=0 To 8
			$aMemInfo[$i]=DllStructGetData($stVMCounters,$i+3)
		Next
		$aMemInfo[9]=DllStructGetData($stVMCounters,1)
		$aMemInfo[10]=DllStructGetData($stVMCounters,2)
		Return $aMemInfo
	EndIf
	; Structure Index 1 and 2 are mapped to array [9] and [10] for compatible return with _ProcessGetMemInfo()
	If $iCounterToGet>8 Then Return DllStructGetData($stVMCounters,$iCounterToGet-8)
	Return DllStructGetData($stVMCounters,$iCounterToGet+3)
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetStrings($hProcess,$bGetEnvStr=False)
;
; Function to probe a Process's memory and grab Process Strings from the 'ProcessParameters' section of its memory.
;	The following are returned: Current Directory, DLL Search Path Pattern, Image PathName, CommandLine,
;		Invokation Method, Desktop Info, Shell Info, Runtime Data, Environment Strings (optional)
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $bGetEnvStr = If True, grab the Environment string data as well.  This can be risky as the amount of data necessary
;	to transfer the strings is unknown and can cause a violation if it runs into another memory area.
;	The function grabs 4096 bytes, fairly standard in most O/S's for Environment (and is a default 'page size'), but it
;	is not the best method: _ProcessMemoryVirtualQuery(), index 3 would be the *safest* means for pulling 'just enough' memory.
;
; Returns:
;	Success: An array of strings, with @error=0. @extended = # of errors encountered in gathering strings (if any)
;	  Array:
;		[0] = Current Directory
;		[1] = DLL Search Path
;		[2] = Process FullPath
;		[3] = Command Line
;		[4] = Invokation Method (if available)
;		[5] = Desktop [Window Station] Info (if available)
;		[6] = Shell Info (if available) - still have not seen this
;		[7] = Runtime Data (if available) - also have not seen
;	 Additionally, if $bGetEnvStr is set:
;		[8] = Environment Strings (@LF-separated list of environment strings)
;		NOTE: 1st environment string is often (in my testing) "=::=::\", and can probably be ignored.
;	Failure: "", with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Typical @extended error codes:  STATUS_ACCESS_DENIED (0xC0000022), STATUS_INFO_LENGTH_MISMATCH (0xC0000004)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetStrings($hProcess,$bGetEnvStr=False)
; Grab the PEB pointer (and a small amount from the PEB)

	Local $pPEB,$stPEBTop,$pProcessParams,$stProcessParams
	$pPEB=__PUDGetBasic($hProcess,2)	; PEB Pointer
	If @error Then Return SetError(@error,@extended,"")

	$stPEBTop=DllStructCreate("byte;byte;byte;byte;handle;ptr;ptr;ptr")	; just the start of the PEB up to 'Process Parameters'
	_ProcessMemoryRead($hProcess,$pPEB,DllStructGetPtr($stPEBTop),DllStructGetSize($stPEBTop))
	If @error Then Return SetError(@error,@extended,"")

; Grab the Process Parameters pointer (and then the data)

	$pProcessParams=DllStructGetData($stPEBTop,8)	; Process Parameters index
	; Process Parameters structure (don't worry about the 'tag' description [less clutter this way])
	$stProcessParams=DllStructCreate("ulong;ulong;ulong;ulong;ptr;ulong;ptr;ptr;ptr;ushort;ushort;ptr;ptr;ushort;ushort;ptr;ushort;ushort;ptr;ushort;ushort;ptr;ptr;ulong;ulong;ulong;ulong;ulong;ulong;ulong;ulong;ulong_ptr;ushort;ushort;ptr;ushort;ushort;ptr;ushort;ushort;ptr;ushort;ushort;ptr")
	_ProcessMemoryRead($hProcess,$pProcessParams,DllStructGetPtr($stProcessParams),DllStructGetSize($stProcessParams))
	If @error Then Return SetError(@error,@extended,"")

; Now read through the strings one by one

	; Struct Indexes for CurrentDir, DLLSearchPath, ImagePathName, CommandLine, InvokeMethod, DesktopInfo, ShellInfo, RuntimeData [Env.Strings Index=23]
	Local $aInfoArray[9],$aIndexes[8]=[10,14,17,20,33,36,39,42]
	Local $iCurMinLen,$iCurMaxLen,$iTemp,$pString,$stString,$iErrTotal=0

	; Grab strings for each item (not including Environment strings)
	For $i=0 To 7
		$iTemp=$aIndexes[$i]
		$iCurMinLen=DllStructGetData($stProcessParams,$iTemp)
		$iCurMaxLen=DllStructGetData($stProcessParams,$iTemp+1)
		$pString=DllStructGetData($stProcessParams,$iTemp+2)

		; Length & MaxLength of correct size? (sometimes you get '0' and '1' and no data)
		If $iCurMinLen>0 And $iCurMaxLen>2 Then
			$stString=DllStructCreate("wchar["&Int($iCurMaxLen/2)&']')	; length is in bytes, so divide by 2 (Round is needless precaution)
			; Read from string pointer to $stString structure
			_ProcessMemoryRead($hProcess,$pString,DllStructGetPtr($stString),$iCurMaxLen)
			If @error Then
;~ 				ConsoleWriteError("ReadMem Error:"&@error&", @extended:"&@extended&@LF)
				$iErrTotal+=1
			Else
				; Fill in appropriate member of array
				$aInfoArray[$i]=DllStructGetData($stString,1)
			EndIf
#cs
;	Alternative (replace above starting at $stString=)
;~ 			$aInfoArray[$i]=_ProcessMemoryReadSimple($hProcess,$pString,Int($iCurMaxLen/2),"wstr")
;~ 			If @error Then $iErrTotal+=1
#ce
		EndIf
	Next
	; Sometimes \??\ is prefixed to full path
	$aInfoArray[2]=StringReplace($aInfoArray[2],"\??\","",0,2)

	If Not $bGetEnvStr Then
		ReDim $aInfoArray[8]
		Return SetExtended($iErrTotal,$aInfoArray)
	EndIf

; Get Environment pointer, then Strings. [return as 9th element, separated by @LF's]
;	WARNING: this method just grabs 4096 bytes (typical page size), which is pretty std size for environment, though
;	  to be absolutely safe it would be best combined with _ProcessMemoryVirtualQuery(), index 3

	Local $stEnv,$sEnvVars,$iCutOff,$aEnvVars

	$stEnv=DllStructCreate("byte[4096]")		; 4096 may be too big/small depending on strings
	_ProcessMemoryRead($hProcess,DllStructGetData($stProcessParams,23),DllStructGetPtr($stEnv),DllStructGetSize($stEnv))
;~ 	ConsoleWrite("ReadMem @error="&@error&", @extended="&@extended&", Ptr:"&DllStructGetData($stProcessParams,'Environment')&@LF)
	If @error Then $iErrTotal+=1

	$sEnvVars=BinaryToString(DllStructGetData($stEnv,1),2)
	$iCutOff=StringInStr($sEnvVars,ChrW(0)&ChrW(0),0)		; cut off if we grabbed too big of a string (at double-NULL term)
	If $iCutOff Then $sEnvVars=StringLeft($sEnvVars,$iCutOff-1) ; 1 before last NULL-term (to avoid an extra line from StringSplit)
	$aInfoArray[8]=StringReplace($sEnvVars,ChrW(0),@LF)
;~ 	_DLLStructDisplay($stProcessParams,$tagPROCESS_PARAMETERS)
	Return SetExtended($iErrTotal,$aInfoArray)
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetHeaps($hProcess)
;
; Function to probe a Process's memory and grab Heap pointers from the PEB.
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: An array of Heap pointers, @error=0. @extended = # of heaps
;	Failure: "", with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 8 = No Heaps reported (unlikely for any process)!
;
; Typical @extended error codes:  STATUS_ACCESS_DENIED (0xC0000022), STATUS_INFO_LENGTH_MISMATCH (0xC0000004)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetHeaps($hProcess)
; Grab the PEB pointer (and a small amount from the PEB)
	Local $pPEB,$iHeapOffset,$stHeapInfo,$stHeaps,$iHeaps
	$pPEB=__PUDGetBasic($hProcess,2)	; PEB Pointer
	If @error Then Return SetError(@error,@extended,"")
	; NumHeaps offset in x86: 136 , x64: 232
	If @AutoItX64 Then
		$iHeapOffset=232
	Else
		$iHeapOffset=136
	EndIf
	; (part of PEB, specifically: NumHeaps;MaxNumHeaps;pProcessHeaps)
	$stHeapInfo=DllStructCreate("ulong;ulong;ptr")
	_ProcessMemoryRead($hProcess,$pPEB+$iHeapOffset,DllStructGetPtr($stHeapInfo),DllStructGetSize($stHeapInfo))
	If @error Then Return SetError(@error,@extended,"")
	; Allocate space for heaps and pull the info over
	$iHeaps=DllStructGetData($stHeapInfo,1)
	If $iHeaps=0 Then Return SetError(8,0,"")
	$stHeaps=DllStructCreate("ptr["&$iHeaps&"]")
	_ProcessMemoryRead($hProcess,DllStructGetData($stHeapInfo,3),DllStructGetPtr($stHeaps),DllStructGetSize($stHeaps))
	If @error Then Return SetError(@error,@extended,"")
	; Pull them from the struct and return them in an array
	Dim $aHeaps[$iHeaps]
	For $i=0 To $iHeaps-1
		$aHeaps[$i]=DllStructGetData($stHeaps,1,$i+1)
	Next
	Return SetExtended($iHeaps,$aHeaps)
EndFunc


; ===================================================================================================================
; Func _ProcessUDGetSubSystemInfo($hProcess)
;
; Function to probe a Process's memory and return ImageSubSystem Info.
;	(Can determine if the process is a Native System Process (1), a CUI (3), a GUI (2), etc)
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Subystem type, with @error = 0
;		Typical returns: 1 (Native System Process), 2 (GUI), 3 (CUI)
;	Failure: -1, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;
; Typical @extended error codes:  STATUS_ACCESS_DENIED (0xC0000022), STATUS_INFO_LENGTH_MISMATCH (0xC0000004)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetSubSystemInfo($hProcess)
	; Grab the PEB pointer (and one variable from the PEB)
	Local $pPEB,$iSubSysOffset,$stSubSysInfo
	$pPEB=__PUDGetBasic($hProcess,2)	; PEB Pointer
	If @error Then Return SetError(@error,@extended,-1)
	; ImageSubSystem offset in x86: 180 , x64: 296	[32-bit value]
	If @AutoItX64 Then
		$iSubSysOffset=296
	Else
		$iSubSysOffset=180
	EndIf
	; (part of PEB, specifically: ImageSubSystem)
	$stSubSysInfo=DllStructCreate("ulong")
	_ProcessMemoryRead($hProcess,$pPEB+$iSubSysOffset,DllStructGetPtr($stSubSysInfo),4)
	If @error Then Return SetError(@error,@extended,-1)
	Return DllStructGetData($stSubSysInfo,1)
EndFunc


; ===================================================================================================================
; Func _ProcessUDSuspend($hProcess)
;
; Suspends a Process, or increments the 'Suspend Count' if it has already been Suspended.
;	Note that this is a dangerous thing to do for certain processes!
;	ADDITIONALLY, this function is not available on Win2000 clean install, though may be available in service packs.
;	The alternative for Win2000 would be to use SuspendThread on all Threads.
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_SUSPEND_RESUME (0x0800) access
;
; Returns:
;	Success: True, with @error=0
;	Failure: False and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDSuspend($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_NTDLL,"long","NtSuspendProcess","handle",$hProcess)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0] Then Return SetError(6,$aRet[0],False)	; non-zero means error
	Return True
EndFunc


; ===================================================================================================================
; Func _ProcessUDResume($hProcess)
;
; Resumes a Suspended Process, or decrements the 'Suspend Count'.
;	Note that this is a dangerous thing to do for certain processes!
;	ADDITIONALLY, this function is not available on Win2000 clean install, though may be available in service packs.
;	The alternative for Win2000 would be to use ResumeThread on all Threads.
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_SUSPEND_RESUME (0x0800) access
;
; Returns:
;	Success: True, with @error=0
;	Failure: False and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDResume($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_NTDLL,"long","NtResumeProcess","handle",$hProcess)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0] Then Return SetError(6,$aRet[0],False)	; non-zero means error
	Return True
EndFunc
