#include-once

#include "FontConstants.au3"
#include "StructureConstants.au3"
#include "WinAPIError.au3"

; #INDEX# =======================================================================================================================
; Title .........: Misc
; AutoIt Version : 3.3.7.20++
; Language ......: English
; Description ...: Functions that assist with Common Dialogs.
; Author(s) .....: Gary Frost, Florian Fida (Piccaso), Dale (Klaatu) Thompson, Valik, ezzetabi, Jon, Paul Campbell (PaulIA)
; Dll(s) ........: comdlg32.dll, user32.dll, kernel32.dll, advapi32.dll, gdi32.dll
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $__MISCCONSTANT_CC_ANYCOLOR = 0x0100
Global Const $__MISCCONSTANT_CC_FULLOPEN = 0x0002
Global Const $__MISCCONSTANT_CC_RGBINIT = 0x0001
; ===============================================================================================================================

; #NO_DOC_FUNCTION# =============================================================================================================
; Not documented - function(s) no longer needed, will be worked out of the file at a later date
;
; _Iif
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _ChooseColor
; _ChooseFont
; _ClipPutFile
; _MouseTrap
; _Singleton
; _IsPressed
; _VersionCompare
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; $tagCHOOSECOLOR
; $tagCHOOSEFONT
; __MISC_GetDC
; __MISC_GetDeviceCaps
; __MISC_ReleaseDC
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: $tagCHOOSECOLOR
; Description ...: Contains information the _ChooseColor function uses to initialize the Color dialog box
; Fields ........: Size           - Specifies the size, in bytes, of the structure
;                  hWndOwner      - Handle to the window that owns the dialog box
;                  hInstance      - If the $CC_ENABLETEMPLATEHANDLE flag is set in the Flags member, hInstance is a handle to a memory
;                  +object containing a dialog box template. If the $CC_ENABLETEMPLATE flag is set, hInstance is a handle to a module
;                  +that contains a dialog box template named by the lpTemplateName member. If neither $CC_ENABLETEMPLATEHANDLE
;                  +nor $CC_ENABLETEMPLATE is set, this member is ignored.
;                  rgbResult      - If the $CC_RGBINIT flag is set, rgbResult specifies the color initially selected when the dialog
;                  +box is created.
;                  CustColors     - Pointer to an array of 16 values that contain red, green, blue (RGB) values for the custom color
;                  +boxes in the dialog box.
;                  Flags          - A set of bit flags that you can use to initialize the Color dialog box. When the dialog box returns,
;                  +it sets these flags to indicate the user's input. This member can be a combination of the following flags:
;                  |$CC_ANYCOLOR             - Causes the dialog box to display all available colors in the set of basic colors
;                  |$CC_ENABLEHOOK           - Enables the hook procedure specified in the lpfnHook member
;                  |$CC_ENABLETEMPLATE       - Indicates that the hInstance and lpTemplateName members specify a dialog box template
;                  |$CC_ENABLETEMPLATEHANDLE - Indicates that the hInstance member identifies a data block that contains a preloaded
;                  +dialog box template
;                  |$CC_FULLOPEN             - Causes the dialog box to display the additional controls that allow the user to create
;                  +custom colors
;                  |$CC_PREVENTFULLOPEN      - Disables the Define Custom Color
;                  |$CC_RGBINIT              - Causes the dialog box to use the color specified in the rgbResult member as the initial
;                  +color selection
;                  |$CC_SHOWHELP             - Causes the dialog box to display the Help button
;                  |$CC_SOLIDCOLOR           - Causes the dialog box to display only solid colors in the set of basic colors
;                  lCustData      - Specifies application-defined data that the system passes to the hook procedure identified by the
;                  +lpfnHook member
;                  lpfnHook       - Pointer to a CCHookProc hook procedure that can process messages intended for the dialog box.
;                  +This member is ignored unless the CC_ENABLEHOOK flag is set in the Flags member
;                  lpTemplateName - Pointer to a null-terminated string that names the dialog box template resource in the module
;                  +identified by the hInstance m
; Author ........: Gary Frost (gafrost)
; Remarks .......:
; ===============================================================================================================================
Global Const $tagCHOOSECOLOR = "dword Size;hwnd hWndOwnder;handle hInstance;dword rgbResult;ptr CustColors;dword Flags;lparam lCustData;" & _
		"ptr lpfnHook;ptr lpTemplateName"

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: $tagCHOOSEFONT
; Description ...: Contains information that the _ChooseFont function uses to initialize the Font dialog box
; Fields ........: Size           - Specifies the size, in bytes, of the structure
;                  hWndOwner      - Handle to the window that owns the dialog box
;                  hDC            - Handle to the device context
;                  LogFont        - Pointer to a structure
;                  PointSize      - Specifies the size of the selected font, in units of 1/10 of a point
;                  Flags   - A set of bit flags that you can use to initialize the Font dialog box.
;                  +This parameter can be one of the following values:
;                  |$CF_APPLY          - Causes the dialog box to display the Apply button
;                  |$CF_ANSIONLY       - This flag is obsolete
;                  |$CF_TTONLY         - Specifies that ChooseFont should only enumerate and allow the selection of TrueType fonts
;                  |$CF_EFFECTS        - Causes the dialog box to display the controls that allow the user to specify strikeout,
;                  +underline, and text color options
;                  |$CF_ENABLEHOOK     - Enables the hook procedure specified in the lpfnHook member of this structure
;                  |$CF_ENABLETEMPLATE - Indicates that the hInstance and lpTemplateName members specify a dialog box template to use
;                  +in place of the default template
;                  |$CF_ENABLETEMPLATEHANDLE - Indicates that the hInstance member identifies a data block that contains a preloaded
;                  +dialog box template
;                  |$CF_FIXEDPITCHONLY - Specifies that ChooseFont should select only fixed-pitch fonts
;                  |$CF_FORCEFONTEXIST - Specifies that ChooseFont should indicate an error condition if the user attempts to select
;                  +a font or style that does not exist.
;                  |$CF_INITTOLOGFONTSTRUCT - Specifies that ChooseFont should use the structure pointed to by the lpLogFont member
;                  +to initialize the dialog box controls.
;                  |$CF_LIMITSIZE - Specifies that ChooseFont should select only font sizes within the range specified by the nSizeMin and nSizeMax members.
;                  |$CF_NOOEMFONTS - Same as the $CF_NOVECTORFONTS flag.
;                  |$CF_NOFACESEL - When using a LOGFONT structure to initialize the dialog box controls, use this flag to selectively prevent the dialog box
;                  +from displaying an initial selection for the font name combo box.
;                  |$CF_NOSCRIPTSEL - Disables the Script combo box.
;                  |$CF_NOSTYLESEL - When using a LOGFONT structure to initialize the dialog box controls, use this flag to selectively prevent the dialog box
;                  +from displaying an initial selection for the font style combo box.
;                  |$CF_NOSIZESEL - When using a structure to initialize the dialog box controls, use this flag to selectively prevent the dialog box from
;                  +displaying an initial selection for the font size combo box.
;                  |$CF_NOSIMULATIONS - Specifies that ChooseFont should not allow graphics device interface (GDI) font simulations.
;                  |$CF_NOVECTORFONTS - Specifies that ChooseFont should not allow vector font selections.
;                  |$CF_NOVERTFONTS - Causes the Font dialog box to list only horizontally oriented fonts.
;                  |$CF_PRINTERFONTS - Causes the dialog box to list only the fonts supported by the printer associated with the device context
;                  +(or information context) identified by the hDC member.
;                  |$CF_SCALABLEONLY - Specifies that ChooseFont should allow only the selection of scalable fonts.
;                  |$CF_SCREENFONTS - Causes the dialog box to list only the screen fonts supported by the system.
;                  |$CF_SCRIPTSONLY - Specifies that ChooseFont should allow selection of fonts for all non-OEM and Symbol character sets, as well as
;                  +the ANSI character set. This supersedes the $CF_ANSIONLY value.
;                  |$CF_SELECTSCRIPT - When specified on input, only fonts with the character set identified in the lfCharSet member of the LOGFONT
;                  +structure are displayed.
;                  |$CF_SHOWHELP - Causes the dialog box to display the Help button. The hwndOwner member must specify the window to receive the HELPMSGSTRING
;                  +registered messages that the dialog box sends when the user clicks the Help button.
;                  |$CF_USESTYLE - Specifies that the lpszStyle member is a pointer to a buffer that contains style data that ChooseFont should use to initialize
;                  +the Font Style combo box. When the user closes the dialog box, ChooseFont copies style data for the user's selection to this buffer.
;                  |$CF_WYSIWYG - Specifies that ChooseFont should allow only the selection of fonts available on both the printer and the display
;                  rgbColors - If the CF_EFFECTS flag is set, rgbColors specifies the initial text color
;                  CustData - Specifies application-defined data that the system passes to the hook procedure identified by the lpfnHook member
;                  fnHook - Pointer to a CFHookProc hook procedure that can process messages intended for the dialog box
;                  TemplateName - Pointer to a null-terminated string that names the dialog box template resource in the module
;                  +identified by the hInstance member
;                  hInstance - If the $CF_ENABLETEMPLATEHANDLE flag is set in the Flags member, hInstance is a handle to a memory
;                  +object containing a dialog box template. If the $CF_ENABLETEMPLATE flag is set, hInstance is a handle to a
;                  +module that contains a dialog box template named by the TemplateName member. If neither $CF_ENABLETEMPLATEHANDLE
;                  +nor $CF_ENABLETEMPLATE is set, this member is ignored.
;                  szStyle - Pointer to a buffer that contains style data
;                  FontType - Specifies the type of the selected font when ChooseFont returns. This member can be one or more of the following values.
;                  |$BOLD_FONTTYPE - The font weight is bold. This information is duplicated in the lfWeight member of the LOGFONT
;                  +structure and is equivalent to FW_BOLD.
;                  |$ITALIC_FONTTYPE - The italic font attribute is set. This information is duplicated in the lfItalic member of the LOGFONT structure.
;                  |$PRINTER_FONTTYPE - The font is a printer font.
;                  |$REGULAR_FONTTYPE - The font weight is normal. This information is duplicated in the lfWeight member of the LOGFONT structure and is
;                  +equivalent to FW_REGULAR.
;                  |$SCREEN_FONTTYPE - The font is a screen font.
;                  |$SIMULATED_FONTTYPE - The font is simulated by the graphics device interface (GDI).
;                  SizeMin - Specifies the minimum point size a user can select
;                  SizeMax - Specifies the maximum point size a user can select
; Author ........: Gary Frost (gafrost)
; Remarks .......:
; ===============================================================================================================================
Global Const $tagCHOOSEFONT = "dword Size;hwnd hWndOwner;handle hDC;ptr LogFont;int PointSize;dword Flags;dword rgbColors;lparam CustData;" & _
		"ptr fnHook;ptr TemplateName;handle hInstance;ptr szStyle;word FontType;int SizeMin;int SizeMax"

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _ChooseColor($iReturnType = 0, $iColorRef = 0, $iRefType = 0, $hWndOwnder = 0)
	Local $custcolors = "dword[16]"

	Local $tChoose = DllStructCreate($tagCHOOSECOLOR)
	Local $tcc = DllStructCreate($custcolors)

	If $iRefType = 1 Then ; BGR hex color to colorref
		$iColorRef = Int($iColorRef)
	ElseIf $iRefType = 2 Then ; RGB hex color to colorref
		$iColorRef = Hex(String($iColorRef), 6)
		$iColorRef = '0x' & StringMid($iColorRef, 5, 2) & StringMid($iColorRef, 3, 2) & StringMid($iColorRef, 1, 2)
	EndIf

	DllStructSetData($tChoose, "Size", DllStructGetSize($tChoose))
	DllStructSetData($tChoose, "hWndOwnder", $hWndOwnder)
	DllStructSetData($tChoose, "rgbResult", $iColorRef)
	DllStructSetData($tChoose, "CustColors", DllStructGetPtr($tcc))
	DllStructSetData($tChoose, "Flags", BitOR($__MISCCONSTANT_CC_ANYCOLOR, $__MISCCONSTANT_CC_FULLOPEN, $__MISCCONSTANT_CC_RGBINIT))

	Local $aResult = DllCall("comdlg32.dll", "bool", "ChooseColor", "struct*", $tChoose)
	If @error Then Return SetError(@error, @extended, -1)
	If $aResult[0] = 0 Then Return SetError(-3, -3, -1) ; user selected cancel or struct settings incorrect

	Local $color_picked = DllStructGetData($tChoose, "rgbResult")

	If $iReturnType = 1 Then ; return Hex BGR Color
		Return '0x' & Hex(String($color_picked), 6)
	ElseIf $iReturnType = 2 Then ; return Hex RGB Color
		$color_picked = Hex(String($color_picked), 6)
		Return '0x' & StringMid($color_picked, 5, 2) & StringMid($color_picked, 3, 2) & StringMid($color_picked, 1, 2)
	ElseIf $iReturnType = 0 Then ; return RGB COLORREF
		Return $color_picked
	Else
		Return SetError(-4, -4, -1)
	EndIf
EndFunc   ;==>_ChooseColor

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _ChooseFont($sFontName = "Courier New", $iPointSize = 10, $iColorRef = 0, $iFontWeight = 0, $iItalic = False, $iUnderline = False, $iStrikethru = False, $hWndOwner = 0)
	Local $italic = 0, $underline = 0, $strikeout = 0

	Local $lngDC = __MISC_GetDC(0)
	Local $lfHeight = Round(($iPointSize * __MISC_GetDeviceCaps($lngDC, $LOGPIXELSX)) / 72, 0)
	__MISC_ReleaseDC(0, $lngDC)

	Local $tChooseFont = DllStructCreate($tagCHOOSEFONT)
	Local $tLogFont = DllStructCreate($tagLOGFONT)

	DllStructSetData($tChooseFont, "Size", DllStructGetSize($tChooseFont))
	DllStructSetData($tChooseFont, "hWndOwner", $hWndOwner)
	DllStructSetData($tChooseFont, "LogFont", DllStructGetPtr($tLogFont))
	DllStructSetData($tChooseFont, "PointSize", $iPointSize)
	DllStructSetData($tChooseFont, "Flags", BitOR($CF_SCREENFONTS, $CF_PRINTERFONTS, $CF_EFFECTS, $CF_INITTOLOGFONTSTRUCT, $CF_NOSCRIPTSEL))
	DllStructSetData($tChooseFont, "rgbColors", $iColorRef)
	DllStructSetData($tChooseFont, "FontType", 0)

	DllStructSetData($tLogFont, "Height", $lfHeight)
	DllStructSetData($tLogFont, "Weight", $iFontWeight)
	DllStructSetData($tLogFont, "Italic", $iItalic)
	DllStructSetData($tLogFont, "Underline", $iUnderline)
	DllStructSetData($tLogFont, "Strikeout", $iStrikethru)
	DllStructSetData($tLogFont, "FaceName", $sFontName)

	Local $aResult = DllCall("comdlg32.dll", "bool", "ChooseFontW", "struct*", $tChooseFont)
	If @error Then Return SetError(@error, @extended, -1)
	If $aResult[0] = 0 Then Return SetError(-3, -3, -1) ; user selected cancel or struct settings incorrect

	Local $fontname = DllStructGetData($tLogFont, "FaceName")
	If StringLen($fontname) = 0 And StringLen($sFontName) > 0 Then $fontname = $sFontName

	If DllStructGetData($tLogFont, "Italic") Then $italic = 2
	If DllStructGetData($tLogFont, "Underline") Then $underline = 4
	If DllStructGetData($tLogFont, "Strikeout") Then $strikeout = 8

	Local $attributes = BitOR($italic, $underline, $strikeout)
	Local $size = DllStructGetData($tChooseFont, "PointSize") / 10
	Local $colorref = DllStructGetData($tChooseFont, "rgbColors")
	Local $weight = DllStructGetData($tLogFont, "Weight")

	Local $color_picked = Hex(String($colorref), 6)

	Return StringSplit($attributes & "," & $fontname & "," & $size & "," & $weight & "," & $colorref & "," & '0x' & $color_picked & "," & '0x' & StringMid($color_picked, 5, 2) & StringMid($color_picked, 3, 2) & StringMid($color_picked, 1, 2), ",")
EndFunc   ;==>_ChooseFont

; #FUNCTION# ====================================================================================================================
; Author ........: Piccaso (Florian Fida)
; Modified.......: Gary Frost (gafrost)
; ===============================================================================================================================
Func _ClipPutFile($sFile, $sSeparator = "|")
	Local Const $GMEM_MOVEABLE = 0x0002, $CF_HDROP = 15

	$sFile &= $sSeparator & $sSeparator
	Local $nGlobMemSize = 2 * (StringLen($sFile) + 20)

	Local $aResult = DllCall("user32.dll", "bool", "OpenClipboard", "hwnd", 0)
	If @error Or $aResult[0] = 0 Then Return SetError(1, _WinAPI_GetLastError(), False)
	Local $iError = 0, $iLastError = 0
	$aResult = DllCall("user32.dll", "bool", "EmptyClipboard")
	If @error Or Not $aResult[0] Then
		$iError = 2
		$iLastError = _WinAPI_GetLastError()
	Else
		$aResult = DllCall("kernel32.dll", "handle", "GlobalAlloc", "uint", $GMEM_MOVEABLE, "ulong_ptr", $nGlobMemSize)
		If @error Or Not $aResult[0] Then
			$iError = 3
			$iLastError = _WinAPI_GetLastError()
		Else
			Local $hGlobal = $aResult[0]
			$aResult = DllCall("kernel32.dll", "ptr", "GlobalLock", "handle", $hGlobal)
			If @error Or Not $aResult[0] Then
				$iError = 4
				$iLastError = _WinAPI_GetLastError()
			Else
				Local $hLock = $aResult[0]
				Local $DROPFILES = DllStructCreate("dword pFiles;" & $tagPOINT & ";bool fNC;bool fWide;wchar[" & StringLen($sFile) + 1 & "]", $hLock)
				If @error Then Return SetError(5, 6, False)

				Local $tempStruct = DllStructCreate("dword;long;long;bool;bool")

				DllStructSetData($DROPFILES, "pFiles", DllStructGetSize($tempStruct))
				DllStructSetData($DROPFILES, "X", 0)
				DllStructSetData($DROPFILES, "Y", 0)
				DllStructSetData($DROPFILES, "fNC", 0)
				DllStructSetData($DROPFILES, "fWide", 1)
				DllStructSetData($DROPFILES, 6, $sFile)
				For $i = 1 To StringLen($sFile)
					If DllStructGetData($DROPFILES, 6, $i) = $sSeparator Then DllStructSetData($DROPFILES, 6, Chr(0), $i)
				Next

				$aResult = DllCall("user32.dll", "handle", "SetClipboardData", "uint", $CF_HDROP, "handle", $hGlobal)
				If @error Or Not $aResult[0] Then
					$iError = 6
					$iLastError = _WinAPI_GetLastError()
				EndIf

				$aResult = DllCall("kernel32.dll", "bool", "GlobalUnlock", "handle", $hGlobal)
				If (@error Or Not $aResult[0]) And Not $iError And _WinAPI_GetLastError() Then
					$iError = 8
					$iLastError = _WinAPI_GetLastError()
				EndIf
			EndIf
			$aResult = DllCall("kernel32.dll", "ptr", "GlobalFree", "handle", $hGlobal)
			If (@error Or $aResult[0]) And Not $iError Then
				$iError = 9
				$iLastError = _WinAPI_GetLastError()
			EndIf
		EndIf
	EndIf
	$aResult = DllCall("user32.dll", "bool", "CloseClipboard")
	If (@error Or Not $aResult[0]) And Not $iError Then Return SetError(7, _WinAPI_GetLastError(), False)
	If $iError Then Return SetError($iError, $iLastError, False)
	Return True
EndFunc   ;==>_ClipPutFile

; #NO_DOC_FUNCTION# ====================================================================================================================
; Name...........: _Iif
; Description ...: Perform a boolean test within an expression.
; Syntax.........: _Iif ($fTest, $vTrueVal, $vFalseVal )
; Parameters ....: $fTest     - Boolean test.
;                  $vTrueVal  - Value to return if $fTest is true.
;                  $vFalseVal - Value to return if $fTest is false.
; Return values .: True         - $vTrueVal
;                  False        - $vFalseVal
; Author ........: Dale (Klaatu) Thompson
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: Yes
; ===============================================================================================================================
Func _Iif($fTest, $vTrueVal, $vFalseVal)
	Return $fTest ? $vTrueVal : $vFalseVal
EndFunc   ;==>_Iif

; #FUNCTION# ====================================================================================================================
; Author ........: Gary Frost (gafrost)
; Modified.......:
; ===============================================================================================================================
Func _MouseTrap($iLeft = 0, $iTop = 0, $iRight = 0, $iBottom = 0)
	Local $aReturn = 0
	If $iLeft = Default Then $iLeft = 0
	If $iTop = Default Then $iTop = 0
	If $iRight = Default Then $iRight = 0
	If $iBottom = Default Then $iBottom = 0
	If @NumParams = 0 Then
		$aReturn = DllCall("user32.dll", "bool", "ClipCursor", "ptr", 0)
		If @error Or Not $aReturn[0] Then Return SetError(1, _WinAPI_GetLastError(), False)
	Else
		If @NumParams = 2 Then
			$iRight = $iLeft + 1
			$iBottom = $iTop + 1
		EndIf
		Local $tRect = DllStructCreate($tagRECT)
		DllStructSetData($tRect, "Left", $iLeft)
		DllStructSetData($tRect, "Top", $iTop)
		DllStructSetData($tRect, "Right", $iRight)
		DllStructSetData($tRect, "Bottom", $iBottom)
		$aReturn = DllCall("user32.dll", "bool", "ClipCursor", "struct*", $tRect)
		If @error Or Not $aReturn[0] Then Return SetError(2, _WinAPI_GetLastError(), False)
	EndIf
	Return True
EndFunc   ;==>_MouseTrap

; #FUNCTION# ====================================================================================================================
; Author ........: Valik
; Modified.......:
; ===============================================================================================================================
Func _Singleton($sOccurenceName, $iFlag = 0)
	Local Const $ERROR_ALREADY_EXISTS = 183
	Local Const $SECURITY_DESCRIPTOR_REVISION = 1
	Local $tSecurityAttributes = 0

	If BitAND($iFlag, 2) Then
		; The size of SECURITY_DESCRIPTOR is 20 bytes.  We just
		; need a block of memory the right size, we aren't going to
		; access any members directly so it's not important what
		; the members are, just that the total size is correct.
		Local $tSecurityDescriptor = DllStructCreate("byte;byte;word;ptr[4]")
		; Initialize the security descriptor.
		Local $aRet = DllCall("advapi32.dll", "bool", "InitializeSecurityDescriptor", _
				"struct*", $tSecurityDescriptor, "dword", $SECURITY_DESCRIPTOR_REVISION)
		If @error Then Return SetError(@error, @extended, 0)
		If $aRet[0] Then
			; Add the NULL DACL specifying access to everybody.
			$aRet = DllCall("advapi32.dll", "bool", "SetSecurityDescriptorDacl", _
					"struct*", $tSecurityDescriptor, "bool", 1, "ptr", 0, "bool", 0)
			If @error Then Return SetError(@error, @extended, 0)
			If $aRet[0] Then
				; Create a SECURITY_ATTRIBUTES structure.
				$tSecurityAttributes = DllStructCreate($tagSECURITY_ATTRIBUTES)
				; Assign the members.
				DllStructSetData($tSecurityAttributes, 1, DllStructGetSize($tSecurityAttributes))
				DllStructSetData($tSecurityAttributes, 2, DllStructGetPtr($tSecurityDescriptor))
				DllStructSetData($tSecurityAttributes, 3, 0)
			EndIf
		EndIf
	EndIf

	Local $handle = DllCall("kernel32.dll", "handle", "CreateMutexW", "struct*", $tSecurityAttributes, "bool", 1, "wstr", $sOccurenceName)
	If @error Then Return SetError(@error, @extended, 0)
	Local $lastError = DllCall("kernel32.dll", "dword", "GetLastError")
	If @error Then Return SetError(@error, @extended, 0)
	If $lastError[0] = $ERROR_ALREADY_EXISTS Then
		If BitAND($iFlag, 1) Then
			DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $handle[0])
			If @error Then Return SetError(@error, @extended, 0)
			Return SetError($lastError[0], $lastError[0], 0)
		Else
			Exit -1
		EndIf
	EndIf
	Return $handle[0]
EndFunc   ;==>_Singleton

; #FUNCTION# ====================================================================================================================
; Author ........: ezzetabi and Jon
; Modified.......:
; ===============================================================================================================================
Func _IsPressed($sHexKey, $vDLL = 'user32.dll')
	; $hexKey must be the value of one of the keys.
	; _Is_Key_Pressed will return 0 if the key is not pressed, 1 if it is.
	Local $a_R = DllCall($vDLL, "short", "GetAsyncKeyState", "int", '0x' & $sHexKey)
	If @error Then Return SetError(@error, @extended, False)
	Return BitAND($a_R[0], 0x8000) <> 0
EndFunc   ;==>_IsPressed

; #FUNCTION# ====================================================================================================================
; Author ........: Valik
; Modified.......:
; ===============================================================================================================================
Func _VersionCompare($sVersion1, $sVersion2)
	If $sVersion1 = $sVersion2 Then Return 0
	Local $aVersion1 = StringSplit($sVersion1, ".,"), _
			$aVersion2 = StringSplit($sVersion2, ".,")
	If UBound($aVersion1) <> UBound($aVersion2) Or UBound($aVersion1) = 0 Then
		; Compare as Strings
		If $sVersion1 > $sVersion2 Then
			Return SetExtended(1, 1) ; @extended set to 1 for string comparison.
		ElseIf $sVersion1 < $sVersion2 Then
			Return SetExtended(1, -1) ; @extended set to 1 for string comparison.
		EndIf
	Else
		For $i = 1 To UBound($aVersion1) - 1
			; Compare this segment as numbers
			If StringIsDigit($aVersion1[$i]) And StringIsDigit($aVersion2[$i]) Then
				If Number($aVersion1[$i]) > Number($aVersion2[$i]) Then
					Return SetExtended(2, 1) ; @extended set to 2 for number comparison.
				ElseIf Number($aVersion1[$i]) < Number($aVersion2[$i]) Then
					Return SetExtended(2, -1) ; @extended set to 2 for number comparison.
				EndIf
			Else ; Compare the segment as strings
				If $aVersion1[$i] > $aVersion2[$i] Then
					Return SetExtended(1, 1) ; @extended set to 1 for string comparison.
				ElseIf $aVersion1[$i] < $aVersion2[$i] Then
					Return SetExtended(1, -1) ; @extended set to 1 for string comparison.
				EndIf
			EndIf
		Next
	EndIf
	; This point should never be reached
	Return SetError(2, 0, 0)
EndFunc   ;==>_VersionCompare

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __MISC_GetDC
; Description ...: Retrieves a handle of a display device context for the client area a window
; Syntax.........: __MISC_GetDC ( $hWnd )
; Parameters ....: $hWnd        - Handle of window
; Return values .: Success      - The device context for the given window's client area
;                  Failure      - 0
; Author ........: Paul Campbell (PaulIA)
; Modified.......:
; Remarks .......: After painting with a common device context, the __MISC_ReleaseDC function must be called to release the DC
; Related .......:
; Link ..........: @@MsdnLink@@ GetDC
; Example .......:
; ===============================================================================================================================
Func __MISC_GetDC($hWnd)
	Local $aResult = DllCall("User32.dll", "handle", "GetDC", "hwnd", $hWnd)
	If @error Or Not $aResult[0] Then Return SetError(1, _WinAPI_GetLastError(), 0)
	Return $aResult[0]
EndFunc   ;==>__MISC_GetDC

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __MISC_GetDeviceCaps
; Description ...: Retrieves device specific information about a specified device
; Syntax.........: __MISC_GetDeviceCaps ( $hDC, $iIndex )
; Parameters ....: $hDC         - Identifies the device context
;                  $iIndex      - Specifies the item to return
; Return values .: Success      - The value of the desired item
; Author ........: Paul Campbell (PaulIA)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ GetDeviceCaps
; Example .......:
; ===============================================================================================================================
Func __MISC_GetDeviceCaps($hDC, $iIndex)
	Local $aResult = DllCall("GDI32.dll", "int", "GetDeviceCaps", "handle", $hDC, "int", $iIndex)
	If @error Then Return SetError(@error, @extended, 0)
	Return $aResult[0]
EndFunc   ;==>__MISC_GetDeviceCaps

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __MISC_ReleaseDC
; Description ...: Releases a device context
; Syntax.........: __MISC_ReleaseDC ( $hWnd, $hDC )
; Parameters ....: $hWnd        - Handle of window
;                  $hDC         - Identifies the device context to be released
; Return values .: Success      - True
;                  Failure      - False
; Author ........: Paul Campbell (PaulIA)
; Modified.......:
; Remarks .......: The application must call the __MISC_ReleaseDC function for each call to the _WinAPI_GetWindowDC function  and  for
;                  each call to the _WinAPI_GetDC function that retrieves a common device context.
; Related .......: _WinAPI_GetDC, _WinAPI_GetWindowDC
; Link ..........: @@MsdnLink@@ ReleaseDC
; Example .......:
; ===============================================================================================================================
Func __MISC_ReleaseDC($hWnd, $hDC)
	Local $aResult = DllCall("User32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
	If @error Then Return SetError(@error, @extended, False)
	Return $aResult[0] <> 0
EndFunc   ;==>__MISC_ReleaseDC
