#include-once

#cs
	Windows 7				6.1
	Windows Server 2008 R2	6.1
	Windows Server 2008		6.0
	Windows Vista			6.0
	Windows Server 2003 R2	5.2
	Windows Server 2003		5.2
	Windows XP				5.1
	Windows 2000			5.0
#ce

;*** Constants
; dwTypeBitMask
Global Const $VER_BUILDNUMBER = 0x0000004
Global Const $VER_MAJORVERSION = 0x0000002
Global Const $VER_MINORVERSION = 0x0000001
Global Const $VER_PLATFORMID = 0x0000008
Global Const $VER_PRODUCT_TYPE = 0x0000080
Global Const $VER_SERVICEPACKMAJOR = 0x0000020
Global Const $VER_SERVICEPACKMINOR = 0x0000010
Global Const $VER_SUITENAME = 0x0000040
; dwConditionMask
Global Const $VER_EQUAL = 1
Global Const $VER_GREATER = 2
Global Const $VER_GREATER_EQUAL = 3
Global Const $VER_LESS = 4
Global Const $VER_LESS_EQUAL = 5
; if dwTypeBitMask is VER_SUITENAME
Global Const $VER_AND = 6
Global Const $VER_OR = 7

Func _OsVersionTest($iTest, $osMajor, $osMinor = 0, $spMajor = 0, $spMinor = 0)
	Local Const $OSVERSIONINFOEXW = "dword dwOSVersionInfoSize;dword dwMajorVersion;dword dwMinorVersion;dword dwBuildNumber;dword dwPlatformId;" & _
									"wchar szCSDVersion[128];ushort wServicePackMajor;ushort wServicePackMinor;ushort wSuiteMask;byte wProductType;byte wReserved"
	Local $dwlConditionalMask = 0
	; initialize structure
	Local $OSVI = DllStructCreate($OSVERSIONINFOEXW)
	DllStructSetData($OSVI, "dwOSVersionInfoSize", DllStructGetSize($OSVI))
	; set data we want to compare
	DllStructSetData($OSVI, "dwMajorVersion", $osMajor)
	DllStructSetData($OSVI, "dwMinorVersion", $osMinor)
	DllStructSetData($OSVI, "wServicePackMajor", $spMajor)
	DllStructSetData($OSVI, "wServicePackMinor", $spMinor)
	; check AutoIt version
	; -1 = version 2 is greater...this is bad, DllCall() int64 return was fixed in 3.3.1.0
	Local $IsBadAutoIt = (__VersionCompare(@AutoItVersion, "3.3.1.0") = -1)
	; initialize and set the mask
	VerSetConditionMask($VER_MAJORVERSION, $iTest, $dwlConditionalMask, $IsBadAutoIt)
	VerSetConditionMask($VER_MINORVERSION, $iTest, $dwlConditionalMask, $IsBadAutoIt)
	VerSetConditionMask($VER_SERVICEPACKMAJOR, $iTest, $dwlConditionalMask, $IsBadAutoIt)
	VerSetConditionMask($VER_SERVICEPACKMINOR, $iTest, $dwlConditionalMask, $IsBadAutoIt)
	; perform test
	Return VerifyVersionInfo(DllStructGetPtr($OSVI), BitOR($VER_MAJORVERSION, $VER_MINORVERSION, $VER_SERVICEPACKMAJOR, $VER_SERVICEPACKMINOR), $dwlConditionalMask)
EndFunc

Func VerSetConditionMask($dwTypeBitMask, $dwConditionMask, ByRef $dwlConditionalMask, $IsBadAutoIt)
	Local $ret = DllCall("kernel32.dll", "uint64", "VerSetConditionMask", "uint64", $dwlConditionalMask, "dword", $dwTypeBitMask, "byte", $dwConditionMask)
	If Not @error Then
		If $IsBadAutoIt Then
			; fix for bad DllCall() int64 return value
			$dwlConditionalMask = _ReOrderULONGLONG($ret[0])
		Else
			$dwlConditionalMask = $ret[0]
		EndIf
	EndIf
EndFunc

Func VerifyVersionInfo($lpVersionInfo, $dwTypeMask, $dwlConditionalMask)
	; dwTypeMask is a BitOR'd combination of the conditions we want to test
	Local $ret = DllCall("kernel32.dll", "int", "VerifyVersionInfoW", "ptr", $lpVersionInfo, "dword", $dwTypeMask, "uint64", $dwlConditionalMask)
	If Not @error Then
		Return $ret[0]
	Else
		Return SetError(@error, 0, 0)
	EndIf
EndFunc

Func _ReOrderULONGLONG($UINT64)
	Local $s_uint64 = DllStructCreate("uint64")
	Local $s_ulonglong = DllStructCreate("ulong;ulong", DllStructGetPtr($s_uint64))
	DllStructSetData($s_uint64, 1, $UINT64)
	Local $val = DllStructGetData($s_ulonglong, 1)
	DllStructSetData($s_ulonglong, 1, DllStructGetData($s_ulonglong, 2))
	DllStructSetData($s_ulonglong, 2, $val)
	Return DllStructGetData($s_uint64, 1)
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: _VersionCompare
; Description ...: Compares two file versions for equality
; Syntax.........: _VersionCompare($sVersion1, $sVersion2)
; Parameters ....: $sVersion1   - IN - The first version
;                  $sVersion2   - IN - The second version
; Return values .: Success      - Following Values:
;                  | 0          - Both versions equal
;                  | 1          - Version 1 greater
;                  |-1          - Version 2 greater
;                  Failure      - @error will be set in the event of a catasrophic error
; Author ........: Valik
; Modified.......:
; Remarks .......: This will try to use a numerical comparison but fall back on a lexicographical comparison.
;                  See @extended for details about which type was performed.
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __VersionCompare($sVersion1, $sVersion2)
	If $sVersion1 = $sVersion2 Then Return 0
	Local $sep = "."
	If StringInStr($sVersion1, $sep) = 0 Then $sep = ","
	Local $aVersion1 = StringSplit($sVersion1, $sep)
	Local $aVersion2 = StringSplit($sVersion2, $sep)
	If UBound($aVersion1) <> UBound($aVersion2) Or UBound($aVersion1) = 0 Then
		; Compare as strings
		SetExtended(1)
		If $sVersion1 > $sVersion2 Then
			Return 1
		ElseIf $sVersion1 < $sVersion2 Then
			Return -1
		EndIf
	Else
		For $i = 1 To UBound($aVersion1) - 1
			; Compare this segment as numbers
			If StringIsDigit($aVersion1[$i]) And StringIsDigit($aVersion2[$i]) Then
				If Number($aVersion1[$i]) > Number($aVersion2[$i]) Then
					Return 1
				ElseIf Number($aVersion1[$i]) < Number($aVersion2[$i]) Then
					Return -1
				EndIf
			Else ; Compare the segment as strings
				SetExtended(1)
				If $aVersion1[$i] > $aVersion2[$i] Then
					Return 1
				ElseIf $aVersion1[$i] < $aVersion2[$i] Then
					Return -1
				EndIf
			EndIf
		Next
	EndIf
	; This point should never be reached
	Return SetError(2, 0, 0)
EndFunc   ;==>_VersionCompare