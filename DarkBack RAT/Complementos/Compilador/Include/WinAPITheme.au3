#include-once

#include "APIThemeConstants.au3"
#include "WinAPIInternals.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPITheme.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: uxtheme.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $tagDTTOPTS = 'dword Size;dword Flags;dword clrText;dword clrBorder;dword clrShadow;int TextShadowType;' & $tagPOINT & ';int BorderSize;int FontPropId;int ColorPropId;int StateId;int ApplyOverlay;int GlowSize;ptr DrawTextCallback;lparam lParam'
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_BeginBufferedPaint
; _WinAPI_BufferedPaintClear
; _WinAPI_BufferedPaintInit
; _WinAPI_BufferedPaintSetAlpha
; _WinAPI_BufferedPaintUnInit
; _WinAPI_CloseThemeData
; _WinAPI_DrawThemeBackground
; _WinAPI_DrawThemeEdge
; _WinAPI_DrawThemeIcon
; _WinAPI_DrawThemeParentBackground
; _WinAPI_DrawThemeText
; _WinAPI_DrawThemeTextEx
; _WinAPI_EndBufferedPaint
; _WinAPI_GetBufferedPaintBits
; _WinAPI_GetBufferedPaintDC
; _WinAPI_GetBufferedPaintTargetDC
; _WinAPI_GetBufferedPaintTargetRect
; _WinAPI_GetCurrentThemeName
; _WinAPI_GetThemeAppProperties
; _WinAPI_GetThemeBackgroundContentRect
; _WinAPI_GetThemeBackgroundExtent
; _WinAPI_GetThemeBackgroundRegion
; _WinAPI_GetThemeBitmap
; _WinAPI_GetThemeBool
; _WinAPI_GetThemeColor
; _WinAPI_GetThemeDocumentationProperty
; _WinAPI_GetThemeEnumValue
; _WinAPI_GetThemeFilename
; _WinAPI_GetThemeFont
; _WinAPI_GetThemeInt
; _WinAPI_GetThemeMargins
; _WinAPI_GetThemeMetric
; _WinAPI_GetThemePartSize
; _WinAPI_GetThemePosition
; _WinAPI_GetThemePropertyOrigin
; _WinAPI_GetThemeRect
; _WinAPI_GetThemeString
; _WinAPI_GetThemeSysBool
; _WinAPI_GetThemeSysColor
; _WinAPI_GetThemeSysColorBrush
; _WinAPI_GetThemeSysFont
; _WinAPI_GetThemeSysInt
; _WinAPI_GetThemeSysSize
; _WinAPI_GetThemeSysString
; _WinAPI_GetThemeTextExtent
; _WinAPI_GetThemeTextMetrics
; _WinAPI_GetThemeTransitionDuration
; _WinAPI_GetWindowTheme
; _WinAPI_IsThemeActive
; _WinAPI_IsThemeBackgroundPartiallyTransparent
; _WinAPI_IsThemePartDefined
; _WinAPI_OpenThemeData
; _WinAPI_SetThemeAppProperties
; _WinAPI_SetWindowTheme
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_BeginBufferedPaint($hDC, $tTarget, ByRef $hNewDC, $iFormat = 0, $iFlags = 0, $tExclude = 0, $iAlpha = -1)
	Local Const $tagBP_PAINTPARAMS = 'dword cbSize;dword dwFlags;ptr prcExclude;ptr pBlendFunction'
	Local $tPP = DllStructCreate($tagBP_PAINTPARAMS)

	$hNewDC = 0

	Local $tBF = 0
	If $iAlpha <> -1 Then
		$tBF = DllStructCreate($tagBLENDFUNCTION)
		DllStructSetData($tBF, 1, 0)
		DllStructSetData($tBF, 2, 0)
		DllStructSetData($tBF, 3, $iAlpha)
		DllStructSetData($tBF, 4, 1)
	EndIf

	DllStructSetData($tPP, 1, DllStructGetSize($tPP))
	DllStructSetData($tPP, 2, $iFlags)
	DllStructSetData($tPP, 3, DllStructGetPtr($tExclude))
	DllStructSetData($tPP, 4, DllStructGetPtr($tBF))

	Local $Ret = DllCall('uxtheme.dll', 'handle', 'BeginBufferedPaint', 'handle', $hDC, 'struct*', $tTarget, 'dword', $iFormat, _
			'struct*', $tPP, 'handle*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)

	$hNewDC = $Ret[5]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_BeginBufferedPaint

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_BufferedPaintClear($hBP, $tRECT = 0)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'BufferedPaintClear', 'handle', $hBP, 'struct*', $tRECT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_BufferedPaintClear

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_BufferedPaintInit()
	Local $Ret = DllCall('uxtheme.dll', 'long', 'BufferedPaintInit')
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_BufferedPaintInit

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_BufferedPaintSetAlpha($hBP, $iAlpha = 255, $tRECT = 0)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'BufferedPaintSetAlpha', 'handle', $hBP, 'struct*', $tRECT, 'byte', $iAlpha)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_BufferedPaintSetAlpha

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_BufferedPaintUnInit()
	Local $Ret = DllCall('uxtheme.dll', 'long', 'BufferedPaintUnInit')
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_BufferedPaintUnInit

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CloseThemeData($hTheme)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'CloseThemeData', 'handle', $hTheme)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_CloseThemeData

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DrawThemeBackground($hTheme, $iPartId, $iStateId, $hDC, $tRECT, $tCLIP = 0)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'DrawThemeBackground', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tRECT, 'struct*', $tCLIP)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DrawThemeBackground

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DrawThemeEdge($hTheme, $iPartId, $iStateId, $hDC, $tRECT, $iEdge, $iFlags, $tAREA = 0)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'DrawThemeEdge', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tRECT, 'uint', $iEdge, 'uint', $iFlags, 'struct*', $tAREA)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DrawThemeEdge

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DrawThemeIcon($hTheme, $iPartId, $iStateId, $hDC, $tRECT, $hIL, $iIndex)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'DrawThemeIcon', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tRECT, 'handle', $hIL, 'int', $iIndex)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DrawThemeIcon

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DrawThemeParentBackground($hWnd, $hDC, $tRECT = 0)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'DrawThemeParentBackground', 'hwnd', $hWnd, 'handle', $hDC, 'struct*', $tRECT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DrawThemeParentBackground

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DrawThemeText($hTheme, $iPartId, $iStateId, $hDC, $sText, $tRECT, $iFlags)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'DrawThemeText', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'wstr', $sText, 'int', -1, 'dword', $iFlags, 'dword', 0, 'struct*', $tRECT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DrawThemeText

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DrawThemeTextEx($hTheme, $iPartId, $iStateId, $hDC, $sText, $tRECT, $iFlags, $tDTTOPTS)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'DrawThemeTextEx', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'wstr', $sText, 'int', -1, 'dword', $iFlags, 'struct*', $tRECT, 'struct*', $tDTTOPTS)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DrawThemeTextEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EndBufferedPaint($hBP, $fUpdate = 1)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'EndBufferedPaint', 'handle', $hBP, 'bool', $fUpdate)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_EndBufferedPaint

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetBufferedPaintBits($hBP)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetBufferedPaintBits', 'handle', $hBP, 'ptr*', 0, 'int*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return SetExtended($Ret[3], $Ret[2])
EndFunc   ;==>_WinAPI_GetBufferedPaintBits

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetBufferedPaintDC($hBP)
	Local $Ret = DllCall('uxtheme.dll', 'handle', 'GetBufferedPaintDC', 'handle', $hBP)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetBufferedPaintDC

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetBufferedPaintTargetDC($hBP)
	Local $Ret = DllCall('uxtheme.dll', 'handle', 'GetBufferedPaintTargetDC', 'handle', $hBP)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetBufferedPaintTargetDC

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetBufferedPaintTargetRect($hBP)
	Local $tRECT = DllStructCreate($tagRECT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetBufferedPaintTargetRect', 'handle', $hBP, 'struct*', $tRECT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tRECT
EndFunc   ;==>_WinAPI_GetBufferedPaintTargetRect

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetCurrentThemeName()
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetCurrentThemeName', 'wstr', '', 'int', 4096, 'wstr', '', 'int', 2048, _
			'wstr', '', 'int', 2048)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $Result[3]
	For $i = 0 To 2
		$Result[$i] = $Ret[$i * 2 + 1]
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetCurrentThemeName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeAppProperties()
	Local $Ret = DllCall('uxtheme.dll', 'dword', 'GetThemeAppProperties')
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThemeAppProperties

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeBackgroundContentRect($hTheme, $iPartId, $iStateId, $hDC, $tRECT)
	Local $tAREA = DllStructCreate($tagRECT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeBackgroundContentRect', 'handle', $hTheme, 'handle', $hDC, _
			'int', $iPartId, 'int', $iStateId, 'struct*', $tRECT, 'struct*', $tAREA)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tAREA
EndFunc   ;==>_WinAPI_GetThemeBackgroundContentRect

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeBackgroundExtent($hTheme, $iPartId, $iStateId, $hDC, $tRECT)
	Local $tAREA = DllStructCreate($tagRECT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeBackgroundExtent', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tRECT, 'struct*', $tAREA)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tAREA
EndFunc   ;==>_WinAPI_GetThemeBackgroundExtent

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeBackgroundRegion($hTheme, $iPartId, $iStateId, $hDC, $tRECT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeBackgroundRegion', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tRECT, 'handle*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[6]
EndFunc   ;==>_WinAPI_GetThemeBackgroundRegion

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeBitmap($hTheme, $iPartId, $iStateId, $iPropId, $iFlag = 0x01)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeBitmap', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'ulong', $iFlag, 'handle*', 0)
	If @error Then Return SetError(@error, @extended, -1)
	If $Ret[0] Then Return SetError(10, $Ret[0], -1)

	Return $Ret[6]
EndFunc   ;==>_WinAPI_GetThemeBitmap

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeBool($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeBool', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'bool*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetThemeBool

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeColor($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeColor', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, -1)
	If $Ret[0] Then Return SetError(10, $Ret[0], -1)

	Return __RGB($Ret[5])
EndFunc   ;==>_WinAPI_GetThemeColor

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeDocumentationProperty($sFile, $sProperty)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeDocumentationProperty', 'wstr', $sFile, 'wstr', $sProperty, _
			'wstr', '', 'int', 4096)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetThemeDocumentationProperty

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeEnumValue($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeEnumValue', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'int*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetThemeEnumValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeFilename($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'uint', 'GetThemeFilename', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'wstr', '', 'int', 4096)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetThemeFilename

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeFont($hTheme, $iPartId, $iStateId, $iPropId, $hDC = 0)
	Local $tLOGFONT = DllStructCreate($tagLOGFONT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeFont', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'int', $iPropId, 'struct*', $tLOGFONT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tLOGFONT
EndFunc   ;==>_WinAPI_GetThemeFont

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeInt($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeInt', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'int*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetThemeInt

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeMargins($hTheme, $iPartId, $iStateId, $iPropId, $hDC, $tRECT)
	Local $tMARGINS = DllStructCreate($tagMARGINS)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeMargins', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'int', $iPropId, 'struct*', $tRECT, 'struct*', $tMARGINS)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tMARGINS
EndFunc   ;==>_WinAPI_GetThemeMargins

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeMetric($hTheme, $iPartId, $iStateId, $iPropId, $hDC = 0)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeMetric', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'int', $iPropId, 'int*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[6]
EndFunc   ;==>_WinAPI_GetThemeMetric

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemePartSize($hTheme, $iPartId, $iStateId, $hDC, $tRECT, $iType)
	Local $tSIZE = DllStructCreate($tagSIZE)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemePartSize', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tRECT, 'int', $iType, 'struct*', $tSIZE)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tSIZE
EndFunc   ;==>_WinAPI_GetThemePartSize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemePosition($hTheme, $iPartId, $iStateId, $iPropId)
	Local $tPOINT = DllStructCreate($tagPOINT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemePosition', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'struct*', $tPOINT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tPOINT
EndFunc   ;==>_WinAPI_GetThemePosition

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemePropertyOrigin($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemePropertyOrigin', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'uint*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetThemePropertyOrigin

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeRect($hTheme, $iPartId, $iStateId, $iPropId)
	Local $tRECT = DllStructCreate($tagRECT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeRect', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'struct*', $tRECT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tRECT
EndFunc   ;==>_WinAPI_GetThemeRect

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeString($hTheme, $iPartId, $iStateId, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeString', 'handle', $hTheme, 'int', $iPartId, 'int', $iStateId, _
			'int', $iPropId, 'wstr', '', 'int', 4096)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetThemeString

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysBool($hTheme, $iBoolId)
	Local $Ret = DllCall('uxtheme.dll', 'bool', 'GetThemeSysBool', 'handle', $hTheme, 'int', $iBoolId)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThemeSysBool

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysColor($hTheme, $iColorId)
	Local $Ret = DllCall('uxtheme.dll', 'dword', 'GetThemeSysColor', 'handle', $hTheme, 'int', $iColorId)
	If @error Then Return SetError(@error, @extended, -1)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThemeSysColor

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysColorBrush($hTheme, $iColorId)
	Local $Ret = DllCall('uxtheme.dll', 'handle', 'GetThemeSysColorBrush', 'handle', $hTheme, 'int', $iColorId)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThemeSysColorBrush

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysFont($hTheme, $iFontId)
	Local $tLOGFONT = DllStructCreate($tagLOGFONT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeSysFont', 'handle', $hTheme, 'int', $iFontId, 'struct*', $tLOGFONT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tLOGFONT
EndFunc   ;==>_WinAPI_GetThemeSysFont

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysInt($hTheme, $iIntId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeSysInt', 'handle', $hTheme, 'int', $iIntId, 'int*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetThemeSysInt

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysSize($hTheme, $iSizeId)
	Local $Ret = DllCall('uxtheme.dll', 'int', 'GetThemeSysSize', 'handle', $hTheme, 'int', $iSizeId)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetThemeSysSize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeSysString($hTheme, $iStringId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeSysString', 'handle', $hTheme, 'int', $iStringId, 'wstr', '', 'int', 4096)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetThemeSysString

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeTextExtent($hTheme, $iPartId, $iStateId, $hDC, $sText, $tRECT, $iFlags)
	Local $tAREA = DllStructCreate($tagRECT)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeTextExtent', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'wstr', $sText, 'int', -1, 'dword', $iFlags, 'struct*', $tRECT, 'struct*', $tAREA)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tAREA
EndFunc   ;==>_WinAPI_GetThemeTextExtent

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeTextMetrics($hTheme, $iPartId, $iStateId, $hDC = 0)
	Local $tTEXTMETRIC = DllStructCreate($tagTEXTMETRIC)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeTextMetrics', 'handle', $hTheme, 'handle', $hDC, 'int', $iPartId, _
			'int', $iStateId, 'struct*', $tTEXTMETRIC)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tTEXTMETRIC
EndFunc   ;==>_WinAPI_GetThemeTextMetrics

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetThemeTransitionDuration($hTheme, $iPartId, $iStateIdFrom, $iStateIdTo, $iPropId)
	Local $Ret = DllCall('uxtheme.dll', 'long', 'GetThemeTransitionDuration', 'handle', $hTheme, 'int', $iPartId, _
			'int', $iStateIdFrom, 'int', $iStateIdTo, 'int', $iPropId, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[6]
EndFunc   ;==>_WinAPI_GetThemeTransitionDuration

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetWindowTheme($hWnd)
	Local $Ret = DllCall('uxtheme.dll', 'handle', 'GetWindowTheme', 'hwnd', $hWnd)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetWindowTheme

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsThemeActive()
	Local $Ret = DllCall('uxtheme.dll', 'bool', 'IsThemeActive')
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsThemeActive

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsThemeBackgroundPartiallyTransparent($hTheme, $iPartId, $iStateId)
	Local $Ret = DllCall('uxtheme.dll', 'bool', 'IsThemeBackgroundPartiallyTransparent', 'handle', $hTheme, 'int', $iPartId, _
			'int', $iStateId)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsThemeBackgroundPartiallyTransparent

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsThemePartDefined($hTheme, $iPartId)
	Local $Ret = DllCall('uxtheme.dll', 'int', 'IsThemePartDefined', 'ptr', $hTheme, 'int', $iPartId, 'int', 0)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsThemePartDefined

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_OpenThemeData($hWnd, $sClass)
	Local $Ret = DllCall('uxtheme.dll', 'handle', 'OpenThemeData', 'hwnd', $hWnd, 'wstr', $sClass)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_OpenThemeData

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetThemeAppProperties($iFlags)
	DllCall('uxtheme.dll', 'none', 'SetThemeAppProperties', 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_SetThemeAppProperties

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetWindowTheme($hWnd, $sName = 0, $sList = 0)
	Local $TypeOfName = 'wstr', $TypeOfList = 'wstr'
	If Not IsString($sName) Then
		$TypeOfName = 'ptr'
		$sName = 0
	EndIf
	If Not IsString($sList) Then
		$TypeOfList = 'ptr'
		$sList = 0
	EndIf

	Local $Ret = DllCall('uxtheme.dll', 'long', 'SetWindowTheme', 'hwnd', $hWnd, $TypeOfName, $sName, $TypeOfList, $sList)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_SetWindowTheme

#endregion Public Functions
