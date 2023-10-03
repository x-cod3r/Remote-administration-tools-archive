#include-once

#include "APIShPathConstants.au3"
#include "WinAPIInternals.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIShPath.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: shell32.dll, kernel32.dll, ntdll.dll, shlwapi.dll, credui.dll, user32.dll, gdi32.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_CommandLineToArgv
; _WinAPI_IsNameInExpression
; _WinAPI_ParseURL
; _WinAPI_ParseUserName
; _WinAPI_PathAddBackslash
; _WinAPI_PathAddExtension
; _WinAPI_PathAppend
; _WinAPI_PathBuildRoot
; _WinAPI_PathCanonicalize
; _WinAPI_PathCommonPrefix
; _WinAPI_PathCompactPath
; _WinAPI_PathCompactPathEx
; _WinAPI_PathCreateFromUrl
; _WinAPI_PathFindExtension
; _WinAPI_PathFindFileName
; _WinAPI_PathFindNextComponent
; _WinAPI_PathGetArgs
; _WinAPI_PathGetCharType
; _WinAPI_PathGetDriveNumber
; _WinAPI_PathIsContentType
; _WinAPI_PathIsExe
; _WinAPI_PathIsFileSpec
; _WinAPI_PathIsLFNFileSpec
; _WinAPI_PathIsRelative
; _WinAPI_PathIsRoot
; _WinAPI_PathIsSameRoot
; _WinAPI_PathIsSystemFolder
; _WinAPI_PathIsUNC
; _WinAPI_PathIsUNCServer
; _WinAPI_PathIsUNCServerShare
; _WinAPI_PathMakeSystemFolder
; _WinAPI_PathMatchSpec
; _WinAPI_PathParseIconLocation
; _WinAPI_PathRelativePathTo
; _WinAPI_PathRemoveArgs
; _WinAPI_PathRemoveBackslash
; _WinAPI_PathRemoveExtension
; _WinAPI_PathRemoveFileSpec
; _WinAPI_PathRenameExtension
; _WinAPI_PathSearchAndQualify
; _WinAPI_PathSkipRoot
; _WinAPI_PathStripPath
; _WinAPI_PathStripToRoot
; _WinAPI_PathUndecorate
; _WinAPI_PathUnExpandEnvStrings
; _WinAPI_PathUnmakeSystemFolder
; _WinAPI_PathUnquoteSpaces
; _WinAPI_PathYetAnotherMakeUniqueName
; _WinAPI_ShellGetImageList
; _WinAPI_UrlApplyScheme
; _WinAPI_UrlCanonicalize
; _WinAPI_UrlCombine
; _WinAPI_UrlCompare
; _WinAPI_UrlCreateFromPath
; _WinAPI_UrlFixup
; _WinAPI_UrlGetPart
; _WinAPI_UrlHash
; _WinAPI_UrlIs
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CommandLineToArgv($sCmd)
	Local $Result[1] = [0]

	$sCmd = StringStripWS($sCmd, 3)
	If Not $sCmd Then
		Return $Result
	EndIf

	Local $Ret = DllCall('shell32.dll', 'ptr', 'CommandLineToArgvW', 'wstr', $sCmd, 'int*', 0)
	If @error Or Not $Ret[0] Or (Not $Ret[2]) Then Return SetError(@error + 10, @extended, 0)

	Local $tPtr = DllStructCreate('ptr[' & $Ret[2] & ']', $Ret[0])

	Dim $Result[$Ret[2] + 1] = [$Ret[2]]
	For $i = 1 To $Ret[2]
		$Result[$i] = _WinAPI_GetString(DllStructGetData($tPtr, 1, $i))
	Next
	; _WinAPI_LocalFree($Ret[0])
	DllCall("kernel32.dll", "handle", "LocalFree", "handle", $Ret[0])

	Return $Result
EndFunc   ;==>_WinAPI_CommandLineToArgv

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsNameInExpression($sString, $sPattern, $fCaseSensitive = 0)
	If Not $fCaseSensitive Then $sPattern = StringUpper($sPattern)

	Local $tUS1 = __US($sPattern)
	Local $tUS2 = __US($sString)
	Local $Ret = DllCall('ntdll.dll', 'boolean', 'RtlIsNameInExpression', 'struct*', $tUS1, 'struct*', $tUS2, _
			'boolean', Not $fCaseSensitive, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsNameInExpression

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ParseURL($sUrl)
	Local $tagPARSEDURL = 'dword Size;ptr Protocol;uint cchProtocol;ptr Suffix;uint cchSuffix;uint Scheme'
	Local $tPURL = DllStructCreate($tagPARSEDURL)
	DllStructSetData($tPURL, 1, DllStructGetSize($tPURL))
	Local $tURL = DllStructCreate('wchar[4096]') ; needed as 'wstr', $sUrl is not working
	DllStructSetData($tURL, 1, $sUrl)

	Local $Ret = DllCall('shlwapi.dll', 'long', 'ParseURLW', 'struct*', $tURL, 'struct*', $tPURL)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Local $Result[3]
	$Result[0] = DllStructGetData(DllStructCreate('wchar[' & DllStructGetData($tPURL, 3) & ']', DllStructGetData($tPURL, 2)), 1)
	$Result[1] = DllStructGetData(DllStructCreate('wchar[' & DllStructGetData($tPURL, 5) & ']', DllStructGetData($tPURL, 4)), 1)
	$Result[2] = DllStructGetData($tPURL, 6)
	Return $Result
EndFunc   ;==>_WinAPI_ParseURL

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ParseUserName($sUser)
	If Not __DLL('credui.dll') Then Return SetError(103, 0, 0)

	Local $Ret = DllCall('credui.dll', 'dword', 'CredUIParseUserNameW', 'wstr', $sUser, 'wstr', '', 'ulong', 4096, 'wstr', '', _
			'ulong', 4096)
	If @error Then Return SetError(@error, @extended, 0)
	Switch $Ret[0]
		Case 0

		Case 1315 ; ERROR_INVALID_ACCOUNT_NAME
			If StringStripWS($sUser, 3) Then
				$Ret[2] = $sUser
				$Ret[4] = ''
			Else
				ContinueCase
			EndIf
		Case Else
			Return SetError(10, $Ret[0], 0)
	EndSwitch

	Local $Result[2]
	$Result[0] = $Ret[4]
	$Result[1] = $Ret[2]
	Return $Result
EndFunc   ;==>_WinAPI_ParseUserName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_PathAddBackslash($sPath)
	Local $tPath = DllStructCreate('wchar[260]') ; avoid buffer overflow
	DllStructSetData($tPath, 1, $sPath)

	Local $Ret = DllCall('shlwapi.dll', 'ptr', 'PathAddBackslashW', 'struct*', $tPath)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')

	Return DllStructGetData($tPath, 1)
EndFunc   ;==>_WinAPI_PathAddBackslash

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_PathAddExtension($sPath, $sExt = '')
	Local $tPath = DllStructCreate('wchar[260]') ; avoid buffer overflow
	DllStructSetData($tPath, 1, $sPath)

	Local $TypeOfExt = 'wstr'
	If Not StringStripWS($sExt, 3) Then
		$TypeOfExt = 'ptr'
		$sExt = 0
	EndIf

	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathAddExtensionW', 'struct*', $tPath, $TypeOfExt, $sExt)
	If @error Then Return SetError(@error, @extended, '')

	Return SetExtended($Ret[0], DllStructGetData($tPath, 1))
EndFunc   ;==>_WinAPI_PathAddExtension

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_PathAppend($sPath, $sMore)
	Local $tPath = DllStructCreate('wchar[260]') ; avoid buffer overflow
	DllStructSetData($tPath, 1, $sPath)

	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathAppendW', 'struct*', $tPath, 'wstr', $sMore)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return DllStructGetData($tPath, 1)
EndFunc   ;==>_WinAPI_PathAppend

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathBuildRoot($iDrive)
	Local $Ret = DllCall('shlwapi.dll', 'ptr', 'PathBuildRootW', 'wstr', '', 'int', $iDrive)
	If @error Then Return SetError(@error, @extended, '')
	; If Not $Ret[1] Then Return SetError(1000, 0, 0)

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathBuildRoot

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathCanonicalize($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathCanonicalizeW', 'wstr', '', 'wstr', $sPath)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, $sPath)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathCanonicalize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathCommonPrefix($sPath1, $sPath2)
	Local $Ret = DllCall('shlwapi.dll', 'int', 'PathCommonPrefixW', 'wstr', $sPath1, 'wstr', $sPath2, 'wstr', '')
	If @error Then Return SetError(@error, @extended, '')

	Return SetExtended($Ret[0], $Ret[3])
EndFunc   ;==>_WinAPI_PathCommonPrefix

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathCompactPath($hWnd, $sPath, $iWidth = 0)
	If $iWidth < 1 Then
		; $iWidth += _WinAPI_GetClientWidth($hWnd)
		Local $tRect = DllStructCreate($tagRECT)
		DllCall("user32.dll", "bool", "GetClientRect", "hwnd", $hWnd, "struct*", $tRect)
		$iWidth += DllStructGetData($tRect, "Right") - DllStructGetData($tRect, "Left")
	EndIf
	Local $Ret = DllCall('user32.dll', 'handle', 'GetDC', 'hwnd', $hWnd)
	If @error Or Not $Ret[0] Then Return SetError(@error + 20, @extended, $sPath)

	Local $hDC = $Ret[0]
	Local Const $WM_GETFONT = 0x0031
	$Ret = DllCall('user32.dll', 'ptr', 'SendMessage', 'hwnd', $hWnd, 'uint', $WM_GETFONT, 'wparam', 0, 'lparam', 0) ; $WM_GETFONT

	; Local $hBack = _WinAPI_SelectObject($hDC, $Ret[0])
	Local $hBack = DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $Ret[0])
	Local $iError = 0
	$Ret = DllCall('shlwapi.dll', 'bool', 'PathCompactPathW', 'handle', $hDC, 'wstr', $sPath, 'int', $iWidth)
	If @error Or Not $Ret[0] Then $iError = @error + 10
	; _WinAPI_SelectObject($hDC, $hBack[0])
	DllCall("gdi32.dll", "handle", "SelectObject", "handle", $hDC, "handle", $hBack[0])
	; _WinAPI_ReleaseDC($hWnd, $hDC)
	DllCall("user32.dll", "int", "ReleaseDC", "hwnd", $hWnd, "handle", $hDC)
	If $iError Then Return SetError($iError, 0, $sPath)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_PathCompactPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathCompactPathEx($sPath, $iMax)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathCompactPathExW', 'wstr', '', 'wstr', $sPath, 'uint', $iMax + 1, 'dword', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, $sPath)

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathCompactPathEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathCreateFromUrl($sUrl)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'PathCreateFromUrlW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_PathCreateFromUrl

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathFindExtension($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'wstr', 'PathFindExtensionW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathFindExtension

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathFindFileName($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'wstr', 'PathFindFileNameW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, $sPath)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathFindFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathFindNextComponent($sPath)
	Local $tPath = DllStructCreate('wchar[' & (StringLen($sPath) + 1) & ']')
	DllStructSetData($tPath, 1, $sPath)

	Local $Ret = DllCall('shlwapi.dll', 'ptr', 'PathFindNextComponentW', 'struct*', $tPath)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return _WinAPI_GetString($Ret[0])
EndFunc   ;==>_WinAPI_PathFindNextComponent

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathGetArgs($sPath)
	Local $tPath = DllStructCreate('wchar[' & (StringLen($sPath) + 1) & ']')
	DllStructSetData($tPath, 1, $sPath)

	Local $Ret = DllCall('shlwapi.dll', 'ptr', 'PathGetArgsW', 'struct*', $tPath)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')

	Return _WinAPI_GetString($Ret[0])
EndFunc   ;==>_WinAPI_PathGetArgs

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathGetCharType($sChar)
	Local $Ret = DllCall('shlwapi.dll', 'uint', 'PathGetCharTypeW', 'word', AscW($sChar))
	If @error Then Return SetError(@error, @extended, -1)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathGetCharType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathGetDriveNumber($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'int', 'PathGetDriveNumberW', 'wstr', $sPath)
	If @error Or ($Ret[0] = -1) Then Return SetError(@error, @extended, '')
	; If $Ret[0] = -1 Then Return SetError(1000, 0, '')

	Return Chr($Ret[0] + 65) & ':'
EndFunc   ;==>_WinAPI_PathGetDriveNumber

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsContentType($sPath, $sType)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsContentTypeW', 'wstr', $sPath, 'wstr', $sType)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsContentType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsExe($sPath)
	Local $Ret = DllCall('shell32.dll', 'bool', 'PathIsExe', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsExe

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsFileSpec($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsFileSpecW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsFileSpec

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsLFNFileSpec($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsLFNFileSpecW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsLFNFileSpec

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsRelative($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsRelativeW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsRelative

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsRoot($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsRootW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsRoot

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsSameRoot($sPath1, $sPath2)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsSameRootW', 'wstr', $sPath1, 'wstr', $sPath2)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsSameRoot

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsSystemFolder($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsSystemFolderW', 'wstr', $sPath, 'dword', 0)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsSystemFolder

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsUNC($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsUNCW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsUNC

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsUNCServer($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsUNCServerW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsUNCServer

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsUNCServerShare($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsUNCServerShareW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsUNCServerShare

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathMakeSystemFolder($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathMakeSystemFolderW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathMakeSystemFolder

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathMatchSpec($sPath, $sSpec)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathMatchSpecW', 'wstr', $sPath, 'wstr', $sSpec)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathMatchSpec

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathParseIconLocation($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'int', 'PathParseIconLocationW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, 0)

	Local $Result[2]
	$Result[0] = $Ret[1]
	$Result[1] = $Ret[0]
	Return $Result
EndFunc   ;==>_WinAPI_PathParseIconLocation

; #FUNCTION# ====================================================================================================================
; Author.........: Mat
; Modified.......: Yashied, Jpm
; ===============================================================================================================================
Func _WinAPI_PathRelativePathTo($sPathFrom, $fDirFrom, $sPathTo, $fDirTo)
	If $fDirFrom Then
		$fDirFrom = 0x10
	EndIf
	If $fDirTo Then
		$fDirTo = 0x10
	EndIf

	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathRelativePathToW', 'wstr', '', 'wstr', $sPathFrom, 'dword', $fDirFrom, _
			'wstr', $sPathTo, 'dword', $fDirTo)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathRelativePathTo

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathRemoveArgs($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'none', 'PathRemoveArgsW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathRemoveArgs

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathRemoveBackslash($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'ptr', 'PathRemoveBackslashW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathRemoveBackslash

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathRemoveExtension($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'none', 'PathRemoveExtensionW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathRemoveExtension

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathRemoveFileSpec($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathRemoveFileSpecW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return SetExtended($Ret[0], $Ret[1])
EndFunc   ;==>_WinAPI_PathRemoveFileSpec

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_PathRenameExtension($sPath, $sExt)
	Local $tPath = DllStructCreate('wchar[260]') ; as described in MSDN
	DllStructSetData($tPath, 1, $sPath)

	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathRenameExtensionW', 'struct*', $tPath, 'wstr', $sExt)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return DllStructGetData($tPath, 1)
EndFunc   ;==>_WinAPI_PathRenameExtension

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathSearchAndQualify($sPath, $fExists = 0)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathSearchAndQualifyW', 'wstr', $sPath, 'wstr', '', 'int', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')
	If $fExists And Not FileExists($Ret[2]) Then Return SetError(20, 0, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_PathSearchAndQualify

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathSkipRoot($sPath)
	Local $tPath = DllStructCreate('wchar[' & (StringLen($sPath) + 1) & ']')
	DllStructSetData($tPath, 1, $sPath)

	Local $Ret = DllCall('shlwapi.dll', 'ptr', 'PathSkipRootW', 'struct*', $tPath)
	If @error Then Return SetError(@error, @extended, '')
	If Not $Ret[0] Then Return $sPath

	Return _WinAPI_GetString($Ret[0])
EndFunc   ;==>_WinAPI_PathSkipRoot

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathStripPath($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'none', 'PathStripPathW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathStripPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathStripToRoot($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathStripToRootW', 'wstr', $sPath)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathStripToRoot

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathUndecorate($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'none', 'PathUndecorateW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathUndecorate

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathUnExpandEnvStrings($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathUnExpandEnvStringsW', 'wstr', $sPath, 'wstr', '', 'uint', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_PathUnExpandEnvStrings

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathUnmakeSystemFolder($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathUnmakeSystemFolderW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathUnmakeSystemFolder

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathUnquoteSpaces($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'none', 'PathUnquoteSpacesW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathUnquoteSpaces

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_PathYetAnotherMakeUniqueName($sPath)
	Local $Ret = DllCall('shell32.dll', 'int', 'PathYetAnotherMakeUniqueName', 'wstr', '', 'wstr', $sPath, 'ptr', 0, 'ptr', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_PathYetAnotherMakeUniqueName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetImageList($fSmall = 0)
	Local $pLarge, $pSmall, $tPtr = DllStructCreate('ptr')
	If $fSmall Then
		$pLarge = 0
		$pSmall = DllStructGetPtr($tPtr)
	Else
		$pLarge = DllStructGetPtr($tPtr)
		$pSmall = 0
	EndIf

	Local $Ret = DllCall('shell32.dll', 'int', 'Shell_GetImageLists', 'ptr', $pLarge, 'ptr', $pSmall)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return DllStructGetData($tPtr, 1)
EndFunc   ;==>_WinAPI_ShellGetImageList

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlApplyScheme($sUrl, $iFlags = 1)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlApplySchemeW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_UrlApplyScheme

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlCanonicalize($sUrl, $iFlags)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlCanonicalizeW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_UrlCanonicalize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlCombine($sUrl, $sPart, $iFlags = 0)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlCombineW', 'wstr', $sUrl, 'wstr', $sPart, 'wstr', '', 'dword*', 4096, _
			'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_UrlCombine

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_UrlCompare($sUrl1, $sUrl2, $fIgnoreSlash = 0)
	Local $Ret = DllCall('shlwapi.dll', 'int', 'UrlCompareW', 'wstr', $sUrl1, 'wstr', $sUrl2, 'bool', $fIgnoreSlash)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_UrlCompare

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlCreateFromPath($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlCreateFromPathW', 'wstr', $sPath, 'wstr', '', 'dword*', 4096, 'dword', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] < 0 Or $Ret[0] > 1 Then ; S_OK, S_FALSE
		Return SetError(10, $Ret[0], '')
	EndIf

	Return $Ret[2]
EndFunc   ;==>_WinAPI_UrlCreateFromPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlFixup($sUrl)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlFixupW', 'wstr', $sUrl, 'wstr', '', 'dword', 4096)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_UrlFixup

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlGetPart($sUrl, $iPart)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlGetPartW', 'wstr', $sUrl, 'wstr', '', 'dword*', 4096, 'dword', $iPart, _
			'dword', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_UrlGetPart

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlHash($sUrl, $iLength = 32)
	If $iLength <= 0 Or $iLength > 256 Then Return SetError(256, 0, 0)

	Local $tData = DllStructCreate('byte[' & $iLength & ']')

	Local $Ret = DllCall('shlwapi.dll', 'long', 'UrlHashW', 'wstr', $sUrl, 'struct*', $tData, 'dword', $iLength)
	If @error Then Return SetError(@error + 10, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return DllStructGetData($tData, 1)
EndFunc   ;==>_WinAPI_UrlHash

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UrlIs($sUrl, $iType = 0)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'UrlIsW', 'wstr', $sUrl, 'uint', $iType)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_UrlIs

#endregion Public Functions

#region Internal Functions

Func __US($sString, $iLength = 0)
	If $iLength Then
		$sString = StringLeft($sString, $iLength)
	Else
		$iLength = StringLen($sString)
	EndIf

	Local $tUS = DllStructCreate('ushort;ushort;ptr;wchar[' & ($iLength + 1) & ']')
	DllStructSetData($tUS, 1, 2 * StringLen($sString))
	DllStructSetData($tUS, 2, 2 * $iLength)
	DllStructSetData($tUS, 3, DllStructGetPtr($tUS, 4))
	DllStructSetData($tUS, 4, $sString)
	Return $tUS
EndFunc   ;==>__US

#endregion Internal Functions
