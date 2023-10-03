#comments-start -----------------------------------------------------------------------------------
	Title:			IsPressed Library UDF
	Filename:		IsPressed UDF.au3
	Description:	Multiple _IsPressed functions based on original _IsPressed function
	Author:			FireFox
	Version:		02.02.00
	Last Update:	26.02.10
	Requirements:	AutoIt v3.2 +, Developed/Tested on WindowsXP Familly Service Pack 3;Windows 7
	Notes:			All _IsPressed functions works without have to specify the dll User32

	Special thanks ezzetabi (original _IsPressed function)
	Valuater for __KeyPressCheck ; __GetKeyType functions
	MrCreator for _IsWheelKeyScroll function
#comments-end -------------------------------------------------------------------------------------

#include-once
Global $IsWheelKeyScroll = False ;Declare WheelScroll false
OnAutoItExitRegister("OnAutoItExit")
; #FUNCTION# ===================================================================
; Name :           	$user32
; Description:      Open 'user32.dll'
;===============================================================================
$user32 = DllOpen('user32.dll')


; #FUNCTION# ===================================================================
; Name : 			_IsAnyKeyPressed
; Description:      Returns 1 if anykey is pressed
; Parameter(s):     $vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			Thanks to Manadar for parameters
;===============================================================================
Func _IsAnyKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(1, 221, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsAnyKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsOrKeyPressed
; Description:      Returns 1 if anykey specified is pressed
; Parameter(s):     $HexKey	= Hexadecimal key(s) (keys are separated by '|')
;					$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsOrKeyPressed($HexKey, $vDLL = 'user32.dll')
	Local $nb, $sHexKey = StringSplit($HexKey, '|', 1)

	For $nb = 1 To UBound($sHexKey) - 1
		If __KeyPressCheck(1, 1, $sHexKey[$nb], $vDLL) Then Return 1
	Next
	Return 0
EndFunc   ;==>_IsOrKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsAndKeyPressed
; Description:      Returns 1 if all keys specified are pressed
; Parameter(s):     $HexKey	= Hexadecimal key(s) (keys are separated by '|')
;					$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsAndKeyPressed($HexKey, $vDLL = 'user32.dll')
	Local $sHexKey = StringSplit($HexKey, '|', 1)

	For $nb = 1 To UBound($sHexKey) - 1
		If Not __KeyPressCheck(1, 1, $sHexKey[$nb], $vDLL) Then Return 0
	Next
	Return 1
EndFunc   ;==>_IsAndKeyPressed


; #FUNCTION# ===================================================================
; Name :			 _IsAlphaKeyPressed
; Description:      Returns 1 if anyalpha keys are pressed
; Parameter(s):		$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsAlphaKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(48, 90, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsAlphaKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsNumKeyPressed
; Description:      Returns 1 if anynumeric keys are pressed
; Parameter(s):		$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsNumKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(96, 105, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsNumKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsAlphaNumKeyPressed
; Description:      Returns 1 if anynumeric or anyalpha keys are pressed
; Parameter(s):		$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsAlphaNumKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(65, 105, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsAlphaNumKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsFuncKeyPressed
; Description:      Returns 1 if anyfunction keys are pressed
; Parameter(s):     $vDLL = 'user32.dll'
;					$Extended = 1 then Include F13 to F24 keys
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsFuncKeyPressed($vDLL = 'user32.dll', $Extended = 1)
	If __KeyPressCheck(112, 123, -1, $vDLL) Then Return 1
	If $Extended = 1 Then
		If __KeyPressCheck(124, 135, -1, $vDLL) Then Return 1
	EndIf
	Return 0
EndFunc   ;==>_IsFuncKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsArrowKeyPressed
; Description:      Returns 1 if anyarrow keys are pressed
; Parameter(s):		$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsArrowKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(37, 40, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsArrowKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsMouseKeyPressed
; Description:      Returns 1 if anymouse keys are pressed
; Parameter(s):		$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _IsMouseKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(1, 6, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsMouseKeyPressed


; #FUNCTION# ===================================================================
; Name :           	_IsWheelKeyScroll
; Description:      Returns wheel mouse key scrolled up or down
; Parameter(s):     None
; Requirement(s):   __WheelKeyScroll
;						$IsWheelKeyScroll = False
;						$aKey_Hooks[3]
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        MrCreator, FireFox
; Note(s):          Thanks to MrCreator
;===============================================================================
Func _IsWheelKeyScroll()
	Local Const $WH_MOUSE_LL = 14

	Local $hCallback_KeyHook = DllCallbackRegister('__WheelKeyScroll_Callback', 'int', 'int;ptr')
	Local $hM_Module = DllCall('kernel32.dll', 'hwnd', 'GetModuleHandle', 'ptr', 0)

	Local $hM_Hook = DllCall('user32.dll', 'hwnd', 'SetWindowsHookEx', 'int', $WH_MOUSE_LL, _
			'ptr', DllCallbackGetPtr($hCallback_KeyHook), 'hwnd', $hM_Module[0], 'dword', 0)

	Sleep(100) ;Wait some moments until the variable is set by callback function

	If IsPtr($hCallback_KeyHook) Then
		DllCallbackFree($hCallback_KeyHook)
		$hCallback_KeyHook = 0
	EndIf

	If IsArray($hM_Hook) And $hM_Hook[0] > 0 Then
		DllCall('user32.dll', 'int', 'UnhookWindowsHookEx', 'hwnd', $hM_Hook[0])
		$hM_Hook[0] = 0
	EndIf

	If $IsWheelKeyScroll = True Then
		$IsWheelKeyScroll = False
		Return 1
	EndIf
EndFunc   ;==>_IsWheelKeyScroll

Func __WheelKeyScroll_Callback($nCode, $wParam)
	Local Const $MOUSE_WheelSCROLL_EVENT = 522
	Local $iEvent = BitAND($wParam, 0xFFFF)

	$IsWheelKeyScroll = ($iEvent = $MOUSE_WheelSCROLL_EVENT)

	Return 0
EndFunc   ;==>__WheelKeyScroll_Callback


; #FUNCTION# ===================================================================
; Name :			_IsTimeKeyPressed
; Description:      Returns pressed time of specified key
; Parameter(s):     $sHexKey= Hexadecimal key
;					$format	= format of return time 'ms' or 'sec'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns time
;                   On Failure - Returns -1
; Author(s):        FireFox
; Note(s):			All other keys than other functions
;===============================================================================
Func _IsTimeKeyPressed($sHexKey, $format = 'ms', $vDLL = 'user32.dll')
	If _IsPressed($sHexKey) Then
		$Init = TimerInit()
		While _IsPressed($sHexKey)
			$DiffKey = TimerDiff($Init)
		WEnd
		If $format = 'ms' Then Return $DiffKey
		If $format = 'sec' Then Return ($DiffKey / 1000)
	EndIf
	Return -1
EndFunc   ;==>_IsTimeKeyPressed


; #FUNCTION# ===================================================================
; Name :			 _IsSpecialKeyPressed
; Description:      Returns 1 if anyspecial keys are pressed
; Parameter(s):		$vDLL = 'user32.dll'
; Requirement(s):	__KeyPressCheck
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        FireFox
; Note(s):			All other keys than other functions
;===============================================================================
Func _IsSpecialKeyPressed($vDLL = 'user32.dll')
	If __KeyPressCheck(8, 36, -1, $vDLL) Then Return 1
	If __KeyPressCheck(41, 46, -1, $vDLL) Then Return 1
	If __KeyPressCheck(91, 92, -1, $vDLL) Then Return 1
	If __KeyPressCheck(106, 111, -1, $vDLL) Then Return 1
	If __KeyPressCheck(136, 221, -1, $vDLL) Then Return 1
	Return 0
EndFunc   ;==>_IsSpecialKeyPressed


; #FUNCTION# ===================================================================
; Name : 			_IsPressed
; Description:      Check if key has been pressed
; Parameter(s):     $sHexKey = Hexadecimal key
;					$vDLL = 'user32.dll'
; Requirement(s):   None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        ezzetabi and Jon
; Note(s):			If calling this function repeatidly, should open 'user32.dll' and pass in handle.
;===============================================================================
Func _IsPressed($sHexKey, $vDLL = 'user32.dll')
	Local $a_R = DllCall($vDLL, 'int', 'GetAsyncKeyState', 'int', '0x' & $sHexKey)
	If Not @error And BitAND($a_R[0], 0x8000) = 0x8000 Then Return 1
	Return 0
EndFunc   ;==>_IsPressed


; #FUNCTION# ===================================================================
; Name :			 _GetKeyByHex
; Description:      Returns Alpha key for specified Hexadecimal key
; Parameter(s):		$sHexKey = Hexadecimal key
; Requirement(s):	__GetKeyType
; Return Value(s):  On Success - Returns Aplha Key
;                   On Failure - Returns -1
; Author(s):        FireFox
; Note(s):			None
;===============================================================================
Func _GetKeyByHex($sHexKey)
	Return __GetKeyType($sHexKey)
EndFunc   ;==>_GetKeyByHex


; #FUNCTION# ===================================================================
; Name : 			_GetKeyByAlpha
; Description:      Returns Hexadecimal key for specified Alpha key
; Parameter(s):		$sAlphaKey = Alphabetic key
; Requirement(s):	__GetKeyType
; Return Value(s):  On Success - Returns Hexadecimal Key
;                   On Failure - Returns -1
; Author(s):        FireFox
; Note(s):			Thanks to AlmarM for idea
;===============================================================================
Func _GetKeyByAlpha($sAlphaKey)
	Return __GetKeyType($sAlphaKey, 1)
EndFunc   ;==>_GetKeyByAlpha


#Region Internal
; #FUNCTION# ===================================================================
; Name :           	OnAutoItExit
; Description:      Close 'user32.dll'
;===============================================================================
Func OnAutoItExit()
	DllClose($user32)
EndFunc   ;==>OnAutoItExit


; #FUNCTION# ===================================================================
; Name : 			__KeyPressCheck
; Description:      Check if specified keys are pressed
; Parameter(s):     sHexKey	- Key to check for
; Requirement(s):	None
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0
; Author(s):        Valuater
; Note(s):			Thanks Valuater... 8)
;===============================================================================
Func __KeyPressCheck($iStart, $iFinish, $iHexKey = -1, $vDLL = 'user32.dll')
	Local $ikey, $ia_R
	For $ikey = $iStart To $iFinish
		If $iHexKey == -1 Then $ia_R = DllCall($vDLL, 'int', 'GetAsyncKeyState', 'int', '0x' & Hex($ikey, 2))
		If $iHexKey <> -1 Then $ia_R = DllCall($vDLL, 'int', 'GetAsyncKeyState', 'int', '0x' & $iHexKey)
		If Not @error And BitAND($ia_R[0], 0x8000) = 0x8000 Then Return 1
	Next
	Return 0
EndFunc   ;==>__KeyPressCheck


; #FUNCTION# ===================================================================
; Name :           	__GetKeyType
; Description:      Returns Hexadecimal or Aplha key for specified key
; Parameter(s):     $Type = 0 Return Alpha
;							1 Return Hexadecimal
; Requirement(s):   None
; Return Value(s):  On Success - Returns Key
;                   On Failure - Returns 0
; Author(s):        Valuater, FireFox
; Note(s):          Thanks Valuater... 8)
;===============================================================================
Func __GetKeyType($iKeyIn, $Type = 0)
	If $iKeyIn = '' Then Return -1

	Local $s_String = '01LeftMouse|02RightMouse|04MiddleMouse|05X1Mouse|06X2Mouse|08BACKSPACE|09TAB|0CCLEAR|' & _
			'0DENTER|10SHIFT|11CTRL|12ALT|13PAUSE|14CAPS LOCK|1BESC|20SPACEBAR|21PAGE UP|22PAGE DOWN|' & _
			'23END|24HOME|25LEFT|26UP|27RIGHT|28DOWN|29SELECT|2APRINT|2BEXECUTE|2CPRINT SCREEN|2DINS|2EDEL|' & _
			'300|311|322|333|344|355|366|377|388|399|41A|42B|43C|44D|45E|46F|47G|48H|49I|4AJ|4BK|4CL|4DM|4EN|' & _
			'4FO|50P|51Q|52R|53S|54T|55U|56V|57W|58X|59Y|5AZ|5BLeft Windows|5CRight Windows|60Num 0|61Num 1|' & _
			'62Num 2|63Num 3|64Num 4|65Num 5|66Num 6|67Num 7|68Num 8|69Num 9|6AMultiply|6BAdd|' & _
			'6CSeparator|6DSubtract|6EDecimal|6FDivide|70F1|71F2|72F3|73F4|74F5|75F6|76F7|77F8|78F9|' & _
			'79F10|7AF11|7BF12|7CF13|7DF14|7EF15|7FF16|80HF17|81HF18|82HF19|83HF20|84HF21|85HF22|' & _
			'86HF23|87HF24|90NUM LOCK|91SCROLL LOCK|A0Left SHIFT|A1Right SHIFT|A2Left CTRL|A3Right CTRL|' & _
			'A4Left MENU|A5Right Menu|BA;|BB=|BC,|BD-|BE.|BF/|C0`|DB[|DC\|DD]'

	If $Type == 0 Then
		$iKeyIn = StringTrimLeft($s_String, (StringInStr($s_String, $iKeyIn) + StringLen($iKeyIn) - 1))
		$s_String = StringLeft($iKeyIn, (StringInStr($iKeyIn, '|') - 1))
	ElseIf $Type == 1 Then
		$iKeyIn = StringLeft($s_String, StringInStr($s_String, $iKeyIn) - 1)
		$s_String = StringTrimLeft($iKeyIn, StringInStr($iKeyIn, '|', 2, -1))
	EndIf
	If $s_String <> '' Then
		Return $s_String
	EndIf
	Return -1
EndFunc   ;==>__GetKeyType
#EndRegion Internal
