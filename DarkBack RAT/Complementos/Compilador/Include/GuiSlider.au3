#include-once

#include "SliderConstants.au3"
#include "WinAPI.au3"
#include "StructureConstants.au3"
#include "SendMessage.au3"
#include "UDFGlobalID.au3"

; #INDEX# =======================================================================================================================
; Title .........: Slider
; AutoIt Version : 3.3.7.20++
; Language ......: English
; Description ...: Functions that assist with Slider Control "Trackbar" management.
; Author(s) .....: Gary Frost (gafrost)
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
Global $_ghSLastWnd

; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $__SLIDERCONSTANT_ClassName = "msctls_trackbar32"
; ===============================================================================================================================

; #OLD_FUNCTIONS#================================================================================================================
; Old Function/Name                      ; --> New Function/Name/Replacement(s)
;
; deprecated functions will no longer work
; _GUICtrlSliderClearTics                  ; --> _GUICtrlSlider_ClearTics
; _GUICtrlSliderGetLineSize                ; --> _GUICtrlSlider_GetLineSize
; _GUICtrlSliderGetNumTics                 ; --> _GUICtrlSlider_GetNumTics
; _GUICtrlSliderGetPageSize                ; --> _GUICtrlSlider_GetPageSize
; _GUICtrlSliderGetPos                     ; --> _GUICtrlSlider_GetPos
; _GUICtrlSliderGetRangeMax                ; --> _GUICtrlSlider_GetRangeMax
; _GUICtrlSliderGetRangeMin                ; --> _GUICtrlSlider_GetRangeMin
; _GUICtrlSliderSetLineSize                ; --> _GUICtrlSlider_SetLineSize
; _GUICtrlSliderSetPageSize                ; --> _GUICtrlSlider_SetPageSize
; _GUICtrlSliderSetPos                     ; --> _GUICtrlSlider_SetPos
; _GUICtrlSliderSetTicFreq                 ; --> _GUICtrlSlider_SetTicFreq
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _GUICtrlSlider_ClearSel
; _GUICtrlSlider_ClearTics
; _GUICtrlSlider_Create
; _GUICtrlSlider_Destroy
; _GUICtrlSlider_GetBuddy
; _GUICtrlSlider_GetChannelRect
; _GUICtrlSlider_GetChannelRectEx
; _GUICtrlSlider_GetLineSize
; _GUICtrlSlider_GetLogicalTics
; _GUICtrlSlider_GetNumTics
; _GUICtrlSlider_GetPageSize
; _GUICtrlSlider_GetPos
; _GUICtrlSlider_GetRange
; _GUICtrlSlider_GetRangeMax
; _GUICtrlSlider_GetRangeMin
; _GUICtrlSlider_GetSel
; _GUICtrlSlider_GetSelEnd
; _GUICtrlSlider_GetSelStart
; _GUICtrlSlider_GetThumbLength
; _GUICtrlSlider_GetThumbRect
; _GUICtrlSlider_GetThumbRectEx
; _GUICtrlSlider_GetTic
; _GUICtrlSlider_GetTicPos
; _GUICtrlSlider_GetToolTips
; _GUICtrlSlider_GetUnicodeFormat
; _GUICtrlSlider_SetBuddy
; _GUICtrlSlider_SetLineSize
; _GUICtrlSlider_SetPageSize
; _GUICtrlSlider_SetPos
; _GUICtrlSlider_SetRange
; _GUICtrlSlider_SetRangeMax
; _GUICtrlSlider_SetRangeMin
; _GUICtrlSlider_SetSel
; _GUICtrlSlider_SetSelEnd
; _GUICtrlSlider_SetSelStart
; _GUICtrlSlider_SetThumbLength
; _GUICtrlSlider_SetTic
; _GUICtrlSlider_SetTicFreq
; _GUICtrlSlider_SetTipSide
; _GUICtrlSlider_SetToolTips
; _GUICtrlSlider_SetUnicodeFormat
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_ClearSel($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_CLEARSEL, True)
EndFunc   ;==>_GUICtrlSlider_ClearSel

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_ClearTics($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_CLEARTICS, True)
EndFunc   ;==>_GUICtrlSlider_ClearTics

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_Create($hWnd, $iX, $iY, $iWidth = 100, $iHeight = 20, $iStyle = 0x0001, $iExStyle = 0x00000000)
	If Not IsHWnd($hWnd) Then Return SetError(1, 0, 0) ; Invalid Window handle for _GUICtrlSlider_Create 1st parameter

	If $iWidth = -1 Then $iWidth = 100
	If $iHeight = -1 Then $iHeight = 20
	If $iStyle = -1 Then $iStyle = $TBS_AUTOTICKS
	If $iExStyle = -1 Then $iExStyle = 0x00000000

	$iStyle = BitOR($iStyle, $__UDFGUICONSTANT_WS_CHILD, $__UDFGUICONSTANT_WS_VISIBLE)

	Local $nCtrlID = __UDF_GetNextGlobalID($hWnd)
	If @error Then Return SetError(@error, @extended, 0)

	Local $hSlider = _WinAPI_CreateWindowEx($iExStyle, $__SLIDERCONSTANT_ClassName, "", $iStyle, $iX, $iY, $iWidth, $iHeight, $hWnd, $nCtrlID)
	_SendMessage($hSlider, $TBM_SETRANGE, True, _WinAPI_MakeLong(0, 100));  // min. & max. positions
	_GUICtrlSlider_SetTicFreq($hSlider, 5)
	Return $hSlider
EndFunc   ;==>_GUICtrlSlider_Create

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_Destroy(ByRef $hWnd)
	If Not _WinAPI_IsClassName($hWnd, $__SLIDERCONSTANT_ClassName) Then Return SetError(2, 2, False)

	Local $Destroyed = 0
	If IsHWnd($hWnd) Then
		If _WinAPI_InProcess($hWnd, $_ghSLastWnd) Then
			Local $nCtrlID = _WinAPI_GetDlgCtrlID($hWnd)
			Local $hParent = _WinAPI_GetParent($hWnd)
			$Destroyed = _WinAPI_DestroyWindow($hWnd)
			Local $iRet = __UDF_FreeGlobalID($hParent, $nCtrlID)
			If Not $iRet Then
				; can check for errors here if needed, for debug
			EndIf
		Else
			; Not Allowed to Destroy Other Applications Control(s)
			Return SetError(1, 1, False)
		EndIf
	Else
		$Destroyed = GUICtrlDelete($hWnd)
	EndIf
	If $Destroyed Then $hWnd = 0
	Return $Destroyed <> 0
EndFunc   ;==>_GUICtrlSlider_Destroy

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetBuddy($hWnd, $fLocation)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETBUDDY, $fLocation, 0, 0, "wparam", "lparam", "hwnd")
EndFunc   ;==>_GUICtrlSlider_GetBuddy

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetChannelRect($hWnd)
	Local $tRect = _GUICtrlSlider_GetChannelRectEx($hWnd)
	Local $aRect[4]
	$aRect[0] = DllStructGetData($tRect, "Left")
	$aRect[1] = DllStructGetData($tRect, "Top")
	$aRect[2] = DllStructGetData($tRect, "Right")
	$aRect[3] = DllStructGetData($tRect, "Bottom")
	Return $aRect
EndFunc   ;==>_GUICtrlSlider_GetChannelRect

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetChannelRectEx($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Local $tRect = DllStructCreate($tagRECT)
	_SendMessage($hWnd, $TBM_GETCHANNELRECT, 0, $tRect, 0, "wparam", "struct*")
	Return $tRect
EndFunc   ;==>_GUICtrlSlider_GetChannelRectEx

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetLineSize($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETLINESIZE)
EndFunc   ;==>_GUICtrlSlider_GetLineSize

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetLogicalTics($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Local $iArraySize = _GUICtrlSlider_GetNumTics($hWnd) - 2
	Local $aTics[$iArraySize]

	Local $pArray = _SendMessage($hWnd, $TBM_GETPTICS)
	If @error Then Return SetError(@error, @extended, $aTics)
	Local $tArray = DllStructCreate("dword[" & $iArraySize & "]", $pArray)
	For $x = 1 To $iArraySize
		$aTics[$x - 1] = _GUICtrlSlider_GetTicPos($hWnd, DllStructGetData($tArray, 1, $x))
	Next
	Return $aTics
EndFunc   ;==>_GUICtrlSlider_GetLogicalTics

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetNumTics($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETNUMTICS)
EndFunc   ;==>_GUICtrlSlider_GetNumTics

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetPageSize($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETPAGESIZE)
EndFunc   ;==>_GUICtrlSlider_GetPageSize

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetPos($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETPOS)
EndFunc   ;==>_GUICtrlSlider_GetPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetRange($hWnd)
	Local $aMinMax[2]
	$aMinMax[0] = _GUICtrlSlider_GetRangeMin($hWnd)
	$aMinMax[1] = _GUICtrlSlider_GetRangeMax($hWnd)
	Return $aMinMax
EndFunc   ;==>_GUICtrlSlider_GetRange

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetRangeMax($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETRANGEMAX)
EndFunc   ;==>_GUICtrlSlider_GetRangeMax

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetRangeMin($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETRANGEMIN)
EndFunc   ;==>_GUICtrlSlider_GetRangeMin

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetSel($hWnd)
	Local $aSelStartEnd[2]
	$aSelStartEnd[0] = _GUICtrlSlider_GetSelStart($hWnd)
	$aSelStartEnd[1] = _GUICtrlSlider_GetSelEnd($hWnd)

	Return $aSelStartEnd
EndFunc   ;==>_GUICtrlSlider_GetSel

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetSelEnd($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETSELEND)
EndFunc   ;==>_GUICtrlSlider_GetSelEnd

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetSelStart($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETSELSTART)
EndFunc   ;==>_GUICtrlSlider_GetSelStart

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetThumbLength($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETTHUMBLENGTH)
EndFunc   ;==>_GUICtrlSlider_GetThumbLength

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetThumbRect($hWnd)
	Local $tRect = _GUICtrlSlider_GetThumbRectEx($hWnd)
	Local $aRect[4]
	$aRect[0] = DllStructGetData($tRect, "Left")
	$aRect[1] = DllStructGetData($tRect, "Top")
	$aRect[2] = DllStructGetData($tRect, "Right")
	$aRect[3] = DllStructGetData($tRect, "Bottom")
	Return $aRect
EndFunc   ;==>_GUICtrlSlider_GetThumbRect

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetThumbRectEx($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Local $tRect = DllStructCreate($tagRECT)
	_SendMessage($hWnd, $TBM_GETTHUMBRECT, 0, $tRect, 0, "wparam", "struct*")
	Return $tRect
EndFunc   ;==>_GUICtrlSlider_GetThumbRectEx

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetTic($hWnd, $iTic)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETTIC, $iTic)
EndFunc   ;==>_GUICtrlSlider_GetTic

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetTicPos($hWnd, $iTic)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETTICPOS, $iTic)
EndFunc   ;==>_GUICtrlSlider_GetTicPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetToolTips($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETTOOLTIPS, 0, 0, 0, "wparam", "lparam", "hwnd")
EndFunc   ;==>_GUICtrlSlider_GetToolTips

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_GetUnicodeFormat($hWnd)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_GETUNICODEFORMAT) <> 0
EndFunc   ;==>_GUICtrlSlider_GetUnicodeFormat

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetBuddy($hWnd, $fLocation, $hBuddy)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)
	If Not IsHWnd($hBuddy) Then $hBuddy = GUICtrlGetHandle($hBuddy)

	Return _SendMessage($hWnd, $TBM_SETBUDDY, $fLocation, $hBuddy, 0, "wparam", "hwnd", "hwnd")
EndFunc   ;==>_GUICtrlSlider_SetBuddy

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetLineSize($hWnd, $iLineSize)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_SETLINESIZE, 0, $iLineSize)
EndFunc   ;==>_GUICtrlSlider_SetLineSize

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetPageSize($hWnd, $iPageSize)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_SETPAGESIZE, 0, $iPageSize)
EndFunc   ;==>_GUICtrlSlider_SetPageSize

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetPos($hWnd, $iPosition)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETPOS, True, $iPosition)
EndFunc   ;==>_GUICtrlSlider_SetPos

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetRange($hWnd, $iMinimum, $iMaximum)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETRANGE, True, _WinAPI_MakeLong($iMinimum, $iMaximum))
EndFunc   ;==>_GUICtrlSlider_SetRange

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetRangeMax($hWnd, $iMaximum)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETRANGEMAX, True, $iMaximum)
EndFunc   ;==>_GUICtrlSlider_SetRangeMax

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetRangeMin($hWnd, $iMinimum)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETRANGEMIN, True, $iMinimum)
EndFunc   ;==>_GUICtrlSlider_SetRangeMin

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetSel($hWnd, $iMinimum, $iMaximum)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETSEL, True, _WinAPI_MakeLong($iMinimum, $iMaximum))
EndFunc   ;==>_GUICtrlSlider_SetSel

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetSelEnd($hWnd, $iMaximum)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETSELEND, True, $iMaximum)
EndFunc   ;==>_GUICtrlSlider_SetSelEnd

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetSelStart($hWnd, $iMinimum)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETSELSTART, True, $iMinimum)
EndFunc   ;==>_GUICtrlSlider_SetSelStart

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetThumbLength($hWnd, $iLength)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETTHUMBLENGTH, $iLength)
EndFunc   ;==>_GUICtrlSlider_SetThumbLength

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetTic($hWnd, $iPosition)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETTIC, 0, $iPosition)
EndFunc   ;==>_GUICtrlSlider_SetTic

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetTicFreq($hWnd, $iFreg)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETTICFREQ, $iFreg)
EndFunc   ;==>_GUICtrlSlider_SetTicFreq

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetTipSide($hWnd, $fLocation)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETTIPSIDE, $fLocation)
EndFunc   ;==>_GUICtrlSlider_SetTipSide

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetToolTips($hWnd, $hWndTT)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	_SendMessage($hWnd, $TBM_SETTOOLTIPS, $hWndTT, 0, 0, "hwnd")
EndFunc   ;==>_GUICtrlSlider_SetToolTips

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _GUICtrlSlider_SetUnicodeFormat($hWnd, $fUnicode)
	If Not IsHWnd($hWnd) Then $hWnd = GUICtrlGetHandle($hWnd)

	Return _SendMessage($hWnd, $TBM_SETUNICODEFORMAT, $fUnicode) <> 0
EndFunc   ;==>_GUICtrlSlider_SetUnicodeFormat
