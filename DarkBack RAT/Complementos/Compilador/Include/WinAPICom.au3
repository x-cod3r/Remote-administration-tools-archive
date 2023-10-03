#include-once

#include "APIComConstants.au3"
#include "WinAPIInternals.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPICom.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: ole32.dll, oleaut32.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $__WinAPICom_tagGUID = "struct;ulong Data1;ushort Data2;ushort Data3;byte Data4[8];endstruct"
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_CLSIDFromProgID
; _WinAPI_CoInitialize
; _WinAPI_CoTaskMemAlloc
; _WinAPI_CoTaskMemFree
; _WinAPI_CoTaskMemRealloc
; _WinAPI_CoUninitialize
; _WinAPI_CreateGUID
; _WinAPI_CreateStreamOnHGlobal
; _WinAPI_GetHGlobalFromStream
; _WinAPI_ProgIDFromCLSID
; _WinAPI_ReleaseStream
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CLSIDFromProgID($ProgID)
	Local $tGUID = DllStructCreate($__WinAPICom_tagGUID)
	Local $Ret = DllCall('ole32.dll', 'long', 'CLSIDFromProgID', 'wstr', $ProgID, 'struct*', $tGUID)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	$Ret = DllCall('ole32.dll', 'int', 'StringFromGUID2', 'struct*', $tGUID, 'wstr', '', 'int', 39)
	If @error Or Not $Ret[0] Then Return SetError(@error + 20, @extended, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_CLSIDFromProgID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CoInitialize($iFlags = 0)
	Local $Ret = DllCall('ole32.dll', 'long', 'CoInitializeEx', 'ptr', 0, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_CoInitialize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CoTaskMemAlloc($iSize)
	Local $Ret = DllCall('ole32.dll', 'ptr', 'CoTaskMemAlloc', 'uint_ptr', $iSize)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CoTaskMemAlloc

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CoTaskMemFree($pMemory)
	DllCall('ole32.dll', 'none', 'CoTaskMemFree', 'ptr', $pMemory)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_CoTaskMemFree

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CoTaskMemRealloc($pMemory, $iSize)
	Local $Ret = DllCall('ole32.dll', 'ptr', 'CoTaskMemRealloc', 'ptr', $pMemory, 'ulong_ptr', $iSize)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CoTaskMemRealloc

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CoUninitialize()
	DllCall('ole32.dll', 'none', 'CoUninitialize')
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_CoUninitialize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CreateGUID()
	Local $tGUID = DllStructCreate($__WinAPICom_tagGUID)
	Local $Ret = DllCall('ole32.dll', 'long', 'CoCreateGuid', 'struct*', $tGUID)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	$Ret = DllCall('ole32.dll', 'int', 'StringFromGUID2', 'struct*', $tGUID, 'wstr', '', 'int', 65536)
	If @error Or Not $Ret[0] Then Return SetError(@error + 20, @extended, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_CreateGUID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CreateStreamOnHGlobal($hGlobal = 0, $fDeleteOnRelease = 1)
	Local $Ret = DllCall('ole32.dll', 'long', 'CreateStreamOnHGlobal', 'handle', $hGlobal, 'bool', $fDeleteOnRelease, 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_CreateStreamOnHGlobal

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetHGlobalFromStream($pStream)
	Local $Ret = DllCall('ole32.dll', 'uint', 'GetHGlobalFromStream', 'ptr', $pStream, 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetHGlobalFromStream

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ProgIDFromCLSID($CLSID)
	Local $tGUID = DllStructCreate($__WinAPICom_tagGUID)
	Local $Ret = DllCall('ole32.dll', 'uint', 'CLSIDFromString', 'wstr', $CLSID, 'struct*', $tGUID)
	If @error Or $Ret[0] Then Return SetError(@error + 20, @extended, '')
	$Ret = DllCall('ole32.dll', 'uint', 'ProgIDFromCLSID', 'ptr', DllStructGetPtr($tGUID), 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Local $ID = _WinAPI_GetString($Ret[2])
	_WinAPI_CoTaskMemFree($Ret[2])
	Return $ID
EndFunc   ;==>_WinAPI_ProgIDFromCLSID

; #FUNCTION# ====================================================================================================================
; Author.........: Progandy
; Modified.......: Yashied, jpm
; ===============================================================================================================================
Func _WinAPI_ReleaseStream($pStream)
	Local $Ret = DllCall('oleaut32.dll', 'long', 'DispCallFunc', 'ptr', $pStream, 'ulong_ptr', 8 * (1 + @AutoItX64), 'uint', 4, _
			'ushort', 23, 'uint', 0, 'ptr', 0, 'ptr', 0, 'str', '')
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ReleaseStream

#endregion Public Functions
