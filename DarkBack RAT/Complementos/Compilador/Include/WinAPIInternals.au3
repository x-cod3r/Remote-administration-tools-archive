#include-once

#include "StructureConstants.au3"
#include "WinAPIError.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIxxx.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: kernel32.dll, ntdll.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
Global $__Enum, $__Ext = 0
Global $__hHeap = 0, $__iRGBMode = 1
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $tagOSVERSIONINFO = 'struct;dword OSVersionInfoSize;dword MajorVersion;dword MinorVersion;dword BuildNumber;dword PlatformId;wchar CSDVersion[128];endstruct'

Global Const $__WINVER = __WINVER()
Global Const $__UDFVER = 0x0308
; ===============================================================================================================================

#region Functions list

; #CURRENT# =====================================================================================================================
; Doc in WinAPIMisc
; _WinAPI_ArrayToStruct
; _WinAPI_CreateMargins
; _WinAPI_CreatePoint
; _WinAPI_CreateRect
; _WinAPI_CreateRectEx
; _WinAPI_CreateSize
; _WinAPI_GetString
; _WinAPI_StrLen
; _WinAPI_StructToArray
;
; Doc in WinAPIDiag
; _WinAPI_FatalExit
;
; Doc in WinAPIGdi
; _WinAPI_GetBitmapDimension
; _WinAPI_SwitchColor
;
; Doc in WinAPISys
; _WinAPI_IsBadReadPtr
; _WinAPI_IsBadWritePtr
; _WinAPI_MoveMemory
; _WinAPI_ZeroMemory
;
; Doc in WinAPIProc
; _WinAPI_IsWow64Process
; _WinAPI_PathIsDirectory
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; __CheckErrorArrayBounds
; __CheckErrorCloseHandle
; __DLL
; __EnumWindowsProc
; __FatalExit
; __HeapAlloc
; __HeapFree
; __HeapReAlloc
; __HeapSize
; __HeapValidate
; __Iif
; __Inc
; __Init
; __RGB
; __WINVER()
; ===============================================================================================================================

#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ArrayToStruct(Const ByRef $aData, $iStart = 0, $iEnd = -1)
	If __CheckErrorArrayBounds($aData, $iStart, $iEnd) Then Return SetError(@error + 10, @extended, 0)

	Local $Struct = ''
	For $i = $iStart To $iEnd
		$Struct &= 'wchar[' & (StringLen($aData[$i]) + 1) & '];'
	Next
	Local $tData = DllStructCreate($Struct & 'wchar[1]')

	Local $Count = 1
	For $i = $iStart To $iEnd
		DllStructSetData($tData, $Count, $aData[$i])
		$Count += 1
	Next
	DllStructSetData($tData, $Count, ChrW(0))
	Return $tData
EndFunc   ;==>_WinAPI_ArrayToStruct

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CreateMargins($iLeftWidth, $iRightWidth, $iTopHeight, $iBottomHeight)
	Local $tMARGINS = DllStructCreate($tagMARGINS)

	DllStructSetData($tMARGINS, 1, $iLeftWidth)
	DllStructSetData($tMARGINS, 2, $iRightWidth)
	DllStructSetData($tMARGINS, 3, $iTopHeight)
	DllStructSetData($tMARGINS, 4, $iBottomHeight)

	Return $tMARGINS
EndFunc   ;==>_WinAPI_CreateMargins

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_CreatePoint($iX, $iY)
	Local $tPOINT = DllStructCreate($tagPOINT)
	DllStructSetData($tPOINT, 1, $iX)
	DllStructSetData($tPOINT, 2, $iY)

	Return $tPOINT
EndFunc   ;==>_WinAPI_CreatePoint

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_CreateRect($iLeft, $iTop, $iRight, $iBottom)
	Local $tRECT = DllStructCreate($tagRECT)
	DllStructSetData($tRECT, 1, $iLeft)
	DllStructSetData($tRECT, 2, $iTop)
	DllStructSetData($tRECT, 3, $iRight)
	DllStructSetData($tRECT, 4, $iBottom)

	Return $tRECT
EndFunc   ;==>_WinAPI_CreateRect

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_CreateRectEx($iX, $iY, $iWidth, $iHeight)
	Local $tRECT = DllStructCreate($tagRECT)
	DllStructSetData($tRECT, 1, $iX)
	DllStructSetData($tRECT, 2, $iY)
	DllStructSetData($tRECT, 3, $iX + $iWidth)
	DllStructSetData($tRECT, 4, $iY + $iHeight)

	Return $tRECT
EndFunc   ;==>_WinAPI_CreateRectEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_CreateSize($iWidth, $iHeight)
	Local $tSIZE = DllStructCreate($tagSIZE)
	DllStructSetData($tSIZE, 1, $iWidth)
	DllStructSetData($tSIZE, 2, $iHeight)

	Return $tSIZE
EndFunc   ;==>_WinAPI_CreateSize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FatalExit($iCode)
	DllCall('kernel32.dll', 'none', 'FatalExit', 'int', $iCode)
	If @error Then Return SetError(@error, @extended)
EndFunc   ;==>_WinAPI_FatalExit

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetBitmapDimension($hBitmap)
	Local Const $tagBITMAP = 'struct;long bmType;long bmWidth;long bmHeight;long bmWidthBytes;ushort bmPlanes;ushort bmBitsPixel;ptr bmBits;endstruct'
	Local $tObj = DllStructCreate($tagBITMAP)
	Local $Ret = DllCall('gdi32.dll', 'int', 'GetObject', 'handle', $hBitmap, 'int', DllStructGetSize($tObj), 'struct*', $tObj)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Return _WinAPI_CreateSize(DllStructGetData($tObj, 'bmWidth'), DllStructGetData($tObj, 'bmHeight'))
EndFunc   ;==>_WinAPI_GetBitmapDimension

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetString($pString, $fUnicode = 1)
	Local $Length = _WinAPI_StrLen($pString, $fUnicode)
	If @error Or Not $Length Then Return SetError(@error + 10, @extended, '')

	Local $tString = DllStructCreate(__Iif($fUnicode, 'wchar', 'char') & '[' & ($Length + 1) & ']', $pString)
	If @error Then Return SetError(@error, @extended, '')

	Return SetExtended($Length, DllStructGetData($tString, 1))
EndFunc   ;==>_WinAPI_GetString

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsBadReadPtr($pAddress, $iLength)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'IsBadReadPtr', 'ptr', $pAddress, 'uint_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsBadReadPtr

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsBadWritePtr($pAddress, $iLength)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'IsBadWritePtr', 'ptr', $pAddress, 'uint_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsBadWritePtr

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsWow64Process($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000400, 0x00001000), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, False)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'IsWow64Process', 'handle', $hProcess[0], 'bool*', 0)
	If __CheckErrorCloseHandle($Ret, $hProcess[0]) Then Return SetError(@error, @extended, False)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_IsWow64Process

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_MoveMemory($pDestination, $pSource, $iLength)
	If _WinAPI_IsBadReadPtr($pSource, $iLength) Then Return SetError(10, @extended, 0)
	If _WinAPI_IsBadWritePtr($pDestination, $iLength) Then Return SetError(11, @extended, 0)

	DllCall('ntdll.dll', 'none', 'RtlMoveMemory', 'ptr', $pDestination, 'ptr', $pSource, 'ulong_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_MoveMemory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsDirectory($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsDirectoryW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_StrLen($pString, $fUnicode = 1)
	Local $W = ''
	If $fUnicode Then $W = 'W'

	Local $Ret = DllCall('kernel32.dll', 'int', 'lstrlen' & $W, 'ptr', $pString)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_StrLen

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_StructToArray(ByRef $tStruct, $iItems = 0)
	Local $Size = 2 * Floor(DllStructGetSize($tStruct) / 2)
	Local $pStruct = DllStructGetPtr($tStruct)

	If Not $Size Or Not $pStruct Then Return SetError(1, 0, 0)

	Local $tData, $Length, $Offset = 0
	Local $Result[101] = [0]

	While 1
		$Length = _WinAPI_StrLen($pStruct + $Offset)
		If Not $Length Then
			ExitLoop
		EndIf
		If 2 * (1 + $Length) + $Offset > $Size Then Return SetError(3, 0, 0)
		$tData = DllStructCreate('wchar[' & (1 + $Length) & ']', $pStruct + $Offset)
		If @error Then Return SetError(@error + 10, 0, 0)
		__Inc($Result)
		$Result[$Result[0]] = DllStructGetData($tData, 1)
		If $Result[0] = $iItems Then
			ExitLoop
		EndIf
		$Offset += 2 * (1 + $Length)
		If $Offset >= $Size Then Return SetError(3, 0, 0)
	WEnd
	If Not $Result[0] Then Return SetError(2, 0, 0)

	__Inc($Result, -1)
	Return $Result
EndFunc   ;==>_WinAPI_StructToArray

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_SwitchColor($iColor)
	If $iColor = -1 Then Return $iColor
	Return BitOR(BitAND($iColor, 0x00FF00), BitShift(BitAND($iColor, 0x0000FF), -16), BitShift(BitAND($iColor, 0xFF0000), 16))
EndFunc   ;==>_WinAPI_SwitchColor

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_ZeroMemory($pMemory, $iLength)
	If _WinAPI_IsBadWritePtr($pMemory, $iLength) Then Return SetError(11, @extended, 0)

	DllCall('ntdll.dll', 'none', 'RtlZeroMemory', 'ptr', $pMemory, 'ulong_ptr', $iLength)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_ZeroMemory

#endregion Public Functions

#region Internal Functions

Func __CheckErrorArrayBounds(Const ByRef $aData, ByRef $iStart, ByRef $iEnd, $nDim = 1, $iDim = 0)
	; Bounds checking
	If Not IsArray($aData) Then Return SetError(1, 0, 1)
	If UBound($aData, $iDim) <> $nDim Then Return SetError(2, 0, 1)

	If $iStart < 0 Then $iStart = 0

	Local $iUBound = UBound($aData) - 1
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound

	If $iStart > $iEnd Then Return SetError(4, 0, 1)

	Return 0
EndFunc   ;==>__CheckErrorArrayBounds

Func __CheckErrorCloseHandle($aRet, $hFile, $bLastError = 0, $curErr = @error, $curExt = @extended)
	If Not $curErr And Not $aRet[0] Then $curErr = 10
	Local $iLastError = _WinAPI_GetLastError()
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
	If $curErr Then _WinAPI_SetLastError($iLastError)
	If $bLastError Then $curExt = $iLastError
	Return SetError($curErr, $curExt, $curErr)
EndFunc   ;==>__CheckErrorCloseHandle

Func __DLL($sPath, $fPin = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetModuleHandleExW', 'dword', __Iif($fPin, 0x0001, 0x0002), "wstr", $sPath, 'ptr*', 0)
	If Not $Ret[3] Then
		Local $aResult = DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sPath)
		If Not $aResult[0] Then Return 0
	EndIf
	Return 1
EndFunc   ;==>__DLL

Func __EnumWindowsProc($hWnd, $fVisible)
	Local $aResult
	If ($fVisible) Then
		$aResult = DllCall("user32.dll", "bool", "IsWindowVisible", "hwnd", $hWnd)
		If Not $aResult[0] Then
			Return 1
		EndIf
	EndIf
	__Inc($__Enum)
	$__Enum[$__Enum[0][0]][0] = $hWnd
	$aResult = DllCall("user32.dll", "int", "GetClassNameW", "hwnd", $hWnd, "wstr", "", "int", 4096)
	$__Enum[$__Enum[0][0]][1] = $aResult[2]
	Return 1
EndFunc   ;==>__EnumWindowsProc

Func __FatalExit($iCode, $sText = '')
	If $sText Then MsgBox(0x00040010, 'AutoIt', $sText)
	_WinAPI_FatalExit($iCode)
EndFunc   ;==>__FatalExit

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __HeapAlloc
; Description ...:
; Syntax ........: __HeapAlloc($iSize[, $fAbort = 0])
; Parameters ....: $iSize               - An integer value.
;                  $fAbort              - [optional] Abort the script if error. Default is 0.
; Return values .: Success - a pointer to the allocated memory block
;                  Failure - Set the @error flag to 30+
; Author ........: Yashied
; Modified ......: jpm
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ HeapAlloc
; Example .......:
; ===============================================================================================================================
Func __HeapAlloc($iSize, $fAbort = 0)
	Local $Ret
	If Not $__hHeap Then
		$Ret = DllCall('kernel32.dll', 'handle', 'HeapCreate', 'dword', 0, 'ulong_ptr', 0, 'ulong_ptr', 0)
		If @error Or Not $Ret[0] Then __FatalExit(1, 'Error allocating memory.')
		$__hHeap = $Ret[0]
	EndIf

	$Ret = DllCall('kernel32.dll', 'ptr', 'HeapAlloc', 'handle', $__hHeap, 'dword', 0x00000008, 'ulong_ptr', $iSize) ; HEAP_ZERO_MEMORY
	If @error Or Not $Ret[0] Then
		If $fAbort Then __FatalExit(1, 'Error allocating memory.')
		Return SetError(@error + 30, @extended, 0)
	EndIf
	Return $Ret[0]
EndFunc   ;==>__HeapAlloc

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __HeapFree
; Description ...:
; Syntax ........: __HeapFree(Byref $pMemory[, $fCheck = 0])
; Parameters ....: $pMemory             - [in/out] A pointer value.
;                  $fCheck              - [optional] Check valid pointer. Default is 0  (see remarks).
; Return values .: Success - 1.
;                  Failure - Set the @error flag to 1 to 9 or 40+
; Author ........: Yashied
; Modified ......: jpm
; Remarks .......: @error and @extended are preserved when return if no error
; Related .......:
; Link ..........: @@MsdnLink@@ HeapFree
; Example .......: No
; ===============================================================================================================================
Func __HeapFree(ByRef $pMemory, $fCheck = 0, $curErr = @error, $curExt = @extended)
	If $fCheck And (Not __HeapValidate($pMemory)) Then Return SetError(@error, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'int', 'HeapFree', 'ptr', $__hHeap, 'dword', 0, 'ptr', $pMemory)
	If @error Or Not $Ret[0] Then Return SetError(@error + 40, @extended, 0)

	$pMemory = 0
	Return SetError($curErr, $curExt, 1)
EndFunc   ;==>__HeapFree

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __HeapReAlloc
; Description ...:
; Syntax ........: __HeapReAlloc($pMemory, $iSize[, $fAmount = 0[, $fAbort = 0]])
; Parameters ....: $pMemory             - A pointer value.
;                  $iSize               - An integer value.
;                  $fAmount             - [optional] A boolean value. Default is 0.
;                  $fAbort              - [optional] A boolean value. Default is 0.
; Return values .: Success -  a pointer to the allocated memory bloc
;                  Failure - 0 and sets the @error flag to 1 to 20+ or 30+ if no previous allocation
; Author ........: Yashied
; Modified ......: jpm
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ HeapReAlloc
; Example .......: No
; ===============================================================================================================================
Func __HeapReAlloc($pMemory, $iSize, $fAmount = 0, $fAbort = 0)
	Local $Ret
	If __HeapValidate($pMemory) Then
		If $fAmount And (__HeapSize($pMemory) >= $iSize) Then Return SetExtended(1, Ptr($pMemory))

		$Ret = DllCall('kernel32.dll', 'ptr', 'HeapReAlloc', 'handle', $__hHeap, 'dword', 0x00000008, 'ptr', $pMemory, _
				'ulong_ptr', $iSize) ; HEAP_ZERO_MEMORY
		If @error Or Not $Ret[0] Then
			If $fAbort Then __FatalExit(1, 'Error allocating memory.')
			Return SetError(@error + 20, @extended, Ptr($pMemory))
		EndIf
		$Ret = $Ret[0]
	Else
		$Ret = __HeapAlloc($iSize, $fAbort)
		If @error Then Return SetError(@error, @extended, 0)
	EndIf
	Return $Ret
EndFunc   ;==>__HeapReAlloc

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __HeapSize
; Description ...:
; Syntax ........: __HeapSize($pMemory[, $fCheck = 0])
; Parameters ....: $pMemory             - A pointer value.
;                  $fCheck              - [optional] A boolean value. Default is 0.
; Return values .: Success - the requested size of the allocated memory block, in bytes.
;                  Failure - 0 and sets the @error flag to 1 to 9 or 50+
; Modified ......: jpm
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ HeapSize
; Example .......:
; ===============================================================================================================================
Func __HeapSize($pMemory, $fCheck = 0)
	If $fCheck And (Not __HeapValidate($pMemory)) Then Return SetError(@error, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'ulong_ptr', 'HeapSize', 'handle', $__hHeap, 'dword', 0, 'ptr', $pMemory)
	If @error Or ($Ret[0] = Ptr(-1)) Then Return SetError(@error + 50, @extended, 0)
	Return $Ret[0]
EndFunc   ;==>__HeapSize

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __HeapValidate
; Description ...:
; Syntax ........: __HeapValidate($pMemory)
; Parameters ....: $pMemory             - A pointer value.
; Return values .: Success - True.
;                  Failure - False and sets the @error flag to 1 to 9.
; Author ........: Yashied
; Modified ......: jpm
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ HeapValidate
; Example .......:
; ===============================================================================================================================
Func __HeapValidate($pMemory)
	If (Not $__hHeap) Or (Not Ptr($pMemory)) Then Return SetError(9, 0, False)

	Local $Ret = DllCall('kernel32.dll', 'int', 'HeapValidate', 'handle', $__hHeap, 'dword', 0, 'ptr', $pMemory)
	If @error Then Return SetError(@error, @extended, False)
	Return $Ret[0]
EndFunc   ;==>__HeapValidate

Func __Inc(ByRef $aData, $iIncrement = 100)
	Select
		Case UBound($aData, 2)
			If $iIncrement < 0 Then
				ReDim $aData[$aData[0][0] + 1][UBound($aData, 2)]
			Else
				$aData[0][0] += 1
				If $aData[0][0] > UBound($aData) - 1 Then
					ReDim $aData[$aData[0][0] + $iIncrement][UBound($aData, 2)]
				EndIf
			EndIf
		Case UBound($aData, 1)
			If $iIncrement < 0 Then
				ReDim $aData[$aData[0] + 1]
			Else
				$aData[0] += 1
				If $aData[0] > UBound($aData) - 1 Then
					ReDim $aData[$aData[0] + $iIncrement]
				EndIf
			EndIf
		Case Else
			Return 0
	EndSelect
	Return 1
EndFunc   ;==>__Inc

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __Iif
; Description ...:
; Syntax ........: __Iif($fTest, $iTrue, $iFalse)
; Parameters ....: $fTest               - A boolean value.
;                  $vTrue               - An integer value.
;                  $vFalse              - An integer value.
; Return values .: depending $fTest : $vTrue if True  Or $vFalse is False
; Author ........: Yashied
; Modified ......: Jpm
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __Iif($fTest, $vTrue, $vFalse)
	If $fTest Then
		Return $vTrue
	Else
		Return $vFalse
	EndIf
EndFunc   ;==>__Iif

Func __Init($bData)
	Local $Length = BinaryLen($bData)
	Local $Ret = DllCall('kernel32.dll', 'ptr', 'VirtualAlloc', 'ptr', 0, 'ulong_ptr', $Length, 'dword', 0x00001000, 'dword', 0x00000040)
	If @error Or Not $Ret[0] Then __FatalExit(1, 'Error allocating memory.')
	Local $tData = DllStructCreate('byte[' & $Length & "]", $Ret[0])
	DllStructSetData($tData, 1, $bData)
	Return $Ret[0]
EndFunc   ;==>__Init

Func __RGB($iColor)
	If $__iRGBMode Then
		$iColor = _WinAPI_SwitchColor($iColor)
	EndIf
	Return $iColor
EndFunc   ;==>__RGB

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __WINVER
; Description ...: Retrieves version of the current operating system
; Syntax.........: __WINVER ( )
; Parameters ....: none
; Return values .: Returns the binary version of the current OS.
;                            0x0603 - Windows 8.1
;                            0x0602 - Windows 8 / Windows Server 2012
;                            0x0601 - Windows 7 / Windows Server 2008 R2
;                            0x0600 - Windows Vista / Windows Server 2008
;                            0x0502 - Windows XP 64-Bit Edition / Windows Server 2003 / Windows Server 2003 R2
;                            0x0501 - Windows XP
; Author ........: Yashield
; Modified.......:
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __WINVER()
	Local $tOSVI = DllStructCreate($tagOSVERSIONINFO)
	DllStructSetData($tOSVI, 1, DllStructGetSize($tOSVI))

	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetVersionExW', 'struct*', $tOSVI)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	Return BitOR(BitShift(DllStructGetData($tOSVI, 2), -8), DllStructGetData($tOSVI, 3))
EndFunc   ;==>__WINVER

#endregion Internal Functions
