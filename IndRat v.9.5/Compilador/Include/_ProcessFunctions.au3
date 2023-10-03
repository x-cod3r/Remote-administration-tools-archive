#include-once
#include "[CommonDLL]\_Kernel32DLLCommonHandle.au3"	; Common Kernel32.DLL handle
#include "[CommonDLL]\_USER32DLLCommonHandle.au3"	; Common User32.DLL handle (only used for 2 functions)
#include <Security.au3>	; _Security__LookupAccountSid() for _ProcessGetOwner()
; ===============================================================================================================================
; <_ProcessFunctions.au3>
;
;	Functions for Processes that allow one to open a Process, get information, read/write data, and so on.
;	  NOTES:
;		- Some Functions require XP/2003+ O/S's!  Check Header notes. There are alternates in _ProcessUndocumented() for Windows 2000.
;		- Admin rights are required for getting Handles to certain Processes (also depends on type of Access),
;		  and possibly Debug Privileges (see <_GetPrivilege_SEDEBUG.au3>)
;		- EVEN with Debug Privileges, some Processes on Vista+ are 'protected' and can only be accessed via the
;		  PROCESS_QUERY_LIMITED_INFORMATION access type.  This limits the information and operations that can be performed.
;		  (Audiodg.exe is one example of a protected process).
;	   ALSO: 32-bit Processes getting info for 64-bit Processes have some limitations:
;		- _ProcessListHeaps() and  _ProcessListModules() functions will not work in 32-bit mode for a 64-bit Process
;		- Read/Write Memory Functions would fail also
;
; General Functions:
;	_ProcessOpen()			; Open a handle to a Process(). Also returns ProcessID# in @extended
;	_ProcessCloseHandle()	; Close the handle of a Process opened with _ProcessOpen()
;	_ProcessGetPID()		; Given a Process handle, returns the Process ID#. Not necessary for properly written code.
;	_ProcessGetExitCode()	; Get exit code for a Process that has terminated
;	_ProcessIsWow64()		; Returns True if Process being accessed is running in 32-bit mode on an x64 O/S
;	_ProcessGetPriorityX()	; Gets the Process Priority Class. 'X' tacked on due to name conflict with _ProcessGetPriority()
;	_ProcessSetPriorityX()	; Sets the Process's Priority Class. 'X' tacked on to keep consistent with above function.
;	_ProcessGetAffinityMask() ; Gets the Affinity Mask for the given Process. Also returns the current System Affinity mask
;	_ProcessSetAffinityMask() ; Sets the Affinity Mask for the given Process.
;	_ProcessGetTimes()		; Returns Process Creation, Exit, Kernel/User-mode Times  [<_WinTimeFunctions.au3> is helpful here)
;	_ProcessGetSessionID()	; Returns Session ID # for a given ProcessID #. May be restrictions based on Privilege level.
;	_ProcessGetOwner()		; Returns the Owner/'User Name' for a given Process.
;	_ProcessGetHandleCount(); Returns the # of open handles for a given Process
;	_ProcessGetIOCounters()	; Returns information on I/O Counters (read/write operation counts and bytes) for given Process
;	_ProcessGetGUIResources(); Returns the # of GDI or 'USER' Objects for a given Process
;	_ProcessGetFilename()	 ; Returns the process name based on Process handle (Win2000 and XP/2003+ dual support)
;	_ProcessGetFilenameByPID() ; Returns the process name based on Process ID#
;	_ProcessGetPathname()	 ; Returns the full Pathname for a given Process handle (chooses 1 of 3 different API calls).
;							 ; NOTE: Due to issues with 'device name' returns on XP & 2003 versions, this may call 2 internal funcs
;	_ProcessWaitForInputIdle()	; Waits for a Process with a GUI to become ready to receive input on startup.
;
; Memory Functions:
;	_ProcessGetMemInfo()			; Returns information on Memory usage of the Process
;	_ProcessEmptyWorkingSet() 		; Flushes non-essential memory of a Process to the Pagefile
;	_ProcessMemoryRead()			; Read from a Process's memory
;	_ProcessMemoryReadSimple()		; Read from a Process's memory, using a simple data type.
;	_ProcessMemoryWrite()			; Write to a Process's memory
;	_ProcessMemoryWriteSimple()		; Write to a Process's memory, using a simple data type.
;	_ProcessMemoryAlloc()			; Allocates memory for a given Process (mostly same as _MemVirtualAllocEx)
;	_ProcessMemoryFree()			; Frees memory allocated with _ProcessMemoryAlloc() (mostly same as _MemVirtualFreeEx)
;	_ProcessMemoryVirtualQuery()	; Retrieves various info on the Process's memory where a given address is located
;	_ProcessMemoryVirtualProtect()	; Alters the protection type of a Process's memory
;
; Termination Function:
;	_ProcessTerminate()		; Terminates the given Process (with optional exit code)
;
; Extra Wrapper Functions:
;	_ProcessIs32Bit()		; Returns True if Process is 32-bit (makes _ProcessIsWow64() use more simpler)
;	_ProcessIs64Bit()		; Returns True if Process is 64-bit (makes _ProcessIsWow64() use more simpler)
;
; INTERNAL Functions:
;	__PFCloseHandle()		; Basically the same as _WinAPI_CloseHandle()
;	__PFEnforcePID()		; Simple wrapper for enforcing a Process ID
;
; INTERNAL-ONLY!! Functions:		; do NOT call these directly!!
;	__PFBuildDeviceToDriveXlation()	; The following 2 are for _ProcessGetPathname()
;	__PFXlateDevicePathname()
;
; See also:
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumented.au3>		; 'Undocumented' Process functions - stuff your Mom told you to stay away from
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<ProcessFunctionsTest.au3>		; GUI Interface allowing interaction with Process functions
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
; Author: Ascend4nt, _ProcessListWTS modified from Manko's "_WinAPI_ProcessListOWNER_WTS.au3" UDF
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	PSEUDO-HANDLE TO SELF	--------------------
; ===================================================================================================================

Global $PROCESS_THIS_HANDLE=Ptr(-1)		; should opt instead to use _ProcessOpen(-1,-1) for future compatibility

; ===================================================================================================================
;	--------------------	LIMITED_INFO ACCESS (O/S-Dependent value)	--------------------
; ===================================================================================================================

If StringRegExp(@OSVersion,"_(XP|200(0|3))") Then	; XP, XPe, 2000, or 2003?
	Dim $PROCESS_QUERY_LIMITED_INFO=0x0400	; Regular PROCESS_QUERY_INFORMATION access
Else
	Dim $PROCESS_QUERY_LIMITED_INFO=0x1000	; Only available on Vista/2008+
EndIf


; ===================================================================================================================
;	--------------------	GLOBAL DEVICE-TO-DRIVE-MAP VARIABLES FOR INTERNAL USE	--------------------
; ===================================================================================================================

Global $_PFaDeviceToDriveMap,$_PFbDeviceToDriveMapInit=False


; ===================================================================================================================
;	--------------------	INTERNAL FUNCTION	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func __PFCloseHandle(ByRef $hHandle)
;
;	Closes an opened handle (for many various types of objects)
;	  [most likely same as _WinAPI_CloseHandle()]
;
; $hHandle = Handle to opened object (see list of handles that get closed this way @ MSDN)
;
; Returns:
;	Success: True, with $hHandle invalidated
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall error # (see AutoIT documentation)
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func __PFCloseHandle(ByRef $hHandle)
	If Not IsPtr($hHandle) Or $hHandle=0 Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","CloseHandle","handle",$hHandle)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,@error,False)
	; non-zero value for return means success
	$hHandle=0	; invalidate handle
	Return True
EndFunc


; ===================================================================================================================
; Func __PFEnforcePID(ByRef $vPID)
;
; Takes either a Process ID or Process Name and ensures the returned parameter is a Process ID # (on success)
;	On failure, the passed parameter is invalidated (set to 0 by ProcessExists())
;
; $vPID = Process ID # or Process name. If it is a Process name, it will be converted to a PID# on successful return.
;
; Returns:
;	Success: True, with $vPID correctly set as a Processs ID #, @error=0.
;	Failure: False, with $vPID=0 and @error set:
;		@error = 1 = invalid parameter or Process does not exist
;
; Author: Ascend4nt
; ===================================================================================================================

Func __PFEnforcePID(ByRef $vPID)
	If IsInt($vPID) Then Return True
	$vPID=ProcessExists($vPID)
	If $vPID Then Return True
	Return SetError(1,0,False)
EndFunc


; ===================================================================================================================
;	--------------------	INTERNAL-ONLY!! FUNCTIONS	--------------------
; ===================================================================================================================


; ===============================================================================================================================
; Func __PFBuildDeviceToDriveXlation()
;
; Internal function used to build the Device-Drive Map Array (using all available drives) for _ProcessGetPathname()
;	It calls DriveGetDrive("ALL") to get all drives, then uses the DLL call QueryDosDevice to get device names
;	The importance of this is in translating returns from GetProcessImageFileName DLL calls, which is the only
;	reliable way in XP & 2003 to get paths for processes operating in a 'higher' bit mode (32-bit-to-64-bit)
;
; Returns:
;	Success: True
;	Failure: False if error with @error set:
;		@error = 2 if DLL call error, @extended contains DLL call error code
;		@error = 5 if DriveGetDrive() failure
;
; Author: Ascend4nt
; ===============================================================================================================================

Func __PFBuildDeviceToDriveXlation()
	If $_PFbDeviceToDriveMapInit Then Return True

	Local $aRet,$aDriveArray=DriveGetDrive("ALL")
	If @error Then Return SetError(5,@error,False)

	Dim $_PFaDeviceToDriveMap[$aDriveArray[0]][2]

	For $i=1 To $aDriveArray[0]
		; Put the drive letter in the array (uppercase is part preference, & generally expected)
		$_PFaDeviceToDriveMap[$i-1][0]=StringUpper($aDriveArray[$i])

		; Get \Device\HarddiskVolume1, \Device\CdRom0, \Device\Floppy0 etc
		$aRet=DllCall($_COMMON_KERNEL32DLL,"dword","QueryDosDeviceW","wstr",$_PFaDeviceToDriveMap[$i-1][0],"wstr",0,"dword",65536)
		If @error Then
			$_PFaDeviceToDriveMap=0
			Return SetError(2,@error,False)
		EndIf
		; Set the device name
		$_PFaDeviceToDriveMap[$i-1][1]=$aRet[2]
		;ConsoleWrite("Drive-" & $aDriveArray[$i] & ",upper-" & $_PFaDeviceToDriveMap[$i-1][0] & ",Device:" & $_PFaDeviceToDriveMap[$i-1][1] & @CRLF)
	Next
	$_PFbDeviceToDriveMapInit=True
	Return True
EndFunc

; ===============================================================================================================================
; Func __PFXlateDevicePathname(Const ByRef $sImageFilename,$bResetDriveMap)
;
; Internal function used by _ProcessGetPathname() to translate strings
;	returned from GetProcessImageFileName DLL calls to actual drivepaths
;
; Returns:
;	Success: Pathname String
;	Failure: "" with @error set:
;		@error = 1 = not a string, or not found
;		@error = 2 = DLL call error, @extended contains DLL call error code
;		@error = 5 = DriveGetDrive() failure
;
; Author: Ascend4nt
; ===============================================================================================================================

Func __PFXlateDevicePathname(Const ByRef $sImageFilename,$bResetDriveMap)
	If Not IsString($sImageFilename) Or $sImageFilename="" Then Return SetError(1,0,"")
	If $bResetDriveMap Then $_PFbDeviceToDriveMapInit=False
	If Not __PFBuildDeviceToDriveXlation() Then Return SetError(@error,0,"")

	For $i2=1 to 2
		For $i=0 to UBound($_PFaDeviceToDriveMap)-1
			If StringInStr($sImageFilename,$_PFaDeviceToDriveMap[$i][1])=1 Then _
				Return StringReplace($sImageFilename,$_PFaDeviceToDriveMap[$i][1],$_PFaDeviceToDriveMap[$i][0])
		Next
		; Already reset the drive map? No use continuing
		If $bResetDriveMap Then Return SetError(1,0,"")
		; Reset the drive map since there was no matches
		$_PFbDeviceToDriveMapInit=False
		If Not __PFBuildDeviceToDriveXlation() Then Return SetError(@error,0,"")
		; Flag this for next run (so it returns before trying to rebuild again)
		$bResetDriveMap=1
		; Cycle through once more
	Next
	; Actually shouldn't get here..
	Return SetError(1,0,"")
EndFunc


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessOpen($vProcessID,$iAccess,$bInheritHandle=False)
;
; Function to open a handle to the given process name/PID.
;
; $vProcessID = process name or ID. -1 is special value meaning to return the current process's 'pseudo-handle'
; $iAccess = Access type (not used when $vProcessID=-1)
; $bInheritHandle = child processes inherit handle? True/False. False is typical.
;
; See 'Process Security and Access Rights (Windows)' at MSDN:
;	http://msdn.microsoft.com/en-us/library/ms684880%28VS.85%29.aspx
;
; Commnly-used access types (combinable) [not used for $vProcessID=-1, which has ALL_ACCESS]:
;	PROCESS_QUERY_LIMITED_INFORMATION = 0x1000 [VISTA+/Server 2008+ O/S required]
;	PROCESS_QUERY_INFORMATION = 0x0400,
;	PROCESS_VM_READ = 0x0010 [for reading process memory],
;	PROCESS_VM_WRITE = 0x0020 [for writing to process memory]
;	PROCESS_VM_OPERATION = 0x0008 (for writing and using VirtualProtect)
;
; Returns:
;	Success: Process handle (non-zero value), with @error=0 and @extended = Process ID#
;	Failure: 0, with @error set:
;		@error = 1 = invalid param
;		@error = 2 = DLLCall error, @extended contains the actuall DLLCall @error result (see AutoIT help)
;		@error = 3 = OpenProcess returned a 0 result (possibly a process that requires higher privilege levels)
;		@error = 16 = Process passed wasn't a number, and does not exist (process ended or is invalid)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessOpen($vProcessID,$iAccess,$bInheritHandle=False)
	Local $aRet
	; Special 'Open THIS process' ID?  [returns pseudo-handle from Windows]
	If $vProcessID=-1 Then
		$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","GetCurrentProcess")
		If @error Then Return SetError(2,@error,0)
		Return $aRet[0]		; usually the constant '-1', but we're keeping it future-OS compatible this way
	ElseIf Not __PFEnforcePID($vProcessID) Then
		Return SetError(16,0,0)		; Process does not exist or was invalid
	EndIf
	$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","OpenProcess","dword",$iAccess,"bool",$bInheritHandle,"dword",$vProcessID)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,@error,0)
	Return SetExtended($vProcessID,$aRet[0])	; Return Process ID in @extended in case a process name was passed
EndFunc


; ===================================================================================================================
; Func _ProcessCloseHandle(ByRef $hProcess)
;
;	Just calls 'CloseHandle' to close process handle that was opened with _ProcessOpen()
;		(Renamed from _ProcessClose to *Handle due to similarity to ProcessClose() function)
;
; $hProcess = Handle to opened Process
;
; Returns:
;	Success: True, with $hProcess invalidated
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall error # (see AutoIT documentation)
;		@error = 3 = 'False' return from API call.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessCloseHandle(ByRef $hProcess)
	If Not __PFCloseHandle($hProcess) Then Return SetError(@error,@extended,False)
	Return True
EndFunc


; ===================================================================================================================
; Func _ProcessGetPID($hProcess)
;
; Given a Process *handle*, returns a Process ID.  This shouldn't be necessary for properly written code.
;	NOTE: This function is only available on XP SP1/Server 2003+ O/S's
;	 ALSO note that _ProcessOpen() returns a PID in @extended (if successful)
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Process ID with @error=0
;	Failure: 0 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall error # (see AutoIT documentation)
;		@error = 3 = 0 return from API call.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetPID($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"dword","GetProcessId","handle",$hProcess)
	If @error Then Return SetError(2,@error,0)
	If $aRet[0]=0 Then SetError(3)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ProcessGetExitCode($hProcess)
;
; Function to get the exit code of a process that exited but which a handle is still open for.
;	NOTE : STILL_ACTIVE (259) will be returned for processes that haven't exited
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: Exit code (@error=0)	; NOTE : STILL_ACTIVE (259) will be returned for processes that haven't exited
;	Failure: -1, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetExitCode($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetExitCodeProcess","handle",$hProcess,"int*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	Return $aRet[2]
EndFunc


; ===================================================================================================================
; Func _ProcessIsWow64($hProcess)
;
; Determines if process is an x86 (32-bit) process running on an x64 O/S
;	MSDN:
;	  'WOW64 is the x86 emulator that allows 32-bit Windows-based applications to run seamlessly on 64-bit Windows'
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: 0/False or 1 (true) and @error=0
;	Failure: False, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessIsWow64($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)

	; Not available on all architectures, but AutoIT uses 'GetProcAddress' here anyway, so no worries about run-time link errors
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","IsWow64Process","handle",$hProcess,"bool*",0)
	If @error Then
		; Function could not be found (using GetProcAddress), most definitely indicating the function doesn't exist,
		;	hence, not an x64 O/S  [function IS available on some x86 O/S's, but that's what the next steps are for)
		If @error=3 Then Return False
		Return SetError(2,@error,False)	; some other error
	EndIf
	If Not $aRet[0] Then Return SetError(3,0,False)	; API returned 'fail'
	Return $aRet[2]	; non-zero = Wow64, 0 = not
EndFunc

; ===================================================================================================================
; Func _ProcessIs32Bit($hProcess)
;
; Determines if Process is a 32-bit Process. (makes using _ProcessIsWow64() easier)
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: 0/False or 1/True and @error=0
;	Failure: False, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessIs32Bit($hProcess)
	If @OSArch<>"X64" And @OSArch<>"IA64" Then
		If Not IsPtr($hProcess) Then SetError(1,0)
		Return True
	EndIf
	If _ProcessIsWow64($hProcess) Then Return True
	Return SetError(@error,@extended,False)
EndFunc

; ===================================================================================================================
; Func _ProcessIs64Bit($hProcess)
;
; Determines if Process is a 64-bit Process. (makes using _ProcessIsWow64() easier)
;
; $hProcess = Handle to opened Process
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: 0/False or 1 (true) and @error=0
;	Failure: False, with @error set
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 3 = API call returned Failure - check GetLastError code for more info
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessIs64Bit($hProcess)
	If @OSArch="X64" Or @OSArch="IA64" Then
		If _ProcessIsWow64($hProcess) Then Return False
		Return SetError(@error,@extended,True)
	EndIf
	If Not IsPtr($hProcess) Then SetError(1,0)
	Return False
EndFunc


; ===================================================================================================================
; Func _ProcessGetPriorityX($hProcess)
;
; Returns the priority class of the given Process (see GetPriorityClass on MSDN for priority values)
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: # and @error = 0
;		Normal = 0x20, other values are listed on MSDN under GetPriorityClass
;	Failure: -1 and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetPriorityX($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"int","GetPriorityClass","handle",$hProcess)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)	; failed
	Return $aRet[0]
EndFunc

; ===================================================================================================================
; Func _ProcessSetPriorityX($hProcess,$iPriority=0x20)
;
; Sets the priority of the given Process (see SetPriorityClass on MSDN for priority values)
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_SET_INFORMATION (0x0200) access
; $iPriority = priority value to set the Process too (see MSDN for valid values). 0x20 = 'Normal' priority
;	Normal = 0x20, other values are listed on MSDN under SetPriorityClass
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

Func _ProcessSetPriorityX($hProcess,$iPriority=0x20)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","SetPriorityClass","handle",$hProcess,"int",$iPriority)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)	; failed
	Return True
EndFunc


; ===============================================================================================================================
; Func _ProcessGetAffinityMask($hProcess)
;
; Gets the Affinity Mask for the given Process. Also returns the current System Affinity mask in @extended.
;	(Affinity Mask is a bit mask that defines what processors (logical & physical) something is allowed to run on)
; NOTE that for >64 processors (insanity?), MSDN says this will return the info for a given processor GROUP.
;	(see GetProcessAffinity @ MSDN for more info)
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
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

Func _ProcessGetAffinityMask($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetProcessAffinityMask","handle",$hProcess,"dword_ptr*",0,"dword_ptr*",0)
	If @error Then Return SetError(2,@error,0)
	If Not $aRet[0] Then Return SetError(3,0,0)	; failed
	; Put System Affinity Mask into @extended
	Return SetExtended($aRet[3],$aRet[2])
EndFunc


; ===============================================================================================================================
; Func _ProcessSetAffinityMask($hProcess,$iAffinityMask)
;
; Sets the Affinity Mask for the given Process.
;	(Affinity Mask is a bit mask that defines what processors (logical & physical) something is allowed to run on)
; NOTE that for >64 processors (insanity?), MSDN says this will set the affinity for the Process in a given processor GROUP.
;	(see SetProcessAffinity @ MSDN for more info)
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_SET_INFORMATION (0x0200) access
; $iAffinityMask = Bit Mask indicating which processors the Process should be allowed to run on
;
; Returns:
;	Success: True
;	Failure: False and @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended = DLLCall @error code (see AutoIT help)
;		@error = 3 = Failure Returned from API call (call GetLastError for info)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _ProcessSetAffinityMask($hProcess,$iAffinityMask)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","SetProcessAffinityMask","handle",$hProcess,"dword_ptr",$iAffinityMask)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)	; failed
	Return True
EndFunc


; ===============================================================================================================================
; Func _ProcessGetTimes($hProcess,$iTimeToGet=-1)
;
; Function to get the Process Time(s) [in FileTime*] for a Process.  This can be one (or all) of the following:
;	Process Creation Time (when the process was started)
;	Process Exit Time (if the process exited while a handle is open, this gets the time of exit)
;	Process Kernel Time (amount of time executing in Kernel mode)
;	Process User Time (amount of time executing in User mode
; *NOTE: Process Creation Time and Exit Time are in UTC(GMT) FileTime
;	     Process Kernel & User Time are expressed in time in 100-nanosecond intervals. Milliseconds = time/1000
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $iTimeToGet = Time(s) to get. Possible values are:
;	-1 = get ALL times, returns an array
;	 0 = get Process Creation Time
;	 1 = get Process Exit Time (if applicable)
;	 2 = get Process Kernel Time
;	 3 = get Process User Time
;
; Returns:
;	Success: A single time as 'FileTime', or an array if $iTimeToGet=-1.
;	  NOTE: Process Creation Time and Exit Time are in UTC(GMT) FileTime
;		    Process Kernel & User Time are expressed in time in 100-nanosecond intervals. Milliseconds = time/1000
;		[0] = Process Creation Time
;		[1] = Process Exit Time (if applicable)
;		[2] = Process Kernel Time (amount of time executing in Kernel mode)
;		[3] = Process User Time (amount of time executing in User mode)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _ProcessGetTimes($hProcess,$iTimeToGet=-1)
	If Not IsPtr($hProcess) Or $iTimeToGet>3 Then Return SetError(1,0,-1)

	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetProcessTimes","handle",$hProcess,"uint64*",0,"uint64*",0,"uint64*",0,"uint64*",0)
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
; Func _ProcessGetSessionID($vProcessID)
;
; Function to return Session ID # for the given Process*
;	*NOTE: Privileges must be higher to get Session ID #'s for certain processes. (see "_GetPrivilege_SEDEBUG.au3")
;	  According to MSDN, PROCESS_QUERY_INFORMATION access rights must be allowed for the given process,
;	   which means that if _ProcessOpen() were to fail with that access right, so would this function.
;
; $vProcessID = process name or Process ID # of process to retrieve the Session ID # for
;
; Returns:
;	Success: Session ID # and @error=0
;	Failure: -1 with @error set:
;		@error = 1 = process name/ID passed is either invalid or does not exist
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;				 MOST likely this error will return when privileges are lower than required to access process
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetSessionID($vProcessID)
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","ProcessIdToSessionId","dword",$vProcessID,"dword*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	Return $aRet[2]
EndFunc


; ===================================================================================================================
; Func _ProcessGetOwner($hProcess,$vADVAPI32DLL="advapi32.dll")
;
; Function to read the Owner info for a process ('User Name' in Task Manager) using info in the security descriptor.
;	NOTE: Process should have been opened with READ_CONTROL (0x20000) in order to read the security descriptor info.
;	ALSO: 'Protected' Processes (introduced in WinVista+) can not get this information. (READ_CONTROL access is denied)
;	  Workaround: WTSEnumProcesses (though the latter misses some processes [example:'dllhost' instances]?)
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with READ_CONTROL (0x20000) in order to read the security descriptor info.
; $vADVAPI32DLL = Optional, a handle to advapi32.dll (retrieved with DLLOpen())
;
; Returns:
;	Success: Owner as a string, with @error = 0 unless there was trouble freeing the security descriptor:
;		@error = -2 = DLLCall() error - @extended = actual DLLCall error
;		@error = -3 = LocalFree API call wasn't successful in freeing the memory. @extended = memory handle
;	Failure: "" with @error set:
;		@error = 0 = check GetLastError for reason API call failed
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned with error code - @extended contains LastError code (same as GetLastError)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetOwner($hProcess,$vADVAPI32DLL="advapi32.dll")
	If Not IsPtr($hProcess) Or $vADVAPI32DLL<0 Then Return SetError(1,0,"")

	Local $aOwnerSecInfo,$aGroupSecInfo,$sOwner=""

	; SE_KERNEL_OBJECT = 6, SecurityInfo = 3 [OWNER_SECURITY_INFORMATION (1) + GROUP_SECURITY_INFORMATION (2)]
	Local $aRet=DllCall($vADVAPI32DLL,"dword","GetSecurityInfo","handle",$hProcess,"int",6,"dword",3,"ptr*",0,"ptr*",0,"ptr*",0,"ptr*",0,"ptr*",0)
	If @error Then Return SetError(2,@error,"")
	; GetLastError's code is returned. If non-zero (<>ERROR_SUCCESS) then an error occurred. Return LastError in @extended
	If $aRet[0] Then Return SetError(3,$aRet[0],"")

	$aOwnerSecInfo=_Security__LookupAccountSid($aRet[4])	; @error is not set correctly! (must use IsArray())
	; Typically 'BUILTIN' means 'SYSTEM' in my testing - but we will look up Group security info below anyway
	If IsArray($aOwnerSecInfo) And $aOwnerSecInfo[1]<>"BUILTIN" Then
		$sOwner=$aOwnerSecInfo[0]
	Else
		$aGroupSecInfo=_Security__LookupAccountSid($aRet[5])	; @error is not set correctly! (must use IsArray())
		If IsArray($aGroupSecInfo) Then $sOwner=$aGroupSecInfo[0]
		If $sOwner="None" Then $sOwner=@UserName	; a workaround for a weird quirk on Vista+ (Sid's string isnt even in the registry!)
	EndIf

	; Free the memory allocated for the Security Descriptor info. (as per MSDN guidelines)
	$aRet=DllCall($_COMMON_KERNEL32DLL,"handle","LocalFree","handle",$aRet[8])
	If @error Then
		SetError(-2,@error)
	ElseIf $aRet[0] Then
		SetError(-3,$aRet[0])
	EndIf

	Return $sOwner
EndFunc


; ===================================================================================================================
; Func _ProcessGetHandleCount($hProcess)
;
; Function to return the # of handles currently open by the given Process
;	NOTE: This function is only available on XP SP1/Server 2003+ O/S's
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
;	Success: # with @error = 0
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetHandleCount($hProcess)
	If Not IsPtr($hProcess) Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetProcessHandleCount","handle",$hProcess,"dword*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,@error,-1)
	Return $aRet[2]
EndFunc


; ===================================================================================================================
; Func _ProcessGetIOCounters($hProcess,$iCounterToGet=-1)
;
; Function to return the IO Counter info for the given Process
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
; $iInfoToGet = Memory Info to Get. Possible values are:
;	-1 = get ALL IO Counters, returns an array
;	 0 = ReadOperationCount (# of read operations performed)
;	 1 = WriteOperationCount (# of write operations performed)
;	 2 = OtherOperationCount (# of 'other' [non-read/write] operations performed)
;	 3 = ReadTransferCount (# of bytes read)
;	 4 = WriteTransferCount (# of bytes written)
;	 5 = OtherTransferCount (# of bytes transferred during non-read/write operations)
;
;	Success: A single value (all except PageFaultCount are in Bytes), or an array if $iInfoToGet=-1.
;		[0] = ReadOperationCount (# of read operations performed)
;		[1] = WriteOperationCount (# of write operations performed)
;		[2] = OtherOperationCount (# of 'other' [non-read/write] operations performed)
;		[3] = ReadTransferCount (# of bytes read)
;		[4] = WriteTransferCount (# of bytes written)
;		[5] = OtherTransferCount (# of bytes transferred during non-read/write operations)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetIOCounters($hProcess,$iCounterToGet=-1)
	If Not IsPtr($hProcess) Or $iCounterToGet>5 Then Return SetError(1,0,-1)

	; IO_Counters: Read Op Count, Write Op Count, Other Op Count, Read Transfer Count [bytes], Write Transfer Count, Other Transfer Count
	Local $stIOCounters=DllStructCreate("uint64;uint64;uint64;uint64;uint64;uint64")
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetProcessIoCounters","handle",$hProcess,"ptr",DllStructGetPtr($stIOCounters))
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,@error,-1)
	; Return ALL?
	If $iCounterToGet<0 Then
		Dim $aCounterInfo[6]
		For $i=0 To 5
			$aCounterInfo[$i]=DllStructGetData($stIOCounters,$i+1)
		Next
		Return $aCounterInfo
	EndIf
	Return DllStructGetData($stIOCounters,$iCounterToGet+1)
EndFunc


; ===================================================================================================================
; Func _ProcessGetGUIResources($hProcess,$iObjType)
;
; Function to return the GUI Objects in use by the given Process
;	NOTE: Values of 2 and 4 are not supported until Windows 7/Server 2008 R2+
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;		NOTE: MSDN states the access must be PROCESS_QUERY_INFORMATION, but in testing, 'LIMITED' works also.
; $iObjType = GUI Info to Get. Possible values are:
;	 0 = Count of GDI Objects in use
;	 1 = Count of USER Objects in use (not clear on what definition a 'USER' object is, but its in Task Manager..)
;	 2 = Peak count of GDI Objects (the maximum at any given time) Windows 7/Server 2008+ only
;	 4 = Peak count of USER Objects (the maximum at any given time) Windows 7/Server 2008+ only
;
;	Success: #, with @error = 0.
;	   NOTE: 0 is also returned even when the API call returns failure (use GetLastError if you'd like to see if it failed)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetGUIResources($hProcess,$iObjType)
	If Not IsPtr($hProcess) Or $iObjType<0 Or $iObjType>4 Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_USER32DLL,"dword","GetGuiResources","handle",$hProcess,"dword",$iObjType)
	If @error Then Return SetError(2,@error,-1)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ProcessGetFilename($hProcess,$vPSAPIDLL=-1)
;
; Returns the Process name based on the Process handle.
;	NOTES!:
;	 - This function uses GetProcessImageFileName for non-Win2000 O/S's (its only available on XP/Server 2003+ O/S's)
;	 - 'GetModuleBaseName' is not used on other O/S's due to a few problems with the function:
;		- Module list may be loading/changing and may cause corruption (unlikely scenario)
;		- 32-bit Processes will fail to get names for 64-bit Processes. The opposite may also be true
;		   This has to do with the PEB information being different sizes. Module/Heap ToolHelp32Snapshot functions fail as well.
;		- Modules loaded with 'LOAD_LIBRARY_AS_DATAFILE' flag will not return a name (I'm assuming this is only for DLL files)
;	Alternatives are _ProcessGetFilenameByPID() and _ProcessListModules()
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;		and for Windows 2000, PROCESS_VM_READ (0x10)
; $vPSAPIDLL = optional DLL handle to psapi.dll (retrieved with DLLOpen()). -1 uses default string
;
; Returns:
;	Success: Filename/Imagename of process
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = API Call returned 'failure' - check GetLastError code for more info
; ===================================================================================================================

Func _ProcessGetFilename($hProcess,$vPSAPIDLL=-1)
	If Not IsPtr($hProcess) Then Return SetError(1,0,"")
	Local $aRet
	; Avoid any conflict with other psapi.dll files floating around. Win2000+ should have the 'good' version located in @SystemDir
	If Not IsString($vPSAPIDLL) And $vPSAPIDLL<0 Then $vPSAPIDLL=@SystemDir&"\psapi.dll"
	; Keep backwards compatibility (for now)
	If @OSVersion="WIN_2000" Then
		$aRet=DllCall($vPSAPIDLL,"dword","GetModuleBaseNameW","handle",$hProcess,"handle",0,"wstr",0,"dword",65536)
		If @error Then Return SetError(2,@error,"")
		If Not $aRet[0] Then Return SetError(3,0,"")	; fail
		Return $aRet[3]
	EndIf
	; Instead of GetModuleBaseName, we use GetProcessImageFileName and strip off the path info (see comments)
	$aRet=DllCall($vPSAPIDLL,"dword","GetProcessImageFileNameW","handle",$hProcess,"wstr","","dword",65536)
	If @error Then Return SetError(2,@error,"")
	If Not $aRet[0] Then Return SetError(3,0,"")	; fail
;~ 	ConsoleWrite("Fully qualified string:"&$aRet[2]&@CRLF)
	Return StringMid($aRet[2],StringInStr($aRet[2],'\',1,-1)+1)	; strip the leading device path
EndFunc


; ===================================================================================================================
; Func _ProcessGetFilenameByPID($vProcessID)
;
; Returns the process name from Process ID #/name.
;
; $vProcessID = process name or Process ID # of process to find the child processes of
;
; Returns:
;	Success: Filename/Imagename of process
;	Failure: "" with @error set:
;		@error = 1 = process name/ID passed is either invalid or does not exist
;		@error = 2 = ProcessList() failure
;		@error = 4 = process not found in ProcessList (process may have ended, or PID is invalid)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetFilenameByPID($vProcessID)
	If Not __PFEnforcePID($vProcessID) Then Return SetError(1,0,"")

	Local $aProcList=ProcessList()
	If @error Then Return SetError(2,@error,"")
	For $i=1 To $aProcList[0][0]
		If $vProcessID=$aProcList[$i][1] Then Return $aProcList[$i][0]
	Next
	Return SetError(4,0,"")
EndFunc


; ===================================================================================================================
; Func _ProcessGetPathname($hProcess,$bResetDriveMap=False,$vPSAPIDLL=-1)
;
; Returns the full Process pathname based on the Process handle.
;	NOTES!:
;	 - This function uses GetProcessImageFileName for non-Win2000 O/S's (its only available on XP/Server 2003+ O/S's),
;		and also QueryFullProcessImageName for Vista/2008+ O/S's
;	 - 'GetModuleFileNameEx' is not used on other O/S's due to a few problems with the function:
;		- Module list may be loading/changing and may cause corruption (unlikely scenario)
;		- 32-bit Processes will fail to get names for 64-bit Processes.
;		   This has to do with the PEB information being different sizes. Module/Heap ToolHelp32Snapshot functions fail as well.
;		- Modules loaded with 'LOAD_LIBRARY_AS_DATAFILE' flag will not return a name (I'm assuming this is only for DLL files)
;	Alternative is _ProcessListModules()
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;		and for Windows 2000, PROCESS_VM_READ (0x10)
; $bResetDriveMap = If True, the Drive map array is reset (XP/2003 O/S only). This is normally only set once,
;		and automatically reset if a match wasn't found. However, to force a remap, set this to True.
; $vPSAPIDLL = optional DLL handle to psapi.dll (retrieved with DLLOpen()). -1 uses default string
;		NOT used on Vista/2003+
;
; Returns:
;	Success: Filename/Imagename of process
;	Failure: "" with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = API Call returned 'failure' - check GetLastError code for more info
; ===================================================================================================================

Func _ProcessGetPathname($hProcess,$bResetDriveMap=False,$vPSAPIDLL=-1)
	If Not IsPtr($hProcess) Then Return SetError(1,0,"")

	; Avoid any conflict with other psapi.dll files floating around. Win2000+ should have the 'good' version located in @SystemDir
	If Not IsString($vPSAPIDLL) And $vPSAPIDLL<0 Then $vPSAPIDLL=@SystemDir&"\psapi.dll"
	Local $aRet
	; To keep EVERYBODY's O/S happy, we select the best function option given the O/S.
	; Not XP, XPe, or 2003?
	If @OSVersion<>"WIN_XP" And @OSVersion<>"WIN_XPe" And @OSVersion<>"WIN_2003" Then	; If StringRegExp(@OSVersion,"_(XP|2003)")=0
		If @OSVersion="WIN_2000" Then
			$aRet=DllCall($vPSAPIDLL,"dword","GetModuleFileNameExW","handle",$hProcess,"handle",0,"wstr","","dword",65536)
		Else
			$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","QueryFullProcessImageNameW","handle",$hProcess,"dword",0,"wstr","","dword*",65536)
		EndIf
		If @error Then Return SetError(2,@error,"")
		If Not $aRet[0] Then Return SetError(3,0,"")	; fail
		Return $aRet[3]
	EndIf
	; XP or 2003 x64 (not exactly needed for x86 versions of these O/S's, but MSDN suggests we use it anyway). Required for 32-bit querying 64-bit Processes
	$aRet=DllCall($vPSAPIDLL,"dword","GetProcessImageFileNameW","handle",$hProcess,"wstr","","dword",65536)
	If @error Then Return SetError(2,@error,"")
	If Not $aRet[0] Then Return SetError(3,0,"")	; fail
	; Perform the DevicePath-to-DrivePath translation
	$aRet=__PFXlateDevicePathname($aRet[2],$bResetDriveMap)
	SetError(@error,@extended)
	Return $aRet
EndFunc


; ===================================================================================================================
; Func _ProcessWaitForInputIdle($hProcess,$iTimeOut)
;
; Waits for a Process with a GUI to become ready to receive input on startup.  This will return immediately for any
;  Process that has already finished initialization routines, no matter whether it is ready for input currently.
;	NOTES:
;	 - The Process should have a GUI interface, otherwise this function won't return if $iTimeOut=-1*
;	   *If uncertain, and at same or greater bit level, check with _ProcessUDGetSubSystemInfo() 1st.
;	 - More than one Thread in a Process may cause this to return True when one Thread has already finished
;	   initial startup procedures and displayed a GUI (this can even be a simple Splash screen).
;	   This means that the 'main GUI' Thread may or may not be truly ready for input.
;	 - Subsequent calls to this function *after* it has finished initial startup will always return True,
;	   regardless of whether a Process is *currently* ready for input or not. ('WaitForInitialStartup' is more like it)
;
; $hProcess = handle of opened process in which the memory protection is being altered
;	Process must have been Opened with PROCESS_TERMINATE (0x0001) access right
; $iTimeOut = Time in ms before abandoning wait. -1 means 'infinite' (no timeout).
;	WARNING: DO NOT use -1 unless you are certain the Process contains at least one GUI! (otherwise, this won't return)
;	 (See NOTES above about _ProcessUDGetSubSystemInfo())
;
; Returns:
;	Success: True
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure', with @extended set to API return
;			@extended = -1 = WAIT_FAILED returned - check GetLastError
;			@extended = 258 = WAIT_TIMEOUT (timeout elapsed)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessWaitForInputIdle($hProcess,$iTimeOut)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_USER32DLL,"int","WaitForInputIdle","handle",$hProcess,"dword",$iTimeOut)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0] Then Return SetError(3,$aRet[0],False)
	Return True
EndFunc


; ===================================================================================================================
; Func _ProcessGetMemInfo($hProcess,$iInfoToGet=-1,$vPSAPIDLL=-1)
;
; Function to return Memory Usage information for the given Process.
;	Does in fact work for 32-to-64-bit Processes.
; NOTE: Some extra memory info is available using _ProcessUDGetMemInfo().
;	Also: The PROCESS_MEMORY_COUNTERS_EX structure doesn't add anything - it in fact duplicates 'Page File Usage' return
;	See the chart on MSDN under 'Memory Performance Information (Windows)'
;		@ http://msdn.microsoft.com/en-us/library/aa965225%28v=VS.85%29.aspx
;	('Private Working Set' and some others may only be available using Performance Counters)
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
; $vPSAPIDLL = optional DLL handle to psapi.dll (retrieved with DLLOpen()). -1 uses default string
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
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessGetMemInfo($hProcess,$iInfoToGet=-1,$vPSAPIDLL=-1)
	; Mem_Counters: Size,# Page Faults, Peak Working Set Size, Working Set Size, Quota Peak Paged Pool Usage, Quota Paged Pool Usage, Quota Peak NonPaged Pool Usage, Quota NonPaged Pool Usage, Page File Usage, Peak Page File Usage
	;	NOTE: The '_EX' struct adds 'Private Memory Usage' (XP SP2/2003 SP1+), but the value always equals 'Page File Usage', so its useless
	If Not IsPtr($hProcess) Or $iInfoToGet>8 Then Return SetError(1,0,-1)
	Local $stMemCounters=DllStructCreate("dword;dword;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr")
	; Avoid any conflict with other psapi.dll files floating around. Win2000+ should have the 'good' version located in @SystemDir
	If Not IsString($vPSAPIDLL) And $vPSAPIDLL<0 Then $vPSAPIDLL=@SystemDir&"\psapi.dll"
	Local $aRet=DllCall($vPSAPIDLL,"bool","GetProcessMemoryInfo","handle",$hProcess,"ptr",DllStructGetPtr($stMemCounters),"dword",DllStructGetSize($stMemCounters))
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	; Return ALL?
	If $iInfoToGet<0 Then
		Dim $aMemInfo[9]
		For $i=0 To 8
			$aMemInfo[$i]=DllStructGetData($stMemCounters,$i+2)
		Next
		Return $aMemInfo
	EndIf
	Return DllStructGetData($stMemCounters,$iInfoToGet+2)
EndFunc


; ===================================================================================================================
; Func _ProcessEmptyWorkingSet($hProcess,$vPSAPIDLL=-1)
;
; Function to flush non-essential memory to the pagefile for the given process.
;	NOTE: Process should have been opened with PROCESS_SET_QUOTA (0x100) and either
;	  PROCESS_QUERY_INFORMATION (0x400) or PROCESS_QUERY_LIMITED_INFORMATION (0x1000) (Vista+) access
;	To flush memory for the *current* process, call this like this:
;		_ProcessEmptyWorkingSet(_ProcessOpen(-1,-1)) OR 'not recommended way': _ProcessEmptyWorkingSet($PROCESS_THIS_HANDLE)
;
; $hProcess = handle to opened process (using _ProcessOpen())
;	Process should have been opened with PROCESS_SET_QUOTA (0x100) and either
;	  PROCESS_QUERY_INFORMATION (0x400) or PROCESS_QUERY_LIMITED_INFORMATION (0x1000) (Vista+) access
; $vPSAPIDLL = optional DLL handle to psapi.dll (retrieved with DLLOpen()). -1 uses default string
;
; Returns:
;	Success: True (or non-zero)
;	Failure: 0/False with @error set:
;		@error = 0 = check GetLastError for reason API call failed
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessEmptyWorkingSet($hProcess,$vPSAPIDLL=-1)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	; Avoid any conflict with other psapi.dll files floating around. Win2000+ should have the 'good' version located in @SystemDir
	If Not IsString($vPSAPIDLL) And $vPSAPIDLL<0 Then $vPSAPIDLL=@SystemDir&"\psapi.dll"
	Local $aRet=DllCall($vPSAPIDLL,"bool","EmptyWorkingSet","handle",$hProcess)
	If @error Then Return SetError(2,@error,False)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryRead($hProcess,$pSource,$pDest,$iNumBytes,$sType=0)
;
; Function to read from the memory of an opened process.
;
; $hProcess = handle to opened process where memory will be read from
;	Process should have been opened with PROCESS_VM_READ (0x10)
; $pSource = pointer to Source data in process to be transferred FROM
; $pDest = pointer to Destination (to transfer data TO)
; $iNumBytes = total # of bytes to transfer
;
; Returns:
;	Success: True, with @extended = # of bytes transferred
;	Falure: False, with @error set, and if a partial transfer occurred (@error 3), @extended = # of bytes transferred:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'.  This possibly means that the memory read crossed over into
;					territory that it can't read from.  Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryRead($hProcess,$pSource,$pDest,$iNumBytes)
	If Not IsPtr($hProcess) Or Ptr($pSource)=0 Or Not IsPtr($pDest) Or $iNumBytes<=0 Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","ReadProcessMemory","handle",$hProcess,"ptr",$pSource,"ptr",$pDest,"ulong_ptr",$iNumBytes,"ulong_ptr*",0)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,$aRet[5],False)
;~ 	If $aRet[5]<>$iNumBytes Then ConsoleWriteError("Size mismatch: Size to transfer in bytes="&$iNumBytes&", Num Bytes Read="&$aRet[5]&@LF)
	Return SetExtended($aRet[5],True)
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryReadSimple($hProcess,$pSource,$iNumBytes,$sType)
;
; Function to read from the memory of an opened process, using a simple data type.
;
; $hProcess = handle to opened process where memory will be read from
;	Process should have been opened with PROCESS_VM_READ (0x10)
; $pSource = pointer to Source data in process to be transferred FROM
; $iNumBytes = total # of bytes to transfer
; $sType = string representing a single data type that is acceptable for DLL Call.
;	NOTE: Do not append '*', and make *CERTAIN* that $iNumBytes is equal to the size of the data type
;		For example, 'ptr' is 4 bytes in 32-bit mode, and 8 in 64-bit.
;		Also, 'str' # bytes = string-length (optionally +1 for NULL-term), and 'wstr' # bytes = 2 * string-length ('' '') [max 65536]
;	Other type examples: 'int','ptr','uint64','str','wstr'
;
; Returns:
;	Success: A value of type '$sType', with @extended = # of bytes transferred
;	Falure: '', or undefined value if a partial transfer occurred (@error = 3, @extended = # of bytes transferred), with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;			NOTE: An @error return of 1 can also mean $sType was an invalid parameter. A simple way to check this is:
;			  If DllStructCreate($sType)=0 And $sType<>'idispatch' Then $bBadParam=True
;		@error = 3 = API call returned 'Failure'.  This possibly means that the memory read crossed over into
;					territory that it can't read from.  Use GetLastError to get more info.
;					(If partial transfer occurred, @extended = # of bytes transferred)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryReadSimple($hProcess,$pSource,$iNumBytes,$sType)
	If Not IsPtr($hProcess) Or Ptr($pSource)=0 Or $iNumBytes<=0 Then Return SetError(1,0,'')
	If StringRight($sType,3)<>'str' Then $sType&='*'
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","ReadProcessMemory","handle",$hProcess,"ptr",$pSource,$sType,'',"ulong_ptr",$iNumBytes,"ulong_ptr*",0)
	If @error Then Return SetError(2,@error,False)
	If $aRet[0] Then Return SetExtended($aRet[5],$aRet[3])
	Return SetError(3,$aRet[5],$aRet[3])
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryWrite($hProcess,$pDest,$pSource,$iNumBytes,$sType=0)
;
; Function to write to the memory of an opened process.
;
; $hProcess = handle to opened process where memory will be written
;	Process should have been opened with PROCESS_VM_OPERATION (0x08) and PROCESS_VM_WRITE (0x20) access
; $pDest = pointer to Destination for data to be transferred TO (in given process)
; $pSource = pointer to source data to transfer FROM
; $iNumBytes = total # of bytes to transfer
;
; Returns:
;	Success: True, with @extended = # of bytes transferred
;	Falure: False, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'.  This possibly means that the memory write crossed over into
;					territory that it can't write to.  Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryWrite($hProcess,$pDest,$pSource,$iNumBytes)
	If Not IsPtr($hProcess) Or Not IsPtr($pSource) Or Ptr($pDest)=0 Or $iNumBytes<=0 Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","WriteProcessMemory","handle",$hProcess,"ptr", $pDest,"ptr",$pSource,"ulong_ptr",$iNumBytes,"ulong_ptr*",0)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
;~ 	If $aRet[5]<>$iNumBytes Then ConsoleWriteError("Size mismatch: Size to transfer in bytes="&$iNumBytes&", Num Bytes Written="&$aRet[5]&@LF)
	Return SetExtended($aRet[5],True)
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryWriteSimple($hProcess,$pDest,$iNumBytes,$sType)
;
; Function to write to the memory of an opened process, using a simple data type.
;
; $hProcess = handle to opened process where memory will be written
;	Process should have been opened with PROCESS_VM_OPERATION (0x08) and PROCESS_VM_WRITE (0x20) access
; $pDest = pointer to Destination for data to be transferred TO (in given process)
; $iNumBytes = total # of bytes to transfer
; $sType = string representing a single data type that is acceptable for DLL Call.
;	NOTE: Do not append '*', and make *CERTAIN* that $iNumBytes is equal to the size of the data type
;		For example, 'ptr' is 4 bytes in 32-bit mode, and 8 in 64-bit.
;		Also, 'str' # bytes = string-length (optionally +1 for NULL-term), and 'wstr' # bytes = 2 * string-length ('' '') [max 65536]
;	Other type examples: 'int','ptr','uint64','str','wstr'
;
; Returns:
;	Success: True, with @extended = # of bytes transferred
;	Falure: False, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;			NOTE: An @error return of 1 can also mean $sType was an invalid parameter. A simple way to check this is:
;			  If DllStructCreate($sType)=0 And $sType<>'idispatch' Then $bBadParam=True
;		@error = 3 = API call returned 'Failure'.  This possibly means that the memory write crossed over into
;					territory that it can't write to.  Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryWriteSimple($hProcess,$pDest,$iNumBytes,$sType)
	If Not IsPtr($hProcess) Or Ptr($pDest)=0 Or $iNumBytes<=0 Then Return SetError(1,0,False)
	If StringRight($sType,3)<>'str' Then $sType&='*'
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","WriteProcessMemory","handle",$hProcess,"ptr", $pDest,$sType,'',"ulong_ptr",$iNumBytes,"ulong_ptr*",0)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
;~ 	If $aRet[5]<>$iNumBytes Then ConsoleWriteError("Size mismatch: Size to transfer in bytes="&$iNumBytes&", Num Bytes Written="&$aRet[5]&@LF)
	Return SetExtended($aRet[5],True)
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryAlloc($hProcess,$iNumBytes,$iAllocType,$iProtectType,$pAddress=0)
;
; Function to allocate memory (using VirtualAllocEx) in an opened process.
;	Some Allocation/Protection constants are available in <MemoryConstants.au3>
;	 *See 'VirtualAllocEx' @ MSDN for more info on Allocation/Protection types.
;
; $hProcess = handle to opened process where memory will be allocated
;	Process should have been opened with PROCESS_VM_OPERATION (0x08)
; $iNumBytes = total # of bytes to allocate
; $iAllocType* = allocation type. Although MEM_COMMIT is most common, this can be any of the following:
;	MEM_COMMIT [0x1000], MEM_RESERVE [0x2000], MEM_RESET [0x80000]
;  Additionally, these values can be combined (BitOR'd) with one of the above:
;	MEM_LARGE_PAGES [0x20000000] (Vista/2008+), MEM_PHYSICAL [0x400000], MEM_TOP_DOWN [0x100000]
; $iProtectType* = protection type. Can be:
;	PAGE_EXECUTE [0x10], PAGE_EXECUTE_READ [0x20], PAGE_EXECUTE_READWRITE [0x40], PAGE_EXECUTE_WRITECOPY [0x80],
;	PAGE_NOACCESS [0x01], PAGE_READONLY [0x02], PAGE_READWRITE [0x04], PAGE_WRITECOPY [0x08]
;  Additionally, these values can be combined (BitOR'd) with one of the above:
;	PAGE_GUARD [0x100], PAGE_NOCACHE [0x200], PAGE_WRITECOMBINE [0x400] (Vista/2003+SP1 and up only)
; $pAddress = (optional) Address where you would like to allocate memory.  Not usually used (or recommended)
;
; Returns:
;	Success: Memory pointer
;	Falure: 0, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure' (0). Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryAlloc($hProcess,$iNumBytes,$iAllocType,$iProtectType,$pAddress=0)
	If Not IsPtr($hProcess) Then Return SetError(1,0,0)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"ptr","VirtualAllocEx","handle",$hProcess,"ptr",$pAddress,"ulong_ptr",$iNumBytes,"dword",$iAllocType,"dword",$iProtectType)
	If @error Then Return SetError(2,@error,0)
	If $aRet[0]=0 Then Return SetError(3,0,0)
	Return $aRet[0]
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryFree($hProcess,ByRef $pAddress,$iNumBytes=0,$iFreeType=0x8000)
;
; Function to free Process memory (using VirtualFreeEx) that was previously allocated using _ProcessMemoryAlloc()
;	NOTE: If $iFreeType=0x8000 (MEM_RELEASE), and function is a success, $pAddress will be invalidated (set to 0)
;	Free Type constants are available in <MemoryConstants.au3>
;	 *See 'VirtualFreeEx' @ MSDN for more info on Free Types.
;
; $hProcess = handle to opened process
;	Process should have been opened with PROCESS_VM_OPERATION (0x08)
; $pAddress = Address of memory to free (returned from _ProcessMemoryAlloc())
;		NOTE: If $iFreeType=0x8000 (MEM_RELEASE), and call is successful, this will be invalidated (set to 0)
; $iNumBytes = total # of bytes to free. Use 0 if FreeType = MEM_RELEASE (0x8000), otherwise 'Alloc' size.
; $iFreeType* = type of free operation. Most common is MEM_RELEASE, but can be one of the following:
;	MEM_DECOMMIT [0x4000] or MEM_RELEASE [0x8000]
;
; Returns:
;	Success: True, and if $iFreeType=0x8000 (MEM_RELEASE), $pAddress is set to 0 (invalidated)
;	Falure: False, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'. Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryFree($hProcess,ByRef $pAddress,$iNumBytes=0,$iFreeType=0x8000)
	If Not IsPtr($hProcess) Or Not IsPtr($pAddress) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","VirtualFreeEx","handle",$hProcess,"ptr",$pAddress,"ulong_ptr",$iNumBytes,"dword",$iFreeType)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
	If $iFreeType=0x8000 Then $pAddress=0	; invalidate the pointer if successfull and MEM_RELEASE type
	Return True
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryVirtualQuery($hProcess,$pAddress,$iInfo=-1)
;
; Query a memory address in a given Process for information.
;	Retrieves information on the memory region the memory address is located in.
;	 *See VirtualQueryEx, MEMORY_BASIC_INFORMATION Structure, Memory Protection Constants, VirtualProtectEx @ MSDN
;
; $hProcess = Handle to opened Process
; 	Process must have been opened with PROCESS_QUERY_INFORMATION (0x400) access right. (QueryLimited NOT an option)
; $pAddress = pointer to memory location in Process to get region information from
; $iInfo = Memory Region Info to Get. Possible values are:
;	-1 = get ALL Memory Region Info, returns an array
;	 0 = Base Address (of the region of pages in which the given address resides. can be <= AllocationBase)
;	 1 = Allocation Base (the base address of the page allocation that contains the given address)
;	 2 = Allocation Protection (type of protection the region is under [can only be changed with 'VirtualProtectEx'])
;	 3 = Region Size (size of region in bytes)
;	 4 = State (either MEM_COMMIT [0x1000], MEM_FREE [0x10000], MEM_RESERVE [0x2000])
;	 5 = Protection (type of protection of the pages in the region)
;	 6 = Type (either MEM_IMAGE [0x1000000], MEM_MAPPED [0x40000], or MEM_PRIVATE [0x20000])
;
; Returns:
;	Success: A single value (values are interpreted based on data (see descriptions)), or an array if $iInfo=-1:
;		[0] = Base Address (of the region of pages in which the given address resides. can be <= AllocationBase)
;		[1] = Allocation Base (the base address of the page allocation that contains the given address)
;		[2] = Allocation Protection (type of protection the region was initially created with)
;		[3] = Region Size (size of region in bytes)
;		[4] = State [Allocation Type] (either MEM_COMMIT [0x1000], MEM_FREE [0x10000], MEM_RESERVE [0x2000])
;		[5] = Protection (current type of protection of the pages in the region) [can only be changed with 'VirtualProtectEx'])
;		[6] = Type (either MEM_IMAGE [0x1000000], MEM_MAPPED [0x40000], or MEM_PRIVATE [0x20000])
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameters
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'. Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryVirtualQuery($hProcess,$pAddress,$iInfo=-1)
	If Not IsPtr($hProcess) Or Ptr($pAddress)=0 Or $iInfo>6 Then Return SetError(1,0,-1)

	; MEMORY_BASIC_INFORMATION structure:  BaseAddress, AllocationBase, AllocationProtect, RegionSize, State, Protect, Type
	Local $aRet,$stMemInfo=DllStructCreate("ptr;ptr;dword;ulong_ptr;dword;dword;dword"),$iStrSz=DllStructGetSize($stMemInfo)

	$aRet=DllCall($_COMMON_KERNEL32DLL,"ulong_ptr","VirtualQueryEx","handle",$hProcess,"ptr",$pAddress,"ptr",DllStructGetPtr($stMemInfo),"ulong_ptr",$iStrSz)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,@error,-1)
	If $aRet[0]<>$iStrSz Then ConsoleWriteError("Size (in bytes) mismatch in VirtualQueryEx: Struct: "&$iStrSz&", Transferred: "&$aRet[0]&@LF)

	; Return ALL?
	If $iInfo<0 Then
		Dim $aMemInfo[7]
		For $i=0 To 6
			$aMemInfo[$i]=DllStructGetData($stMemInfo,$i+1)
		Next
		Return $aMemInfo
	EndIf
	Return DllStructGetData($stMemInfo,$iInfo+1)
EndFunc


; ===================================================================================================================
; Func _ProcessMemoryVirtualProtect($hProcess,$pAddress,$iNumBytes,$iProtect)
;
; Alters the protection type of the memory in the given Process
;
; $hProcess = handle of opened process in which the memory protection is being altered
;	Process must have been Opened with PROCESS_VM_OPERATION (0x0008) access right
; $pAddress = Pointer to Memory region base to change protection on
; $iNumBytes = Size of memory region which is to have its protection altered
; $iProtect = New protection type (same constants used in _ProcessMemoryAlloc())
;
; Returns:
;	Success: True, with @extended = old protection type
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'. Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessMemoryVirtualProtect($hProcess,$pAddress,$iNumBytes,$iProtect)
	If Not IsPtr($hProcess) Or Ptr($pAddress)=0 Or $iNumBytes<=0 Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","VirtualProtectEx","handle",$hProcess,"ptr",$pAddress,"ulong_ptr",$iNumBytes,"dword",$iProtect,"dword*",0)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
	; Return old protection type in @extended
	Return SetError(0,$aRet[5],True)
EndFunc


; ===================================================================================================================
; Func _ProcessTerminate($hProcess,$iExitCode=0)
;
; Terminates the given Process.
;	Note that this is a dangerous thing to do for certain processes!
;
; $hProcess = handle of opened process in which the memory protection is being altered
;	Process must have been Opened with PROCESS_TERMINATE (0x0001) access right
; $iExitCode = (Optional) Exit code for the Process to report.
;
; Returns:
;	Success: True
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'. Use GetLastError to get more info.
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessTerminate($hProcess,$iExitCode=0)
	If Not IsPtr($hProcess) Then Return SetError(1,0,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","TerminateProcess","handle",$hProcess,"int",$iExitCode)
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
	Return True
EndFunc
