#include-once

;Include Constants
#include <Bass.au3>
#include <BassConstants.au3>
#include "BassVSTConstants.au3"

; #INDEX# =======================================================================================================================
; Title .........: BASSVST.au3
; Description ...: Wrapper of BassVST.DLL
; Author ........: Brett Francis (BrettF)
; Notes..........: This was horrible to create because of the ultimate lack of documentation.  The person that made this
;					could have least included a decent helpfile or readme.  >_>
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
;			_BASS_VST_Startup()
;			_BASS_VST_ChannelSetDSP()
;			_BASS_VST_ChannelRemoveDSP()
;			_BASS_VST_EmbedEditor()
;			_BASS_VST_GetInfo()
;			_BASS_VST_GetParam()
;			_BASS_VST_SetParam()
;			_BASS_VST_GetParamCount()
;			_BASS_VST_GetParamInfo()
;			_BASS_VST_Resume()
;			_BASS_VST_SetBypass()
;			_BASS_VST_GetBypass()
; ===============================================================================================================================

Global $_ghbassVSTDll = -1
Global $BASS_VST_DLL_UDF_VER = "2.4.5.0"
Global $BASS_ERR_DLL_NO_EXIST = -1

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_VST_Startup
; Description ...: Starts up BassCD functions.
; Syntax.........: _BASS_EncodeStartup($sBassVSTDll)
; Parameters ....:  -	$sBassVSTDll	-	The relative path to BassEnc.dll.
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR
;									@error will be set to-
;										- $BASS_ERR_DLL_NO_EXIST	-	File could not be found.
;								  If the version of this UDF is not compatabile with this version of Bass, then the following
;								  error will be displayed to the user.  This can be disabled by setting
;										$BASS_STARTUP_BYPASS_VERSIONCHECK = 1
;								  This is the error show to the user:
;									 	This version of Bass.au3 is not made for Bass.dll VX.X.X.X.  Please update.
; Author ........: Prog@ndy
; Modified.......: Brett Francis (BrettF)
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_Startup($sBassVSTDll = "bassvst.dll")
	;Check if bass has already been started up.
	If $_ghbassVSTDll <> -1 Then Return True
	;Check if $sBassDLL exists.
	If Not FileExists($sBassVSTDll) Then Return SetError($BASS_ERR_DLL_NO_EXIST, 0, False)
	;Check to make sure that the version of Bass.DLL is compatabile with this UDF version.  If not we will throw a text error.
	;Then we will exit the program
	If $BASS_STARTUP_BYPASS_VERSIONCHECK Then
		If _VersionCompare(FileGetVersion($sBassVSTDll), $BASS_VST_DLL_UDF_VER) = -1 Then
			MsgBox(0, "ERROR", "This version of BASSVST.au3 is made for BassVST.dll V" & $BASS_VST_DLL_UDF_VER & ".  Please update")
			Exit
		EndIf
	EndIf
	;Open the DLL
	$_ghbassVSTDll = DllOpen($sBassVSTDll)

	;Check if the DLL was opened correctly.
	Return $_ghbassVSTDll <> -1
EndFunc   ;==>_BASS_VST_Startup

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_VST_ChannelSetDSP
; Description ...:
; Syntax.........: _BASS_VST_ChannelSetDSP($chan, $dllfile, $flags, $priority)
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_ChannelSetDSP($chan, $dllfile, $flags, $priority)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "DWORD", "BASS_VST_ChannelSetDSP", "dword", $chan, "str", $dllfile, "dword", $flags, "int", $priority)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_VST_ChannelRemoveDSP
; Description ...:
; Syntax.........: _BASS_VST_ChannelRemoveDSP($vstHandle)
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_ChannelRemoveDSP($vstHandle)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_ChannelRemoveDSP", "dword", $vstHandle)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_VST_EmbedEditor
; Description ...:
; Syntax.........: _BASS_VST_EmbedEditor($chan, $parent)
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_EmbedEditor($chan, $parent)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_EmbedEditor", "dword", $chan, "hwnd", $parent)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_GetInfo($vstHandle)
	$struct = DllStructCreate ($BASS_VST_INFO)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_GetInfo", $vstHandle, "ptr", DllStructGetPtr ($struct))
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $struct
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_GetParam($vstHandle, $paramIndex)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "float", "BASS_VST_GetParam", "dword", $vstHandle, "int", $paramIndex)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_SetParam($vstHandle, $paramIndex, $value)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_SetParam", "dword", $vstHandle, "int", $paramIndex, "float", $value)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_GetParamCount($vstHandle)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_GetParamCount", "dword", $vstHandle)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_GetParamInfo($vstHandle, $paramIndex)
	$struct = DllStructCreate ($BASS_VST_PARAM_INFO)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_GetParamInfo", "dword", $vstHandle, "int", $paramIndex, "ptr", DllStructGetPtr ($struct))
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $struct
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_Resume($vstHandle)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_Resume", "dword", $vstHandle)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_SetBypass($vstHandle, $state)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "int", "BASS_VST_SetBypass", "dword", $vstHandle, "int", $state)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc

; #FUNCTION# ====================================================================================================================
; Name...........:
; Description ...:
; Syntax.........:
; Parameters ....:  -	$
; Return values .: Success      - Returns True
;                  Failure      - Returns False and sets @ERROR as set by _Bass_ErrorGetCode()
; Author ........: Brett Francis (BrettF)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_VST_GetBypass($vstHandle)
	$_BASSFX_ret_ = DllCall ($_ghbassVSTDll, "dword", "BASS_VST_GetBypass", "dword", $vstHandle)
	If @error Then Return SetError(1,1,0)
	If $_BASSFX_ret_[0] = $BASS_DWORD_ERR Then Return SetError(_BASS_ErrorGetCode(),0, 0)
	Return $_BASSFX_ret_[0]
EndFunc
