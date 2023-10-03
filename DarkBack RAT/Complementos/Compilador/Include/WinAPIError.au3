#include-once

; #INDEX# =======================================================================================================================
; Title .........: Windows API
; AutoIt Version : 3.2
; Description ...: Windows API calls that have been translated to AutoIt functions.
; Author(s) .....: Paul Campbell (PaulIA)
; Dll ...........: kernel32.dll
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _WinAPI_GetLastError
; _WinAPI_SetLastError
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Paul Campbell (PaulIA)
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_GetLastError($iError = @error, $iExtended = @extended)
	Local $aResult = DllCall("kernel32.dll", "dword", "GetLastError")
	Return SetError($iError, $iExtended, $aResult[0])
EndFunc   ;==>_WinAPI_GetLastError

; #FUNCTION# ====================================================================================================================
; Author ........: Paul Campbell (PaulIA)
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_SetLastError($iErrorCode, $iError = @error, $iExtended = @extended)
	DllCall("kernel32.dll", "none", "SetLastError", "dword", $iErrorCode)
	Return SetError($iError, $iExtended, Null)
EndFunc   ;==>_WinAPI_SetLastError
