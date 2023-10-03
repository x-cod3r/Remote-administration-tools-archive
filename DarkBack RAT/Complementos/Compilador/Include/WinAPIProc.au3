#include-once

#include "APIProcConstants.au3"
#include "WinAPIShPath.au3"
#include "WinAPICom.au3"
#include "WinAPIInternals.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIProc.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: advapi32.dll, kernel32.dll, psapi.dll, ntdll.dll, shell32.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #CONSTANTS# ===================================================================================================================
Global Const $tagIO_COUNTERS = 'struct;uint64 ReadOperationCount;uint64 WriteOperationCount;uint64 OtherOperationCount;uint64 ReadTransferCount;uint64 WriteTransferCount;uint64 OtherTransferCount;endstruct'
Global Const $tagJOBOBJECT_ASSOCIATE_COMPLETION_PORT = 'ulong_ptr CompletionKey;ptr CompletionPort'
Global Const $tagJOBOBJECT_BASIC_ACCOUNTING_INFORMATION = 'struct;int64 TotalUserTime;int64 TotalKernelTime;int64 ThisPeriodTotalUserTime;int64 ThisPeriodTotalKernelTime;dword TotalPageFaultCount;dword TotalProcesses;dword ActiveProcesses;dword TotalTerminatedProcesses;endstruct'
Global Const $tagJOBOBJECT_BASIC_AND_IO_ACCOUNTING_INFORMATION = $tagJOBOBJECT_BASIC_ACCOUNTING_INFORMATION & ';' & $tagIO_COUNTERS
Global Const $tagJOBOBJECT_BASIC_LIMIT_INFORMATION = 'struct;int64 PerProcessUserTimeLimit;int64 PerJobUserTimeLimit;dword LimitFlags;ulong_ptr MinimumWorkingSetSize;ulong_ptr MaximumWorkingSetSize;dword ActiveProcessLimit;ulong_ptr Affinity;dword PriorityClass;dword SchedulingClass;endstruct'
Global Const $tagJOBOBJECT_BASIC_PROCESS_ID_LIST = 'dword NumberOfAssignedProcesses;dword NumberOfProcessIdsInList' ; & ';ulong_ptr ProcessIdList[n]'
Global Const $tagJOBOBJECT_BASIC_UI_RESTRICTIONS = 'dword UIRestrictionsClass'
Global Const $tagJOBOBJECT_END_OF_JOB_TIME_INFORMATION = 'dword EndOfJobTimeAction'
Global Const $tagJOBOBJECT_EXTENDED_LIMIT_INFORMATION = $tagJOBOBJECT_BASIC_LIMIT_INFORMATION & ';' & $tagIO_COUNTERS & ';ulong_ptr ProcessMemoryLimit;ulong_ptr JobMemoryLimit;ulong_ptr PeakProcessMemoryUsed;ulong_ptr PeakJobMemoryUsed'
Global Const $tagJOBOBJECT_GROUP_INFORMATION = '' ; & 'ushort ProcessorGroup[n]'
Global Const $tagJOBOBJECT_SECURITY_LIMIT_INFORMATION = 'dword SecurityLimitFlags;ptr JobToken;ptr SidsToDisable;ptr PrivilegesToDelete;ptr RestrictedSids'
Global Const $tagMODULEINFO = 'ptr BaseOfDll;dword SizeOfImage;ptr EntryPoint'
Global Const $tagPROCESSENTRY32 = 'dword Size;dword Usage;dword ProcessID;ulong_ptr DefaultHeapID;dword ModuleID;dword Threads;dword ParentProcessID;long PriClassBase;dword Flags;wchar ExeFile[260]'
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_AdjustTokenPrivileges
; _WinAPI_AssignProcessToJobObject
; _WinAPI_CreateJobObject
; _WinAPI_CreateMutex
; _WinAPI_CreateProcessWithToken
; _WinAPI_CreateSemaphore
; _WinAPI_DuplicateTokenEx
; _WinAPI_EmptyWorkingSet
; _WinAPI_EnumChildProcess
; _WinAPI_EnumDeviceDrivers
; _WinAPI_EnumProcessHandles
; _WinAPI_EnumProcessModules
; _WinAPI_EnumProcessThreads
; _WinAPI_EnumProcessWindows
; _WinAPI_GetCurrentProcessExplicitAppUserModelID
; _WinAPI_GetDeviceDriverBaseName
; _WinAPI_GetDeviceDriverFileName
; _WinAPI_GetExitCodeProcess
; _WinAPI_GetModuleFileNameEx
; _WinAPI_GetModuleInformation
; _WinAPI_GetParentProcess
; _WinAPI_GetPriorityClass
; _WinAPI_GetProcessCommandLine
; _WinAPI_GetProcessFileName
; _WinAPI_GetProcessHandleCount
; _WinAPI_GetProcessID
; _WinAPI_GetProcessIoCounters
; _WinAPI_GetProcessMemoryInfo
; _WinAPI_GetProcessName
; _WinAPI_GetProcessTimes
; _WinAPI_GetProcessUser
; _WinAPI_GetProcessWorkingDirectory
; _WinAPI_GetThreadDesktop
; _WinAPI_GetThreadErrorMode
; _WinAPI_GetWindowFileName
; _WinAPI_IsElevated
; _WinAPI_IsProcessInJob
; _WinAPI_IsWow64Process
; _WinAPI_OpenJobObject
; _WinAPI_OpenMutex
; _WinAPI_OpenProcessToken
; _WinAPI_OpenSemaphore
; _WinAPI_QueryInformationJobObject
; _WinAPI_ReleaseMutex
; _WinAPI_ReleaseSemaphore
; _WinAPI_ResetEvent
; _WinAPI_SetInformationJobObject
; _WinAPI_SetPriorityClass
; _WinAPI_SetThreadDesktop
; _WinAPI_SetThreadErrorMode
; _WinAPI_SetThreadExecutionState
; _WinAPI_TerminateJobObject
; _WinAPI_TerminateProcess
; _WinAPI_UserHandleGrantAccess
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_AdjustTokenPrivileges($hToken, $aPrivileges, $iAttributes, ByRef $aAdjust)
	$aAdjust = 0
	If Not $aPrivileges And IsNumber($aPrivileges) Then Return 0

	Local $tTP1 = 0, $tTP2, $Count, $Ret, $Disable = 0
	If $aPrivileges = -1 Then
		$tTP2 = DllStructCreate('dword')
		$Ret = DllCall('advapi32.dll', 'bool', 'AdjustTokenPrivileges', 'handle', $hToken, 'bool', 1, 'ptr', 0, _
				'dword', 0, 'struct*', $tTP2, 'dword*', 0)
		If @error Then Return SetError(@error, @extended, 0)
		Local $iLastError = _WinAPI_GetLastError()
		Switch $iLastError
			Case 122 ; ERROR_INSUFFICIENT_BUFFER
				$tTP2 = DllStructCreate('dword;dword[' & ($Ret[6] / 4 - 1) & ']')
				If @error Then
					ContinueCase
				EndIf
			Case Else
				Return SetError(10, $iLastError, 0)
		EndSwitch
		$Disable = 1
	Else
		Local $Prev = 0
		If Not IsArray($aPrivileges) Then
			Dim $Prev[1][2]
			$Prev[0][0] = $aPrivileges
			$Prev[0][1] = $iAttributes
		Else
			If Not UBound($aPrivileges, 2) Then
				$Count = UBound($aPrivileges)
				Dim $Prev[$Count][2]
				For $i = 0 To $Count - 1
					$Prev[$i][0] = $aPrivileges[$i]
					$Prev[$i][1] = $iAttributes
				Next
			EndIf
		EndIf
		If IsArray($Prev) Then
			$aPrivileges = $Prev
		EndIf
		Local $Struct = 'dword;dword[' & (3 * UBound($aPrivileges)) & ']'
		$tTP1 = DllStructCreate($Struct)
		$tTP2 = DllStructCreate($Struct)
		If @error Then Return SetError(@error + 20, 0, 0)

		DllStructSetData($tTP1, 1, UBound($aPrivileges))
		For $i = 0 To UBound($aPrivileges) - 1
			DllStructSetData($tTP1, 2, $aPrivileges[$i][1], 3 * $i + 3)
			$Ret = DllCall('advapi32.dll', 'bool', 'LookupPrivilegeValueW', 'ptr', 0, 'wstr', $aPrivileges[$i][0], _
					'ptr', DllStructGetPtr($tTP1, 2) + 12 * $i)
			If @error Or Not $Ret[0] Then Return SetError(@error + 100, @extended, 0)
		Next
	EndIf
	$Ret = DllCall('advapi32.dll', 'bool', 'AdjustTokenPrivileges', 'handle', $hToken, 'bool', $Disable, _
			'struct*', $tTP1, 'dword', DllStructGetSize($tTP2), 'struct*', $tTP2, 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 200, @extended, 0)

	Local $Result
	Switch _WinAPI_GetLastError()
		Case 1300 ; ERROR_NOT_ALL_ASSIGNED
			$Result = 1
		Case Else
			$Result = 0
	EndSwitch
	$Count = DllStructGetData($tTP2, 1)
	If $Count Then
		Local $tData = DllStructCreate('wchar[128]')
		Dim $aPrivileges[$Count][2]
		For $i = 0 To $Count - 1
			$Ret = DllCall('advapi32.dll', 'bool', 'LookupPrivilegeNameW', 'ptr', 0, _
					'ptr', DllStructGetPtr($tTP2, 2) + 12 * $i, 'struct*', $tData, 'dword*', 128)
			If @error Or Not $Ret[0] Then Return SetError(@error + 300, @extended, 0)

			$aPrivileges[$i][1] = DllStructGetData($tTP2, 2, 3 * $i + 3)
			$aPrivileges[$i][0] = DllStructGetData($tData, 1)
		Next
		$aAdjust = $aPrivileges
	EndIf

	Return SetExtended($Result, 1)
EndFunc   ;==>_WinAPI_AdjustTokenPrivileges

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_AssignProcessToJobObject($hJob, $hProcess)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'AssignProcessToJobObject', 'handle', $hJob, 'handle', $hProcess)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_AssignProcessToJobObject

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateJobObject($sName = '', $tSecurity = 0)
	Local $TypeOfName = 'wstr'
	If Not StringStripWS($sName, 3) Then
		$TypeOfName = 'ptr'
		$sName = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'handle', 'CreateJobObjectW', 'struct*', $tSecurity, $TypeOfName, $sName)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateJobObject

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateMutex($sMutex, $fInitial = 1, $tSecurity = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'CreateMutexW', 'struct*', $tSecurity, 'bool', $fInitial, 'wstr', $sMutex)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateMutex

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateProcessWithToken($sApp, $sCmd, $iFlags, $pStartupInfo, $pProcessInfo, $hToken, $iLogon = 0, $pEnvironment = 0, $sDir = '')
	Local $TypeOfApp = 'wstr', $TypeOfCmd = 'wstr', $TypeOfDir = 'wstr'
	If Not StringStripWS($sApp, 3) Then
		$TypeOfApp = 'ptr'
		$sApp = 0
	EndIf
	If Not StringStripWS($sCmd, 3) Then
		$TypeOfCmd = 'ptr'
		$sCmd = 0
	EndIf
	If Not StringStripWS($sDir, 3) Then
		$TypeOfDir = 'ptr'
		$sDir = 0
	EndIf

	Local $Ret = DllCall('advapi32.dll', 'bool', 'CreateProcessWithTokenW', 'handle', $hToken, 'dword', $iLogon, _
			$TypeOfApp, $sApp, $TypeOfCmd, $sCmd, 'dword', $iFlags, 'ptr', $pEnvironment, _
			$TypeOfDir, $sDir, 'ptr', $pStartupInfo, 'ptr', $pProcessInfo)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateProcessWithToken

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateSemaphore($sSemaphore, $iInitial, $iMaximum, $tSecurity = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'CreateSemaphoreW', 'struct*', $tSecurity, 'long', $iInitial, _
			'long', $iMaximum, 'wstr', $sSemaphore)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateSemaphore

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DuplicateTokenEx($hToken, $iAccess, $iLevel, $iType = 1, $tSecurity = 0)
	Local $Ret = DllCall('advapi32.dll', 'bool', 'DuplicateTokenEx', 'handle', $hToken, 'dword', $iAccess, _
			'struct*', $tSecurity, 'int', $iLevel, 'int', $iType, 'handle*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[6]
EndFunc   ;==>_WinAPI_DuplicateTokenEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EmptyWorkingSet($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000500, 0x00001100), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EmptyWorkingSet', 'handle', $hProcess[0])
	If __CheckErrorCloseHandle($Ret, $hProcess[0]) Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_EmptyWorkingSet

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumChildProcess($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
	If @error Or ($hSnapshot[0] = Ptr(-1)) Then Return SetError(@error + 10, @extended, 0) ; $INVALID_HANDLE_VALUE

	Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
	Local $Result[101][2] = [[0]]

	$hSnapshot = $hSnapshot[0]
	DllStructSetData($tPROCESSENTRY32, 'Size', DllStructGetSize($tPROCESSENTRY32))
	Local $Ret = DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
	Local $iError = @error
	While (Not @error) And ($Ret[0])
		If DllStructGetData($tPROCESSENTRY32, 'ParentProcessID') = $PID Then
			__Inc($Result)
			$Result[$Result[0][0]][0] = DllStructGetData($tPROCESSENTRY32, 'ProcessID')
			$Result[$Result[0][0]][1] = DllStructGetData($tPROCESSENTRY32, 'ExeFile')
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
		$iError = @error
	WEnd
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
	If Not $Result[0][0] Then Return SetError($iError + 20, 0, 0)

	__Inc($Result, -1)
	Return $Result
EndFunc   ;==>_WinAPI_EnumChildProcess

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumDeviceDrivers()
	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumDeviceDrivers', 'ptr', 0, 'dword', 0, 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Local $Size
	If @AutoItX64 Then
		$Size = $Ret[3] / 8
	Else
		$Size = $Ret[3] / 4
	EndIf
	Local $tData = DllStructCreate('ptr[' & $Size & ']')
	$Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumDeviceDrivers', 'struct*', $tData, _
			'dword', DllStructGetSize($tData), 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 20, @extended, 0)

	Local $Result[$Size + 1] = [$Size]
	For $i = 1 To $Size
		$Result[$i] = DllStructGetData($tData, 1, $i)
	Next
	Return $Result
EndFunc   ;==>_WinAPI_EnumDeviceDrivers

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumProcessHandles($PID = 0, $iType = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $Result[101][4] = [[0]]

	Local $tSHI = DllStructCreate('ulong;byte[4194304]')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQuerySystemInformation', 'uint', 16, 'struct*', $tSHI, _
			'ulong', DllStructGetSize($tSHI), 'ulong*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $pData = DllStructGetPtr($tSHI, 2)
	Local $tHandle
	For $i = 1 To DllStructGetData($tSHI, 1)
		$tHandle = DllStructCreate('align 4;ulong;ubyte;ubyte;ushort;ptr;ulong', $pData + __Iif(@AutoItX64, 4 + ($i - 1) * 24, ($i - 1) * 16))
		If (DllStructGetData($tHandle, 1) = $PID) And ((Not $iType) Or ($iType = DllStructGetData($tHandle, 2))) Then
			__Inc($Result)
			$Result[$Result[0][0]][0] = Ptr(DllStructGetData($tHandle, 4))
			$Result[$Result[0][0]][1] = DllStructGetData($tHandle, 2)
			$Result[$Result[0][0]][2] = DllStructGetData($tHandle, 3)
			$Result[$Result[0][0]][3] = DllStructGetData($tHandle, 6)
		EndIf
	Next
	If Not $Result[0][0] Then Return SetError(11, 0, 0)

	__Inc($Result, -1)
	Return $Result
EndFunc   ;==>_WinAPI_EnumProcessHandles

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumProcessModules($PID = 0, $iFlag = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000410, 0x00001010), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $Count, $Ret, $Result = 0
	Do
		If $__WINVER >= 0x0600 Then
			$Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModulesEx', 'handle', $hProcess[0], 'ptr', 0, _
					'dword', 0, 'dword*', 0, 'dword', $iFlag)
		Else
			$Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModules', 'handle', $hProcess[0], 'ptr', 0, _
					'dword', 0, 'dword*', 0)
		EndIf
		If @error Or Not $Ret[0] Then
			$Result = @error + 10
			ExitLoop
		EndIf
		If @AutoItX64 Then
			$Count = $Ret[4] / 8
		Else
			$Count = $Ret[4] / 4
		EndIf
		Local $tPtr = DllStructCreate('ptr[' & $Count & ']')
		If @error Then
			$Result = @error + 30
			ExitLoop
		EndIf
		If $__WINVER >= 0x0600 Then
			$Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModulesEx', 'handle', $hProcess[0], 'struct*', $tPtr, _
					'dword', DllStructGetSize($tPtr), 'dword*', 0, 'dword', $iFlag)
		Else
			$Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'EnumProcessModules', 'handle', $hProcess[0], 'struct*', $tPtr, _
					'dword', DllStructGetSize($tPtr), 'dword*', 0)
		EndIf
		If @error Or Not $Ret[0] Then
			$Result = @error + 40
			ExitLoop
		EndIf
		Dim $Result[$Count + 1][2] = [[$Count]]
		For $i = 1 To $Count
			$Result[$i][0] = DllStructGetData($tPtr, 1, $i)
			$Result[$i][1] = _WinAPI_GetModuleFileNameEx($hProcess[0], $Result[$i][0])
		Next
	Until 1
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
	If $Result Then Return SetError($Result, 0, 0)

	Return $Result
EndFunc   ;==>_WinAPI_EnumProcessModules

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumProcessThreads($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000004, 'dword', 0)
	If @error Or Not $hSnapshot[0] Then Return SetError(@error + 10, @extended, 0)

	Local Const $tagTHREADENTRY32 = 'dword Size;dword Usage;dword ThreadID;dword OwnerProcessID;long BasePri;long DeltaPri;dword Flags'
	Local $tTHREADENTRY32 = DllStructCreate($tagTHREADENTRY32)
	Local $Result[101] = [0]

	$hSnapshot = $hSnapshot[0]
	DllStructSetData($tTHREADENTRY32, 'Size', DllStructGetSize($tTHREADENTRY32))
	Local $Ret = DllCall('kernel32.dll', 'bool', 'Thread32First', 'handle', $hSnapshot, 'struct*', $tTHREADENTRY32)
	While Not @error And $Ret[0]
		If DllStructGetData($tTHREADENTRY32, 'OwnerProcessID') = $PID Then
			__Inc($Result)
			$Result[$Result[0]] = DllStructGetData($tTHREADENTRY32, 'ThreadID')
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'Thread32Next', 'handle', $hSnapshot, 'struct*', $tTHREADENTRY32)
	WEnd
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
	If Not $Result[0] Then Return SetError(1, 0, 0)

	__Inc($Result, -1)
	Return $Result
EndFunc   ;==>_WinAPI_EnumProcessThreads

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumProcessWindows($PID = 0, $fVisible = 1)
	Local $Threads = _WinAPI_EnumProcessThreads($PID)
	If @error Then Return SetError(@error, @extended, 0)

	Local $hEnumProc = DllCallbackRegister('__EnumWindowsProc', 'bool', 'hwnd;lparam')

	Dim $__Enum[101][2] = [[0]]
	For $i = 1 To $Threads[0]
		DllCall('user32.dll', 'bool', 'EnumThreadWindows', 'dword', $Threads[$i], 'ptr', DllCallbackGetPtr($hEnumProc), _
				'lparam', $fVisible)
		If @error Then
			ExitLoop
		EndIf
	Next
	DllCallbackFree($hEnumProc)
	If Not $__Enum[0][0] Then Return SetError(11, 0, 0)

	__Inc($__Enum, -1)
	Return $__Enum
EndFunc   ;==>_WinAPI_EnumProcessWindows

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetCurrentProcessExplicitAppUserModelID()
	Local $Ret = DllCall('shell32.dll', 'long', 'GetCurrentProcessExplicitAppUserModelID', 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Local $sID = _WinAPI_GetString($Ret[1])
	_WinAPI_CoTaskMemFree($Ret[1])
	Return $sID
EndFunc   ;==>_WinAPI_GetCurrentProcessExplicitAppUserModelID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetDeviceDriverBaseName($hDriver)
	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'dword', 'GetDeviceDriverBaseNameW', 'ptr', $hDriver, 'wstr', '', _
			'dword', 4096)
	If @error Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetDeviceDriverBaseName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetDeviceDriverFileName($hDriver)
	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'dword', 'GetDeviceDriverFileNameW', 'ptr', $hDriver, 'wstr', '', _
			'dword', 4096)
	If @error Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetDeviceDriverFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetExitCodeProcess($hProcess)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetExitCodeProcess', 'handle', $hProcess, 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetExitCodeProcess

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetModuleFileNameEx($hProcess, $hModule = 0)
	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'dword', 'GetModuleFileNameExW', 'handle', $hProcess, 'handle', $hModule, _
			'wstr', '', 'int', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetModuleFileNameEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetModuleInformation($hProcess, $hModule = 0)
	Local $tMODULEINFO = DllStructCreate($tagMODULEINFO)
	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'GetModuleInformation', 'handle', $hProcess, 'handle', $hModule, _
			'struct*', $tMODULEINFO, 'dword', DllStructGetSize($tMODULEINFO))
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Return $tMODULEINFO
EndFunc   ;==>_WinAPI_GetModuleInformation

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetParentProcess($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
	If @error Or Not $hSnapshot[0] Then Return SetError(@error + 10, @extended, 0)

	Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
	Local $Result = 0

	$hSnapshot = $hSnapshot[0]
	DllStructSetData($tPROCESSENTRY32, 'Size', DllStructGetSize($tPROCESSENTRY32))
	Local $Ret = DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
	Local $iError = @error
	While (Not @error) And ($Ret[0])
		If DllStructGetData($tPROCESSENTRY32, 'ProcessID') = $PID Then
			$Result = DllStructGetData($tPROCESSENTRY32, 'ParentProcessID')
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
		$iError = @error
	WEnd
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
	If Not $Result Then Return SetError($iError, 0, 0)

	Return $Result
EndFunc   ;==>_WinAPI_GetParentProcess

; #FUNCTION# ====================================================================================================================
; Author.........: KaFu
; Modified.......: Yashied, Jpm
; ===============================================================================================================================
Func _WinAPI_GetPriorityClass($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000400, 0x00001000), 'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)
	; If Not $hProcess[0] Then Return SetError(1000, 0, 0)

	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetPriorityClass', 'ptr', $hProcess[0])
	If @error Then $Ret = @error
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
	If $Ret Then Return SetError($Ret, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetPriorityClass

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessCommandLine($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000410, 0x00001010), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, '')

	$hProcess = $hProcess[0]

	Local $tPBI = DllStructCreate('ulong_ptr ExitStatus;ptr PebBaseAddress;ulong_ptr AffinityMask;ulong_ptr BasePriority;ulong_ptr UniqueProcessId;ulong_ptr InheritedFromUniqueProcessId')
	Local $tPEB = DllStructCreate('byte InheritedAddressSpace;byte ReadImageFileExecOptions;byte BeingDebugged;byte Spare;ptr Mutant;ptr ImageBaseAddress;ptr LoaderData;ptr ProcessParameters;ptr SubSystemData;ptr ProcessHeap;ptr FastPebLock;ptr FastPebLockRoutine;ptr FastPebUnlockRoutine;ulong EnvironmentUpdateCount;ptr KernelCallbackTable;ptr EventLogSection;ptr EventLog;ptr FreeList;ulong TlsExpansionCounter;ptr TlsBitmap;ulong TlsBitmapBits[2];ptr ReadOnlySharedMemoryBase;ptr ReadOnlySharedMemoryHeap;ptr ReadOnlyStaticServerData;ptr AnsiCodePageData;ptr OemCodePageData;ptr UnicodeCaseTableData;ulong NumberOfProcessors;ulong NtGlobalFlag;byte Spare2[4];int64 CriticalSectionTimeout;ulong HeapSegmentReserve;ulong HeapSegmentCommit;ulong HeapDeCommitTotalFreeThreshold;ulong HeapDeCommitFreeBlockThreshold;ulong NumberOfHeaps;ulong MaximumNumberOfHeaps;ptr ProcessHeaps;ptr GdiSharedHandleTable;ptr ProcessStarterHelper;ptr GdiDCAttributeList;ptr LoaderLock;ulong OSMajorVersion;ulong OSMinorVersion;ulong OSBuildNumber;ulong OSPlatformId;ulong ImageSubSystem;ulong ImageSubSystemMajorVersion;ulong ImageSubSystemMinorVersion;ulong GdiHandleBuffer[34];ulong PostProcessInitRoutine;ulong TlsExpansionBitmap;byte TlsExpansionBitmapBits[128];ulong SessionId')
	Local $tUPP = DllStructCreate('ulong AllocationSize;ulong ActualSize;ulong Flags;ulong Unknown1;ushort LengthUnknown2;ushort MaxLengthUnknown2;ptr Unknown2;ptr InputHandle;ptr OutputHandle;ptr ErrorHandle;ushort LengthCurrentDirectory;ushort MaxLengthCurrentDirectory;ptr CurrentDirectory;ptr CurrentDirectoryHandle;ushort LengthSearchPaths;ushort MaxLengthSearchPaths;ptr SearchPaths;ushort LengthApplicationName;ushort MaxLengthApplicationName;ptr ApplicationName;ushort LengthCommandLine;ushort MaxLengthCommandLine;ptr CommandLine;ptr EnvironmentBlock;ulong Unknown[9];ushort LengthUnknown3;ushort MaxLengthUnknown3;ptr Unknown3;ushort LengthUnknown4;ushort MaxLengthUnknown4;ptr Unknown4;ushort LengthUnknown5;ushort MaxLengthUnknown5;ptr Unknown5')
	Local $tCMD

	Local $Ret, $Error = 0
	Do
		$Ret = DllCall('ntdll.dll', 'long', 'NtQueryInformationProcess', 'handle', $hProcess, 'ulong', 0, 'struct*', $tPBI, _
				'ulong', DllStructGetSize($tPBI), 'ulong*', 0)
		If @error Or $Ret[0] Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess, _
				'ptr', DllStructGetData($tPBI, 'PebBaseAddress'), 'struct*', $tPEB, _
				'ulong_ptr', DllStructGetSize($tPEB), 'ulong_ptr*', 0)
		If @error Or Not $Ret[0] Or (Not $Ret[5]) Then
			$Error = @error + 40
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess, _
				'ptr', DllStructGetData($tPEB, 'ProcessParameters'), 'struct*', $tUPP, _
				'ulong_ptr', DllStructGetSize($tUPP), 'ulong_ptr*', 0)
		If @error Or Not $Ret[0] Or (Not $Ret[5]) Then
			$Error = @error + 50
			ExitLoop
		EndIf
		$tCMD = DllStructCreate('byte[' & DllStructGetData($tUPP, 'MaxLengthCommandLine') & ']')
		If @error Then
			$Error = @error + 60
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess, _
				'ptr', DllStructGetData($tUPP, 'CommandLine'), 'struct*', $tCMD, _
				'ulong_ptr', DllStructGetSize($tCMD), 'ulong_ptr*', 0)
		If @error Or Not $Ret[0] Or (Not $Ret[5]) Then
			$Error = @error + 70
			ExitLoop
		EndIf
	Until 1
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess)
	If $Error Then Return SetError($Error, 0, '')

	Return StringStripWS(_WinAPI_PathGetArgs(_WinAPI_GetString(DllStructGetPtr($tCMD, 1))), 3)
EndFunc   ;==>_WinAPI_GetProcessCommandLine

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessFileName($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000410, 0x00001010), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, '')

	Local $Path = _WinAPI_GetModuleFileNameEx($hProcess[0])
	Local $iError = @error

	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
	If $iError Then Return SetError(@error, 0, '')

	Return $Path
EndFunc   ;==>_WinAPI_GetProcessFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessHandleCount($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000400, 0x00001000), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetProcessHandleCount', 'handle', $hProcess[0], 'dword*', 0)
	If __CheckErrorCloseHandle($Ret, $hProcess[0]) Then Return SetError(@error, @extended, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetProcessHandleCount

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessID($hProcess)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetProcessId', 'handle', $hProcess)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetProcessID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessIoCounters($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000400, 0x00001000), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $tIO_COUNTERS = DllStructCreate('uint64[6]')
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetProcessIoCounters', 'handle', $hProcess[0], 'struct*', $tIO_COUNTERS)
	If __CheckErrorCloseHandle($Ret, $hProcess[0]) Then Return SetError(@error, @extended, 0)

	Local $Result[6]
	For $i = 0 To 5
		$Result[$i] = DllStructGetData($tIO_COUNTERS, 1, $i + 1)
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetProcessIoCounters

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessMemoryInfo($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000410, 0x00001010), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $tPMC_EX = DllStructCreate('dword;dword;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr;ulong_ptr')
	Local $Ret = DllCall(@SystemDir & '\psapi.dll', 'bool', 'GetProcessMemoryInfo', 'handle', $hProcess[0], 'struct*', $tPMC_EX, _
			'int', DllStructGetSize($tPMC_EX))
	If __CheckErrorCloseHandle($Ret, $hProcess[0]) Then Return SetError(@error, @extended, 0)

	Local $Result[10]
	For $i = 0 To 9
		$Result[$i] = DllStructGetData($tPMC_EX, $i + 2)
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetProcessMemoryInfo

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessName($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hSnapshot = DllCall('kernel32.dll', 'handle', 'CreateToolhelp32Snapshot', 'dword', 0x00000002, 'dword', 0)
	If @error Or Not $hSnapshot[0] Then Return SetError(@error + 20, @extended, '')

	$hSnapshot = $hSnapshot[0]
	Local $tPROCESSENTRY32 = DllStructCreate($tagPROCESSENTRY32)
	DllStructSetData($tPROCESSENTRY32, 'Size', DllStructGetSize($tPROCESSENTRY32))
	Local $Ret = DllCall('kernel32.dll', 'bool', 'Process32FirstW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
	Local $Error = @error
	While (Not @error) And ($Ret[0])
		If DllStructGetData($tPROCESSENTRY32, 'ProcessID') = $PID Then
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'Process32NextW', 'handle', $hSnapshot, 'struct*', $tPROCESSENTRY32)
		$Error = @error
	WEnd
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hSnapshot)
	If $Error Then Return SetError($Error, 0, '')
	If Not $Ret[0] Then SetError(10, 0, '')

	Return DllStructGetData($tPROCESSENTRY32, 'ExeFile')
EndFunc   ;==>_WinAPI_GetProcessName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessTimes($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000400, 0x00001000), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $tFILETIME = DllStructCreate($tagFILETIME)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetProcessTimes', 'handle', $hProcess[0], 'struct*', $tFILETIME, 'uint64*', 0, _
			'uint64*', 0, 'uint64*', 0)
	If __CheckErrorCloseHandle($Ret, $hProcess[0]) Then Return SetError(@error, @extended, 0)

	Local $Result[3]
	$Result[0] = $tFILETIME
	$Result[1] = $Ret[4]
	$Result[2] = $Ret[5]
	Return $Result
EndFunc   ;==>_WinAPI_GetProcessTimes

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessUser($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $tSID, $hToken, $Ret
	Local $Error = 0

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000400, 0x00001000), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Do
		$hToken = _WinAPI_OpenProcessToken(0x00000008, $hProcess[0])
		If Not $hToken Then
			$Error = @error + 10
			ExitLoop
		EndIf
		$tSID = DllStructCreate('ptr;byte[1024]')
		$Ret = DllCall('advapi32.dll', 'bool', 'GetTokenInformation', 'handle', $hToken, 'uint', 1, 'struct*', $tSID, _
				'dword', DllStructGetSize($tSID), 'dword*', 0)
		If @error Or Not $Ret[0] Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$Ret = DllCall('advapi32.dll', 'bool', 'LookupAccountSidW', 'ptr', 0, 'ptr', DllStructGetData($tSID, 1), 'wstr', '', _
				'dword*', 2048, 'wstr', '', 'dword*', 2048, 'uint*', 0)
		If @error Or Not $Ret[0] Then
			$Error = @error + 40
			ExitLoop
		EndIf
	Until 1
	If $hToken Then
		DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
	If $Error Then Return SetError($Error, 0, 0)

	Local $Result[2]
	$Result[0] = $Ret[3]
	$Result[1] = $Ret[5]
	Return $Result
EndFunc   ;==>_WinAPI_GetProcessUser

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProcessWorkingDirectory($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $Ret, $Error = 0

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000410, 0x00001010), 'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, '')

	$hProcess = $hProcess[0]

	Local $tPBI = DllStructCreate('ulong_ptr ExitStatus;ptr PebBaseAddress;ulong_ptr AffinityMask;ulong_ptr BasePriority;ulong_ptr UniqueProcessId;ulong_ptr InheritedFromUniqueProcessId')
	Local $tPEB = DllStructCreate('byte InheritedAddressSpace;byte ReadImageFileExecOptions;byte BeingDebugged;byte Spare;ptr Mutant;ptr ImageBaseAddress;ptr LoaderData;ptr ProcessParameters;ptr SubSystemData;ptr ProcessHeap;ptr FastPebLock;ptr FastPebLockRoutine;ptr FastPebUnlockRoutine;ulong EnvironmentUpdateCount;ptr KernelCallbackTable;ptr EventLogSection;ptr EventLog;ptr FreeList;ulong TlsExpansionCounter;ptr TlsBitmap;ulong TlsBitmapBits[2];ptr ReadOnlySharedMemoryBase;ptr ReadOnlySharedMemoryHeap;ptr ReadOnlyStaticServerData;ptr AnsiCodePageData;ptr OemCodePageData;ptr UnicodeCaseTableData;ulong NumberOfProcessors;ulong NtGlobalFlag;byte Spare2[4];int64 CriticalSectionTimeout;ulong HeapSegmentReserve;ulong HeapSegmentCommit;ulong HeapDeCommitTotalFreeThreshold;ulong HeapDeCommitFreeBlockThreshold;ulong NumberOfHeaps;ulong MaximumNumberOfHeaps;ptr ProcessHeaps;ptr GdiSharedHandleTable;ptr ProcessStarterHelper;ptr GdiDCAttributeList;ptr LoaderLock;ulong OSMajorVersion;ulong OSMinorVersion;ulong OSBuildNumber;ulong OSPlatformId;ulong ImageSubSystem;ulong ImageSubSystemMajorVersion;ulong ImageSubSystemMinorVersion;ulong GdiHandleBuffer[34];ulong PostProcessInitRoutine;ulong TlsExpansionBitmap;byte TlsExpansionBitmapBits[128];ulong SessionId')
	Local $tUPP = DllStructCreate('ulong AllocationSize;ulong ActualSize;ulong Flags;ulong Unknown1;ushort LengthUnknown2;ushort MaxLengthUnknown2;ptr Unknown2;ptr InputHandle;ptr OutputHandle;ptr ErrorHandle;ushort LengthCurrentDirectory;ushort MaxLengthCurrentDirectory;ptr CurrentDirectory;ptr CurrentDirectoryHandle;ushort LengthSearchPaths;ushort MaxLengthSearchPaths;ptr SearchPaths;ushort LengthApplicationName;ushort MaxLengthApplicationName;ptr ApplicationName;ushort LengthCommandLine;ushort MaxLengthCommandLine;ptr CommandLine;ptr EnvironmentBlock;ulong Unknown[9];ushort LengthUnknown3;ushort MaxLengthUnknown3;ptr Unknown3;ushort LengthUnknown4;ushort MaxLengthUnknown4;ptr Unknown4;ushort LengthUnknown5;ushort MaxLengthUnknown5;ptr Unknown5')
	Local $tDIR

	Do
		$Ret = DllCall('ntdll.dll', 'long', 'NtQueryInformationProcess', 'handle', $hProcess, 'ulong', 0, 'struct*', $tPBI, _
				'ulong', DllStructGetSize($tPBI), 'ulong*', 0)
		If @error Or ($Ret[0]) Then
			$Error = @error + 10
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess, _
				'ptr', DllStructGetData($tPBI, 'PebBaseAddress'), 'struct*', $tPEB, _
				'ulong_ptr', DllStructGetSize($tPEB), 'ulong_ptr*', 0)
		If @error Or (Not $Ret[0]) Or (Not $Ret[5]) Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess, _
				'ptr', DllStructGetData($tPEB, 'ProcessParameters'), 'struct*', $tUPP, _
				'ulong_ptr', DllStructGetSize($tUPP), 'ulong_ptr*', 0)
		If @error Or (Not $Ret[0]) Or (Not $Ret[5]) Then
			$Error = @error + 40
			ExitLoop
		EndIf
		$tDIR = DllStructCreate('byte[' & DllStructGetData($tUPP, 'MaxLengthCurrentDirectory') & ']')
		If @error Then
			$Error = @error + 50
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadProcessMemory', 'handle', $hProcess, _
				'ptr', DllStructGetData($tUPP, 'CurrentDirectory'), 'struct*', $tDIR, _
				'ulong_ptr', DllStructGetSize($tDIR), 'ulong_ptr*', 0)
		If @error Or (Not $Ret[0]) Or (Not $Ret[5]) Then
			$Error = @error + 60
			ExitLoop
		EndIf
		$Error = 0
	Until 1
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess)
	If $Error Then Return SetError($Error, 0, '')

	Return _WinAPI_PathRemoveBackslash(_WinAPI_GetString(DllStructGetPtr($tDIR)))
EndFunc   ;==>_WinAPI_GetProcessWorkingDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetThreadDesktop($iThreadID)
	Local $Ret = DllCall('user32.dll', 'handle', 'GetThreadDesktop', 'dword', $iThreadID)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThreadDesktop

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThreadErrorMode()
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetThreadErrorMode')
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThreadErrorMode

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetWindowFileName($hWnd)
	Local $PID = 0

	Local $Result = DllCall("user32.dll", "bool", "IsWindow", "hwnd", $hWnd)
	If $Result[0] Then
		$Result = DllCall("user32.dll", "dword", "GetWindowThreadProcessId", "hwnd", $hWnd, "dword*", 0)
		$PID = $Result[2]
	EndIf
	If Not $PID Then Return SetError(1, 0, '')

	$Result = _WinAPI_GetProcessFileName($PID)
	If @error Then Return SetError(@error, @extended, '')

	Return $Result
EndFunc   ;==>_WinAPI_GetWindowFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsElevated()
	Local $iElev, $Ret, $Error = 0

	Local $hToken = _WinAPI_OpenProcessToken(0x0008)
	If Not $hToken Then Return SetError(@error + 10, @extended, False)

	Do
		$Ret = DllCall('advapi32.dll', 'bool', 'GetTokenInformation', 'handle', $hToken, 'uint', 20, 'uint*', 0, 'dword', 4, _
				'dword*', 0) ; TOKEN_ELEVATION
		If @error Or Not $Ret[0] Then
			$Error = @error + 10
			ExitLoop
		EndIf
		$iElev = $Ret[3]
		$Ret = DllCall('advapi32.dll', 'bool', 'GetTokenInformation', 'handle', $hToken, 'uint', 18, 'uint*', 0, 'dword', 4, _
				'dword*', 0) ; TOKEN_ELEVATION_TYPE
		If @error Or Not $Ret[0] Then
			$Error = @error + 20
			ExitLoop
		EndIf
	Until 1
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hToken)
	If $Error Then Return SetError($Error, 0, False)

	Return SetExtended($Ret[0] - 1, $iElev)
EndFunc   ;==>_WinAPI_IsElevated

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_IsProcessInJob($hProcess, $hJob = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'IsProcessInJob', 'handle', $hProcess, 'ptr', $hJob, 'bool*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_IsProcessInJob

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_OpenJobObject($sName, $iAccess = 0x001F001F, $fInherit = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'OpenJobObjectW', 'dword', $iAccess, 'bool', $fInherit, 'wstr', $sName)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_OpenJobObject

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_OpenMutex($sMutex, $iAccess = 0x001F0001, $fInherit = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'OpenMutexW', 'dword', $iAccess, 'bool', $fInherit, 'wstr', $sMutex)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_OpenMutex

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_OpenProcessToken($iAccess, $hProcess = 0)
	If Not $hProcess Then
		$hProcess = DllCall("kernel32.dll", "handle", "GetCurrentProcess")
		$hProcess = $hProcess[0]
	EndIf

	Local $Ret = DllCall('advapi32.dll', 'bool', 'OpenProcessToken', 'handle', $hProcess, 'dword', $iAccess, 'handle*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_OpenProcessToken

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_OpenSemaphore($sSemaphore, $iAccess = 0x001F0003, $fInherit = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'OpenSemaphoreW', 'dword', $iAccess, 'bool', $fInherit, 'wstr', $sSemaphore)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_OpenSemaphore

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_QueryInformationJobObject($hJob, $iJobObjectInfoClass, ByRef $tJobObjectInfo)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'QueryInformationJobObject', 'handle', $hJob, 'int', $iJobObjectInfoClass, _
			'struct*', $tJobObjectInfo, 'dword', DllStructGetSize($tJobObjectInfo), 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_QueryInformationJobObject

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ReleaseMutex($hMutex)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'ReleaseMutex', 'handle', $hMutex)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ReleaseMutex

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ReleaseSemaphore($hSemaphore, $iIncrease = 1)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'ReleaseSemaphore', 'handle', $hSemaphore, 'long', $iIncrease, 'long*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_ReleaseSemaphore

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ResetEvent($hEvent)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'ResetEvent', 'handle', $hEvent)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ResetEvent

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetInformationJobObject($hJob, $iJobObjectInfoClass, $tJobObjectInfo)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetInformationJobObject', 'handle', $hJob, 'int', $iJobObjectInfoClass, _
			'struct*', $tJobObjectInfo, 'dword', DllStructGetSize($tJobObjectInfo))
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetInformationJobObject

; #FUNCTION# ====================================================================================================================
; Author.........: KaFu
; Modified.......: Yashied, Jpm
; ===============================================================================================================================
Func _WinAPI_SetPriorityClass($iPriority, $PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000600, 0x00001200), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 10, @extended, 0)
	; If Not $hProcess[0] Then Return SetError(1000, 0, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetPriorityClass', 'handle', $hProcess[0], 'dword', $iPriority)
	If @error Then $Ret = @error
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hProcess[0])
	If $Ret Then Return SetError($Ret, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetPriorityClass

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetThreadDesktop($hDesktop)
	Local $Ret = DllCall('user32.dll', 'bool', 'SetThreadDesktop', 'handle', $hDesktop)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetThreadDesktop

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetThreadErrorMode($iMode)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetThreadErrorMode', 'dword', $iMode, 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_SetThreadErrorMode

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetThreadExecutionState($iFlags)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'SetThreadExecutionState', 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetThreadExecutionState

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_TerminateJobObject($hJob, $iExitCode = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'TerminateJobObject', 'handle', $hJob, 'uint', $iExitCode)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_TerminateJobObject

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_TerminateProcess($hProcess, $iExitCode = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'TerminateProcess', 'handle', $hProcess, 'uint', $iExitCode)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_TerminateProcess

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_UserHandleGrantAccess($hObject, $hJob, $fGrant)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'UserHandleGrantAccess', 'handle', $hObject, 'handle', $hJob, 'bool', $fGrant)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_UserHandleGrantAccess

#endregion Public Functions
