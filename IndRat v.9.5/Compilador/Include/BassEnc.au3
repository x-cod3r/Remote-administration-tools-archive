#include-once

;Include Bass.au3
#include <Bass.au3>

;Include Constants
#include <BassEncConstants.au3>

; #INDEX# =======================================================================================================================
; Title .........: _BassEnc.au3
; Description ...: Almost all of BASSENC.DLL translated ready for easy use with AutoIt
;                  Bass.dll and Bass.au3 is needed
; Author ........: Eukalyptus, based on BASS.au3/Brett Francis (BrettF)
; Modified ......: BrettF
; ===============================================================================================================================

; #ToDo#=========================================================================================================================
;function BASS_Encode_GetACMFormat(handle:DWORD; form:Pointer; formlen:DWORD; title:PChar; flags:DWORD): DWORD;
;function BASS_Encode_StartACM(handle:DWORD; form:Pointer; flags:DWORD; proc:ENCODEPROC; user:Pointer): HENCODE;
;function BASS_Encode_StartACMFile(handle:DWORD; form:Pointer; flags:DWORD; filename:PChar): HENCODE; stdcall;
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
;           _BASS_Encode_GetVersion()
;           _BASS_Encode_Start()
;           _BASS_Encode_IsActive()
;           _BASS_Encode_Stop()
;           _BASS_Encode_SetPaused()
;           _BASS_Encode_Write()
;           _BASS_Encode_SetNotify()
;           _BASS_Encode_GetCount()
;           _BASS_Encode_SetChannel()
;           _BASS_Encode_GetChannel()
;           _BASS_Encode_CastInit()
;           _BASS_Encode_CastSetTitle()
;           _BASS_Encode_CastGetStats()
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
; _MakeLong()
; ===============================================================================================================================

Global $_ghBassEncDll = -1
Global $BASS_ENC_DLL_UDF_VER = "2.4.6.0"
Global $BASS_ERR_DLL_NO_EXIST = -1

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_Startup
; Description ...: Starts up BassCD functions.
; Syntax.........: _BASS_EncodeStartup($sBassEncDll)
; Parameters ....:  -	$sBassEncDll	-	The relative path to BassEnc.dll.
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
Func _BASS_Encode_Startup($sBassEncDll = "bassenc.dll")
	;Check if bass has already been started up.
	If $_ghBassEncDll <> -1 Then Return True
	;Check if $sBassDLL exists.
	If Not FileExists($sBassEncDll) Then Return SetError($BASS_ERR_DLL_NO_EXIST, 0, False)
	;Check to make sure that the version of Bass.DLL is compatabile with this UDF version.  If not we will throw a text error.
	;Then we will exit the program
	If $BASS_STARTUP_BYPASS_VERSIONCHECK Then
		If _VersionCompare(FileGetVersion($sBassEncDll), $BASS_ENC_DLL_UDF_VER) = -1 Then
			MsgBox(0, "ERROR", "This version of BASSASIO.au3 is made for BassASIO.dll V" & $BASS_ENC_DLL_UDF_VER & ".  Please update")
			Exit
		EndIf
	EndIf
	;Open the DLL
	$_ghBassEncDll = DllOpen($sBassEncDll)

	;Check if the DLL was opened correctly.
	If $_ghBassEncDll <> 1 Then
		Return True
	Else
		Return False
	EndIf
EndFunc   ;==>_BASS_Encode_Startup

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_GetVersion
; Description ...: Retrieves the version of BASSENC that is loaded.
; Syntax.........: _BASS_Encode_GetVersion()
; Parameters ....: $bass_dll	-	Handle to opened Bass.dll
;                  $_ghBassEncDll	-	Handle to opened Bassenc.dll
; Return values .: Success      -	Returns Version
;				   Failure      -	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_GetVersion()
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_GetVersion")
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_GetVersion

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_Start
; Description ...: Sets up an encoder on a channel.
; Syntax.........: _BASS_Encode_Start($handle, $cmdline, $flags, $proc = "", $user = "")
; Parameters ....: $handle 		-	The channel handle... a HSTREAM, HMUSIC, or HRECORD.
;				   $cmdline 	-	The encoder command-line, including the executable filename and any options. Or the output filename if the BASS_ENCODE_PCM flag is specified.
;				   $flags 		-	A combination of these flags:
;				   		|$BASS_ENCODE_PCM 		-	Write plain PCM sample data to a file, without an encoder. The output filename is given in the cmdline parameter.
;				   		|BASS_ENCODE_NOHEAD 	-	Don't send a WAVE header to the encoder. If this flag is used then the sample format must be passed to the encoder some other way, eg. via the command-line.
;				 		|$BASS_ENCODE_BIGEND 	-	Send big-endian sample data to the encoder, else little-endian. This flag is ignored unless the BASS_ENCODE_NOHEAD flag is used, as WAV files are little-endian.
;				  		|$BASS_ENCODE_FP_8BIT
;				  		|$BASS_ENCODE_FP_16BIT
;				  		|$BASS_ENCODE_FP_24BIT
;				  		|$BASS_ENCODE_FP_32BIT	-	When you want to encode a floating-point channel, but the encoder does not support 32-bit floating-point sample data, then you can use one of these flags to have the sample data converted to 8/16/24/32 bit integer data before it is passed on to the encoder. These flags are ignored if the channel's sample data is not floating-point.
;				   		|$BASS_ENCODE_PAUSE 	-	Start the encoder paused.
;				   		|$BASS_ENCODE_AUTOFREE 	-	Automatically free the encoder when the source channel is freed.
;				   		|$BASS_UNICODE 			-	cmdline is Unicode (UTF-16).
;				   $proc 		-	Optional callback function to receive the encoded data...To have the encoded data received by a callback function, the encoder needs to be told to output to STDOUT (instead of a file).
;                       |Callback function has the following paramaters:
;						|$handle	- 	The stream that needs writing.
;						|$buffer	-	Pointer to the buffer to write the sample data in.
;						|$length	- 	The maximum number of bytes to write.
;						|$user		-	The user instance data:
;				   $user 		-	User instance data to pass to the callback function.
; Return values .: Success      - 	Returns Encoder Handle
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_Start($handle, $cmdline, $flags, $proc = "", $user = "")
	If $proc <> "" Then
		$dc = DllCallbackRegister($proc, "int", "dword;ptr;dword;ptr;")
		$dsUser = DllStructCreate("char[255]")
		DllStructSetData($dsUser, 1, $user)
		$BASSENC_ret_ = DllCall($_ghBassEncDll, "dword", "BASS_Encode_Start", "dword", $handle, "str", $cmdline, "dword", $flags, "ptr", DllCallbackGetPtr($dc), "ptr", DllStructGetPtr($dsUser))
	Else
		$BASSENC_ret_ = DllCall($_ghBassEncDll, "dword", "BASS_Encode_Start", "dword", $handle, "str", $cmdline, "dword", $flags, "ptr", 0, "ptr", 0)
	EndIf
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_Start

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_Stop
; Description ...: Stops an encoder or all encoders on a channel.
; Syntax.........: _BASS_Encode_Stop($handle)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
; Return values .: Success      - 	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_Stop($handle)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_Stop", "dword", $handle)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_Stop

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_IsActive
; Description ...: Checks if an encoder is running.
; Syntax.........: _BASS_Encode_IsActive($handle)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
; Return values .: Success		-	The return value is one of the following:
;				   		|$BASS_ACTIVE_STOPPED 	-	The encoder isn't running.
;				   		|BASS_ACTIVE_PLAYING 	-	The encoder is running.
;				   		|$BASS_ACTIVE_PAUSED 	-	The encoder is paused.
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_IsActive($handle)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "dword", "BASS_Encode_IsActive", "dword", $handle)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_IsActive

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_SetPaused
; Description ...: Pauses or resumes an encoder, or all encoders on a channel.
; Syntax.........: _BASS_Encode_SetPaused($handle, $paused)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
;                  $paused		-	True = paused, False = Not paused
; Return values .: Success		-	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_SetPaused($handle, $paused)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_SetPaused", "dword", $handle, "int", $paused)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_SetPaused

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_Write
; Description ...: Sends sample data to an encoder or all encoders on a channel.
; Syntax.........: _BASS_Encode_Write($handle, $buffer, $length)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
;                  $buffer		-	The buffer containing the sample data.
;                  $length		-	The number of BYTES in the buffer.
; Return values .: Success		-	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_Write($handle, $buffer, $length)
	$ds_buffer = DllStructCreate("char[255]")
	DllStructSetData($ds_buffer, 1, $buffer)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_Write", "dword", $handle, "ptr", DllStructGetPtr($ds_buffer), "DWORD", $length)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_Write

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_SetNotify
; Description ...: Sets a callback function on an encoder (or all encoders on a channel) to receive notifications about its status.
; Syntax.........: _BASS_Encode_SetNotify($handle, $proc, $user)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
;                  $proc		-	Callback function to receive the notifications
;                       |Callback function has the following paramaters:
;						|$handle	- 	The stream that needs writing.
;						|$buffer	-	Pointer to the buffer to write the sample data in.
;						|$length	- 	The maximum number of bytes to write.
;						|$user		-	The user instance data:
;                  $user		-	User instance data to pass to the callback function
; Return values .: Success		-	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_SetNotify($handle, $proc, $user)
	$dc = DllCallbackRegister($proc, "int", "dword;ptr;dword;ptr;")
	$dsUser = DllStructCreate("char[255]")
	DllStructSetData($dsUser, 1, $user)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_SetNotify", "dword", $handle, "ptr", DllCallbackGetPtr($dc), "ptr", DllStructGetPtr($dsUser))
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_SetNotify

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_GetCount
; Description ...: Retrieves the amount data sent to or received from an encoder, or sent to a cast server.
; Syntax.........: _BASS_Encode_GetCount($handle, $count)
; Parameters ....: $handle 		-	The encoder handle
;                  $count		-	The count to retrieve. One of the following:
;                  		|$BASS_ENCODE_COUNT_IN 		-	Data sent to the encoder.
;                  		|$BASS_ENCODE_COUNT_OUT 	-	Data received from the encoder. This only applies when the encoder outputs to STDOUT or it is an ACM encoder.
;                  		|$BASS_ENCODE_COUNT_CAST 	-	Data sent to a cast server.
; Return values .: Success      - 	the requested count (in bytes) is returned
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_GetCount($handle, $count)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "dword", "BASS_Encode_GetCount", "dword", $handle, "dword", $count)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_GetCount

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_SetChannel
; Description ...: Moves an encoder (or all encoders on a channel) to another channel.
; Syntax.........: _BASS_Encode_SetChannel($handle, $channel)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
;                  $channel		-	The channel to move the encoder(s) to... a HSTREAM, HMUSIC, or HRECORD.
; Return values .: Success		-	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_SetChannel($handle, $channel)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_SetChannel", "dword", $handle, "dword", $channel)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_SetChannel

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_GetChannel
; Description ...: Retrieves the channel that an encoder is set on.
; Syntax.........: _BASS_Encode_GetChannel($handle)
; Parameters ....: $handle 		-	The encoder or channel handle... a HENCODE, HSTREAM, HMUSIC, or HRECORD.
; Return values .: Success      - 	the encoder's channel handle is returned
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_GetChannel($handle)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "dword", "BASS_Encode_GetChannel", "dword", $handle)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_GetChannel

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_CastInit
; Description ...: Initializes sending an encoder's output to a Shoutcast or Icecast server.
; Syntax.........: _BASS_Encode_CastInit($handle, $server, $pass, $content, $name, $url, $genre, $desc, $headers, $bitrate, $pub)
; Parameters ....: $handle 		-	The encoder handle.
;                  $server 		-	The server to send to, in the form of "address:port" (Shoutcast) or "address:port/mount" (Icecast).
;                  $pass 		-	The server password.
;                  $content 	-	The MIME type of the encoder output. This can be one of the following:
;                  		|$BASS_ENCODE_TYPE_MP3 	-	MP3.
;                  		|$BASS_ENCODE_TYPE_OGG 	-	OGG.
;                  		|$BASS_ENCODE_TYPE_AAC 	-	AAC.
;                  $name 		-	The stream name... NULL = no name.
;                  $url 		-	The URL, for example, of the radio station's webpage... NULL = no URL.
;                  $genre 		-	The genre... NULL = no genre.
;                  $desc 		-	Description... NULL = no description. This applies to Icecast only.
;                  $headers 	-	Other headers to send to the server... NULL = none. Each header should end with a carriage return and line feed ("\r\n").
;                  $bitrate 	-	The bitrate (in kbps) of the encoder output... 0 = undefined bitrate. In cases where the bitrate is a "quality" (rather than CBR) setting, the headers parameter can be used to communicate that instead, eg. "ice-bitrate: Quality 0\r\n".
;                  $pub 		-	Public? If TRUE, the stream is added to the public directory of streams, at shoutcast.com or dir.xiph.org (or as defined in the server config).
; Return values .: Success      - 	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_CastInit($handle, $server, $pass, $content, $name, $url, $genre, $desc, $headers, $bitrate, $pub)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_CastInit", "dword", $handle, "str", $server, "str", $pass, "str", $content, "str", $name, "str", $url, "str", $genre, "str", $desc, "str", $headers, "dword", $bitrate, "int", $pub)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_CastInit

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_CastSetTitle
; Description ...: Sets the title of a cast stream.
; Syntax.........: _BASS_Encode_CastSetTitle($title, $url)
; Parameters ....: $handle		-	The encoder handle
;                  $title		-	The title.
;                  $url			-	URL to go with the title... NULL = no URL. This applies to Shoutcast only.
; Return values .: Success		-	Returns True
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_CastSetTitle($handle, $title, $url)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_CastSetTitle", "dword", $handle, "str", $title, "str", $url)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_CastSetTitle

; #FUNCTION# ====================================================================================================================
; Name...........: _BASS_Encode_CastGetStats
; Description ...: Retrieves stats from the Shoutcast or Icecast server.
; Syntax.........: _BASS_Encode_CastGetStats($stype, $pass)
; Parameters ....: $handle		-	The encoder handle
;                  $stype		-	The type of stats to retrieve. One of the following.
;                  		|$BASS_ENCODE_STATS_SHOUT 		-	Shoutcast stats, including listener information and additional server information.
;                  		|$BASS_ENCODE_STATS_ICE 		-	Icecast mount-point listener information.
;                  		|$BASS_ENCODE_STATS_ICESERV 	-	Icecast server stats, including information on all mount points on the server.
;                  $pass		-	Password when retrieving Icecast server stats... NULL = use the password provided in the _BASS_Encode_CastInit call.
; Return values .: Success		-	the stats are returned
;				   Failure      - 	Returns 0 and sets @ERROR to error returned by _BASS_ErrorGetCode()
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _BASS_Encode_CastGetStats($handle, $stype, $pass)
	$BASSENC_ret_ = DllCall($_ghBassEncDll, "int", "BASS_Encode_CastGetStats", "dword", $handle, "dword", $stype, "str", $pass)
	$_gBassEncError = _BASS_ErrorGetCode()
	If $_gBassEncError <> 0 Then
		Return SetError($_gBassEncError, "", 0)
	Else
		Return SetError(0, "", $BASSENC_ret_[0])
	EndIf
EndFunc   ;==>_BASS_Encode_CastGetStats

; #INTERNAL# ====================================================================================================================
; Name...........: _MakeLong
; Description ...: Returns longword where $lo_value is the lo_word and $hi_value is the hi_word
; Syntax.........: _MakeLong($lo_value, $hi_value)
; Parameters ....: 	-	$lo_value
;                   -   $hi_value
; Return values .: Success      - Returns longword value
; Author ........: Eukalyptus
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
; ===============================================================================================================================
Func _MakeLong($lo_value, $hi_value)
	Return BitOR(BitAND($hi_value * 0x10000, 0xFFFF0000), BitAND($lo_value, 0xFFFF))
EndFunc   ;==>_MakeLong
