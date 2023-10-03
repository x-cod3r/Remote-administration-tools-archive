#include-once
#include "_USkinDLL.au3"
; #INDEX# =======================================================================================================================
; Title ...........: _USkinLibrary.au3
; AutoIt Version ..: 3.2.3++
; Language ........: English
; Description .....: Inter Script communication.
; Author ..........: João Carlos (Jscript FROM Brazil)
; Collaboration....:
; Link ............:
; Modified by .....:
; About DLL .......: This file is a part of the NEEMedia USkin class library.
; 					2005-2006 Never-Ending Media Technology Ltd,co., All Rights Reserved.
;					Refer to language C -> THIS FILE IS THE PROPERTY OF NEEMEDIA AND IS NOT TO BE
;										RE-DISTRIBUTED BY ANY MEANS WHATSOEVER WITHOUT THE EXPRESSED WRITTEN CONSENT OF NEEMEDIA.
;
;					THIS CODE CAN ONLY BE USED UNDER THE TERMS AND CONDITIONS OUTLINED
;					IN THE USKIN PRO LICENSE AGREEMENT. NEEMEDIA GRANTS TO YOU (ONE SOFTWARE DEVELOPER)
;					THE LIMITED RIGHT TO USE THIS SOFTWARE ON A SINGLE COMPUTER.
;
; 					CONTACT INFORMATION:
;					support@neemedia.com
;					http://www.neemedia.com
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
Global $hUSkinDLLHandle = -1
;================================================================================================================================

; #CURRENT# =====================================================================================================================
; _USkin_LoadDLL
; _USkin_Exit
; _USkin_Init
; _USkin_LoadSkin
; _USkin_RemoveSkin
; _USkin_RestoreSkin
; _USkin_AboutSkin
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
;================================================================================================================================

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_LoadDLL
; Description ...: Only loads USkin.dll file in memory.
; Syntax ........: _USkin_LoadDLL(  )
; Parameters ....: None
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......:
; Related .......: _USkin_Exit, _USkin_Init
; Link ..........:
; Example .......: _USkin_LoadDLL()
; ===============================================================================================================================
Func _USkin_LoadDLL()
	Local $sDllName

	$sDllName = _USkinDLL(True)
	If @error Then Return SetError(0, 0, 0)

	$hUSkinDLLHandle = DllOpen($sDllName)
	If $hUSkinDLLHandle = -1 Then Return SetError(0, 0, 0)

	DllCall("kernel32.dll", "handle", "LoadLibraryW", "wstr", $sDllName)
	If @error Then Return SetError(0, 0, 0)

	Return 1
EndFunc   ;==>_USkin_LoadDLL

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_Exit
; Description ...: Exit USkin library and free dll memory.
; Syntax ........: _USkin_Exit(  )
; Parameters ....: None
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......:
; Related .......: _USkin_LoadDLL
; Link ..........:
; Example .......: _USkin_Exit()
; ===============================================================================================================================
Func _USkin_Exit()
	If $hUSkinDLLHandle = -1 Then Return 0

	DllCall($hUSkinDLLHandle, "int", "USkinExit")
	If @error Then Return SetError(0, 0, 0)

	Return 1
EndFunc   ;==>_USkin_Exit

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_Init
; Description ...: Init USkin library and load skin file.
; Syntax ........: _USkin_Init( $sSkinName [, $sUserName [, $sRegCode ]] )
; Parameters ....: $sSkinName           - A string value of full path skin file.
;                  $sUserName          - [optional] A string value. Only if you is a register member of NEEMedia.
;                  $sRegCode           - [optional] A string value. Only if you is a register member of NEEMedia.
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......:
; Related .......: _USkin_LoadDLL
; Link ..........:
; Example .......: _USkin_Init(@ScriptDir & "\Skins\MySkin.msstyles")
; ===============================================================================================================================
Func _USkin_Init($sSkinName, $sUserName = "", $sRegCode = "")
	Local $vUserName = "ptr", $vRegCode = "ptr"

	If $hUSkinDLLHandle = -1 And Not _USkin_LoadDLL() Then Return SetError(0, 0, 0)

	If StringLen($sUserName) Then $vUserName = "str"
	If StringLen($sRegCode) Then $vRegCode = "str"
	DllCall($hUSkinDLLHandle, "int", "USkinInit", $vUserName, $sUserName, $vRegCode, $sRegCode, "str", $sSkinName)
	If @error Then Return SetError(0, 0, 0)

	Return 1
EndFunc   ;==>_USkin_Init

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_LoadSkin
; Description ...: Load skin from file.
; Syntax ........: _USkin_LoadSkin( $sSkinName  )
; Parameters ....: $sSkinName           - A string value.
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......:
; Related .......: _USkin_LoadDLL, _USkin_Init, _USkin_Exit
; Link ..........:
; Example .......: _USkin_LoadSkin(@ScriptDir & "\Skins\MySkin.msstyles")
; ===============================================================================================================================
Func _USkin_LoadSkin($sSkinName)
	If $hUSkinDLLHandle = -1 Then Return 0

	DllCall($hUSkinDLLHandle, "int", "USkinLoadSkin", "str", $sSkinName)
	If @error Then Return SetError(0, 0, 0)

	Return 1
EndFunc   ;==>_USkin_LoadSkin

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_RemoveSkin
; Description ...: Temporary remove Skin style.
; Syntax ........: _USkin_RemoveSkin(  )
; Parameters ....: None
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......: This function pause uskin, changing the interface look and feel into windows default look.
; Related .......: _USkin_RestoreSkin
; Link ..........:
; Example .......: _USkin_RemoveSkin()
; ===============================================================================================================================
Func _USkin_RemoveSkin()
	If $hUSkinDLLHandle = -1 Then Return SetError(1, 0, 0)

	DllCall($hUSkinDLLHandle, "int", "USkinRemoveSkin")
	If @error Then Return SetError(0, 0, 0)

	Return 0
EndFunc   ;==>_USkin_RemoveSkin

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_RestoreSkin
; Description ...: Use after _USkin_RemoveSkin() function to restore interface to uskin look and feel.
; Syntax ........: _USkin_RestoreSkin(  )
; Parameters ....: None
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......:
; Related .......: _USkin_RemoveSkin
; Link ..........:
; Example .......: _USkin_RestoreSkin()
; ===============================================================================================================================
Func _USkin_RestoreSkin()
	If $hUSkinDLLHandle = -1 Then Return SetError(0, 0, 0)

	DllCall($hUSkinDLLHandle, "int", "USkinRestoreSkin")
	If @error Then Return SetError(0, 0, 0)

	Return 1
EndFunc   ;==>_USkin_RestoreSkin

; #FUNCTION# ====================================================================================================================
; Name ..........: _USkin_AboutSkin
; Description ...: Informations about NEEMedia.
; Syntax ........: _USkin_AboutSkin(  )
; Parameters ....: None
; Return values .: Success 		- Returns 1
;				   Failure		- Returns 0
; Author(s) .....: João Carlos (Jscript FROM Brazil)
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func _USkin_AboutSkin()
	If $hUSkinDLLHandle = -1 Then Return SetError(0, 0, 0)

	Local $result = DllCall($hUSkinDLLHandle, "int", "USkinAboutSkin")
	If @error Then Return SetError(0, 0, 0)
	Return 0
EndFunc   ;==>_USkin_AboutSkin