#include-once

#include "ScrollbarsConstants.au3"
#include "StructureConstants.au3"

; #INDEX# =======================================================================================================================
; Title .........: ScrollBar
; AutoIt Version : 3.3.7.20++
; Language ......: English
; Description ...: Functions that assist with ScrollBar management.
;                  A scroll bar consists of a shaded shaft with an arrow button at each end and a scroll box (sometimes called a thumb)
;                  between the arrow buttons. A scroll bar represents the overall length or width of a data object in a window's client
;                  area, the scroll box represents the portion of the object that is visible in the client area. The position of the
;                  scroll box changes whenever the user scrolls a data object to display a different portion of it. The system also adjusts
;                  the size of a scroll bar's scroll box so that it indicates what portion of the entire data object is currently visible
;                  in the window. If most of the object is visible, the scroll box occupies most of the scroll bar shaft. Similarly,
;                  if only a small portion of the object is visible, the scroll box occupies a small part of the scroll bar shaft.
; Author(s) .....: Gary Frost
; Dll(s) ........: user32.dll, gdi32.dll
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
; 0 = hwnd;1 = xClientMax;2 cxChar;3 = cyChar;4 cxClient;5 = cyClient,6 = iHMax;7 = iVMax
Global $aSB_WindowInfo[1][8]
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _GUIScrollBars_EnableScrollBar
; _GUIScrollBars_GetScrollBarInfoEx
; _GUIScrollBars_GetScrollBarRect
; _GUIScrollBars_GetScrollBarRGState
; _GUIScrollBars_GetScrollBarXYLineButton
; _GUIScrollBars_GetScrollBarXYThumbTop
; _GUIScrollBars_GetScrollBarXYThumbBottom
; _GUIScrollBars_GetScrollInfo
; _GUIScrollBars_GetScrollInfoEx
; _GUIScrollBars_GetScrollInfoPage
; _GUIScrollBars_GetScrollInfoPos
; _GUIScrollBars_GetScrollInfoMin
; _GUIScrollBars_GetScrollInfoMax
; _GUIScrollBars_GetScrollInfoTrackPos
; _GUIScrollBars_GetScrollPos
; _GUIScrollBars_GetScrollRange
; _GUIScrollBars_Init
; _GUIScrollBars_ScrollWindow
; _GUIScrollBars_SetScrollInfo
; _GUIScrollBars_SetScrollInfoMin
; _GUIScrollBars_SetScrollInfoMax
; _GUIScrollBars_SetScrollInfoPage
; _GUIScrollBars_SetScrollInfoPos
; _GUIScrollBars_SetScrollRange
; _GUIScrollBars_ShowScrollBar
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_EnableScrollBar($hWnd, $wSBflags = $SB_BOTH, $wArrows = $ESB_ENABLE_BOTH)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, False)
	Local $aResult = DllCall("user32.dll", "bool", "EnableScrollBar", "hwnd", $hWnd, "uint", $wSBflags, "uint", $wArrows)
	If @error Then Return SetError(@error, @extended, False)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_EnableScrollBar

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollBarInfoEx($hWnd, $idObject)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, 0)
	Local $tSCROLLBARINFO = DllStructCreate($tagSCROLLBARINFO)
	DllStructSetData($tSCROLLBARINFO, "cbSize", DllStructGetSize($tSCROLLBARINFO))
	Local $aResult = DllCall("user32.dll", "bool", "GetScrollBarInfo", "hwnd", $hWnd, "long", $idObject, "struct*", $tSCROLLBARINFO)
	If @error Then Return SetError(@error, @extended, 0)
	Return SetExtended($aResult[0], $tSCROLLBARINFO)
EndFunc   ;==>_GUIScrollBars_GetScrollBarInfoEx

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollBarRect($hWnd, $idObject)
	Local $aRect[4]
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, 0)
	Local $tSCROLLBARINFO = _GUIScrollBars_GetScrollBarInfoEx($hWnd, $idObject)
	If @error Then Return SetError(@error, @extended, 0)
	$aRect[0] = DllStructGetData($tSCROLLBARINFO, "Left")
	$aRect[1] = DllStructGetData($tSCROLLBARINFO, "Top")
	$aRect[2] = DllStructGetData($tSCROLLBARINFO, "Right")
	$aRect[3] = DllStructGetData($tSCROLLBARINFO, "Bottom")
	Return $aRect
EndFunc   ;==>_GUIScrollBars_GetScrollBarRect

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollBarRGState($hWnd, $idObject)
	Local $aRGState[6]
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, 0)
	Local $tSCROLLBARINFO = _GUIScrollBars_GetScrollBarInfoEx($hWnd, $idObject)
	If @error Then Return SetError(@error, @extended, 0)
	For $x = 0 To 5
		$aRGState[$x] = DllStructGetData($tSCROLLBARINFO, "rgstate", $x + 1)
	Next
	Return $aRGState
EndFunc   ;==>_GUIScrollBars_GetScrollBarRGState

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollBarXYLineButton($hWnd, $idObject)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLBARINFO = _GUIScrollBars_GetScrollBarInfoEx($hWnd, $idObject)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLBARINFO, "dxyLineButton")
EndFunc   ;==>_GUIScrollBars_GetScrollBarXYLineButton

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollBarXYThumbTop($hWnd, $idObject)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLBARINFO = _GUIScrollBars_GetScrollBarInfoEx($hWnd, $idObject)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLBARINFO, "xyThumbTop")
EndFunc   ;==>_GUIScrollBars_GetScrollBarXYThumbTop

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollBarXYThumbBottom($hWnd, $idObject)
	If Not IsHWnd($hWnd) Then Return SetError(-1, -1, -1)
	Local $tSCROLLBARINFO = _GUIScrollBars_GetScrollBarInfoEx($hWnd, $idObject)
	If @error Then Return SetError(-1, -1, -1)
	Return DllStructGetData($tSCROLLBARINFO, "xyThumbBottom")
EndFunc   ;==>_GUIScrollBars_GetScrollBarXYThumbBottom

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfo($hWnd, $fnBar, ByRef $tSCROLLINFO)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, False)
	Local $aResult = DllCall("user32.dll", "bool", "GetScrollInfo", "hwnd", $hWnd, "int", $fnBar, "struct*", $tSCROLLINFO)
	If @error Then Return SetError(@error, @extended, False)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_GetScrollInfo

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, 0)
	Local $tSCROLLINFO = DllStructCreate($tagSCROLLINFO)
	DllStructSetData($tSCROLLINFO, "cbSize", DllStructGetSize($tSCROLLINFO))
	DllStructSetData($tSCROLLINFO, "fMask", $SIF_ALL)
	If Not _GUIScrollBars_GetScrollInfo($hWnd, $fnBar, $tSCROLLINFO) Then Return SetError(@error, @extended, 0)
	Return $tSCROLLINFO
EndFunc   ;==>_GUIScrollBars_GetScrollInfoEx

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfoPage($hWnd, $fnBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLINFO, "nPage")
EndFunc   ;==>_GUIScrollBars_GetScrollInfoPage

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfoPos($hWnd, $fnBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLINFO, "nPos")
EndFunc   ;==>_GUIScrollBars_GetScrollInfoPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfoMin($hWnd, $fnBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLINFO, "nMin")
EndFunc   ;==>_GUIScrollBars_GetScrollInfoMin

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfoMax($hWnd, $fnBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLINFO, "nMax")
EndFunc   ;==>_GUIScrollBars_GetScrollInfoMax

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollInfoTrackPos($hWnd, $fnBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	If @error Then Return SetError(@error, @extended, -1)
	Return DllStructGetData($tSCROLLINFO, "nTrackPos")
EndFunc   ;==>_GUIScrollBars_GetScrollInfoTrackPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollPos($hWnd, $nBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $aResult = DllCall("user32.dll", "int", "GetScrollPos", "hwnd", $hWnd, "int", $nBar)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_GetScrollPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_GetScrollRange($hWnd, $nBar)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $aResult = DllCall("user32.dll", "bool", "GetScrollRange", "hwnd", $hWnd, "int", $nBar, "int*", 0, "int*", 0)
	If @error Then Return SetError(@error, @extended, -1)
	Local $Min_Max[2]
	$Min_Max[0] = $aResult[3]
	$Min_Max[1] = $aResult[4]
	Return SetExtended($aResult[0], $Min_Max)
EndFunc   ;==>_GUIScrollBars_GetScrollRange

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_Init($hWnd, $iHMax = -1, $ivMax = -1)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, 0)
	If $aSB_WindowInfo[0][0] <> 0 Then ReDim $aSB_WindowInfo[UBound($aSB_WindowInfo) + 1][8]

	Local $tSCROLLINFO = DllStructCreate($tagSCROLLINFO)
	Local $tRect = DllStructCreate($tagRECT)

	Local $index = UBound($aSB_WindowInfo) - 1
	Local $iError, $iExtended

	$aSB_WindowInfo[$index][0] = $hWnd
	$aSB_WindowInfo[$index][1] = $iHMax
	$aSB_WindowInfo[$index][6] = $iHMax
	$aSB_WindowInfo[$index][7] = $ivMax
	If $ivMax = -1 Then $aSB_WindowInfo[$index][7] = 27

	Local $hdc = DllCall("user32.dll", "handle", "GetDC", "hwnd", $hWnd)
	If @error Then Return SetError(@error, @extended)
	$hdc = $hdc[0]

	Local $tTEXTMETRIC = DllStructCreate($tagTEXTMETRIC)

	DllStructSetData($tSCROLLINFO, "cbSize", DllStructGetSize($tSCROLLINFO))

	DllCall("gdi32.dll", "bool", "GetTextMetricsW", "handle", $hdc, "struct*", $tTEXTMETRIC)
	If @error Then
		$iError = @error
		$iExtended = @extended
	EndIf

	DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hdc)
	; Skip @error test as the results don't matter.

	; Test previous error from GetTextMetrics call.
	If $iError Then Return SetError($iError, $iExtended)

	Local $xUpper, $xChar = DllStructGetData($tTEXTMETRIC, "tmAveCharWidth")
	If BitAND(DllStructGetData($tTEXTMETRIC, "tmPitchAndFamily"), 1) Then
		$xUpper = 3 * $xChar / 2
	Else
		$xUpper = 2 * $xChar / 2
	EndIf

	Local $yChar = DllStructGetData($tTEXTMETRIC, "tmHeight") + DllStructGetData($tTEXTMETRIC, "tmExternalLeading")

	If $iHMax = -1 Then $aSB_WindowInfo[$index][1] = 48 * $xChar + 12 * $xUpper
	$aSB_WindowInfo[$index][2] = $xChar
	$aSB_WindowInfo[$index][3] = $yChar

	_GUIScrollBars_ShowScrollBar($hWnd, $SB_HORZ, False)
	_GUIScrollBars_ShowScrollBar($hWnd, $SB_VERT, False)
	_GUIScrollBars_ShowScrollBar($hWnd, $SB_HORZ)
	_GUIScrollBars_ShowScrollBar($hWnd, $SB_VERT)

	DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hWnd, "struct*", $tRect)
	If @error Then Return SetError(@error, @extended)

	Local $xClient = DllStructGetData($tRect, "Right") - DllStructGetData($tRect, "Left")
	Local $yClient = DllStructGetData($tRect, "Bottom") - DllStructGetData($tRect, "Top")
	$aSB_WindowInfo[$index][4] = $xClient
	$aSB_WindowInfo[$index][5] = $yClient

	$tSCROLLINFO = DllStructCreate($tagSCROLLINFO)

	; Set the vertical scrolling range and page size
	DllStructSetData($tSCROLLINFO, "fMask", BitOR($SIF_RANGE, $SIF_PAGE))
	DllStructSetData($tSCROLLINFO, "nMin", 0)
	DllStructSetData($tSCROLLINFO, "nMax", $aSB_WindowInfo[$index][7])
	DllStructSetData($tSCROLLINFO, "nPage", $yClient / $yChar)
	_GUIScrollBars_SetScrollInfo($hWnd, $SB_VERT, $tSCROLLINFO)

	; Set the horizontal scrolling range and page size
	DllStructSetData($tSCROLLINFO, "fMask", BitOR($SIF_RANGE, $SIF_PAGE))
	DllStructSetData($tSCROLLINFO, "nMin", 0)
	DllStructSetData($tSCROLLINFO, "nMax", 2 + $aSB_WindowInfo[$index][1] / $xChar)
	DllStructSetData($tSCROLLINFO, "nPage", $xClient / $xChar)
	_GUIScrollBars_SetScrollInfo($hWnd, $SB_HORZ, $tSCROLLINFO)
EndFunc   ;==>_GUIScrollBars_Init

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_ScrollWindow($hWnd, $iXAmount, $iYAmount)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, False)
	Local $aResult = DllCall("user32.dll", "bool", "ScrollWindow", "hwnd", $hWnd, "int", $iXAmount, "int", $iYAmount, "ptr", 0, "ptr", 0)
	If @error Then Return SetError(@error, @extended, False)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_ScrollWindow

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_SetScrollInfo($hWnd, $fnBar, $tSCROLLINFO, $fRedraw = True)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	DllStructSetData($tSCROLLINFO, "cbSize", DllStructGetSize($tSCROLLINFO))
	Local $aResult = DllCall("user32.dll", "int", "SetScrollInfo", "hwnd", $hWnd, "int", $fnBar, "struct*", $tSCROLLINFO, "bool", $fRedraw)
	If @error Then Return SetError(@error, @extended, -1)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_SetScrollInfo

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_SetScrollInfoMin($hWnd, $fnBar, $nMin)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, False)
	Local $aRange = _GUIScrollBars_GetScrollRange($hWnd, $fnBar)
	_GUIScrollBars_SetScrollRange($hWnd, $fnBar, $nMin, $aRange[1])
	Local $aRange_check = _GUIScrollBars_GetScrollRange($hWnd, $fnBar)
	; invalid range check if invalid reset to previous values
	If $aRange[1] <> $aRange_check[1] Or $nMin <> $aRange_check[0] Then
		_GUIScrollBars_SetScrollRange($hWnd, $fnBar, $aRange[0], $aRange[1])
		Return False
	EndIf
	Return True
EndFunc   ;==>_GUIScrollBars_SetScrollInfoMin

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_SetScrollInfoMax($hWnd, $fnBar, $nMax)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, False)
	Local $aRange = _GUIScrollBars_GetScrollRange($hWnd, $fnBar)
	_GUIScrollBars_SetScrollRange($hWnd, $fnBar, $aRange[0], $nMax)
	Local $aRange_check = _GUIScrollBars_GetScrollRange($hWnd, $fnBar)
	; invalid range check if invalid reset to previous values
	If $aRange[0] <> $aRange_check[0] Or $nMax <> $aRange_check[1] Then
		_GUIScrollBars_SetScrollRange($hWnd, $fnBar, $aRange[0], $aRange[1])
		Return False
	EndIf
	Return True
EndFunc   ;==>_GUIScrollBars_SetScrollInfoMax

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_SetScrollInfoPage($hWnd, $fnBar, $nPage)
	If Not IsHWnd($hWnd) Then Return SetError(-2, -1, -1)
	Local $tSCROLLINFO = DllStructCreate($tagSCROLLINFO)
	DllStructSetData($tSCROLLINFO, "fMask", $SIF_PAGE)
	DllStructSetData($tSCROLLINFO, "nPage", $nPage)
	Return _GUIScrollBars_SetScrollInfo($hWnd, $fnBar, $tSCROLLINFO)
EndFunc   ;==>_GUIScrollBars_SetScrollInfoPage

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_SetScrollInfoPos($hWnd, $fnBar, $nPos)
	Local $index = -1, $yChar, $xChar

	For $x = 0 To UBound($aSB_WindowInfo) - 1
		If $aSB_WindowInfo[$x][0] = $hWnd Then
			$index = $x
			$xChar = $aSB_WindowInfo[$index][2]
			$yChar = $aSB_WindowInfo[$index][3]
			ExitLoop
		EndIf
	Next
	If $index = -1 Then Return 0

	; Save the position for comparison later on
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $fnBar)
	Local $xyPos = DllStructGetData($tSCROLLINFO, "nPos")

	DllStructSetData($tSCROLLINFO, "fMask", $SIF_POS)
	DllStructSetData($tSCROLLINFO, "nPos", $nPos)
	_GUIScrollBars_SetScrollInfo($hWnd, $fnBar, $tSCROLLINFO)
	_GUIScrollBars_GetScrollInfo($hWnd, $fnBar, $tSCROLLINFO)
	;// If the position has changed, scroll the window and update it
	$nPos = DllStructGetData($tSCROLLINFO, "nPos")
	If $fnBar = $SB_HORZ Then
		If ($nPos <> $xyPos) Then _GUIScrollBars_ScrollWindow($hWnd, $xChar * ($xyPos - $nPos), 0)
	Else
		If ($nPos <> $xyPos) Then _GUIScrollBars_ScrollWindow($hWnd, 0, $yChar * ($xyPos - $nPos))
	EndIf
EndFunc   ;==>_GUIScrollBars_SetScrollInfoPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_SetScrollRange($hWnd, $nBar, $nMinPos, $nMaxPos)
	Local $aResult = DllCall("user32.dll", "bool", "SetScrollRange", "hwnd", $hWnd, "int", $nBar, "int", $nMinPos, "int", $nMaxPos, "bool", True)
	If @error Then Return SetError(@error, @extended, False)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_SetScrollRange

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUIScrollBars_ShowScrollBar($hWnd, $nBar, $fShow = True)
	Local $aResult = DllCall("user32.dll", "bool", "ShowScrollBar", "hwnd", $hWnd, "int", $nBar, "bool", $fShow)
	If @error Then Return SetError(@error, @extended, False)
	Return $aResult[0]
EndFunc   ;==>_GUIScrollBars_ShowScrollBar
