#include-once

; #INDEX# =======================================================================================================================
; Title .........: String
; AutoIt Version : 3.3.7.20++
; Description ...: Functions that assist with String management.
; Author(s) .....: Jarvis Stubblefield, SmOke_N, Valik, Wes Wolfe-Wolvereness, WeaponX, Louis Horvath, JdeB, Jeremy Landes, Jon, jchd, BrewManNH, guinness
; ===============================================================================================================================

; #NO_DOC_FUNCTION# =============================================================================================================
; Not documented - function(s) no longer needed, will be worked out of the file at a later date
;
; _StringEncrypt
; _StringReverse
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _HexToString
; _StringBetween
; _StringEncrypt
; _StringExplode
; _StringInsert
; _StringProper
; _StringRepeat
; _StringTitleCase
; _StringToHex
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Jarvis Stubblefield
; Modified.......: SmOke_N - (Re-write using BinaryToString for speed)
; ===============================================================================================================================
Func _HexToString($sHex)
	If Not (StringLeft($sHex, 2) == "0x") Then $sHex = "0x" & $sHex
	Return BinaryToString($sHex)
EndFunc   ;==>_HexToString

; #FUNCTION# ====================================================================================================================
; Author ........: SmOke_N (Thanks to Valik for helping with the new StringRegExp (?s)(?i) issue)
; Modified.......: SmOke_N - (Re-write for speed and accuracy), jchd, Melba23
; ===============================================================================================================================
Func _StringBetween($sString, $sStart, $sEnd, $fCase = False)
	; Set correct case sensitivity
	If $fCase = Default Then
		$fCase = False
	EndIf
	Local $sCase = "(?is)"
	If $fCase Then
		$sCase = "(?s)"
	EndIf

	; If you want data from beginning then replace blank start with beginning of string
	$sStart = $sStart ? "\Q" & $sStart & "\E" : "\A"

	; If you want data from a start to an end then replace blank with end of string
	$sEnd = $sEnd ? "(?=\Q" & $sEnd & "\E)" : "\z"

	Local $aReturn = StringRegExp($sString, $sCase & $sStart & "(.*?)" & $sEnd, 3)
	If @error Then Return SetError(1, 0, 0)
	Return $aReturn
EndFunc   ;==>_StringBetween

; #FUNCTION# ====================================================================================================================
; Author ........: Wes Wolfe-Wolvereness <Weswolf at aol dot com>
; Modified.......:
; ===============================================================================================================================
Func _StringEncrypt($i_Encrypt, $s_EncryptText, $s_EncryptPassword, $i_EncryptLevel = 1)
	If $i_Encrypt <> 0 And $i_Encrypt <> 1 Then
		SetError(1, 0, '')
	ElseIf $s_EncryptText = '' Or $s_EncryptPassword = '' Then
		SetError(1, 0, '')
	Else
		If Number($i_EncryptLevel) <= 0 Or Int($i_EncryptLevel) <> $i_EncryptLevel Then $i_EncryptLevel = 1
		Local $v_EncryptModified
		Local $i_EncryptCountH
		Local $i_EncryptCountG
		Local $v_EncryptSwap
		Local $av_EncryptBox[256][2]
		Local $i_EncryptCountA
		Local $i_EncryptCountB
		Local $i_EncryptCountC
		Local $i_EncryptCountD
		Local $i_EncryptCountE
		Local $v_EncryptCipher
		Local $v_EncryptCipherBy
		If $i_Encrypt = 1 Then
			For $i_EncryptCountF = 0 To $i_EncryptLevel Step 1
				$i_EncryptCountG = ''
				$i_EncryptCountH = ''
				$v_EncryptModified = ''
				For $i_EncryptCountG = 1 To StringLen($s_EncryptText)
					If $i_EncryptCountH = StringLen($s_EncryptPassword) Then
						$i_EncryptCountH = 1
					Else
						$i_EncryptCountH += 1
					EndIf
					$v_EncryptModified = $v_EncryptModified & Chr(BitXOR(Asc(StringMid($s_EncryptText, $i_EncryptCountG, 1)), Asc(StringMid($s_EncryptPassword, $i_EncryptCountH, 1)), 255))
				Next
				$s_EncryptText = $v_EncryptModified
				$i_EncryptCountA = ''
				$i_EncryptCountB = 0
				$i_EncryptCountC = ''
				$i_EncryptCountD = ''
				$i_EncryptCountE = ''
				$v_EncryptCipherBy = ''
				$v_EncryptCipher = ''
				$v_EncryptSwap = ''
				$av_EncryptBox = ''
				Local $av_EncryptBox[256][2]
				For $i_EncryptCountA = 0 To 255
					$av_EncryptBox[$i_EncryptCountA][1] = Asc(StringMid($s_EncryptPassword, Mod($i_EncryptCountA, StringLen($s_EncryptPassword)) + 1, 1))
					$av_EncryptBox[$i_EncryptCountA][0] = $i_EncryptCountA
				Next
				For $i_EncryptCountA = 0 To 255
					$i_EncryptCountB = Mod(($i_EncryptCountB + $av_EncryptBox[$i_EncryptCountA][0] + $av_EncryptBox[$i_EncryptCountA][1]), 256)
					$v_EncryptSwap = $av_EncryptBox[$i_EncryptCountA][0]
					$av_EncryptBox[$i_EncryptCountA][0] = $av_EncryptBox[$i_EncryptCountB][0]
					$av_EncryptBox[$i_EncryptCountB][0] = $v_EncryptSwap
				Next
				For $i_EncryptCountA = 1 To StringLen($s_EncryptText)
					$i_EncryptCountC = Mod(($i_EncryptCountC + 1), 256)
					$i_EncryptCountD = Mod(($i_EncryptCountD + $av_EncryptBox[$i_EncryptCountC][0]), 256)
					$i_EncryptCountE = $av_EncryptBox[Mod(($av_EncryptBox[$i_EncryptCountC][0] + $av_EncryptBox[$i_EncryptCountD][0]), 256)][0]
					$v_EncryptCipherBy = BitXOR(Asc(StringMid($s_EncryptText, $i_EncryptCountA, 1)), $i_EncryptCountE)
					$v_EncryptCipher &= Hex($v_EncryptCipherBy, 2)
				Next
				$s_EncryptText = $v_EncryptCipher
			Next
		Else
			For $i_EncryptCountF = 0 To $i_EncryptLevel Step 1
				$i_EncryptCountB = 0
				$i_EncryptCountC = ''
				$i_EncryptCountD = ''
				$i_EncryptCountE = ''
				$v_EncryptCipherBy = ''
				$v_EncryptCipher = ''
				$v_EncryptSwap = ''
				$av_EncryptBox = ''
				Local $av_EncryptBox[256][2]
				For $i_EncryptCountA = 0 To 255
					$av_EncryptBox[$i_EncryptCountA][1] = Asc(StringMid($s_EncryptPassword, Mod($i_EncryptCountA, StringLen($s_EncryptPassword)) + 1, 1))
					$av_EncryptBox[$i_EncryptCountA][0] = $i_EncryptCountA
				Next
				For $i_EncryptCountA = 0 To 255
					$i_EncryptCountB = Mod(($i_EncryptCountB + $av_EncryptBox[$i_EncryptCountA][0] + $av_EncryptBox[$i_EncryptCountA][1]), 256)
					$v_EncryptSwap = $av_EncryptBox[$i_EncryptCountA][0]
					$av_EncryptBox[$i_EncryptCountA][0] = $av_EncryptBox[$i_EncryptCountB][0]
					$av_EncryptBox[$i_EncryptCountB][0] = $v_EncryptSwap
				Next
				For $i_EncryptCountA = 1 To StringLen($s_EncryptText) Step 2
					$i_EncryptCountC = Mod(($i_EncryptCountC + 1), 256)
					$i_EncryptCountD = Mod(($i_EncryptCountD + $av_EncryptBox[$i_EncryptCountC][0]), 256)
					$i_EncryptCountE = $av_EncryptBox[Mod(($av_EncryptBox[$i_EncryptCountC][0] + $av_EncryptBox[$i_EncryptCountD][0]), 256)][0]
					$v_EncryptCipherBy = BitXOR(Dec(StringMid($s_EncryptText, $i_EncryptCountA, 2)), $i_EncryptCountE)
					$v_EncryptCipher = $v_EncryptCipher & Chr($v_EncryptCipherBy)
				Next
				$s_EncryptText = $v_EncryptCipher
				$i_EncryptCountG = ''
				$i_EncryptCountH = ''
				$v_EncryptModified = ''
				For $i_EncryptCountG = 1 To StringLen($s_EncryptText)
					If $i_EncryptCountH = StringLen($s_EncryptPassword) Then
						$i_EncryptCountH = 1
					Else
						$i_EncryptCountH += 1
					EndIf
					$v_EncryptModified &= Chr(BitXOR(Asc(StringMid($s_EncryptText, $i_EncryptCountG, 1)), Asc(StringMid($s_EncryptPassword, $i_EncryptCountH, 1)), 255))
				Next
				$s_EncryptText = $v_EncryptModified
			Next
		EndIf
		Return $s_EncryptText
	EndIf
EndFunc   ;==>_StringEncrypt

; #FUNCTION# ====================================================================================================================
; Author ........: WeaponX
; Modified.......:
; ===============================================================================================================================
Func _StringExplode($sString, $sDelimiter, $iLimit = 0)
	Local Const $NULL = Chr(0) ; Different from the Null keyword.
	If $iLimit = Default Then $iLimit = 0
	If $iLimit > 0 Then
		; Replace delimiter with NULL character using given limit
		$sString = StringReplace($sString, $sDelimiter, $NULL, $iLimit)

		; Split on NULL character, this will leave the remainder in the last element
		$sDelimiter = $NULL
	ElseIf $iLimit < 0 Then
		; Find delimiter occurence from right-to-left
		Local $iIndex = StringInStr($sString, $sDelimiter, 0, $iLimit)
		If $iIndex Then
			; Split on left side of string only
			$sString = StringLeft($sString, $iIndex - 1)
		EndIf
	EndIf

	Return StringSplit($sString, $sDelimiter, 3)
EndFunc   ;==>_StringExplode

; #FUNCTION# ====================================================================================================================
; Author ........: Louis Horvath <celeri at videotron dot ca>
; Modified.......: jchd - Removed explicitly checking if the source and insert strings were strings and forcing an @error return value
; ===============================================================================================================================
Func _StringInsert($sString, $sInsertString, $iPosition)
	; Casting Int() takes care of String/Int, Numbers
	$iPosition = Int($iPosition)

	; Retrieve the length of the source string
	Local $iLength = StringLen($sString)

	; Check the insert position isn't greater than the string length
	If Abs($iPosition) > $iLength Then
		Return SetError(1, 0, $sString) ; Invalid position as it's greater than the string length
	EndIf

	; Check if the source and insert strings are strings and convert accordingly if not
	If Not IsString($sInsertString) Then $sInsertString = String($sInsertString)
	If Not IsString($sString) Then $sString = String($sString)
	; Escape all "\" characters in the string to insert - otherwise they do not appear
	$sInsertString = StringReplace($sInsertString, "\", "\\")
	; Insert the string
	If $iPosition >= 0 Then
		Return StringRegExpReplace($sString, "(?s)\A(.{" & $iPosition & "})(.*)\z", "${1}" & $sInsertString & "$2") ; Insert to the left hand side
	Else
		Return StringRegExpReplace($sString, "(?s)\A(.*)(.{" & - $iPosition & "})\z", "${1}" & $sInsertString & "$2") ; Insert to the right hand side
	EndIf
EndFunc   ;==>_StringInsert

; #FUNCTION# ====================================================================================================================
; Author ........: Jos van der Zande <jdeb at autoitscript dot com>
; Modified.......:
; ===============================================================================================================================
Func _StringProper($sString)
	Local $fCapNext = True, $sChr = "", $sReturn = ""
	For $i = 1 To StringLen($sString)
		$sChr = StringMid($sString, $i, 1)
		Select
			Case $fCapNext = True
				If StringRegExp($sChr, '[a-zA-ZÀ-ÿšœžŸ]') Then
					$sChr = StringUpper($sChr)
					$fCapNext = False
				EndIf
			Case Not StringRegExp($sChr, '[a-zA-ZÀ-ÿšœžŸ]')
				$fCapNext = True
			Case Else
				$sChr = StringLower($sChr)
		EndSelect
		$sReturn &= $sChr
	Next
	Return $sReturn
EndFunc   ;==>_StringProper

; #FUNCTION# ====================================================================================================================
; Author ........: Jeremy Landes <jlandes at landeserve dot com>
; Modified.......: guinness - Removed Select...EndSelect statement and replaced with an If...EndIf as well as optimised the code.
; ===============================================================================================================================
Func _StringRepeat($sString, $iRepeatCount)
	; Casting Int() takes care of String/Int, Numbers.
	$iRepeatCount = Int($iRepeatCount)
	; Zero is a valid repeat integer.
	If StringLen($sString) < 1 Or $iRepeatCount < 0 Then Return SetError(1, 0, "")
	Local $sResult = ""
	While $iRepeatCount > 1
		If BitAND($iRepeatCount, 1) Then $sResult &= $sString
		$sString &= $sString
		$iRepeatCount = BitShift($iRepeatCount, 1)
	WEnd
	Return $sString & $sResult
EndFunc   ;==>_StringRepeat

; #FUNCTION# ====================================================================================================================
; Author ........: guinness & jchd
; Modified ......:
; ===============================================================================================================================
Func _StringReverse($sString)
	Return StringReverse($sString)
EndFunc   ;==>_StringReverse

; #FUNCTION# ====================================================================================================================
; Author ........: BrewManNH
; Modified ......:
; ===============================================================================================================================
Func _StringTitleCase($sString)
	Local $fCapNext = True, $sChr = "", $sReturn = ""
	For $i = 1 To StringLen($sString)
		$sChr = StringMid($sString, $i, 1)
		Select
			Case $fCapNext = True
				If StringRegExp($sChr, "[a-zA-Z\xC0-\xFF0-9]") Then
					$sChr = StringUpper($sChr)
					$fCapNext = False
				EndIf
			Case Not StringRegExp($sChr, "[a-zA-Z\xC0-\xFF'0-9]")
				$fCapNext = True
			Case Else
				$sChr = StringLower($sChr)
		EndSelect
		$sReturn &= $sChr
	Next
	Return $sReturn
EndFunc   ;==>_StringTitleCase

; #FUNCTION# ====================================================================================================================
; Author ........: Jarvis Stubblefield
; Modified.......: SmOke_N - (Re-write using StringToBinary for speed)
; ===============================================================================================================================
Func _StringToHex($sString)
	Return Hex(StringToBinary($sString))
EndFunc   ;==>_StringToHex
