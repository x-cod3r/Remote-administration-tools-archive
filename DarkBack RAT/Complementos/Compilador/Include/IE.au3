#include-once

#include "WinAPIError.au3"
#include "FileConstants.au3"

; #INDEX# =======================================================================================================================
; Title .........: Internet Explorer Automation UDF Library for AutoIt3
; AutoIt Version : 3.3.9++
; Language ......: English
; Description ...: A collection of functions for creating, attaching to, reading from and manipulating Internet Explorer.
; Author(s) .....: DaleHohm, big_daddy, jpm
; Dll ...........: user32.dll, ole32.dll, oleacc.dll
; ===============================================================================================================================

#Region Header
#cs
	Title:   Internet Explorer Automation UDF Library for AutoIt3
	Filename:  IE.au3
	Description: A collection of functions for creating, attaching to, reading from and manipulating Internet Explorer
	Author:   DaleHohm
	Modified: jpm
	Version:  T3.0-1
	Last Update: 13/06/02
	Requirements: AutoIt3 3.3.9 or higher

	Update History:
	===================================================
	T3.0-1 13/6/2

	Enhancements
	- Fixed _IE_Introduction, _IE_Examples generate HTML5
	- Added check in __IEComErrorUnrecoverable for COM error -2147023174, "RPC server not accessible."
	- Fixed check in __IEComErrorUnrecoverable for COM error -2147024891, "Access is denied."
	- Fixed check in __IEComErrorUnrecoverable for COM error  -2147352567, "an exception has occurred."
	- Fixed __IEIsObjType() not restoring _IEErrorNotify()
	- Fixed $f_mustUnlock on Error in _IECreate()
	- Fixed no timeout cheking if error in _IELoadWait()
	- Fixed HTML5 support in _IEImgClick(), _IEFormImageClick()
	- Fixed _IEHeadInsertEventScript() COM error return
	- Updated _IEErrorNotify() default keyword support
	- Updated rename __IENotify() to __IEConsoleWriteError() and restore calling  @error
	- Removed __IEInternalErrorHandler() (not used any more)
	- Updated Function Headers
	- Updated doc and splitting and checking examples

	T3.0-0 12/9/3

	Fixes
	- Removed _IEErrorHandlerRegister() and all internal calls to it.  Unneeded as COM errors are no longer fatal
	- Removed code deprecated in V2
	- Fixed _IELoadWait check for unrecoverable COM errors
	- Removed Vcard support from _IEPropertyGet (IE removed support in IE7)
	- Code cleanup with #AutoIt3Wrapper_Au3Check_Parameters=-d -w 1 -w 2 -w 3 -w- 4 -w 5 -w 6

	New Features
	- Added "scrollIntoView" to _IEAction

	Enhancements
	- Added check in __IEComErrorUnrecoverable for COM error -2147023179, "The interface is unknown."
	- Added "Trap COM error, report and return" to functions that perform blind method calls (those without return values)

	===================================================
#ce
#EndRegion Header

; #VARIABLES# ===================================================================================================================
#Region Global Variables
Global $__IELoadWaitTimeout = 300000 ; 5 Minutes
Global $__IEAU3Debug = False
Global $_IEErrorNotify = True
Global $o__IEErrorHandler, $s__IEUserErrorHandler
Global _; Com Error Handler Status Strings
		$IEComErrorNumber, _
		$IEComErrorNumberHex, _
		$IEComErrorDescription, _
		$IEComErrorScriptline, _
		$IEComErrorWinDescription, _
		$IEComErrorSource, _
		$IEComErrorHelpFile, _
		$IEComErrorHelpContext, _
		$IEComErrorLastDllError, _
		$IEComErrorComObj, _
		$IEComErrorOutput
#EndRegion Global Variables
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
#Region Global Constants
Global Const $IEAU3VersionInfo[6] = ["T", 3, 0, 1, "20130601", "T3.0-1"]
Global Const $LSFW_LOCK = 1, $LSFW_UNLOCK = 2
;
; Enums
;
Global Enum _; Error Status Types
		$_IEStatus_Success = 0, _
		$_IEStatus_GeneralError, _
		$_IEStatus_ComError, _
		$_IEStatus_InvalidDataType, _
		$_IEStatus_InvalidObjectType, _
		$_IEStatus_InvalidValue, _
		$_IEStatus_LoadWaitTimeout, _
		$_IEStatus_NoMatch, _
		$_IEStatus_AccessIsDenied, _
		$_IEStatus_ClientDisconnected
Global Enum Step * 2 _; NotificationLevel
		$_IENotifyLevel_None = 0, _
		$_IENotifyNotifyLevel_Warning = 1, _
		$_IENotifyNotifyLevel_Error, _
		$_IENotifyNotifyLevel_ComError
Global Enum Step * 2 _; NotificationMethod
		$_IENotifyMethod_Silent = 0, _
		$_IENotifyMethod_Console = 1, _
		$_IENotifyMethod_ToolTip, _
		$_IENotifyMethod_MsgBox
#EndRegion Global Constants
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _IECreate
; _IECreateEmbedded
; _IENavigate
; _IEAttach
; _IELoadWait
; _IELoadWaitTimeout
;
; _IEIsFrameSet
; _IEFrameGetCollection
; _IEFrameGetObjByName
;
; _IELinkClickByText
; _IELinkClickByIndex
; _IELinkGetCollection
;
; _IEImgClick
; _IEImgGetCollection
;
; _IEFormGetCollection
; _IEFormGetObjByName
; _IEFormElementGetCollection
; _IEFormElementGetObjByName
; _IEFormElementGetValue
; _IEFormElementSetValue
; _IEFormElementOptionSelect
; _IEFormElementCheckBoxSelect
; _IEFormElementRadioSelect
; _IEFormImageClick
; _IEFormSubmit
; _IEFormReset
;
; _IETableGetCollection
; _IETableWriteToArray
;
; _IEBodyReadHTML
; _IEBodyReadText
; _IEBodyWriteHTML
; _IEDocReadHTML
; _IEDocWriteHTML
; _IEDocInsertText
; _IEDocInsertHTML
; _IEHeadInsertEventScript
;
; _IEDocGetObj
; _IETagNameGetCollection
; _IETagNameAllGetCollection
; _IEGetObjByName
; _IEGetObjById
; _IEAction
; _IEPropertyGet
; _IEPropertySet
; _IEErrorNotify
; _IEQuit
;
; _IE_Introduction
; _IE_Example
; _IE_VersionInfo
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; __IELockSetForegroundWindow
; __IEControlGetObjFromHWND
; __IERegisterWindowMessage
; __IESendMessageTimeout
; __IEIsObjType
; __IEConsoleWriteError
; __IEComErrorUnrecoverable
;
; __IENavigate
; __IEStringToBstr
; __IEBstrToString
; __IECreateNewIE
; __IETempFile
; ===============================================================================================================================

#Region Core functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IECreate($s_Url = "about:blank", $f_tryAttach = 0, $f_visible = 1, $f_wait = 1, $f_takeFocus = 1)
	If Not $f_visible Then $f_takeFocus = 0 ; Force takeFocus to 0 for hidden window

	If $f_tryAttach Then
		Local $oResult = _IEAttach($s_Url, "url")
		If IsObj($oResult) Then
			If $f_takeFocus Then WinActivate(HWnd($oResult.hWnd))
			Return SetError($_IEStatus_Success, 1, $oResult)
		EndIf
	EndIf

	Local $f_mustUnlock = 0
	If Not $f_visible And __IELockSetForegroundWindow($LSFW_LOCK) Then $f_mustUnlock = 1

	Local $o_object = ObjCreate("InternetExplorer.Application")
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IECreate", "", "Browser Object Creation Failed")
		If $f_mustUnlock Then __IELockSetForegroundWindow($LSFW_UNLOCK)
		Return SetError($_IEStatus_GeneralError, 0, 0)
	EndIf

	$o_object.visible = $f_visible

	; If the unlock doesn't work we may have created an unwanted modal window
	If $f_mustUnlock And Not __IELockSetForegroundWindow($LSFW_UNLOCK) Then __IEConsoleWriteError("Warning", "_IECreate", "", "Foreground Window Unlock Failed!")
	_IENavigate($o_object, $s_Url, $f_wait)

	; Store @error after _IENavigate() so that it can be returned.
	Local $iError = @error

	; IE9 sets focus to the URL bar when an about: URI is displayed (such as about:blank).  This can cause
	; _IEAction(..., "focus") to work incorrectly.  It will give focus to the element (as shown by the elements's
	; appearance changing but) the input caret will not move.  The work-around for this "helpful" behavior is
	; to explicitly give focus to the document.  We should only do this for about: URIs and on successful
	; navigate.
	If Not $iError And StringLeft($s_Url, 6) = "about:" Then
		Local $oDocument = $o_object.document
		_IEAction($oDocument, "focus")
	EndIf

	Return SetError($iError, 0, $o_object)
EndFunc   ;==>_IECreate

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IECreateEmbedded()
	Local $o_object = ObjCreate("Shell.Explorer.2")

	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IECreateEmbedded", "", "WebBrowser Object Creation Failed")
		Return SetError($_IEStatus_GeneralError, 0, 0)
	EndIf
	;
	Return SetError($_IEStatus_Success, 0, $o_object)
EndFunc   ;==>_IECreateEmbedded

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IENavigate(ByRef $o_object, $s_Url, $f_wait = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IENavigate", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "documentContainer") Then
		__IEConsoleWriteError("Error", "_IENavigate", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.navigate($s_Url)
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IENavigate", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	If $f_wait Then
		_IELoadWait($o_object)
		Return SetError(@error, 0, -1)
	EndIf

	Return SetError($_IEStatus_Success, 0, -1)
EndFunc   ;==>_IENavigate

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEAttach($s_string, $s_mode = "Title", $i_instance = 1)
	$s_mode = StringLower($s_mode)

	$i_instance = Int($i_instance)
	If $i_instance < 1 Then
		__IEConsoleWriteError("Error", "_IEAttach", "$_IEStatus_InvalidValue", "$i_instance < 1")
		Return SetError($_IEStatus_InvalidValue, 3, 0)
	EndIf

	If $s_mode = "embedded" Or $s_mode = "dialogbox" Then
		Local $iWinTitleMatchMode = Opt("WinTitleMatchMode", 2)
		If $s_mode = "dialogbox" And $i_instance > 1 Then
			If IsHWnd($s_string) Then
				$i_instance = 1
				__IEConsoleWriteError("Warning", "_IEAttach", "$_IEStatus_GeneralError", "$i_instance > 1 invalid with HWnd and DialogBox.  Setting to 1.")
			Else
				Local $a_winlist = WinList($s_string, "")
				If $i_instance <= $a_winlist[0][0] Then
					$s_string = $a_winlist[$i_instance][1]
					$i_instance = 1
				Else
					__IEConsoleWriteError("Warning", "_IEAttach", "$_IEStatus_NoMatch")
					Opt("WinTitleMatchMode", $iWinTitleMatchMode)
					Return SetError($_IEStatus_NoMatch, 1, 0)
				EndIf
			EndIf
		EndIf
		Local $h_control = ControlGetHandle($s_string, "", "[CLASS:Internet Explorer_Server; INSTANCE:" & $i_instance & "]")
		Local $oResult = __IEControlGetObjFromHWND($h_control)
		Opt("WinTitleMatchMode", $iWinTitleMatchMode)
		If IsObj($oResult) Then
			Return SetError($_IEStatus_Success, 0, $oResult)
		Else
			__IEConsoleWriteError("Warning", "_IEAttach", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 1, 0)
		EndIf
	EndIf

	Local $o_Shell = ObjCreate("Shell.Application")
	Local $o_ShellWindows = $o_Shell.Windows(); collection of all ShellWindows (IE and File Explorer)
	Local $i_tmp = 1
	Local $f_NotifyStatus, $f_isBrowser, $s_tmp
	For $o_window In $o_ShellWindows
		;------------------------------------------------------------------------------------------
		; Check to verify that the window object is a valid browser, if not, skip it
		;
		; Setup internal error handler to Trap COM errors, turn off error notification,
		;     check object property validity, set a flag and reset error handler and notification
		;
		$f_isBrowser = True

		; Turn off error notification for internal processing
		$f_NotifyStatus = _IEErrorNotify() ; save current error notify status
		_IEErrorNotify(False)

		; Check conditions to verify that the object is a browser
		If $f_isBrowser Then
			$s_tmp = $o_window.type ; Is .type a valid property?
			If @error Then $f_isBrowser = False
		EndIf
		If $f_isBrowser Then
			$s_tmp = $o_window.document.title ; Does object have a .document and .title property?
			If @error Then $f_isBrowser = False
		EndIf

		; restore error notify
		_IEErrorNotify($f_NotifyStatus) ; restore notification status
		;------------------------------------------------------------------------------------------

		If $f_isBrowser Then
			Switch $s_mode
				Case "title"
					If StringInStr($o_window.document.title, $s_string) > 0 Then
						If $i_instance = $i_tmp Then
							Return SetError($_IEStatus_Success, 0, $o_window)
						Else
							$i_tmp += 1
						EndIf
					EndIf
				Case "instance"
					If $i_instance = $i_tmp Then
						Return SetError($_IEStatus_Success, 0, $o_window)
					Else
						$i_tmp += 1
					EndIf
				Case "windowtitle"
					Local $f_found = False
					$s_tmp = RegRead("HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\", "Window Title")
					If Not @error Then
						If StringInStr($o_window.document.title & " - " & $s_tmp, $s_string) Then $f_found = True
					Else
						If StringInStr($o_window.document.title & " - Microsoft Internet Explorer", $s_string) Then $f_found = True
						If StringInStr($o_window.document.title & " - Windows Internet Explorer", $s_string) Then $f_found = True
					EndIf
					If $f_found Then
						If $i_instance = $i_tmp Then
							Return SetError($_IEStatus_Success, 0, $o_window)
						Else
							$i_tmp += 1
						EndIf
					EndIf
				Case "url"
					If StringInStr($o_window.LocationURL, $s_string) > 0 Then
						If $i_instance = $i_tmp Then
							Return SetError($_IEStatus_Success, 0, $o_window)
						Else
							$i_tmp += 1
						EndIf
					EndIf
				Case "text"
					If StringInStr($o_window.document.body.innerText, $s_string) > 0 Then
						If $i_instance = $i_tmp Then
							Return SetError($_IEStatus_Success, 0, $o_window)
						Else
							$i_tmp += 1
						EndIf
					EndIf
				Case "html"
					If StringInStr($o_window.document.body.innerHTML, $s_string) > 0 Then
						If $i_instance = $i_tmp Then
							Return SetError($_IEStatus_Success, 0, $o_window)
						Else
							$i_tmp += 1
						EndIf
					EndIf
				Case "hwnd"
					If $i_instance > 1 Then
						$i_instance = 1
						__IEConsoleWriteError("Warning", "_IEAttach", "$_IEStatus_GeneralError", "$i_instance > 1 invalid with HWnd.  Setting to 1.")
					EndIf
					If _IEPropertyGet($o_window, "hwnd") = $s_string Then
						Return SetError($_IEStatus_Success, 0, $o_window)
					EndIf
				Case Else
					; Invalid Mode
					__IEConsoleWriteError("Error", "_IEAttach", "$_IEStatus_InvalidValue", "Invalid Mode Specified")
					Return SetError($_IEStatus_InvalidValue, 2, 0)
			EndSwitch
		EndIf
	Next
	__IEConsoleWriteError("Warning", "_IEAttach", "$_IEStatus_NoMatch")
	Return SetError($_IEStatus_NoMatch, 1, 0)
EndFunc   ;==>_IEAttach

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IELoadWait(ByRef $o_object, $i_delay = 0, $i_timeout = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IELoadWait", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf

	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IELoadWait", "$_IEStatus_InvalidObjectType", ObjName($o_object))
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf

	Local $oTemp, $f_Abort = False, $i_ErrorStatusCode = $_IEStatus_Success

	; Turn off error notification for internal processing
	Local $f_NotifyStatus = _IEErrorNotify() ; save current error notify status
	_IEErrorNotify(False)

	Sleep($i_delay)
	;
	Local $i_error
	Local $IELoadWaitTimer = TimerInit()
	If $i_timeout = -1 Then $i_timeout = $__IELoadWaitTimeout

	Select
		Case __IEIsObjType($o_object, "browser"); Internet Explorer
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($o_object.readyState) = ' & String($o_object.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($o_object.readyState) = "complete" Or $o_object.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($o_object.document.readyState) = ' & String($o_object.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($o_object.document.readyState) = "complete" Or $o_object.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
		Case __IEIsObjType($o_object, "window") ; Window, Frame, iFrame
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($o_object.document.readyState) = ' & String($o_object.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($o_object.document.readyState) = "complete" Or $o_object.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($o_object.top.document.readyState) = ' & String($o_object.top.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($o_object.top.document.readyState) = "complete" Or $o_object.top.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
		Case __IEIsObjType($o_object, "document") ; Document
			$oTemp = $o_object.parentWindow
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($oTemp.document.readyState) = ' & String($oTemp.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($oTemp.document.readyState) = "complete" Or $oTemp.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($oTemp.top.document.readyState) = ' & String($oTemp.top.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($oTemp.top.document.readyState) = "complete" Or $oTemp.top.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
		Case Else ; this should work with any other DOM object
			$oTemp = $o_object.document.parentWindow
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($oTemp.document.readyState) = ' & String($oTemp.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($oTemp.document.readyState) = "complete" Or $oTemp.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
			; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : String($oTemp.top.document.readyState) = ' & String($oTemp.top.document.readyState) & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
			While Not (String($oTemp.top.document.readyState) = "complete" Or $o_object.top.document.readyState = 4 Or $f_Abort)
				; Trap unrecoverable COM errors
				If @error Then
					$i_error = @error
					If __IEComErrorUnrecoverable($i_error) Then
						$i_ErrorStatusCode = __IEComErrorUnrecoverable($i_error)
						$f_Abort = True
					EndIf
				ElseIf (TimerDiff($IELoadWaitTimer) > $i_timeout) Then
					$i_ErrorStatusCode = $_IEStatus_LoadWaitTimeout
					$f_Abort = True
				EndIf
				Sleep(100)
			WEnd
	EndSelect

	; restore error notify
	_IEErrorNotify($f_NotifyStatus) ; restore notification status

	; ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $i_ErrorStatusCode = ' & $i_ErrorStatusCode & @CRLF & '>Error code: ' & @error & '    Extended code: 0x' & Hex(@extended) & @CRLF) ;### Debug Console
	Switch $i_ErrorStatusCode
		Case $_IEStatus_Success
			Return SetError($_IEStatus_Success, 0, 1)
		Case $_IEStatus_LoadWaitTimeout
			__IEConsoleWriteError("Warning", "_IELoadWait", "$_IEStatus_LoadWaitTimeout")
			Return SetError($_IEStatus_LoadWaitTimeout, 3, 0)
		Case $_IEStatus_AccessIsDenied
			__IEConsoleWriteError("Warning", "_IELoadWait", "$_IEStatus_AccessIsDenied", _
					"Cannot verify readyState.  Likely casue: cross-domain scripting security restriction. (" & $i_error & ")")
			Return SetError($_IEStatus_AccessIsDenied, 0, 0)
		Case $_IEStatus_ClientDisconnected
			__IEConsoleWriteError("Error", "_IELoadWait", "$_IEStatus_ClientDisconnected", _
					$i_error & ", Browser has been deleted prior to operation.")
			Return SetError($_IEStatus_ClientDisconnected, 0, 0)
		Case Else
			__IEConsoleWriteError("Error", "_IELoadWait", "$_IEStatus_GeneralError", "Invalid Error Status - Notify IE.au3 developer")
			Return SetError($_IEStatus_GeneralError, 0, 0)
	EndSwitch
EndFunc   ;==>_IELoadWait

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IELoadWaitTimeout($i_timeout = -1)
	If $i_timeout = -1 Then
		Return SetError($_IEStatus_Success, 0, $__IELoadWaitTimeout)
	Else
		$__IELoadWaitTimeout = $i_timeout
		Return SetError($_IEStatus_Success, 0, 1)
	EndIf
EndFunc   ;==>_IELoadWaitTimeout

#EndRegion Core functions

#Region Frame Functions
; Security Note on Frame functions:
; Note that security restriction in Internet Explorer related to cross-site scripting
; between frames can cause serious problems with the frame functions.  Functions that
; work connected to one site will fail when connected to another depending on the sites
; referenced in the frames.  In general, if all the referenced pages are on the same
; webserver these functions should work as described; if not, unexpected COM failures
; can occur.
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEIsFrameSet(ByRef $o_object)
	; Note: this is more reliable test for a FrameSet than checking the
	; number of frames (document.frames.length) because iFrames embedded on a normal
	; page are included in the frame collection even though it is not a FrameSet
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEIsFrameSet", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If String($o_object.document.body.tagName) = "frameset" Then
		Return SetError($_IEStatus_Success, 0, 1)
	Else
		If @error Then ; Trap COM error, report and return
			__IEConsoleWriteError("Error", "_IEIsFrameSet", "$_IEStatus_COMError", @error)
			Return SetError($_IEStatus_ComError, @error, 0)
		EndIf
		Return SetError($_IEStatus_Success, 0, 0)
	EndIf
EndFunc   ;==>_IEIsFrameSet

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFrameGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFrameGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $o_object.document.parentwindow.frames.length, _
					$o_object.document.parentwindow.frames)
		Case $i_index > -1 And $i_index < $o_object.document.parentwindow.frames.length
			Return SetError($_IEStatus_Success, $o_object.document.parentwindow.frames.length, _
					$o_object.document.parentwindow.frames.item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IEFrameGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			__IEConsoleWriteError("Warning", "_IEFrameGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 2, 0)
	EndSelect
EndFunc   ;==>_IEFrameGetCollection

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFrameGetObjByName(ByRef $o_object, $s_name)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFrameGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $oTemp, $oFrames

	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEFrameGetObjByName", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf

	If __IEIsObjType($o_object, "document") Then
		$oTemp = $o_object.parentWindow
	Else
		$oTemp = $o_object.document.parentWindow
	EndIf

	If _IEIsFrameSet($oTemp) Then
		$oFrames = _IETagNameGetCollection($oTemp, "frame")
	Else
		$oFrames = _IETagNameGetCollection($oTemp, "iframe")
	EndIf

	If $oFrames.length Then
		For $oFrame In $oFrames
			If String($oFrame.name) = $s_name Then Return SetError($_IEStatus_Success, 0, $oTemp.frames($s_name))
		Next
		__IEConsoleWriteError("Warning", "_IEFrameGetObjByName", "$_IEStatus_NoMatch", "No frames matching name")
		Return SetError($_IEStatus_NoMatch, 2, 0)
	Else
		__IEConsoleWriteError("Warning", "_IEFrameGetObjByName", "$_IEStatus_NoMatch", "No Frames found")
		Return SetError($_IEStatus_NoMatch, 2, 0)
	EndIf
EndFunc   ;==>_IEFrameGetObjByName

#EndRegion Frame Functions

#Region Link functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IELinkClickByText(ByRef $o_object, $s_linkText, $i_index = 0, $f_wait = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IELinkClickByText", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $found = 0, $linktext, $links = $o_object.document.links
	$i_index = Number($i_index)
	For $link In $links
		$linktext = String($link.outerText)
		If $linktext = $s_linkText Then
			If ($found = $i_index) Then
				$link.click()
				If @error Then ; Trap COM error, report and return
					__IEConsoleWriteError("Error", "_IELinkClickByText", "$_IEStatus_COMError", @error)
					Return SetError($_IEStatus_ComError, @error, 0)
				EndIf
				If $f_wait Then
					_IELoadWait($o_object)
					Return SetError(@error, 0, -1)
				EndIf
				Return SetError($_IEStatus_Success, 0, -1)
			EndIf
			$found = $found + 1
		EndIf
	Next
	__IEConsoleWriteError("Warning", "_IELinkClickByText", "$_IEStatus_NoMatch")
	Return SetError($_IEStatus_NoMatch, 0, 0) ; Could be caused by parameter 2, 3 or both
EndFunc   ;==>_IELinkClickByText

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IELinkClickByIndex(ByRef $o_object, $i_index, $f_wait = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IELinkClickByIndex", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $oLinks = $o_object.document.links, $oLink
	$i_index = Number($i_index)
	If ($i_index >= 0) And ($i_index <= $oLinks.length - 1) Then
		$oLink = $oLinks($i_index)
		$oLink.click()
		If @error Then ; Trap COM error, report and return
			__IEConsoleWriteError("Error", "_IELinkClickByIndex", "$_IEStatus_COMError", @error)
			Return SetError($_IEStatus_ComError, @error, 0)
		EndIf
		If $f_wait Then
			_IELoadWait($o_object)
			Return SetError(@error, 0, -1)
		EndIf
		Return SetError($_IEStatus_Success, 0, -1)
	Else
		__IEConsoleWriteError("Warning", "_IELinkClickByIndex", "$_IEStatus_NoMatch")
		Return SetError($_IEStatus_NoMatch, 2, 0)
	EndIf
EndFunc   ;==>_IELinkClickByIndex

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IELinkGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IELinkGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $o_object.document.links.length, _
					$o_object.document.links)
		Case $i_index > -1 And $i_index < $o_object.document.links.length
			Return SetError($_IEStatus_Success, $o_object.document.links.length, _
					$o_object.document.links.item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IELinkGetCollection", "$_IEStatus_InvalidValue")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			__IEConsoleWriteError("Warning", "_IELinkGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 2, 0)
	EndSelect
EndFunc   ;==>_IELinkGetCollection
#EndRegion Link functions

#Region Image functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IEImgClick(ByRef $o_object, $s_linkText, $s_mode = "src", $i_index = 0, $f_wait = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEImgClick", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $linktext, $found = 0, $imgs = $o_object.document.images
	$s_mode = StringLower($s_mode)
	$i_index = Number($i_index)
	For $img In $imgs
		Select
			Case $s_mode = "alt"
				$linktext = $img.alt
			Case $s_mode = "name"
				$linktext = $img.name
				If Not IsString($linktext) Then $linktext = $img.id ; html5 support
			Case $s_mode = "id"
				$linktext = $img.id
			Case $s_mode = "src"
				$linktext = $img.src
			Case Else
				__IEConsoleWriteError("Error", "_IEImgClick", "$_IEStatus_InvalidValue", "Invalid mode: " & $s_mode)
				Return SetError($_IEStatus_InvalidValue, 3, 0)
		EndSelect
		If StringInStr($linktext, $s_linkText) Then
			If ($found = $i_index) Then
				$img.click()
				If @error Then ; Trap COM error, report and return
					__IEConsoleWriteError("Error", "_IEImgClick", "$_IEStatus_COMError", @error)
					Return SetError($_IEStatus_ComError, @error, 0)
				EndIf
				If $f_wait Then
					_IELoadWait($o_object)
					Return SetError(@error, 0, -1)
				EndIf
				Return SetError($_IEStatus_Success, 0, -1)
			EndIf
			$found = $found + 1
		EndIf
	Next
	__IEConsoleWriteError("Warning", "_IEImgClick", "$_IEStatus_NoMatch")
	Return SetError($_IEStatus_NoMatch, 0, 0) ; Could be caused by parameter 2, 4 or both
EndFunc   ;==>_IEImgClick

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEImgGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEImgGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $oTemp = _IEDocGetObj($o_object)
	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $oTemp.images.length, $oTemp.images)
		Case $i_index > -1 And $i_index < $oTemp.images.length
			Return SetError($_IEStatus_Success, $oTemp.images.length, $oTemp.images.item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IEImgGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			__IEConsoleWriteError("Warning", "_IEImgGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 1, 0)
	EndSelect
EndFunc   ;==>_IEImgGetCollection

#EndRegion Image functions

#Region Form functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $oTemp = _IEDocGetObj($o_object)
	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $oTemp.forms.length, $oTemp.forms)
		Case $i_index > -1 And $i_index < $oTemp.forms.length
			Return SetError($_IEStatus_Success, $oTemp.forms.length, $oTemp.forms.item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IEFormGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			__IEConsoleWriteError("Warning", "_IEFormGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 1, 0)
	EndSelect
EndFunc   ;==>_IEFormGetCollection

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormGetObjByName(ByRef $o_object, $s_name, $i_index = 0)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	;----- Determine valid collection length
	Local $i_length = 0
	Local $o_col = $o_object.document.forms.item($s_name)
	If IsObj($o_col) Then
		If __IEIsObjType($o_col, "elementcollection") Then
			$i_length = $o_col.length
		Else
			$i_length = 1
		EndIf
	EndIf
	;-----
	$i_index = Number($i_index)
	If $i_index = -1 Then
		Return SetError($_IEStatus_Success, $i_length, $o_object.document.forms.item($s_name))
	Else
		If IsObj($o_object.document.forms.item($s_name, $i_index)) Then
			Return SetError($_IEStatus_Success, $i_length, $o_object.document.forms.item($s_name, $i_index))
		Else
			__IEConsoleWriteError("Warning", "_IEFormGetObjByName", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 0, 0) ; Could be caused by parameter 2, 3 or both
		EndIf
	EndIf
EndFunc   ;==>_IEFormGetObjByName

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "form") Then
		__IEConsoleWriteError("Error", "_IEFormElementGetCollection", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $o_object.elements.length, $o_object.elements)
		Case $i_index > -1 And $i_index < $o_object.elements.length
			Return SetError($_IEStatus_Success, $o_object.elements.length, $o_object.elements.item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IEFormElementGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			Return SetError($_IEStatus_NoMatch, 1, 0)
	EndSelect
EndFunc   ;==>_IEFormElementGetCollection

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementGetObjByName(ByRef $o_object, $s_name, $i_index = 0)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "form") Then
		__IEConsoleWriteError("Error", "_IEFormElementGetObjByName", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	;----- Determine valid collection length
	Local $i_length = 0
	Local $o_col = $o_object.elements.item($s_name)
	If IsObj($o_col) Then
		If __IEIsObjType($o_col, "elementcollection") Then
			$i_length = $o_col.length
		Else
			$i_length = 1
		EndIf
	EndIf
	;-----
	$i_index = Number($i_index)
	If $i_index = -1 Then
		Return SetError($_IEStatus_Success, $i_length, $o_object.elements.item($s_name))
	Else
		If IsObj($o_object.elements.item($s_name, $i_index)) Then
			Return SetError($_IEStatus_Success, $i_length, $o_object.elements.item($s_name, $i_index))
		Else
			__IEConsoleWriteError("Warning", "_IEFormElementGetObjByName", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 0, 0) ; Could be caused by parameter 2, 3 or both
		EndIf
	EndIf
EndFunc   ;==>_IEFormElementGetObjByName

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementGetValue(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementGetValue", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "forminputelement") Then
		__IEConsoleWriteError("Error", "_IEFormElementGetValue", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	Local $s_return = String($o_object.value)
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEFormElementGetValue", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	SetError($_IEStatus_Success)
	Return $s_return
EndFunc   ;==>_IEFormElementGetValue

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementSetValue(ByRef $o_object, $s_newvalue, $f_fireEvent = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementSetValue", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "forminputelement") Then
		__IEConsoleWriteError("Error", "_IEFormElementSetValue", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	If String($o_object.type) = "file" Then
		__IEConsoleWriteError("Error", "_IEFormElementSetValue", "$_IEStatus_InvalidObjectType", "Browser securuty prevents SetValue of TYPE=FILE")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.value = $s_newvalue
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEFormElementSetValue", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	If $f_fireEvent Then
		$o_object.fireEvent("OnChange")
		$o_object.fireEvent("OnClick")
	EndIf
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEFormElementSetValue

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementOptionSelect(ByRef $o_object, $s_string, $f_select = 1, $s_mode = "byValue", $f_fireEvent = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "formselectelement") Then
		__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	Local $oItem, $oItems = $o_object.options, $iNumItems = $o_object.options.length, $f_isMultiple = $o_object.multiple

	Switch $s_mode
		Case "byValue"
			For $oItem In $oItems
				If $oItem.value = $s_string Then
					Switch $f_select
						Case -1
							Return SetError($_IEStatus_Success, 0, $oItem.selected)
						Case 0
							If Not $f_isMultiple Then
								__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", _
										"$f_select=0 only valid for type=select multiple")
								SetError($_IEStatus_InvalidValue, 3)
							EndIf
							If $oItem.selected Then
								$oItem.selected = False
								If $f_fireEvent Then
									$o_object.fireEvent("onChange")
									$o_object.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IEStatus_Success, 0, 1)
						Case 1
							If Not $oItem.selected Then
								$oItem.selected = True
								If $f_fireEvent Then
									$o_object.fireEvent("onChange")
									$o_object.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IEStatus_Success, 0, 1)
						Case Else
							__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
							Return SetError($_IEStatus_InvalidValue, 3, 0)
					EndSwitch
					__IEConsoleWriteError("Warning", "_IEFormElementOptionSelect", "$_IEStatus_NoMatch", "Value not matched")
					Return SetError($_IEStatus_NoMatch, 2, 0)
				EndIf
			Next
		Case "byText"
			For $oItem In $oItems
				If String($oItem.text) = $s_string Then
					Switch $f_select
						Case -1
							Return SetError($_IEStatus_Success, 0, $oItem.selected)
						Case 0
							If Not $f_isMultiple Then
								__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", _
										"$f_select=0 only valid for type=select multiple")
								SetError($_IEStatus_InvalidValue, 3)
							EndIf
							If $oItem.selected Then
								$oItem.selected = False
								If $f_fireEvent Then
									$o_object.fireEvent("onChange")
									$o_object.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IEStatus_Success, 0, 1)
						Case 1
							If Not $oItem.selected Then
								$oItem.selected = True
								If $f_fireEvent Then
									$o_object.fireEvent("onChange")
									$o_object.fireEvent("OnClick")
								EndIf
							EndIf
							Return SetError($_IEStatus_Success, 0, 1)
						Case Else
							__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
							Return SetError($_IEStatus_InvalidValue, 3, 0)
					EndSwitch
					__IEConsoleWriteError("Warning", "_IEFormElementOptionSelect", "$_IEStatus_NoMatch", "Text not matched")
					Return SetError($_IEStatus_NoMatch, 2, 0)
				EndIf
			Next
		Case "byIndex"
			Local $i_index = Number($s_string)
			If $i_index < 0 Or $i_index >= $iNumItems Then
				__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid index value, " & $i_index)
				Return SetError($_IEStatus_InvalidValue, 2, 0)
			EndIf
			$oItem = $oItems.item($i_index)
			Switch $f_select
				Case -1
					Return SetError($_IEStatus_Success, 0, $oItems.item($i_index).selected)
				Case 0
					If Not $f_isMultiple Then
						__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", _
								"$f_select=0 only valid for type=select multiple")
						SetError($_IEStatus_InvalidValue, 3)
					EndIf
					If $oItem.selected Then
						$oItems.item($i_index).selected = False
						If $f_fireEvent Then
							$o_object.fireEvent("onChange")
							$o_object.fireEvent("OnClick")
						EndIf
					EndIf
					Return SetError($_IEStatus_Success, 0, 1)
				Case 1
					If Not $oItem.selected Then
						$oItems.item($i_index).selected = True
						If $f_fireEvent Then
							$o_object.fireEvent("onChange")
							$o_object.fireEvent("OnClick")
						EndIf
					EndIf
					Return SetError($_IEStatus_Success, 0, 1)
				Case Else
					__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
					Return SetError($_IEStatus_InvalidValue, 3, 0)
			EndSwitch
		Case Else
			__IEConsoleWriteError("Error", "_IEFormElementOptionSelect", "$_IEStatus_InvalidValue", "Invalid Mode")
			Return SetError($_IEStatus_InvalidValue, 4, 0)
	EndSwitch
EndFunc   ;==>_IEFormElementOptionSelect

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementCheckBoxSelect(ByRef $o_object, $s_string, $s_name = "", $f_select = 1, $s_mode = "byValue", $f_fireEvent = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementCheckBoxSelect", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "form") Then
		__IEConsoleWriteError("Error", "_IEFormElementCheckBoxSelect", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$s_string = String($s_string)
	$s_name = String($s_name)

	Local $oItems
	If $s_name = "" Then
		$oItems = _IETagNameGetCollection($o_object, "input")
	Else
		$oItems = Execute("$o_object.elements('" & $s_name & "')")
	EndIf

	If Not IsObj($oItems) Then
		__IEConsoleWriteError("Warning", "_IEFormElementCheckBoxSelect", "$_IEStatus_NoMatch")
		Return SetError($_IEStatus_NoMatch, 3, 0)
	EndIf

	Local $oItem, $f_found = False
	Switch $s_mode
		Case "byValue"
			If __IEIsObjType($oItems, "forminputelement") Then
				$oItem = $oItems
				If String($oItem.type) = "checkbox" And String($oItem.value) = $s_string Then $f_found = True
			Else
				For $oItem In $oItems
					If String($oItem.type) = "checkbox" And String($oItem.value) = $s_string Then
						$f_found = True
						ExitLoop
					EndIf
				Next
			EndIf
		Case "byIndex"
			If __IEIsObjType($oItems, "forminputelement") Then
				$oItem = $oItems
				If String($oItem.type) = "checkbox" And Number($s_string) = 0 Then $f_found = True
			Else
				Local $iCount = 0
				For $oItem In $oItems
					If String($oItem.type) = "checkbox" And Number($s_string) = $iCount Then
						$f_found = True
						ExitLoop
					Else
						If String($oItem.type) = "checkbox" Then $iCount += 1
					EndIf
				Next
			EndIf
		Case Else
			__IEConsoleWriteError("Error", "_IEFormElementCheckBoxSelect", "$_IEStatus_InvalidValue", "Invalid Mode")
			Return SetError($_IEStatus_InvalidValue, 5, 0)
	EndSwitch

	If Not $f_found Then
		__IEConsoleWriteError("Warning", "_IEFormElementCheckBoxSelect", "$_IEStatus_NoMatch")
		Return SetError($_IEStatus_NoMatch, 2, 0)
	EndIf

	Switch $f_select
		Case -1
			Return SetError($_IEStatus_Success, 0, $oItem.checked)
		Case 0
			If $oItem.checked Then
				$oItem.checked = False
				If $f_fireEvent Then
					$oItem.fireEvent("onChange")
					$oItem.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IEStatus_Success, 0, 1)
		Case 1
			If Not $oItem.checked Then
				$oItem.checked = True
				If $f_fireEvent Then
					$oItem.fireEvent("onChange")
					$oItem.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IEStatus_Success, 0, 1)
		Case Else
			__IEConsoleWriteError("Error", "_IEFormElementCheckBoxSelect", "$_IEStatus_InvalidValue", "Invalid $f_select value")
			Return SetError($_IEStatus_InvalidValue, 3, 0)
	EndSwitch
EndFunc   ;==>_IEFormElementCheckBoxSelect

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormElementRadioSelect(ByRef $o_object, $s_string, $s_name, $f_select = 1, $s_mode = "byValue", $f_fireEvent = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "form") Then
		__IEConsoleWriteError("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$s_string = String($s_string)
	$s_name = String($s_name)

	Local $oItems = Execute("$o_object.elements('" & $s_name & "')")
	If Not IsObj($oItems) Then
		__IEConsoleWriteError("Warning", "_IEFormElementRadioSelect", "$_IEStatus_NoMatch")
		Return SetError($_IEStatus_NoMatch, 3, 0)
	EndIf

	Local $oItem, $f_found = False
	Switch $s_mode
		Case "byValue"
			If __IEIsObjType($oItems, "forminputelement") Then
				$oItem = $oItems
				If String($oItem.type) = "radio" And String($oItem.value) = $s_string Then $f_found = True
			Else
				For $oItem In $oItems
					If String($oItem.type) = "radio" And String($oItem.value) = $s_string Then
						$f_found = True
						ExitLoop
					EndIf
				Next
			EndIf
		Case "byIndex"
			If __IEIsObjType($oItems, "forminputelement") Then
				$oItem = $oItems
				If String($oItem.type) = "radio" And Number($s_string) = 0 Then $f_found = True
			Else
				Local $iCount = 0
				For $oItem In $oItems
					If String($oItem.type) = "radio" And Number($s_string) = $iCount Then
						$f_found = True
						ExitLoop
					Else
						$iCount += 1
					EndIf
				Next
			EndIf
		Case Else
			__IEConsoleWriteError("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidValue", "Invalid Mode")
			Return SetError($_IEStatus_InvalidValue, 5, 0)
	EndSwitch

	If Not $f_found Then
		__IEConsoleWriteError("Warning", "_IEFormElementRadioSelect", "$_IEStatus_NoMatch")
		Return SetError($_IEStatus_NoMatch, 2, 0)
	EndIf

	Switch $f_select
		Case -1
			Return SetError($_IEStatus_Success, 0, $oItem.checked)
		Case 0
			If $oItem.checked Then
				$oItem.checked = False
				If $f_fireEvent Then
					$oItem.fireEvent("onChange")
					$oItem.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IEStatus_Success, 0, 1)
		Case 1
			If Not $oItem.checked Then
				$oItem.checked = True
				If $f_fireEvent Then
					$oItem.fireEvent("onChange")
					$oItem.fireEvent("OnClick")
				EndIf
			EndIf
			Return SetError($_IEStatus_Success, 0, 1)
		Case Else
			__IEConsoleWriteError("Error", "_IEFormElementRadioSelect", "$_IEStatus_InvalidValue", "$f_select value invalid")
			Return SetError($_IEStatus_InvalidValue, 4, 0)
	EndSwitch
EndFunc   ;==>_IEFormElementRadioSelect

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IEFormImageClick(ByRef $o_object, $s_linkText, $s_mode = "src", $i_index = 0, $f_wait = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormImageClick", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $linktext, $found = 0
	Local $oTemp = _IEDocGetObj($o_object)
	Local $imgs = _IETagNameGetCollection($oTemp, "input")
	$s_mode = StringLower($s_mode)
	$i_index = Number($i_index)
	For $img In $imgs
		If String($img.type) = "image" Then
			Select
				Case $s_mode = "alt"
					$linktext = $img.alt
				Case $s_mode = "name"
					$linktext = $img.name
					If Not IsString($linktext) Then $linktext = $img.id ; html5 support
				Case $s_mode = "id"
					$linktext = $img.id
				Case $s_mode = "src"
					$linktext = $img.src
				Case Else
					__IEConsoleWriteError("Error", "_IEFormImageClick", "$_IEStatus_InvalidValue", "Invalid mode: " & $s_mode)
					Return SetError($_IEStatus_InvalidValue, 3, 0)
			EndSelect
			If StringInStr($linktext, $s_linkText) Then
				If ($found = $i_index) Then
					$img.click()
					If @error Then ; Trap COM error, report and return
						__IEConsoleWriteError("Error", "_IEFormImageClick", "$_IEStatus_COMError", @error)
						Return SetError($_IEStatus_ComError, @error, 0)
					EndIf
					If $f_wait Then
						_IELoadWait($o_object)
						Return SetError(@error, 0, -1)
					EndIf
					Return SetError($_IEStatus_Success, 0, -1)
				EndIf
				$found = $found + 1
			EndIf
		EndIf
	Next
	__IEConsoleWriteError("Warning", "_IEFormImageClick", "$_IEStatus_NoMatch")
	Return SetError($_IEStatus_NoMatch, 2, 0)
EndFunc   ;==>_IEFormImageClick

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormSubmit(ByRef $o_object, $f_wait = 1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormSubmit", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "form") Then
		__IEConsoleWriteError("Error", "_IEFormSubmit", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;

	Local $o_window = $o_object.document.parentWindow
	$o_object.submit()
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEFormSubmit", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	If $f_wait Then
		_IELoadWait($o_window)
		Return SetError(@error, 0, -1)
	EndIf
	Return SetError($_IEStatus_Success, 0, -1)
EndFunc   ;==>_IEFormSubmit

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEFormReset(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEFormReset", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "form") Then
		__IEConsoleWriteError("Error", "_IEFormReset", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.reset()
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEFormReset", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEFormReset
#EndRegion Form functions

#Region Table functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IETableGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IETableGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $o_object.document.GetElementsByTagName("table").length, _
					$o_object.document.GetElementsByTagName("table"))
		Case $i_index > -1 And $i_index < $o_object.document.GetElementsByTagName("table").length
			Return SetError($_IEStatus_Success, $o_object.document.GetElementsByTagName("table").length, _
					$o_object.document.GetElementsByTagName("table").item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IETableGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			__IEConsoleWriteError("Warning", "_IETableGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 1, 0)
	EndSelect
EndFunc   ;==>_IETableGetCollection

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IETableWriteToArray(ByRef $o_object, $f_transpose = False)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IETableWriteToArray", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "table") Then
		__IEConsoleWriteError("Error", "_IETableWriteToArray", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	Local $i_cols = 0, $tds, $i_col
	Local $trs = $o_object.rows
	For $tr In $trs
		$tds = $tr.cells
		$i_col = 0
		For $td In $tds
			$i_col = $i_col + $td.colSpan
		Next
		If $i_col > $i_cols Then $i_cols = $i_col
	Next
	Local $i_rows = $trs.length
	Local $a_TableCells[$i_cols][$i_rows]
	Local $col, $row = 0
	For $tr In $trs
		$tds = $tr.cells
		$col = 0
		For $td In $tds
			$a_TableCells[$col][$row] = String($td.innerText)
			If @error Then ; Trap COM error, report and return
				__IEConsoleWriteError("Error", "_IETableWriteToArray", "$_IEStatus_COMError", @error)
				Return SetError($_IEStatus_ComError, @error, 0)
			EndIf
			$col = $col + $td.colSpan
		Next
		$row = $row + 1
	Next
	If $f_transpose Then
		Local $i_d1 = UBound($a_TableCells, 1), $i_d2 = UBound($a_TableCells, 2), $aTmp[$i_d2][$i_d1]
		For $i = 0 To $i_d2 - 1
			For $j = 0 To $i_d1 - 1
				$aTmp[$i][$j] = $a_TableCells[$j][$i]
			Next
		Next
		$a_TableCells = $aTmp
	EndIf
	Return SetError($_IEStatus_Success, 0, $a_TableCells)
EndFunc   ;==>_IETableWriteToArray
#EndRegion Table functions

#Region Read/Write functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEBodyReadHTML(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEBodyReadHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Return SetError($_IEStatus_Success, 0, $o_object.document.body.innerHTML)
EndFunc   ;==>_IEBodyReadHTML

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEBodyReadText(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEBodyReadText", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEBodyReadText", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	Return SetError($_IEStatus_Success, 0, $o_object.document.body.innerText)
EndFunc   ;==>_IEBodyReadText

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEBodyWriteHTML(ByRef $o_object, $s_html)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEBodyWriteHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEBodyWriteHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.document.body.innerHTML = $s_html
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEBodyWriteHTML", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Local $oTemp = $o_object.document
	_IELoadWait($oTemp)
	Return SetError(@error, 0, -1)
EndFunc   ;==>_IEBodyWriteHTML

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEDocReadHTML(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEDocReadHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEDocReadHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	Return SetError($_IEStatus_Success, 0, $o_object.document.documentElement.outerHTML)
EndFunc   ;==>_IEDocReadHTML

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEDocWriteHTML(ByRef $o_object, $s_html)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEDocWriteHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEDocWriteHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.document.Write($s_html)
	$o_object.document.close()
	Local $oTemp = $o_object.document
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEDocWriteHTML", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	_IELoadWait($oTemp)
	Return SetError(@error, 0, -1)
EndFunc   ;==>_IEDocWriteHTML

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEDocInsertText(ByRef $o_object, $s_string, $s_where = "beforeend")
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEDocInsertText", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Or __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
		__IEConsoleWriteError("Error", "_IEDocInsertText", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf

	$s_where = StringLower($s_where)
	Select
		Case $s_where = "beforebegin"
			$o_object.insertAdjacentText($s_where, $s_string)
		Case $s_where = "afterbegin"
			$o_object.insertAdjacentText($s_where, $s_string)
		Case $s_where = "beforeend"
			$o_object.insertAdjacentText($s_where, $s_string)
		Case $s_where = "afterend"
			$o_object.insertAdjacentText($s_where, $s_string)
		Case Else
			; Unsupported Where
			__IEConsoleWriteError("Error", "_IEDocInsertText", "$_IEStatus_InvalidValue", "Invalid where value")
			Return SetError($_IEStatus_InvalidValue, 3, 0)
	EndSelect

	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEDocInsertText", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEDocInsertText

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEDocInsertHTML(ByRef $o_object, $s_string, $s_where = "beforeend")
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEDocInsertHTML", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Or __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
		__IEConsoleWriteError("Error", "_IEDocInsertHTML", "$_IEStatus_InvalidObjectType", "Expected document element")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf

	$s_where = StringLower($s_where)
	Select
		Case $s_where = "beforebegin"
			$o_object.insertAdjacentHTML($s_where, $s_string)
		Case $s_where = "afterbegin"
			$o_object.insertAdjacentHTML($s_where, $s_string)
		Case $s_where = "beforeend"
			$o_object.insertAdjacentHTML($s_where, $s_string)
		Case $s_where = "afterend"
			$o_object.insertAdjacentHTML($s_where, $s_string)
		Case Else
			; Unsupported Where
			__IEConsoleWriteError("Error", "_IEDocInsertHTML", "$_IEStatus_InvalidValue", "Invalid where value")
			Return SetError($_IEStatus_InvalidValue, 3, 0)
	EndSelect

	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEDocInsertHTML", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEDocInsertHTML

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IEHeadInsertEventScript(ByRef $o_object, $s_htmlFor, $s_event, $s_script)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEHeadInsertEventScript", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf

	Local $o_head = $o_object.document.all.tags("HEAD").Item(0)
	Local $o_script = $o_object.document.createElement("script")
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEHeadInsertEventScript(script)", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	With $o_script
		.defer = True
		.language = "jscript"
		.type = "text/javascript"
		.htmlFor = $s_htmlFor
		.event = $s_event
		.text = $s_script
	EndWith
	$o_head.appendChild($o_script)
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEHeadInsertEventScript", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEHeadInsertEventScript
#EndRegion Read/Write functions

#Region Utility functions
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEDocGetObj(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEDocGetObj", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Switch __IEIsObjType($o_object, "document")
		Case True
			Return SetError($_IEStatus_Success, 0, $o_object)
		Case False
			Return SetError($_IEStatus_Success, 0, $o_object.document)
	EndSwitch
EndFunc   ;==>_IEDocGetObj

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IETagNameGetCollection(ByRef $o_object, $s_TagName, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IETagNameGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IETagNameGetCollection", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf

	Local $oTemp
	If __IEIsObjType($o_object, "documentcontainer") Then
		$oTemp = _IEDocGetObj($o_object)
	Else
		$oTemp = $o_object
	EndIf

	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $oTemp.GetElementsByTagName($s_TagName).length, _
					$oTemp.GetElementsByTagName($s_TagName))
		Case $i_index > -1 And $i_index < $oTemp.GetElementsByTagName($s_TagName).length
			Return SetError($_IEStatus_Success, $oTemp.GetElementsByTagName($s_TagName).length, _
					$oTemp.GetElementsByTagName($s_TagName).item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IETagNameGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 3, 0)
		Case Else
			__IEConsoleWriteError("Error", "_IETagNameGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 0, 0) ; Could be caused by parameter 2, 3 or both
	EndSelect
EndFunc   ;==>_IETagNameGetCollection

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IETagNameAllGetCollection(ByRef $o_object, $i_index = -1)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IETagNameAllGetCollection", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IETagNameAllGetCollection", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf

	Local $oTemp
	If __IEIsObjType($o_object, "documentcontainer") Then
		$oTemp = _IEDocGetObj($o_object)
	Else
		$oTemp = $o_object
	EndIf

	$i_index = Number($i_index)
	Select
		Case $i_index = -1
			Return SetError($_IEStatus_Success, $oTemp.all.length, $oTemp.all)
		Case $i_index > -1 And $i_index < $oTemp.all.length
			Return SetError($_IEStatus_Success, $oTemp.all.length, $oTemp.all.item($i_index))
		Case $i_index < -1
			__IEConsoleWriteError("Error", "_IETagNameAllGetCollection", "$_IEStatus_InvalidValue", "$i_index < -1")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
		Case Else
			__IEConsoleWriteError("Error", "_IETagNameAllGetCollection", "$_IEStatus_NoMatch")
			Return SetError($_IEStatus_NoMatch, 1, 0)
	EndSelect
EndFunc   ;==>_IETagNameAllGetCollection

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEGetObjByName(ByRef $o_object, $s_name, $i_index = 0)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEGetObjByName", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	$i_index = Number($i_index)
	If $i_index = -1 Then
		Return SetError($_IEStatus_Success, $o_object.document.GetElementsByName($s_name).length, _
				$o_object.document.GetElementsByName($s_name))
	Else
		If IsObj($o_object.document.GetElementsByName($s_name).item($i_index)) Then
			Return SetError($_IEStatus_Success, $o_object.document.GetElementsByName($s_name).length, _
					$o_object.document.GetElementsByName($s_name).item($i_index))
		Else
			__IEConsoleWriteError("Warning", "_IEGetObjByName", "$_IEStatus_NoMatch", "Name: " & $s_name & ", Index: " & $i_index)
			Return SetError($_IEStatus_NoMatch, 0, 0) ; Could be caused by parameter 2, 3 or both
		EndIf
	EndIf
EndFunc   ;==>_IEGetObjByName

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEGetObjById(ByRef $o_object, $s_Id)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEGetObjById", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEGetObById", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	If IsObj($o_object.document.getElementById($s_Id)) Then
		Return SetError($_IEStatus_Success, 0, $o_object.document.getElementById($s_Id))
	Else
		__IEConsoleWriteError("Warning", "_IEGetObjById", "$_IEStatus_NoMatch", $s_Id)
		Return SetError($_IEStatus_NoMatch, 2, 0)
	EndIf
EndFunc   ;==>_IEGetObjById

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEAction(ByRef $o_object, $s_action)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEAction(" & $s_action & ")", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	$s_action = StringLower($s_action)
	Select
		; DOM objects
		Case $s_action = "click"
			If __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(click)", " $_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Click()
		Case $s_action = "disable"
			If __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(disable)", " $_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.disabled = True
		Case $s_action = "enable"
			If __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(enable)", " $_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.disabled = False
		Case $s_action = "focus"
			If __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(focus)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Focus()
		Case $s_action = "scrollintoview"
			If __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(scrollintoview)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.scrollIntoView()
			; Browser Object
		Case $s_action = "copy"
			$o_object.document.execCommand("Copy")
		Case $s_action = "cut"
			$o_object.document.execCommand("Cut")
		Case $s_action = "paste"
			$o_object.document.execCommand("Paste")
		Case $s_action = "delete"
			$o_object.document.execCommand("Delete")
		Case $s_action = "saveas"
			$o_object.document.execCommand("SaveAs")
		Case $s_action = "refresh"
			$o_object.document.execCommand("Refresh")
			If @error Then ; Trap COM error, report and return
				__IEConsoleWriteError("Error", "_IEAction(refresh)", "$_IEStatus_COMError", @error)
				Return SetError($_IEStatus_ComError, @error, 0)
			EndIf
			_IELoadWait($o_object)
		Case $s_action = "selectall"
			$o_object.document.execCommand("SelectAll")
		Case $s_action = "unselect"
			$o_object.document.execCommand("Unselect")
		Case $s_action = "print"
			$o_object.document.parentwindow.Print()
		Case $s_action = "printdefault"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEAction(printdefault)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.execWB(6, 2)
		Case $s_action = "back"
			If Not __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(back)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.GoBack()
		Case $s_action = "blur"
			$o_object.Blur()
		Case $s_action = "forward"
			If Not __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(forward)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.GoForward()
		Case $s_action = "home"
			If Not __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(home)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.GoHome()
		Case $s_action = "invisible"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEAction(invisible)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.visible = 0
		Case $s_action = "visible"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEAction(visible)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.visible = 1
		Case $s_action = "search"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEAction(search)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.GoSearch()
		Case $s_action = "stop"
			If Not __IEIsObjType($o_object, "documentContainer") Then
				__IEConsoleWriteError("Error", "_IEAction(stop)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Stop()
		Case $s_action = "quit"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEAction(quit)", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Quit()
			If @error Then ; Trap COM error, report and return
				__IEConsoleWriteError("Error", "_IEAction(" & $s_action & ")", "$_IEStatus_COMError", @error)
				Return SetError($_IEStatus_ComError, @error, 0)
			EndIf
			$o_object = 0
			Return SetError($_IEStatus_Success, 0, 1)
		Case Else
			; Unsupported Action
			__IEConsoleWriteError("Error", "_IEAction(" & $s_action & ")", "$_IEStatus_InvalidValue", "Invalid Action")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
	EndSelect

	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEAction(" & $s_action & ")", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEAction

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEPropertyGet(ByRef $o_object, $s_property)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	If Not __IEIsObjType($o_object, "browserdom") Then
		__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	Local $oTemp, $iTemp
	$s_property = StringLower($s_property)
	Select
		Case $s_property = "browserx"
			If __IEIsObjType($o_object, "browsercontainer") Or __IEIsObjType($o_object, "document") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$oTemp = $o_object
			$iTemp = 0
			While IsObj($oTemp)
				$iTemp += $oTemp.offsetLeft
				$oTemp = $oTemp.offsetParent
			WEnd
			Return SetError($_IEStatus_Success, 0, $iTemp)
		Case $s_property = "browsery"
			If __IEIsObjType($o_object, "browsercontainer") Or __IEIsObjType($o_object, "document") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$oTemp = $o_object
			$iTemp = 0
			While IsObj($oTemp)
				$iTemp += $oTemp.offsetTop
				$oTemp = $oTemp.offsetParent
			WEnd
			Return SetError($_IEStatus_Success, 0, $iTemp)
		Case $s_property = "screenx"
			If __IEIsObjType($o_object, "window") Or __IEIsObjType($o_object, "document") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If __IEIsObjType($o_object, "browser") Then
				Return SetError($_IEStatus_Success, 0, $o_object.left())
			Else
				$oTemp = $o_object
				$iTemp = 0
				While IsObj($oTemp)
					$iTemp += $oTemp.offsetLeft
					$oTemp = $oTemp.offsetParent
				WEnd
			EndIf
			Return SetError($_IEStatus_Success, 0, _
					$iTemp + $o_object.document.parentWindow.screenLeft)
		Case $s_property = "screeny"
			If __IEIsObjType($o_object, "window") Or __IEIsObjType($o_object, "document") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If __IEIsObjType($o_object, "browser") Then
				Return SetError($_IEStatus_Success, 0, $o_object.top())
			Else
				$oTemp = $o_object
				$iTemp = 0
				While IsObj($oTemp)
					$iTemp += $oTemp.offsetTop
					$oTemp = $oTemp.offsetParent
				WEnd
			EndIf
			Return SetError($_IEStatus_Success, 0, _
					$iTemp + $o_object.document.parentWindow.screenTop)
		Case $s_property = "height"
			If __IEIsObjType($o_object, "window") Or __IEIsObjType($o_object, "document") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If __IEIsObjType($o_object, "browser") Then
				Return SetError($_IEStatus_Success, 0, $o_object.Height())
			Else
				Return SetError($_IEStatus_Success, 0, $o_object.offsetHeight)
			EndIf
		Case $s_property = "width"
			If __IEIsObjType($o_object, "window") Or __IEIsObjType($o_object, "document") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If __IEIsObjType($o_object, "browser") Then
				Return SetError($_IEStatus_Success, 0, $o_object.Width())
			Else
				Return SetError($_IEStatus_Success, 0, $o_object.offsetWidth)
			EndIf
		Case $s_property = "isdisabled"
			Return SetError($_IEStatus_Success, 0, $o_object.isDisabled())
		Case $s_property = "addressbar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.AddressBar())
		Case $s_property = "busy"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.Busy())
		Case $s_property = "fullscreen"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.fullScreen())
		Case $s_property = "hwnd"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, HWnd($o_object.HWnd()))
		Case $s_property = "left"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.Left())
		Case $s_property = "locationname"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.LocationName())
		Case $s_property = "locationurl"
			If __IEIsObjType($o_object, "browser") Then
				Return SetError($_IEStatus_Success, 0, $o_object.locationURL())
			EndIf
			If __IEIsObjType($o_object, "window") Then
				Return SetError($_IEStatus_Success, 0, $o_object.location.href())
			EndIf
			If __IEIsObjType($o_object, "document") Then
				Return SetError($_IEStatus_Success, 0, $o_object.parentwindow.location.href())
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentwindow.location.href())
		Case $s_property = "menubar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.MenuBar())
		Case $s_property = "offline"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.OffLine())
		Case $s_property = "readystate"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.ReadyState())
		Case $s_property = "resizable"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.Resizable())
		Case $s_property = "silent"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.Silent())
		Case $s_property = "statusbar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.StatusBar())
		Case $s_property = "statustext"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.StatusText())
		Case $s_property = "top"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.Top())
		Case $s_property = "visible"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.Visible())
		Case $s_property = "appcodename"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.appCodeName())
		Case $s_property = "appminorversion"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.appMinorVersion())
		Case $s_property = "appname"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.appName())
		Case $s_property = "appversion"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.appVersion())
		Case $s_property = "browserlanguage"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.browserLanguage())
		Case $s_property = "cookieenabled"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.cookieEnabled())
		Case $s_property = "cpuclass"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.cpuClass())
		Case $s_property = "javaenabled"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.javaEnabled())
		Case $s_property = "online"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.onLine())
		Case $s_property = "platform"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.platform())
		Case $s_property = "systemlanguage"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.systemLanguage())
		Case $s_property = "useragent"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.userAgent())
		Case $s_property = "userlanguage"
			Return SetError($_IEStatus_Success, 0, $o_object.document.parentWindow.top.navigator.userLanguage())
		Case $s_property = "referrer"
			Return SetError($_IEStatus_Success, 0, $o_object.document.referrer)
		Case $s_property = "theatermode"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.TheaterMode)
		Case $s_property = "toolbar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			Return SetError($_IEStatus_Success, 0, $o_object.ToolBar)
		Case $s_property = "contenteditable"
			If __IEIsObjType($o_object, "browser") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			Return SetError($_IEStatus_Success, 0, $oTemp.isContentEditable)
		Case $s_property = "innertext"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			Return SetError($_IEStatus_Success, 0, $oTemp.innerText)
		Case $s_property = "outertext"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			Return SetError($_IEStatus_Success, 0, $oTemp.outerText)
		Case $s_property = "innerhtml"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			Return SetError($_IEStatus_Success, 0, $oTemp.innerHTML)
		Case $s_property = "outerhtml"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			Return SetError($_IEStatus_Success, 0, $oTemp.outerHTML)
		Case $s_property = "title"
			Return SetError($_IEStatus_Success, 0, $o_object.document.title)
		Case $s_property = "uniqueid"
			If __IEIsObjType($o_object, "window") Then
				__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			Else
				Return SetError($_IEStatus_Success, 0, $o_object.uniqueID)
			EndIf
		Case Else
			; Unsupported Property
			__IEConsoleWriteError("Error", "_IEPropertyGet", "$_IEStatus_InvalidValue", "Invalid Property")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
	EndSelect
EndFunc   ;==>_IEPropertyGet

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEPropertySet(ByRef $o_object, $s_property, $newvalue)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	Local $oTemp
	#forceref $oTemp
	$s_property = StringLower($s_property)
	Select
		Case $s_property = "addressbar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.AddressBar = $newvalue
		Case $s_property = "height"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Height = $newvalue
		Case $s_property = "left"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Left = $newvalue
		Case $s_property = "menubar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.MenuBar = $newvalue
		Case $s_property = "offline"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.OffLine = $newvalue
		Case $s_property = "resizable"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Resizable = $newvalue
		Case $s_property = "statusbar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.StatusBar = $newvalue
		Case $s_property = "statustext"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.StatusText = $newvalue
		Case $s_property = "top"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Top = $newvalue
		Case $s_property = "width"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			$o_object.Width = $newvalue
		Case $s_property = "theatermode"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If $newvalue Then
				$o_object.TheaterMode = True
			Else
				$o_object.TheaterMode = False
			EndIf
		Case $s_property = "toolbar"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If $newvalue Then
				$o_object.ToolBar = True
			Else
				$o_object.ToolBar = False
			EndIf
		Case $s_property = "contenteditable"
			If __IEIsObjType($o_object, "browser") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			If $newvalue Then
				$oTemp.contentEditable = "true"
			Else
				$oTemp.contentEditable = "false"
			EndIf
		Case $s_property = "innertext"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			$oTemp.innerText = $newvalue
		Case $s_property = "outertext"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			$oTemp.outerText = $newvalue
		Case $s_property = "innerhtml"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			$oTemp.innerHTML = $newvalue
		Case $s_property = "outerhtml"
			If __IEIsObjType($o_object, "documentcontainer") Or __IEIsObjType($o_object, "document") Then
				$oTemp = $o_object.document.body
			Else
				$oTemp = $o_object
			EndIf
			$oTemp.outerHTML = $newvalue
		Case $s_property = "title"
			$o_object.document.title = $newvalue
		Case $s_property = "silent"
			If Not __IEIsObjType($o_object, "browser") Then
				__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidObjectType")
				Return SetError($_IEStatus_InvalidObjectType, 1, 0)
			EndIf
			If $newvalue Then
				$o_object.silent = True
			Else
				$o_object.silent = False
			EndIf
		Case Else
			; Unsupported Property
			__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_InvalidValue", "Invalid Property")
			Return SetError($_IEStatus_InvalidValue, 2, 0)
	EndSelect

	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEPropertySet", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	Return SetError($_IEStatus_Success, 0, 0)
EndFunc   ;==>_IEPropertySet

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IEErrorNotify($f_notify = Default)
	If $f_notify = Default Then Return $_IEErrorNotify

	If $f_notify Then
		$_IEErrorNotify = True
	Else
		$_IEErrorNotify = False
	EndIf
	Return 1
EndFunc   ;==>_IEErrorNotify

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IEQuit(ByRef $o_object)
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "_IEQuit", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "browser") Then
		__IEConsoleWriteError("Error", "_IEQuit", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.quit()
	If @error Then ; Trap COM error, report and return
		__IEConsoleWriteError("Error", "_IEQuit", "$_IEStatus_COMError", @error)
		Return SetError($_IEStatus_ComError, @error, 0)
	EndIf
	$o_object = 0
	Return SetError($_IEStatus_Success, 0, 1)
EndFunc   ;==>_IEQuit

#EndRegion Utility functions

#Region General
; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IE_Introduction($s_module = "basic")
	Local $s_html = ""
	Switch $s_module
		Case "basic"
			$s_html &= '<!DOCTYPE html>' & @CR
			$s_html &= '<html>' & @CR
			$s_html &= '<head>' & @CR
			$s_html &= '<meta content="text/html; charset=UTF-8" http-equiv="content-type">' & @CR
			$s_html &= '<title>_IE_Introduction ("basic")</title>' & @CR
			$s_html &= '<style>body {font-family: Arial}' & @CR
			$s_html &= 'td {padding:6px}</style>' & @CR
			$s_html &= '</head>' & @CR
			$s_html &= '<body>' & @CR
			$s_html &= '<table border=1 id="table1" style="width:600px;border-spacing:6px;">' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<h1>Welcome to IE.au3</h1>' & @CR
			$s_html &= 'IE.au3 is a UDF (User Defined Function) library for the ' & @CR
			$s_html &= '<a href="http://www.autoitscript.com">AutoIt</a> scripting language.' & @CR
			$s_html &= '<br>  ' & @CR
			$s_html &= 'IE.au3 allows you to either create or attach to an Internet Explorer browser and do ' & @CR
			$s_html &= 'just about anything you could do with it interactively with the mouse and ' & @CR
			$s_html &= 'keyboard, but do it through script.' & @CR
			$s_html &= '<br>' & @CR
			$s_html &= 'You can navigate to pages, click links, fill and submit forms etc. You can ' & @CR
			$s_html &= 'also do things you cannot do interactively like change or rewrite page ' & @CR
			$s_html &= 'content and JavaScripts, read, parse and save page content and monitor and act ' & @CR
			$s_html &= 'upon browser "events".<br>' & @CR
			$s_html &= 'IE.au3 uses the COM interface in AutoIt to interact with the Internet Explorer ' & @CR
			$s_html &= 'object model and the DOM (Document Object Model) supported by the browser.' & @CR
			$s_html &= '<br>' & @CR
			$s_html &= 'Here are some links for more information and helpful tools:<br>' & @CR
			$s_html &= 'Reference Material: ' & @CR
			$s_html &= '<ul>' & @CR
			$s_html &= '<li><a href="http://msdn1.microsoft.com/">MSDN (Microsoft Developer Network)</a></li>' & @CR
			$s_html &= '<li><a href="http://msdn2.microsoft.com/en-us/library/aa752084.aspx" target="_blank">InternetExplorer Object</a></li>' & @CR
			$s_html &= '<li><a href="http://msdn2.microsoft.com/en-us/library/ms531073.aspx" target="_blank">Document Object</a></li>' & @CR
			$s_html &= '<li><a href="http://msdn2.microsoft.com/en-us/ie/aa740473.aspx" target="_blank">Overviews and Tutorials</a></li>' & @CR
			$s_html &= '<li><a href="http://msdn2.microsoft.com/en-us/library/ms533029.aspx" target="_blank">DHTML Objects</a></li>' & @CR
			$s_html &= '<li><a href="http://msdn2.microsoft.com/en-us/library/ms533051.aspx" target="_blank">DHTML Events</a></li>' & @CR
			$s_html &= '</ul><br>' & @CR
			$s_html &= 'Helpful Tools: ' & @CR
			$s_html &= '<ul>' & @CR
			$s_html &= '<li><a href="http://www.autoitscript.com/forum/index.php?showtopic=19368" target="_blank">AutoIt IE Builder</a> (build IE scripts interactively)</li>' & @CR
			$s_html &= '<li><a href="http://www.debugbar.com/" target="_blank">DebugBar</a> (DOM inspector, HTTP inspector, HTML validator and more - free for personal use) Recommended</li>' & @CR
			$s_html &= '<li><a href="http://www.microsoft.com/downloads/details.aspx?FamilyID=e59c3964-672d-4511-bb3e-2d5e1db91038&amp;displaylang=en" target="_blank">IE Developer Toolbar</a> (comprehensive DOM analysis tool)</li>' & @CR
			$s_html &= '<li><a href="http://slayeroffice.com/tools/modi/v2.0/modi_help.html" target="_blank">MODIV2</a> (view the DOM of a web page by mousing around)</li>' & @CR
			$s_html &= '<li><a href="http://validator.w3.org/" target="_blank">HTML Validator</a> (verify HTML follows format rules)</li>' & @CR
			$s_html &= '<li><a href="http://www.fiddlertool.com/fiddler/" target="_blank">Fiddler</a> (examine HTTP traffic)</li>' & @CR
			$s_html &= '</ul>' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '</table>' & @CR
			$s_html &= '</body>' & @CR
			$s_html &= '</html>'
		Case Else
			__IEConsoleWriteError("Error", "_IE_Introduction", "$_IEStatus_InvalidValue")
			Return SetError($_IEStatus_InvalidValue, 1, 0)
	EndSwitch
	Local $o_object = _IECreate()
	_IEDocWriteHTML($o_object, $s_html)
	Return SetError($_IEStatus_Success, 0, $o_object)
EndFunc   ;==>_IE_Introduction

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func _IE_Example($s_module = "basic")
	Local $s_html = "", $o_object
	Switch $s_module
		Case "basic"
			$s_html &= '<!DOCTYPE html>' & @CR
			$s_html &= '<html>' & @CR
			$s_html &= '<head>' & @CR
			$s_html &= '<meta content="text/html; charset=UTF-8" http-equiv="content-type">' & @CR
			$s_html &= '<title>_IE_Example("basic")</title>' & @CR
			$s_html &= '<style>body {font-family: Arial}</style>' & @CR
			$s_html &= '</head>' & @CR
			$s_html &= '<body>' & @CR
			$s_html &= '<a href="http://www.autoitscript.com"><img src="http://www.autoitscript.com/images/autoit_6_240x100.jpg" id="AutoItImage" alt="AutoIt Homepage Image"></a>' & @CR
			$s_html &= '<p></p>' & @CR
			$s_html &= '<div id="line1">This is a simple HTML page with text, links and images.</div>' & @CR
			$s_html &= '<br>' & @CR
			$s_html &= '<div id="line2"><a href="http://www.autoitscript.com">AutoIt</a> is a wonderful automation scripting language.</div>' & @CR
			$s_html &= '<br>' & @CR
			$s_html &= '<div id="line3">It is supported by a very active and supporting <a href="http://www.autoitscript.com/forum/">user forum</a>.</div>' & @CR
			$s_html &= '<br>' & @CR
			$s_html &= '<div id="IEAu3Data"></div>' & @CR
			$s_html &= '</body>' & @CR
			$s_html &= '</html>'
			$o_object = _IECreate()
			_IEDocWriteHTML($o_object, $s_html)
		Case "table"
			$s_html &= '<!DOCTYPE html>' & @CR
			$s_html &= '<html>' & @CR
			$s_html &= '<head>' & @CR
			$s_html &= '<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">' & @CR
			$s_html &= '<title>_IE_Example("table")</title>' & @CR
			$s_html &= '<style>body {font-family: Arial}</style>' & @CR
			$s_html &= '</head>' & @CR
			$s_html &= '<body>' & @CR
			$s_html &= '$oTableOne = _IETableGetObjByName($oIE, "tableOne")<br>' & @CR
			$s_html &= '&lt;table border=1 id="tableOne"&gt;<br>' & @CR
			$s_html &= '<table border=1 id="tableOne">' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>AutoIt</td>' & @CR
			$s_html &= '		<td>is</td>' & @CR
			$s_html &= '		<td>really</td>' & @CR
			$s_html &= '		<td>great</td>' & @CR
			$s_html &= '		<td>with</td>' & @CR
			$s_html &= '		<td>IE.au3</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>1</td>' & @CR
			$s_html &= '		<td>2</td>' & @CR
			$s_html &= '		<td>3</td>' & @CR
			$s_html &= '		<td>4</td>' & @CR
			$s_html &= '		<td>5</td>' & @CR
			$s_html &= '		<td>6</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>the</td>' & @CR
			$s_html &= '		<td>quick</td>' & @CR
			$s_html &= '		<td>red</td>' & @CR
			$s_html &= '		<td>fox</td>' & @CR
			$s_html &= '		<td>jumped</td>' & @CR
			$s_html &= '		<td>over</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>the</td>' & @CR
			$s_html &= '		<td>lazy</td>' & @CR
			$s_html &= '		<td>brown</td>' & @CR
			$s_html &= '		<td>dog</td>' & @CR
			$s_html &= '		<td>the</td>' & @CR
			$s_html &= '		<td>time</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>has</td>' & @CR
			$s_html &= '		<td>come</td>' & @CR
			$s_html &= '		<td>for</td>' & @CR
			$s_html &= '		<td>all</td>' & @CR
			$s_html &= '		<td>good</td>' & @CR
			$s_html &= '		<td>men</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>to</td>' & @CR
			$s_html &= '		<td>come</td>' & @CR
			$s_html &= '		<td>to</td>' & @CR
			$s_html &= '		<td>the</td>' & @CR
			$s_html &= '		<td>aid</td>' & @CR
			$s_html &= '		<td>of</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '</table>' & @CR
			$s_html &= '<br>' & @CR
			$s_html &= '$oTableTwo = _IETableGetObjByName($oIE, "tableTwo")<br>' & @CR
			$s_html &= '&lt;table border="1" id="tableTwo"&gt;<br>' & @CR
			$s_html &= '<table border=1 id="tableTwo">' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td colspan="4">Table Top</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>One</td>' & @CR
			$s_html &= '		<td colspan="3">Two</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>Three</td>' & @CR
			$s_html &= '		<td>Four</td>' & @CR
			$s_html &= '		<td colspan="2">Five</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>Six</td>' & @CR
			$s_html &= '		<td colspan="3">Seven</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '	<tr>' & @CR
			$s_html &= '		<td>Eight</td>' & @CR
			$s_html &= '		<td>Nine</td>' & @CR
			$s_html &= '		<td>Ten</td>' & @CR
			$s_html &= '		<td>Eleven</td>' & @CR
			$s_html &= '	</tr>' & @CR
			$s_html &= '</table>' & @CR
			$s_html &= '</body>' & @CR
			$s_html &= '</html>'
			$o_object = _IECreate()
			_IEDocWriteHTML($o_object, $s_html)
		Case "form"
			$s_html &= '<!DOCTYPE html>' & @CR
			$s_html &= '<html>' & @CR
			$s_html &= '<head>' & @CR
			$s_html &= '<meta content="text/html; charset=UTF-8" http-equiv="content-type">' & @CR
			$s_html &= '<title>_IE_Example("form")</title>' & @CR
			$s_html &= '<style>body {font-family: Arial}' & @CR
			$s_html &= 'td {padding:6px}</style>' & @CR
			$s_html &= '</head>' & @CR
			$s_html &= '<body>' & @CR
			$s_html &= '<form name="ExampleForm" onSubmit="javascript:alert(''ExampleFormSubmitted'');" method="post">' & @CR
			$s_html &= '<table style="border-spacing:6px 6px;" border=1>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>ExampleForm</td>' & @CR
			$s_html &= '<td>&lt;form name="ExampleForm" onSubmit="javascript:alert(''ExampleFormSubmitted'');" method="post"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>Hidden Input Element<input type="hidden" name="hiddenExample" value="secret value"></td>' & @CR
			$s_html &= '<td>&lt;input type="hidden" name="hiddenExample" value="secret value"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input type="text" name="textExample" value="http://" size="20" maxlength="30">' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;input type="text" name="textExample" value="http://" size="20" maxlength="30"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input type="password" name="passwordExample" size="10">' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;input type="password" name="passwordExample" size="10"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input type="file" name="fileExample">' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;input type="file" name="fileExample"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input type="image" name="imageExample" alt="AutoIt Homepage" src="http://www.autoitscript.com/images/autoit_6_240x100.jpg">' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;input type="image" name="imageExample" alt="AutoIt Homepage" src="http://www.autoitscript.com/images/autoit_6_240x100.jpg"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<textarea name="textareaExample" rows="5" cols="15">Hello!</textarea>' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;textarea name="textareaExample" rows="5" cols="15"&gt;Hello!&lt;/textarea&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input type="checkbox" name="checkboxG1Example" value="gameBasketball">Basketball<br>' & @CR
			$s_html &= '<input type="checkbox" name="checkboxG1Example" value="gameFootball">Football<br>' & @CR
			$s_html &= '<input type="checkbox" name="checkboxG2Example" value="gameTennis" checked>Tennis<br>' & @CR
			$s_html &= '<input type="checkbox" name="checkboxG2Example" value="gameBaseball">Baseball' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;input type="checkbox" name="checkboxG1Example" value="gameBasketball"&gt;Basketball&lt;br&gt;<br>' & @CR
			$s_html &= '&lt;input type="checkbox" name="checkboxG1Example" value="gameFootball"&gt;Football&lt;br&gt;<br>' & @CR
			$s_html &= '&lt;input type="checkbox" name="checkboxG2Example" value="gameTennis" checked&gt;Tennis&lt;br&gt;<br>' & @CR
			$s_html &= '&lt;input type="checkbox" name="checkboxG2Example" value="gameBaseball"&gt;Baseball</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input type="radio" name="radioExample" value="vehicleAirplane">Airplane<br>' & @CR
			$s_html &= '<input type="radio" name="radioExample" value="vehicleTrain" checked>Train<br>' & @CR
			$s_html &= '<input type="radio" name="radioExample" value="vehicleBoat">Boat<br>' & @CR
			$s_html &= '<input type="radio" name="radioExample" value="vehicleCar">Car</td>' & @CR
			$s_html &= '<td>&lt;input type="radio" name="radioExample" value="vehicleAirplane"&gt;Airplane&lt;br&gt;<br>' & @CR
			$s_html &= '&lt;input type="radio" name="radioExample" value="vehicleTrain" checked&gt;Train&lt;br&gt;<br>' & @CR
			$s_html &= '&lt;input type="radio" name="radioExample" value="vehicleBoat"&gt;Boat&lt;br&gt;<br>' & @CR
			$s_html &= '&lt;input type="radio" name="radioExample" value="vehicleCar"&gt;Car&lt;br&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<select name="selectExample">' & @CR
			$s_html &= '<option value="homepage.html">Homepage' & @CR
			$s_html &= '<option value="midipage.html">Midipage' & @CR
			$s_html &= '<option value="freepage.html">Freepage' & @CR
			$s_html &= '</select>' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;select name="selectExample"&gt;<br>' & @CR
			$s_html &= '&lt;option value="homepage.html"&gt;Homepage<br>' & @CR
			$s_html &= '&lt;option value="midipage.html"&gt;Midipage<br>' & @CR
			$s_html &= '&lt;option value="freepage.html"&gt;Freepage<br>' & @CR
			$s_html &= '&lt;/select&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<select name="multipleSelectExample" size="6" multiple>' & @CR
			$s_html &= '<option value="Name1">Aaron' & @CR
			$s_html &= '<option value="Name2">Bruce' & @CR
			$s_html &= '<option value="Name3">Carlos' & @CR
			$s_html &= '<option value="Name4">Denis' & @CR
			$s_html &= '<option value="Name5">Ed' & @CR
			$s_html &= '<option value="Name6">Freddy' & @CR
			$s_html &= '</select>' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;select name="multipleSelectExample" size="6" multiple&gt;<br>' & @CR
			$s_html &= '&lt;option value="Name1"&gt;Aaron<br>' & @CR
			$s_html &= '&lt;option value="Name2"&gt;Bruce<br>' & @CR
			$s_html &= '&lt;option value="Name3"&gt;Carlos<br>' & @CR
			$s_html &= '&lt;option value="Name4"&gt;Denis<br>' & @CR
			$s_html &= '&lt;option value="Name5"&gt;Ed<br>' & @CR
			$s_html &= '&lt;option value="Name6"&gt;Freddy<br>' & @CR
			$s_html &= '&lt;/select&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td>' & @CR
			$s_html &= '<input name="submitExample" type="submit" value="Submit">' & @CR
			$s_html &= '<input name="resetExample" type="reset" value="Reset">' & @CR
			$s_html &= '</td>' & @CR
			$s_html &= '<td>&lt;input name="submitExample" type="submit" value="Submit"&gt;<br>' & @CR
			$s_html &= '&lt;input name="resetExample" type="reset" value="Reset"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '</table>' & @CR
			$s_html &= '<input type="hidden" name="hiddenExample" value="secret value">' & @CR
			$s_html &= '</form>' & @CR
			$s_html &= '</body>' & @CR
			$s_html &= '</html>'
			$o_object = _IECreate()
			_IEDocWriteHTML($o_object, $s_html)
		Case "frameset"
			$s_html &= '<!DOCTYPE html>' & @CR
			$s_html &= '<html>' & @CR
			$s_html &= '<head>' & @CR
			$s_html &= '<meta content="text/html; charset=UTF-8" http-equiv="content-type">' & @CR
			$s_html &= '<title>_IE_Example("frameset")</title>' & @CR
			$s_html &= '</head>' & @CR
			$s_html &= '<frameset rows="25,200">' & @CR
			$s_html &= '	<frame name=Top SRC=about:blank>' & @CR
			$s_html &= '	<frameset cols="100,500">' & @CR
			$s_html &= '		<frame name=Menu SRC=about:blank>' & @CR
			$s_html &= '		<frame name=Main SRC=about:blank>' & @CR
			$s_html &= '	</frameset>' & @CR
			$s_html &= '</frameset>' & @CR
			$s_html &= '</html>'
			$o_object = _IECreate()
			_IEDocWriteHTML($o_object, $s_html)
			_IEAction($o_object, "refresh")
			Local $oFrameTop = _IEFrameGetObjByName($o_object, "Top")
			Local $oFrameMenu = _IEFrameGetObjByName($o_object, "Menu")
			Local $oFrameMain = _IEFrameGetObjByName($o_object, "Main")
			_IEBodyWriteHTML($oFrameTop, '$oFrameTop = _IEFrameGetObjByName($oIE, "Top")')
			_IEBodyWriteHTML($oFrameMenu, '$oFrameMenu = _IEFrameGetObjByName($oIE, "Menu")')
			_IEBodyWriteHTML($oFrameMain, '$oFrameMain = _IEFrameGetObjByName($oIE, "Main")')
		Case "iframe"
			$s_html &= '<!DOCTYPE html>' & @CR
			$s_html &= '<html>' & @CR
			$s_html &= '<head>' & @CR
			$s_html &= '<meta content="text/html; charset=UTF-8" http-equiv="content-type">' & @CR
			$s_html &= '<title>_IE_Example("iframe")</title>' & @CR
			$s_html &= '<style>td {padding:6px}</style>' & @CR
			$s_html &= '</head>' & @CR
			$s_html &= '<body>' & @CR
			$s_html &= '<table style="border-spacing:6px" border=1>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td><iframe name="iFrameOne" src="about:blank" title="iFrameOne"></iframe></td>' & @CR
			$s_html &= '<td>&lt;iframe name="iFrameOne" src="about:blank" title="iFrameOne"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '<tr>' & @CR
			$s_html &= '<td><iframe name="iFrameTwo" src="about:blank" title="iFrameTwo"></iframe></td>' & @CR
			$s_html &= '<td>&lt;iframe name="iFrameTwo" src="about:blank" title="iFrameTwo"&gt;</td>' & @CR
			$s_html &= '</tr>' & @CR
			$s_html &= '</table>' & @CR
			$s_html &= '</body>' & @CR
			$s_html &= '</html>'
			$o_object = _IECreate()
			_IEDocWriteHTML($o_object, $s_html)
			_IEAction($o_object, "refresh")
			Local $oIFrameOne = _IEFrameGetObjByName($o_object, "iFrameOne")
			Local $oIFrameTwo = _IEFrameGetObjByName($o_object, "iFrameTwo")
			_IEBodyWriteHTML($oIFrameOne, '$oIFrameOne = _IEFrameGetObjByName($oIE, "iFrameOne")')
			_IEBodyWriteHTML($oIFrameTwo, '$oIFrameTwo = _IEFrameGetObjByName($oIE, "iFrameTwo")')
		Case Else
			__IEConsoleWriteError("Error", "_IE_Example", "$_IEStatus_InvalidValue")
			Return SetError($_IEStatus_InvalidValue, 1, 0)
	EndSwitch

	;	at least under IE10 some delay is needed to have functions as _IEPropertySet() working
	;	value can depend of processor speed ...
	Sleep(500)
	Return SetError($_IEStatus_Success, 0, $o_object)
EndFunc   ;==>_IE_Example

; #FUNCTION# ====================================================================================================================
; Author ........: Dale Hohm
; ===============================================================================================================================
Func _IE_VersionInfo()
	__IEConsoleWriteError("Information", "_IE_VersionInfo", "version " & _
			$IEAU3VersionInfo[0] & _
			$IEAU3VersionInfo[1] & "." & _
			$IEAU3VersionInfo[2] & "-" & _
			$IEAU3VersionInfo[3], "Release date: " & $IEAU3VersionInfo[4])
	Return SetError($_IEStatus_Success, 0, $IEAU3VersionInfo)
EndFunc   ;==>_IE_VersionInfo

#EndRegion General

#Region Internal functions
;
; Internal Functions with names starting with two underscores will not be documented
; as user functions
;
; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IELockSetForegroundWindow
; Description ...: Locks (and Unlocks) current Foregrouns Window focus to prevent a new window
; 					from stealing it (e.g. when creating invisible IE browser)
; Parameters ....: $nLockCode	- 1 Lock Foreground Window Focus, 2 Unlock Foreground Window Focus
; Return values .: On Success 	- 1
;                   On Failure 	- 0  and sets @error and @extended to non-zero values
; Author ........: Valik
; ===============================================================================================================================
Func __IELockSetForegroundWindow($nLockCode)
	Local $aRet = DllCall("user32.dll", "bool", "LockSetForegroundWindow", "uint", $nLockCode)
	If @error Or $aRet[0] Then Return SetError(1, _WinAPI_GetLastError(), 0)
	Return $aRet[0]
EndFunc   ;==>__IELockSetForegroundWindow

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IEControlGetObjFromHWND
; Description ...: Returns a COM Object Window reference to an embebedded Webbrowser control
; Parameters ....: $hWin		- HWND of a Internet Explorer_Server1 control obtained for example:
; 					$hwnd = ControlGetHandle("MyApp","","Internet Explorer_Server1")
; Return values .: On Success 	- Returns DOM Window object
;                   On Failure 	- 0  and sets @error = 1
; Author ........: Larry with thanks to Valik
; Remarks .......:
; ===============================================================================================================================
Func __IEControlGetObjFromHWND(ByRef $hWin)
	; The code assumes CoInitialize() succeeded due to the number of different
	; yet successful return values it has.
	DllCall("ole32.dll", "long", "CoInitialize", "ptr", 0)
	If @error Then Return SetError(2, @error, 0)

	Local Const $WM_HTML_GETOBJECT = __IERegisterWindowMessage("WM_HTML_GETOBJECT")
	Local Const $SMTO_ABORTIFHUNG = 0x0002
	Local $lResult

	__IESendMessageTimeout($hWin, $WM_HTML_GETOBJECT, 0, 0, $SMTO_ABORTIFHUNG, 1000, $lResult)

	Local $typUUID = DllStructCreate("int;short;short;byte[8]")
	DllStructSetData($typUUID, 1, 0x626FC520)
	DllStructSetData($typUUID, 2, 0xA41E)
	DllStructSetData($typUUID, 3, 0x11CF)
	DllStructSetData($typUUID, 4, 0xA7, 1)
	DllStructSetData($typUUID, 4, 0x31, 2)
	DllStructSetData($typUUID, 4, 0x0, 3)
	DllStructSetData($typUUID, 4, 0xA0, 4)
	DllStructSetData($typUUID, 4, 0xC9, 5)
	DllStructSetData($typUUID, 4, 0x8, 6)
	DllStructSetData($typUUID, 4, 0x26, 7)
	DllStructSetData($typUUID, 4, 0x37, 8)

	Local $aRet = DllCall("oleacc.dll", "long", "ObjectFromLresult", "lresult", $lResult, "struct*", $typUUID, _
			"wparam", 0, "idispatch*", 0)
	If @error Then Return SetError(3, @error, 0)

	If IsObj($aRet[4]) Then
		Local $oIE = $aRet[4] .Script()
		; $oIE is now a valid IDispatch object
		Return $oIE.Document.parentwindow
	Else
		Return SetError(1, $aRet[0], 0)
	EndIf
EndFunc   ;==>__IEControlGetObjFromHWND

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IERegisterWindowMessage
; Description ...: Required by __IEControlGetObjFromHWND()
; Author ........: Larry with thanks to Valik
; ===============================================================================================================================
Func __IERegisterWindowMessage($sMsg)
	Local $aRet = DllCall("user32.dll", "uint", "RegisterWindowMessageW", "wstr", $sMsg)
	If @error Then Return SetError(@error, @extended, 0)
	If $aRet[0] = 0 Then Return SetError(10, _WinAPI_GetLastError(), 0)
	Return $aRet[0]
EndFunc   ;==>__IERegisterWindowMessage

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IESendMessageTimeout
; Description ...: Required by __IEControlGetObjFromHWND()
; Author ........: Larry with thanks to Valik
; ===============================================================================================================================
Func __IESendMessageTimeout($hWnd, $msg, $wParam, $lParam, $nFlags, $nTimeout, ByRef $vOut, $r = 0, $t1 = "int", $t2 = "int")
	Local $aRet = DllCall("user32.dll", "lresult", "SendMessageTimeout", "hwnd", $hWnd, "uint", $msg, $t1, $wParam, _
			$t2, $lParam, "uint", $nFlags, "uint", $nTimeout, "dword_ptr*", "")
	If @error Or $aRet[0] = 0 Then
		$vOut = 0
		Return SetError(1, _WinAPI_GetLastError(), 0)
	EndIf
	$vOut = $aRet[7]
	If $r >= 0 And $r <= 4 Then Return $aRet[$r]
	Return $aRet
EndFunc   ;==>__IESendMessageTimeout

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IEIsObjType
; Description ...: Check to see if an object variable is of a specific type
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func __IEIsObjType(ByRef $o_object, $s_type)
	If Not IsObj($o_object) Then
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf

	; Turn off error notification for internal processing
	Local $f_NotifyStatus = _IEErrorNotify() ; save current error notify status
	_IEErrorNotify(False)
	;
	Local $s_name = String(ObjName($o_object)), $ErrorStatus = $_IEStatus_InvalidObjectType

	Switch $s_type
		Case "browserdom"
			If __IEIsObjType($o_object, "documentcontainer") Then
				$ErrorStatus = $_IEStatus_Success
			ElseIf __IEIsObjType($o_object, "document") Then
				$ErrorStatus = $_IEStatus_Success
			Else
				Local $oTemp = $o_object.document
				If __IEIsObjType($oTemp, "document") Then
					$ErrorStatus = $_IEStatus_Success
				EndIf
			EndIf
		Case "browser"
			If ($s_name = "IWebBrowser2") Or ($s_name = "IWebBrowser") Or ($s_name = "WebBrowser") Then $ErrorStatus = $_IEStatus_Success
		Case "window"
			If $s_name = "HTMLWindow2" Then $ErrorStatus = $_IEStatus_Success
		Case "documentContainer"
			If __IEIsObjType($o_object, "window") Or __IEIsObjType($o_object, "browser") Then $ErrorStatus = $_IEStatus_Success
		Case "document"
			If $s_name = "HTMLDocument" Then $ErrorStatus = $_IEStatus_Success
		Case "table"
			If $s_name = "HTMLTable" Then $ErrorStatus = $_IEStatus_Success
		Case "form"
			If $s_name = "HTMLFormElement" Then $ErrorStatus = $_IEStatus_Success
		Case "forminputelement"
			If ($s_name = "HTMLInputElement") Or ($s_name = "HTMLSelectElement") Or ($s_name = "HTMLTextAreaElement") Then $ErrorStatus = $_IEStatus_Success
		Case "elementcollection"
			If ($s_name = "HTMLElementCollection") Then $ErrorStatus = $_IEStatus_Success
		Case "formselectelement"
			If $s_name = "HTMLSelectElement" Then $ErrorStatus = $_IEStatus_Success
		Case Else
			; Unsupported ObjType specified
			$ErrorStatus = $_IEStatus_InvalidValue
	EndSwitch

	; restore error notify
	_IEErrorNotify($f_NotifyStatus) ; restore notification status

	If $ErrorStatus = $_IEStatus_Success Then
		Return SetError($_IEStatus_Success, 0, 1)
	Else
		Return SetError($ErrorStatus, 1, 0)
	EndIf
EndFunc   ;==>__IEIsObjType

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IEConsoleWriteError
; Description ...: ConsoleWrite an error message if required
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func __IEConsoleWriteError($s_severity, $s_func, $s_message = Default, $s_status = Default)
	If $_IEErrorNotify Or $__IEAU3Debug Then
		Local $sStr = "--> IE.au3 " & $IEAU3VersionInfo[5] & " " & $s_severity & " from function " & $s_func
		If Not ($s_message = Default) Then $sStr &= ", " & $s_message
		If Not ($s_status = Default) Then $sStr &= " (" & $s_status & ")"
		ConsoleWrite($sStr & @CRLF)
	EndIf
	Return SetError($s_status, 0, 1) ; restore calling @error
EndFunc   ;==>__IEConsoleWriteError

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IEComErrorUnrecoverable
; Description ...: Internal function to test a COM error condition and determine if it is considered unrecoverable
; Parameters ....: Error number
; Return values .: Unrecoverable: True, Else: False
; Author ........: Dale Hohm
; Modified ......: jpm
; ===============================================================================================================================
Func __IEComErrorUnrecoverable($i_error)
	Switch $i_error
		; Cross-domain scripting security error
		Case -2147352567 ; "an exception has occurred."
			Return $_IEStatus_AccessIsDenied
		Case -2147024891 ; "Access is denied."
			Return $_IEStatus_AccessIsDenied
			;
			; Browser object is destroyed before we try to operate upon it
		Case -2147417848 ; "The object invoked has disconnected from its clients."
			Return $_IEStatus_ClientDisconnected
		Case -2147023174 ; "RPC server not accessible."
			Return $_IEStatus_ClientDisconnected
		Case -2147023179 ; "The interface is unknown."
			Return $_IEStatus_ClientDisconnected
			;
		Case Else
			Return $_IEStatus_Success
	EndSwitch
EndFunc   ;==>__IEComErrorUnrecoverable

#EndRegion Internal functions

#Region ProtoType Functions
; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IENavigate
; Description ...: ** Unsupported version of _IENavigate (note second underscore in function name)
; 					** Last 4 parameters insufficiently tested.
; 					**    - Flags and Target can create new windows and new browser object - causing confusion
; 					**    - Postdata needs SAFEARRAY and we have no way to create one
; 					Directs an existing browser window to navigate to the specified URL
; Parameters ....: $o_object 		- Object variable of an InternetExplorer.Application, Window or Frame object
; 				   $s_Url 			- URL to navigate to (e.g. "http://www.autoitscript.com")
; 				   $f_wait 		- Optional: specifies whether to wait for page to load before returning
; 										0 = Return immediately, not waiting for page to load
; 										1 = (Default) Wait for page load to complete before returning
; 				   $i_flags		- URL to navigate to (e.g. "http://www.autoitscript.com")
; 				   $s_target	- target frame
; 				   $spostdata	- data for form method="POST", non-functional - requires safearray
; 				   $s_headers	- additional headers to be passed
; Return values .: On Success 	- Returns -1
;                  On Failure	- Returns 0 and sets @error
; 					@error		- 1 ($_IEStatus_GeneralError) = General Error
; 								- 3 ($_IEStatus_InvalidDataType) = Invalid Data Type
; 								- 4 ($_IEStatus_InvalidObjectType) = Invalid Object Type
; 								- 6 ($_IEStatus_LoadWaitTimeout) = Load Wait Timeout
; 								- 8 ($_IEStatus_AccessIsDenied) = Access Is Denied
; 								- 9 ($_IEStatus_ClientDisconnected) = Client Disconnected
; 					@extended	- Contains invalid parameter number
; Author ........: Dale Hohm
; Remarks .......:  AutoIt3 V3.2 or higher, flags for Tabs require IE7 or higher
; 					Additional information on the navigate2 method here: http://msdn.microsoft.com/en-us/library/aa752134.aspx
;
; Flags:
;    navOpenInNewWindow = 0x1,
;    navNoHistory = 0x2,
;    navNoReadFromCache = 0x4,
;    navNoWriteToCache = 0x8,
;    navAllowAutosearch = 0x10,
;    navBrowserBar = 0x20,
;    navHyperlink = 0x40,
;    navEnforceRestricted = 0x80,
;    navNewWindowsManaged = 0x0100,
;    navUntrustedForDownload = 0x0200,
;    navTrustedForActiveX = 0x0400,
;    navOpenInNewTab = 0x0800,
;    navOpenInBackgroundTab = 0x1000,
;    navKeepWordWheelText = 0x2000
;
; Additional documentation on the flags can be found here:
;    http://msdn.microsoft.com/en-us/library/aa768360.aspx
; ===============================================================================================================================
Func __IENavigate(ByRef $o_object, $s_Url, $f_wait = 1, $i_flags = 0, $s_target = "", $s_postdata = "", $s_headers = "")
	__IEConsoleWriteError("Warning", "__IENavigate", "Unsupported function called. Not fully tested.")
	If Not IsObj($o_object) Then
		__IEConsoleWriteError("Error", "__IENavigate", "$_IEStatus_InvalidDataType")
		Return SetError($_IEStatus_InvalidDataType, 1, 0)
	EndIf
	;
	If Not __IEIsObjType($o_object, "documentContainer") Then
		__IEConsoleWriteError("Error", "__IENavigate", "$_IEStatus_InvalidObjectType")
		Return SetError($_IEStatus_InvalidObjectType, 1, 0)
	EndIf
	;
	$o_object.navigate($s_Url, $i_flags, $s_target, $s_postdata, $s_headers)
	If $f_wait Then
		_IELoadWait($o_object)
		Return SetError(@error, 0, $o_object)
	EndIf
	Return SetError($_IEStatus_Success, 0, $o_object)
EndFunc   ;==>__IENavigate

#cs
	#include <IE.au3>
	; Simulates the submission of the form from the page:
	;
	;    http://www.autoitscript.com/forum/index.php?act=Search
	;
	; searches for the string safearray and returns the results as posts

	$sFormAction = "http://www.autoitscript.com/forum/index.php?act=Search&CODE=01"
	$sHeader = "Content-Type: application/x-www-form-urlencoded"

	$sDataToPost = "keywords=safearray&namesearch=&forums%5B%5D=all&searchsubs=1&prune=0&prune_type=newer&sort_key=last_post&sort_order=desc&search_in=posts&result_type=posts"
	$oDataToPostBstr = __IEStringToBstr($sDataToPost) ; convert string to BSTR
	ConsoleWrite(__IEBstrToString($oDataToPostBstr) & @CRLF) ; prove we can convert it back to a string

	$oIE = _IECreate()
	$oIE.Navigate( $sFormAction, Default, Default, $oDataToPostBstr, $sHeader)
	; or
	;__IENavigate($oIE, $sFormAction, 1, 0, "", $oDataToPostBstr, $sHeader)
#ce

Func __IEStringToBstr($s_string, $s_charSet = "us-ascii")
	Local Const $adTypeBinary = 1, $adTypeText = 2

	Local $o_Stream = ObjCreate("ADODB.Stream")

	$o_Stream.type = $adTypeText
	$o_Stream.CharSet = $s_charSet
	$o_Stream.Open
	$o_Stream.WriteText($s_string)
	$o_Stream.Position = 0

	$o_Stream.type = $adTypeBinary
	$o_Stream.Position = 0

	Return $o_Stream.Read()
EndFunc   ;==>__IEStringToBstr

Func __IEBstrToString($o_bstr, $s_charSet = "us-ascii")
	Local Const $adTypeBinary = 1, $adTypeText = 2

	Local $o_Stream = ObjCreate("ADODB.Stream")

	$o_Stream.type = $adTypeBinary
	$o_Stream.Open
	$o_Stream.Write($o_bstr)
	$o_Stream.Position = 0

	$o_Stream.type = $adTypeText
	$o_Stream.CharSet = $s_charSet
	$o_Stream.Position = 0

	Return $o_Stream.ReadText()
EndFunc   ;==>__IEBstrToString

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IECreateNewIE
; Description ...: Create a Webbrowser in a seperate process
; Parameters ....: None
; Return values .: On Success	- Returns a Webbrowser object reference
;                  On Failure	- Returns 0 and sets @error
; 					@error		- 0 ($_IEStatus_Success) = No Error
; 								- 1 ($_IEStatus_GeneralError) = General Error
; Author ........: Dale Hohm
; Modified ......: jpm
; Remarks .......: http://msdn2.microsoft.com/en-us/library/ms536471(vs.85).aspx
; ===============================================================================================================================
Func __IECreateNewIE($s_title, $s_head = "", $s_body = "")
	Local $s_Temp = __IETempFile("", "~IE~", ".htm")
	If @error Then
		__IEConsoleWriteError("Error", "_IECreateHTA", "", "Error creating temporary file in @TempDir or @ScriptDir")
		Return SetError($_IEStatus_GeneralError, 1, 0)
	EndIf

	Local $s_html = ''
	$s_html &= '<!DOCTYPE html>' & @CR
	$s_html &= '<html>' & @CR
	$s_html &= '<head>' & @CR
	$s_html &= '<meta content="text/html; charset=UTF-8" http-equiv="content-type">' & @CR
	$s_html &= '<title>' & $s_Temp & '</title>' & @CR & $s_head & @CR
	$s_html &= '</head>' & @CR
	$s_html &= '<body>' & @CR & $s_body & @CR
	$s_html &= '</body>' & @CR
	$s_html &= '</html>'

	Local $h_file = FileOpen($s_Temp, $FO_OVERWRITE)
	FileWrite($h_file, $s_html)
	FileClose($h_file)
	If @error Then
		__IEConsoleWriteError("Error", "_IECreateNewIE", "", "Error creating temporary file in @TempDir or @ScriptDir")
		Return SetError($_IEStatus_GeneralError, 2, 0)
	EndIf
	Run(@ProgramFilesDir & "\Internet Explorer\iexplore.exe " & $s_Temp)

	Local $s_PID
	If WinWait($s_Temp, "", 60) Then
		$s_PID = WinGetProcess($s_Temp)
	Else
		__IEConsoleWriteError("Error", "_IECreateNewIE", "", "Timeout waiting for new IE window creation")
		Return SetError($_IEStatus_GeneralError, 3, 0)
	EndIf

	If Not FileDelete($s_Temp) Then
		__IEConsoleWriteError("Warning", "_IECreateNewIE", "", "Could not delete temporary file " & FileGetLongName($s_Temp))
	EndIf

	Local $o_object = _IEAttach($s_Temp)
	_IELoadWait($o_object)
	_IEPropertySet($o_object, "title", $s_title)

	Return SetError($_IEStatus_Success, $s_PID, $o_object)
EndFunc   ;==>__IECreateNewIE

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __IETempFile
; Description ...: Generate a name for a temporary file. The file is guaranteed not to already exist.
; Parameters ....: $s_DirectoryName    optional  Name of directory for filename, defaults to @TempDir
;                  $s_FilePrefix       optional  File prefixname, defaults to "~"
;                  $s_FileExtension    optional  File extenstion, defaults to ".tmp"
;                  $i_RandomLength     optional  Number of characters to use to generate a unique name, defaults to 7
; Return values .: Filename of a temporary file which does not exist.
; Author ........: Dale (Klaatu) Thompson
; Modified.......: Hans Harder - Added Optional parameters
;
; Adapted from excellent _TempFile() in File.au3 for IE.au3 by Dale Hohm
; ===============================================================================================================================
Func __IETempFile($s_DirectoryName = @TempDir, $s_FilePrefix = "~", $s_FileExtension = ".tmp", $i_RandomLength = 7)
	Local $s_TempName, $i_tmp = 0
	; Check parameters
	If Not FileExists($s_DirectoryName) Then $s_DirectoryName = @TempDir ; First reset to default temp dir
	If Not FileExists($s_DirectoryName) Then $s_DirectoryName = @ScriptDir ; Still wrong then set to Scriptdir
	; add trailing \ for directory name
	If StringRight($s_DirectoryName, 1) <> "\" Then $s_DirectoryName = $s_DirectoryName & "\"
	;
	Do
		$s_TempName = ""
		While StringLen($s_TempName) < $i_RandomLength
			$s_TempName = $s_TempName & Chr(Random(97, 122, 1))
		WEnd
		$s_TempName = $s_DirectoryName & $s_FilePrefix & $s_TempName & $s_FileExtension
		$i_tmp += 1
		If $i_tmp > 200 Then ; If we fail over 200 times, there is something wrong
			Return SetError($_IEStatus_GeneralError, 1, 0)
		EndIf
	Until Not FileExists($s_TempName)

	Return $s_TempName
EndFunc   ;==>__IETempFile

#EndRegion ProtoType Functions
