#include-once

; #INDEX# =======================================================================================================================
; Title .........: Mathematical calculations
; AutoIt Version : 3.0
; Language ......: English
; Description ...: Functions that assist with mathematical calculations.
; Author(s) .....: Valik, Gary Frost, ...
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _Degree
; _MathCheckDiv
; _Max
; _Min
; _Radian
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Erifash <erifash at gmail dot com>
; ===============================================================================================================================
Func _Degree($iRadians)
	If IsNumber($iRadians) Then Return $iRadians * 57.2957795130823
	Return SetError(1, 0, "")
EndFunc   ;==>_Degree

; #FUNCTION# ====================================================================================================================
; Author ........:  Wes Wolfe-Wolvereness <Weswolf at aol dot com>
; ===============================================================================================================================
Func _MathCheckDiv($iNum1, $iNum2 = 2)
	If Number($iNum1) = 0 Or Number($iNum2) = 0 Or Int($iNum1) <> $iNum1 Or Int($iNum2) <> $iNum2 Then
		Return SetError(1, 0, -1)
	ElseIf Int($iNum1 / $iNum2) <> $iNum1 / $iNum2 Then
		Return 1
	Else
		Return 2
	EndIf
EndFunc   ;==>_MathCheckDiv

; #FUNCTION# ====================================================================================================================
; Author ........: Jeremy Landes <jlandes at landeserve dot com>
; Modified ......: guinness - Added ternary operator.
; ===============================================================================================================================
Func _Max($iNum1, $iNum2)
	; Check to see if the parameters are numbers
	If Not IsNumber($iNum1) Then Return SetError(1, 0, 0)
	If Not IsNumber($iNum2) Then Return SetError(2, 0, 0)
	Return ($iNum1 > $iNum2) ? $iNum1 : $iNum2
EndFunc   ;==>_Max

; #FUNCTION# ====================================================================================================================
; Author ........: Jeremy Landes <jlandes at landeserve dot com>
; Modified ......: guinness - Added ternary operator.
; ===============================================================================================================================
Func _Min($iNum1, $iNum2)
	; Check to see if the parameters are numbers
	If Not IsNumber($iNum1) Then Return SetError(1, 0, 0)
	If Not IsNumber($iNum2) Then Return SetError(2, 0, 0)
	Return ($iNum1 > $iNum2) ? $iNum2 : $iNum1
EndFunc   ;==>_Min

; #FUNCTION# ====================================================================================================================
; Author ........: Erifash <erifash at gmail dot com>
; ===============================================================================================================================
Func _Radian($iDegrees)
	If Number($iDegrees) Then Return $iDegrees / 57.2957795130823
	Return SetError(1, 0, "")
EndFunc   ;==>_Radian
