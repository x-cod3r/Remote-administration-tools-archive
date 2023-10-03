#include-once
#include <[CommonDLL]\_USER32DLLCommonHandle.au3>
; ===============================================================================================================================
; <_WinFlashEx.au3>
;
; Simple replacement function for AutoIt's built-in WinFlash().  This version returns immediately, unlike AutoIt's.
;
; Function:
;	_WinFlashEx()	; Flashes the taskbar button and title bar of window (for x times, at n interval)
;
; Author: Ascend4nt
; ===============================================================================================================================

; ===============================================================================================================================
; Func _WinFlashEx($vWnd,$vTxt="",$iCount=4,$iDelay=500)
;
; Same functionality as WinFlash(), except this is a non-blocking version (it returns immediately).
;
; $vWnd = Window handle or Title (same as WinGetHandle() titles)
; $vTxt = if set to something other than "", and $vWnd is not a Window handle,
;	this should be set to Visible text in the given window
; $iCount = # of times to Flash
; $iDelay = # of ms between flashes
;
; Returns:
;	Success: True, @error=0
;	Failure: False, @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLLCall error, @extended contains the error DLLCall error code (see AutoIt Help)
;		@error = 3 = Failure returned from function call - see GetLastError
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinFlashEx($vWnd,$vTxt="",$iCount=4,$iDelay=500)
	If $iCount<1 Or $iDelay<0 Then Return SetError(1,0,False)
	If Not IsHWnd($vWnd) Then
		If $vTxt="" Then				; 2nd WinGetHandle() param must be skipped in this special case,
			$vWnd=WinGetHandle($vWnd)	;  unless looking for a window with no text
		Else
			$vWnd=WinGetHandle($vWnd,$vTxt)
		EndIf
		If @error Then Return SetError(1,1,False)
	EndIf
	Local $stFlashWInfo=DllStructCreate("uint;hwnd;dword;uint;dword")
	DllStructSetData($stFlashWInfo,1,DllStructGetSize($stFlashWInfo))
	DllStructSetData($stFlashWInfo,2,$vWnd)
	DllStructSetData($stFlashWInfo,3,3)	; Flags (0x3 = flash both window caption and taskbar button)
	DllStructSetData($stFlashWInfo,4,$iCount)
	DllStructSetData($stFlashWInfo,5,$iDelay)
	Local $aRet=DllCall($_COMMON_USER32DLL,"bool","FlashWindowEx","ptr",DllStructGetPtr($stFlashWInfo))
	If @error Then Return SetError(2,@error,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
	Return True
EndFunc
