#include-Once

; #INDEX# =======================================================================================================================
; Title .........: Color
; AutoIt Version : 3.2.3++
; Language ..... : English
; Description ...: Functions that assist with color management.
; Author(s) .....: Ultima, Jon, Jpm
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $__COLORCONSTANTS_HSLMAX = 240
Global Const $__COLORCONSTANTS_RGBMAX = 255
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _ColorConvertHSLtoRGB
; _ColorConvertRGBtoHSL
; _ColorGetBlue
; _ColorGetGreen
; _ColorGetRed
; _ColorGetCOLORREF
; _ColorGetRGB
; _ColorSetCOLORREF
; _ColorSetRGB
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#==============================================================================
; __ColorConvertHueToRGB
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Ultima
; Modified.......:
; ===============================================================================================================================
Func _ColorConvertHSLtoRGB($avArray)
	If UBound($avArray) <> 3 Or UBound($avArray, 0) <> 1 Then Return SetError(1, 0, 0)

	Local $nR, $nG, $nB
	Local $nH = Number($avArray[0]) / $__COLORCONSTANTS_HSLMAX
	Local $nS = Number($avArray[1]) / $__COLORCONSTANTS_HSLMAX
	Local $nL = Number($avArray[2]) / $__COLORCONSTANTS_HSLMAX

	If $nS = 0 Then
		; Grayscale
		$nR = $nL
		$nG = $nL
		$nB = $nL
	Else
		; Chromatic
		Local $nValA, $nValB

		If $nL <= 0.5 Then
			$nValB = $nL * ($nS + 1)
		Else
			$nValB = ($nL + $nS) - ($nL * $nS)
		EndIf

		$nValA = 2 * $nL - $nValB
		$nR = __ColorConvertHueToRGB($nValA, $nValB, $nH + 1 / 3)
		$nG = __ColorConvertHueToRGB($nValA, $nValB, $nH)
		$nB = __ColorConvertHueToRGB($nValA, $nValB, $nH - 1 / 3)
	EndIf

	$avArray[0] = $nR * $__COLORCONSTANTS_RGBMAX
	$avArray[1] = $nG * $__COLORCONSTANTS_RGBMAX
	$avArray[2] = $nB * $__COLORCONSTANTS_RGBMAX

	Return $avArray
EndFunc   ;==>_ColorConvertHSLtoRGB

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __ColorConvertHueToRGB
; Description ...: Helper function for converting HSL to RGB
; Syntax.........: __ColorConvertHueToRGB ( $nA, $nB, $nH )
; Parameters ....: $nA - Value A
;                  $nB - Value B
;                  $nH - Hue
; Return values .: A value based on value A and value B, dependent on the inputted hue
; Author ........: Ultima
; Modified.......:
; Remarks .......: For Internal Use Only
; Related .......: See: <a href="http://www.easyrgb.com/math.php?MATH=M19#text19">EasyRGB - Color mathematics and conversion formulas.</a>
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __ColorConvertHueToRGB($nA, $nB, $nH)
	If $nH < 0 Then $nH += 1
	If $nH > 1 Then $nH -= 1

	If (6 * $nH) < 1 Then Return $nA + ($nB - $nA) * 6 * $nH
	If (2 * $nH) < 1 Then Return $nB
	If (3 * $nH) < 2 Then Return $nA + ($nB - $nA) * 6 * (2 / 3 - $nH)
	Return $nA
EndFunc   ;==>__ColorConvertHueToRGB

; #FUNCTION# ====================================================================================================================
; Author ........: Ultima
; Modified.......:
; ===============================================================================================================================
Func _ColorConvertRGBtoHSL($avArray)
	If UBound($avArray) <> 3 Or UBound($avArray, 0) <> 1 Then Return SetError(1, 0, 0)

	Local $nH, $nS, $nL
	Local $nR = Number($avArray[0]) / $__COLORCONSTANTS_RGBMAX
	Local $nG = Number($avArray[1]) / $__COLORCONSTANTS_RGBMAX
	Local $nB = Number($avArray[2]) / $__COLORCONSTANTS_RGBMAX

	Local $nMax = $nR
	If $nMax < $nG Then $nMax = $nG
	If $nMax < $nB Then $nMax = $nB

	Local $nMin = $nR
	If $nMin > $nG Then $nMin = $nG
	If $nMin > $nB Then $nMin = $nB

	Local $nMinMaxSum = ($nMax + $nMin)
	Local $nMinMaxDiff = ($nMax - $nMin)

	; Lightness
	$nL = $nMinMaxSum / 2

	If $nMinMaxDiff = 0 Then
		; Grayscale
		$nH = 0
		$nS = 0
	Else
		; Saturation
		If $nL < 0.5 Then
			$nS = $nMinMaxDiff / $nMinMaxSum
		Else
			$nS = $nMinMaxDiff / (2 - $nMinMaxSum)
		EndIf

		; Hue
		Switch $nMax
			Case $nR
				$nH = ($nG - $nB) / (6 * $nMinMaxDiff)
			Case $nG
				$nH = ($nB - $nR) / (6 * $nMinMaxDiff) + 1 / 3
			Case $nB
				$nH = ($nR - $nG) / (6 * $nMinMaxDiff) + 2 / 3
		EndSwitch
		If $nH < 0 Then $nH += 1
		If $nH > 1 Then $nH -= 1
	EndIf

	$avArray[0] = $nH * $__COLORCONSTANTS_HSLMAX
	$avArray[1] = $nS * $__COLORCONSTANTS_HSLMAX
	$avArray[2] = $nL * $__COLORCONSTANTS_HSLMAX

	Return $avArray
EndFunc   ;==>_ColorConvertRGBtoHSL

; #FUNCTION# ====================================================================================================================
; Author ........: Jonathan Bennett <jon at autoitscript dot com>
; Modified.......:
; ===============================================================================================================================
Func _ColorGetBlue($nColor)
	Return BitAND($nColor, 0xFF)
EndFunc   ;==>_ColorGetBlue

; #FUNCTION# ====================================================================================================================
; Author ........: Jonathan Bennett <jon at autoitscript dot com>
; Modified.......:
; ===============================================================================================================================
Func _ColorGetGreen($nColor)
	Return BitAND(BitShift($nColor, 8), 0xFF)
EndFunc   ;==>_ColorGetGreen

; #FUNCTION# ====================================================================================================================
; Author ........: Jonathan Bennett <jon at autoitscript dot com>
; Modified.......:
; ===============================================================================================================================
Func _ColorGetRed($nColor)
	Return BitAND(BitShift($nColor, 16), 0xFF)
EndFunc   ;==>_ColorGetRed

; #FUNCTION# ====================================================================================================================
; Author ........: jpm
; Modified.......:
; ===============================================================================================================================
Func _ColorGetCOLORREF($nColor, $curExt = @extended)
	If BitAND($nColor, 0xFF000000) Then Return SetError(1, 0, 0) ; invalid color value
	Local $aColor[3]
	$aColor[2] = BitAND(BitShift($nColor, 16), 0xFF)
	$aColor[1] = BitAND(BitShift($nColor, 8), 0xFF)
	$aColor[0] = BitAND($nColor, 0xFF)
	Return SetExtended($curExt, $aColor)
EndFunc   ;==>_ColorGetCOLORREF

; #FUNCTION# ====================================================================================================================
; Author ........: jpm
; Modified.......:
; ===============================================================================================================================
Func _ColorGetRGB($nColor, $curExt = @extended)
	If BitAND($nColor, 0xFF000000) Then Return SetError(1, 0, 0) ; invalid color value
	Local $aColor[3]
	$aColor[0] = BitAND(BitShift($nColor, 16), 0xFF)
	$aColor[1] = BitAND(BitShift($nColor, 8), 0xFF)
	$aColor[2] = BitAND($nColor, 0xFF)
	Return SetExtended($curExt, $aColor)
EndFunc   ;==>_ColorGetRGB

; #FUNCTION# ====================================================================================================================
; Author ........: jpm
; Modified.......:
; ===============================================================================================================================
Func _ColorSetCOLORREF($aColor, $curExt = @extended)
	If UBound($aColor) <> 3 Then Return SetError(1, 0, -1) ; invalid array
	Local $nColor = 0, $iColor
	For $i = 2 To 0 Step -1
		$nColor = BitShift($nColor, -8)
		$iColor = $aColor[$i]
		If $iColor < 0 Or $iColor > 255 Then Return SetError(2, $i, -1) ; invalid color value
		$nColor += $iColor
	Next
	Return SetExtended($curExt, $nColor)
EndFunc   ;==>_ColorSetCOLORREF

; #FUNCTION# ====================================================================================================================
; Author ........: jpm
; Modified.......:
; ===============================================================================================================================
Func _ColorSetRGB($aColor, $curExt = @extended)
	If UBound($aColor) <> 3 Then Return SetError(1, 0, -1) ; invalid array
	Local $nColor = 0, $iColor
	For $i = 0 To 2
		$nColor = BitShift($nColor, -8)
		$iColor = $aColor[$i]
		If $iColor < 0 Or $iColor > 255 Then Return SetError(2, 0, -1) ; invalid color value
		$nColor += $iColor
	Next
	Return SetExtended($curExt, $nColor)
EndFunc   ;==>_ColorSetRGB
