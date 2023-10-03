; #FUNCTION# ;===============================================================================
;
; Name...........: _GetPrivilege_SEDEBUG
; Description ...: Obtains the SE_DEBUG privilege for the running process
; Syntax.........: _GetPrivilege_SEDEBUG()
; Parameters ....:
; Return values .: Success - Returns True
;                  Failure - Returns False and Sets @Error to 1
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _GetPrivilege_SEDEBUG()
	Local $return = False
    Local $tagLUIDANDATTRIB = "int64 Luid;dword Attributes"
    Local $count = 1
    Local $tagTOKENPRIVILEGES = "dword PrivilegeCount;byte LUIDandATTRIB[" & $count * 12 & "]" ; count of LUID structs * sizeof LUID struct
    Local $TOKEN_ADJUST_PRIVILEGES = 0x20
	Local $SE_PRIVILEGE_ENABLED = 0x2
	Local $curProc = DllCall("kernel32.dll", "ptr", "GetCurrentProcess")
    If @error Then Return False
	Local $call = DllCall("advapi32.dll", "int", "OpenProcessToken", "ptr", $curProc[0], "dword", $TOKEN_ADJUST_PRIVILEGES, "ptr*", 0)
	If (@error Or (Not $call[0])) Then Return False
    Local $hToken = $call[3]
    $call = DllCall("advapi32.dll", "int", "LookupPrivilegeValue", "ptr", 0, "str", "SeDebugPrivilege", "int64*", 0)
    If ((Not @error) And $call[0]) Then
		Local $iLuid = $call[3]
		Local $TP = DllStructCreate($tagTOKENPRIVILEGES)
		Local $LUID = DllStructCreate($tagLUIDANDATTRIB, DllStructGetPtr($TP, "LUIDandATTRIB"))
		DllStructSetData($TP, "PrivilegeCount", $count)
		DllStructSetData($LUID, "Luid", $iLuid)
		DllStructSetData($LUID, "Attributes", $SE_PRIVILEGE_ENABLED)
		$call = DllCall("advapi32.dll", "int", "AdjustTokenPrivileges", "ptr", $hToken, "int", 0, "ptr", DllStructGetPtr($TP), "dword", 0, "ptr", 0, "ptr", 0)
		If Not @error Then $return = ($call[0] <> 0) ; $call[0] <> 0 is success
	EndIf
	DllCall("kernel32.dll", "int", "CloseHandle", "ptr", $hToken)
	Return SetError(Number(Not $return), 0, $return)
EndFunc   ;==>_GetPrivilege_SEDEBUG