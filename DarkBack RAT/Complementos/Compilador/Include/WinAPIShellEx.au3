#include-once

#include "APIShellExConstants.au3"
#include "WinAPICom.au3"
#include "WinAPIShPath.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIShellEx.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: user32.dll, comctl32.dll, userenv.dll, shlwapi.dll, shell32.dll, ole32.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $tagNOTIFYICONDATA = 'struct;dword Size;hwnd hWnd;uint ID;uint Flags;uint CallbackMessage;ptr hIcon;wchar Tip[128];dword State;dword StateMask;wchar Info[256];uint Version;wchar InfoTitle[64];dword InfoFlags;endstruct'
Global Const $tagNOTIFYICONDATA_V3 = $tagNOTIFYICONDATA & ';' & $tagGUID
Global Const $tagNOTIFYICONDATA_V4 = $tagNOTIFYICONDATA_V3 & ';ptr hBalloonIcon;'
Global Const $tagSHELLEXECUTEINFO = 'dword Size;ulong Mask;hwnd hWnd;ptr Verb;ptr File;ptr Parameters;ptr Directory;int Show;ulong_ptr hInstApp;ptr IDList;ptr Class;ulong_ptr hKeyClass;dword HotKey;ptr hMonitor;ptr hProcess'
Global Const $tagSHFILEINFO = 'ptr hIcon;int iIcon;dword Attributes;wchar DisplayName[260];wchar TypeName[80]'
Global Const $tagSHFILEOPSTRUCT = 'hwnd hWnd;uint Func;ptr From;ptr To;dword Flags;int fAnyOperationsAborted;ptr hNameMappings;ptr ProgressTitle'
Global Const $tagSHFOLDERCUSTOMSETTINGS = 'dword Size;dword Mask;ptr GUID;ptr WebViewTemplate;dword SizeWVT;ptr WebViewTemplateVersion;ptr InfoTip;dword SizeIT;ptr CLSID;dword Flags;ptr IconFile;dword SizeIF;int IconIndex;ptr Logo;dword SizeL'
Global Const $tagSHSTOCKICONINFO = 'dword Size;ptr hIcon;int SysImageIndex;int iIcon;wchar Path[260]'
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_DefSubclassProc
; _WinAPI_DllGetVersion
; _WinAPI_GetAllUsersProfileDirectory
; _WinAPI_GetDefaultUserProfileDirectory
; _WinAPI_GetWindowSubclass
; _WinAPI_RemoveWindowSubclass
; _WinAPI_SetCurrentProcessExplicitAppUserModelID
; _WinAPI_SetWindowSubclass
; _WinAPI_ShellAddToRecentDocs
; _WinAPI_ShellChangeNotify
; _WinAPI_ShellChangeNotifyDeregister
; _WinAPI_ShellChangeNotifyRegister
; _WinAPI_ShellCreateDirectory
; _WinAPI_ShellEmptyRecycleBin
; _WinAPI_ShellExecute
; _WinAPI_ShellExecuteEx
; _WinAPI_ShellExtractAssociatedIcon
; _WinAPI_ShellExtractIcon
; _WinAPI_ShellFileOperation
; _WinAPI_ShellFlushSFCache
; _WinAPI_ShellGetFileInfo
; _WinAPI_ShellGetIconOverlayIndex
; _WinAPI_ShellGetKnownFolderIDList
; _WinAPI_ShellGetKnownFolderPath
; _WinAPI_ShellGetLocalizedName
; _WinAPI_ShellGetPathFromIDList
; _WinAPI_ShellGetSetFolderCustomSettings
; _WinAPI_ShellGetSettings
; _WinAPI_ShellGetSpecialFolderLocation
; _WinAPI_ShellGetSpecialFolderPath
; _WinAPI_ShellGetStockIconInfo
; _WinAPI_ShellILCreateFromPath
; _WinAPI_ShellNotifyIcon
; _WinAPI_ShellNotifyIconGetRect
; _WinAPI_ShellObjectProperties
; _WinAPI_ShellOpenFolderAndSelectItems
; _WinAPI_ShellQueryRecycleBin
; _WinAPI_ShellQueryUserNotificationState
; _WinAPI_ShellRemoveLocalizedName
; _WinAPI_ShellRestricted
; _WinAPI_ShellSetKnownFolderPath
; _WinAPI_ShellSetLocalizedName
; _WinAPI_ShellSetSettings
; _WinAPI_ShellUpdateImage
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DefSubclassProc($hWnd, $iMsg, $wParam, $lParam)
	Local $Ret = DllCall('comctl32.dll', 'lresult', 'DefSubclassProc', 'hwnd', $hWnd, 'uint', $iMsg, 'wparam', $wParam, _
			'lparam', $lParam)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_DefSubclassProc

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DllGetVersion($sPath)
	Local $tVersion = DllStructCreate('dword[5]')
	DllStructSetData($tVersion, 1, DllStructGetSize($tVersion), 1)

	Local $Ret = DllCall($sPath, 'uint', 'DllGetVersion', 'struct*', $tVersion)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $Result[4]
	For $i = 0 To 3
		$Result[$i] = DllStructGetData($tVersion, 1, $i + 2)
	Next
	Return $Result
EndFunc   ;==>_WinAPI_DllGetVersion

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetAllUsersProfileDirectory()
	Local $Ret = DllCall('userenv.dll', 'bool', 'GetAllUsersProfileDirectoryW', 'wstr', '', 'dword*', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[1]
EndFunc   ;==>_WinAPI_GetAllUsersProfileDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetDefaultUserProfileDirectory()
	Local $Ret = DllCall('userenv.dll', 'bool', 'GetDefaultUserProfileDirectoryW', 'wstr', '', 'dword*', 4096)
	If @error Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_GetDefaultUserProfileDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetWindowSubclass($hWnd, $pSubclassProc, $ID)
	Local $Ret = DllCall('comctl32.dll', 'bool', 'GetWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $ID, _
			'dword_ptr*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Return $Ret[4]
EndFunc   ;==>_WinAPI_GetWindowSubclass

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_RemoveWindowSubclass($hWnd, $pSubclassProc, $ID)
	Local $Ret = DllCall('comctl32.dll', 'bool', 'RemoveWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $ID)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_RemoveWindowSubclass

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetCurrentProcessExplicitAppUserModelID($sAppID)
	Local $Ret = DllCall('shell32.dll', 'long', 'SetCurrentProcessExplicitAppUserModelID', 'wstr', $sAppID)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_SetCurrentProcessExplicitAppUserModelID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetWindowSubclass($hWnd, $pSubclassProc, $ID, $pData = 0)
	Local $Ret = DllCall('comctl32.dll', 'bool', 'SetWindowSubclass', 'hwnd', $hWnd, 'ptr', $pSubclassProc, 'uint_ptr', $ID, _
			'dword_ptr', $pData)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetWindowSubclass

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellAddToRecentDocs($sFile)
	Local $TypeOfFile = 'wstr'
	If StringStripWS($sFile, 3) Then
		$sFile = _WinAPI_PathSearchAndQualify($sFile, 1)
		If Not $sFile Then
			Return SetError(1, 0, 0)
		EndIf
	Else
		$TypeOfFile = 'ptr'
		$sFile = 0
	EndIf

	DllCall('shell32.dll', 'none', 'SHAddToRecentDocs', 'uint', 3, $TypeOfFile, $sFile)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellAddToRecentDocs

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellChangeNotify($iEvent, $iFlags, $iItem1 = 0, $iItem2 = 0)
	Local $TypeOfItem1 = 'dword_ptr', $TypeOfItem2 = 'dword_ptr'
	If IsString($iItem1) Then
		$TypeOfItem1 = 'wstr'
	EndIf
	If IsString($iItem2) Then
		$TypeOfItem2 = 'wstr'
	EndIf

	DllCall('shell32.dll', 'none', 'SHChangeNotify', 'long', $iEvent, 'uint', $iFlags, $TypeOfItem1, $iItem1, $TypeOfItem2, $iItem2)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellChangeNotify

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellChangeNotifyDeregister($ID)
	Local $Ret = DllCall('shell32.dll', 'bool', 'SHChangeNotifyDeregister', 'ulong', $ID)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellChangeNotifyDeregister

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellChangeNotifyRegister($hWnd, $iMsg, $iEvents, $iSources, $aPaths, $fRecursive = 0)
	Local $Path = $aPaths, $Struct = ''

	If IsArray($aPaths) Then
		If UBound($aPaths, 2) Then Return SetError(1, 0, 0)
	Else
		Dim $aPaths[1] = [$Path]
	EndIf
	For $i = 0 To UBound($aPaths) - 1
		If Not _WinAPI_PathIsDirectory($aPaths[$i]) Then Return SetError(2, 0, 0)
	Next
	For $i = 0 To UBound($aPaths) - 1
		$Struct &= 'ptr;int;'
	Next
	Local $tEntry = DllStructCreate($Struct)
	For $i = 0 To UBound($aPaths) - 1
		$aPaths[$i] = _WinAPI_ShellILCreateFromPath(_WinAPI_PathSearchAndQualify($aPaths[$i]))
		DllStructSetData($tEntry, 2 * $i + 1, $aPaths[$i])
		DllStructSetData($tEntry, 2 * $i + 2, $fRecursive)
	Next

	Local $Error = 0
	Local $Ret = DllCall('shell32.dll', 'ulong', 'SHChangeNotifyRegister', 'hwnd', $hWnd, 'int', $iSources, 'long', $iEvents, _
			'uint', $iMsg, 'int', UBound($aPaths), 'struct*', $tEntry)
	If @error Or Not $Ret[0] Then $Error = @error + 10

	For $i = 0 To UBound($aPaths) - 1
		_WinAPI_CoTaskMemFree($aPaths[$i])
	Next

	Return SetError($Error, 0, $Ret[0])
EndFunc   ;==>_WinAPI_ShellChangeNotifyRegister

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellCreateDirectory($sPath, $hParent = 0, $tSecurity = 0)
	Local $Ret = DllCall('shell32.dll', 'int', 'SHCreateDirectoryExW', 'hwnd', $hParent, 'wstr', $sPath, 'struct*', $tSecurity)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellCreateDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellEmptyRecycleBin($sRoot = '', $iFlags = 0, $hParent = 0)
	Local $Ret = DllCall('shell32.dll', 'long', 'SHEmptyRecycleBinW', 'hwnd', $hParent, 'wstr', $sRoot, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellEmptyRecycleBin

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellExecute($sFile, $sArgs = '', $sDir = '', $sVerb = '', $iShow = 1, $hParent = 0)
	Local $TypeOfArgs = 'wstr', $TypeOfDir = 'wstr', $TypeOfVerb = 'wstr'
	If Not StringStripWS($sArgs, 3) Then
		$TypeOfArgs = 'ptr'
		$sArgs = 0
	EndIf
	If Not StringStripWS($sDir, 3) Then
		$TypeOfDir = 'ptr'
		$sDir = 0
	EndIf
	If Not StringStripWS($sVerb, 3) Then
		$TypeOfVerb = 'ptr'
		$sVerb = 0
	EndIf

	Local $Ret = DllCall('shell32.dll', 'ULONG_PTR', 'ShellExecuteW', 'hwnd', $hParent, $TypeOfVerb, $sVerb, 'wstr', $sFile, _
			$TypeOfArgs, $sArgs, $TypeOfDir, $sDir, 'int', $iShow)
	If @error Then Return SetError(@error, @extended, False)
	If $Ret[0] <= 32 Then Return SetError(10, $Ret[0], 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellExecute

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellExecuteEx(ByRef $tSHEXINFO)
	Local $Ret = DllCall('shell32.dll', 'bool', 'ShellExecuteExW', 'struct*', $tSHEXINFO)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellExecuteEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellExtractAssociatedIcon($sFile, $fSmall = 0)
	Local $Flags = 0x00000100
	If Not _WinAPI_PathIsDirectory($sFile) Then
		$Flags = BitOR($Flags, 0x00000010)
	EndIf
	If $fSmall Then
		$Flags = BitOR($Flags, 0x00000001)
	EndIf

	Local $tSHFILEINFO = DllStructCreate($tagSHFILEINFO)
	If Not _WinAPI_ShellGetFileInfo($sFile, $Flags, 0, $tSHFILEINFO) Then Return SetError(@error + 10, @extended, 0)

	Return DllStructGetData($tSHFILEINFO, 'hIcon')
EndFunc   ;==>_WinAPI_ShellExtractAssociatedIcon

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellExtractIcon($sIcon, $iIndex, $iWidth, $iHeight)
	Local $Ret = DllCall('shell32.dll', 'int', 'SHExtractIconsW', 'wstr', $sIcon, 'int', $iIndex, 'int', $iWidth, _
			'int', $iHeight, 'ptr*', 0, 'ptr*', 0, 'int', 1, 'int', 0)
	If @error Or Not $Ret[0] Or Not $Ret[5] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_ShellExtractIcon

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellFileOperation($sFrom, $sTo, $iFunc, $iFlags, $sTitle = '', $hParent = 0)
	Local $Data
	If Not IsArray($sFrom) Then
		$Data = $sFrom
		Dim $sFrom[1] = [$Data]
	EndIf
	Local $tFrom = _WinAPI_ArrayToStruct($sFrom)
	If @error Then Return SetError(@error + 20, @extended, 0)

	If Not IsArray($sTo) Then
		$Data = $sTo
		Dim $sTo[1] = [$Data]
	EndIf
	Local $tTo = _WinAPI_ArrayToStruct($sTo)
	If @error Then Return SetError(@error + 30, @extended, 0)

	Local $tSHFILEOPSTRUCT = DllStructCreate($tagSHFILEOPSTRUCT)
	DllStructSetData($tSHFILEOPSTRUCT, 'hWnd', $hParent)
	DllStructSetData($tSHFILEOPSTRUCT, 'Func', $iFunc)
	DllStructSetData($tSHFILEOPSTRUCT, 'From', DllStructGetPtr($tFrom))
	DllStructSetData($tSHFILEOPSTRUCT, 'To', DllStructGetPtr($tTo))
	DllStructSetData($tSHFILEOPSTRUCT, 'Flags', $iFlags)
	DllStructSetData($tSHFILEOPSTRUCT, 'ProgressTitle', $sTitle)

	Local $Ret = DllCall('shell32.dll', 'int', 'SHFileOperationW', 'struct*', $tSHFILEOPSTRUCT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tSHFILEOPSTRUCT
EndFunc   ;==>_WinAPI_ShellFileOperation

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellFlushSFCache()
	DllCall('shell32.dll', 'none', 'SHFlushSFCache')
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellFlushSFCache

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetFileInfo($sPath, $iFlags, $iAttributes, ByRef $tSHFILEINFO)
	Local $Ret = DllCall('shell32.dll', 'dword_ptr', 'SHGetFileInfoW', 'wstr', $sPath, 'dword', $iAttributes, _
			'struct*', $tSHFILEINFO, 'uint', DllStructGetSize($tSHFILEINFO), 'uint', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellGetFileInfo

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetIconOverlayIndex($sIcon, $iIndex)
	Local $TypeOfIcon = 'wstr'
	If Not StringStripWS($sIcon, 3) Then
		$TypeOfIcon = 'ptr'
		$sIcon = 0
	EndIf

	Local $Ret = DllCall('shell32.dll', 'int', 'SHGetIconOverlayIndexW', $TypeOfIcon, $sIcon, 'int', $iIndex)
	If @error Or ($Ret[0] = -1) Then Return SetError(@error, @extended, -1)
	; If $Ret[0] = -1 Then Return SetError(1000, 0, -1)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellGetIconOverlayIndex

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetKnownFolderIDList($GUID, $iFlags = 0, $hToken = 0)
	Local $tGUID = DllStructCreate($tagGUID)
	Local $Ret = DllCall('ole32.dll', 'uint', 'CLSIDFromString', 'wstr', $GUID, 'ptr', DllStructGetPtr($tGUID))
	If @error Or $Ret[0] Then Return SetError(@error + 20, @extended, 0)

	$Ret = DllCall('shell32.dll', 'uint', 'SHGetKnownFolderIDList', 'ptr', DllStructGetPtr($tGUID), 'dword', $iFlags, 'ptr', $hToken, 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[4]
EndFunc   ;==>_WinAPI_ShellGetKnownFolderIDList

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetKnownFolderPath($GUID, $iFlags = 0, $hToken = 0)
	Local $tGUID = DllStructCreate($tagGUID)
	Local $Ret = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $GUID, 'struct*', $tGUID)
	If @error Or $Ret[0] Then Return SetError(@error + 20, @extended, '')

	$Ret = DllCall('shell32.dll', 'long', 'SHGetKnownFolderPath', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Local $Path = _WinAPI_GetString($Ret[4])
	_WinAPI_CoTaskMemFree($Ret[4])
	Return $Path
EndFunc   ;==>_WinAPI_ShellGetKnownFolderPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetLocalizedName($sPath)
	Local $Ret = DllCall('shell32.dll', 'long', 'SHGetLocalizedName', 'wstr', $sPath, 'wstr', '', 'uint*', 0, 'int*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $Result[2]
	; $Result[0] = _WinAPI_ExpandEnvironmentStrings($Ret[2])
	Local $aResult = DllCall("kernel32.dll", "dword", "ExpandEnvironmentStringsW", "wstr", $Ret[2], "wstr", "", "dword", 4096)
	$Result[0] = $aResult[2]

	$Result[1] = $Ret[4]
	Return $Result
EndFunc   ;==>_WinAPI_ShellGetLocalizedName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetPathFromIDList($PIDL)
	Local $Ret = DllCall('shell32.dll', 'bool', 'SHGetPathFromIDListW', 'ptr', $PIDL, 'wstr', '')
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_ShellGetPathFromIDList

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetSetFolderCustomSettings($sPath, $iFlag, ByRef $tSHFCS)
	Local $Proc = 'SHGetSetFolderCustomSettings'
	If $__WINVER < 0x0600 Then $Proc &= 'W'

	Local $Ret = DllCall('shell32.dll', 'long', $Proc, 'struct*', $tSHFCS, 'wstr', $sPath, 'dword', $iFlag)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellGetSetFolderCustomSettings

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetSettings($iFlags)
	Local $tSHELLSTATE = DllStructCreate('uint[8]')
	DllCall('shell32.dll', 'none', 'SHGetSetSettings', 'struct*', $tSHELLSTATE, 'dword', $iFlags, 'bool', 0)
	If @error Then Return SetError(@error, @extended, 0)

	Local $Val1 = DllStructGetData($tSHELLSTATE, 1, 1)
	Local $Val2 = DllStructGetData($tSHELLSTATE, 1, 8)
	Local $Result = 0
	Local $Opt[20][2] = _
			[[0x00000001, 0x00000001], _
			[0x00000002, 0x00000002], _
			[0x00000004, 0x00008000], _
			[0x00000008, 0x00000020], _
			[0x00000010, 0x00000008], _
			[0x00000020, 0x00000080], _
			[0x00000040, 0x00000200], _
			[0x00000080, 0x00000400], _
			[0x00000100, 0x00000800], _
			[0x00000400, 0x00001000], _
			[0x00000800, 0x00002000], _
			[0x00001000, 0x00004000], _
			[0x00002000, 0x00020000], _
			[0x00008000, 0x00040000], _
			[0x00010000, 0x00100000], _
			[0x00000001, 0x00080000], _
			[0x00000002, 0x00200000], _
			[0x00000008, 0x00800000], _
			[0x00000010, 0x01000000], _
			[0x00000020, 0x02000000]]

	For $i = 0 To 14
		If BitAND($Val1, $Opt[$i][0]) Then
			$Result += $Opt[$i][1]
		EndIf
	Next
	For $i = 15 To 19
		If BitAND($Val2, $Opt[$i][0]) Then
			$Result += $Opt[$i][1]
		EndIf
	Next
	Return $Result
EndFunc   ;==>_WinAPI_ShellGetSettings

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetSpecialFolderLocation($CSIDL)
	Local $Ret = DllCall('shell32.dll', 'long', 'SHGetSpecialFolderLocation', 'hwnd', 0, 'int', $CSIDL, 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_ShellGetSpecialFolderLocation

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetSpecialFolderPath($CSIDL, $fCreate = 0)
	Local $Ret = DllCall('shell32.dll', 'bool', 'SHGetSpecialFolderPathW', 'hwnd', 0, 'wstr', '', 'int', $CSIDL, 'bool', $fCreate)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_ShellGetSpecialFolderPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellGetStockIconInfo($SIID, $iFlags)
	Local $tSHSTOCKICONINFO = DllStructCreate($tagSHSTOCKICONINFO)
	DllStructSetData($tSHSTOCKICONINFO, 'Size', DllStructGetSize($tSHSTOCKICONINFO))

	Local $Ret = DllCall('shell32.dll', 'long', 'SHGetStockIconInfo', 'int', $SIID, 'uint', $iFlags, 'struct*', $tSHSTOCKICONINFO)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tSHSTOCKICONINFO
EndFunc   ;==>_WinAPI_ShellGetStockIconInfo

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellILCreateFromPath($sPath)
	Local $Ret = DllCall('shell32.dll', 'long', 'SHILCreateFromPath', 'wstr', $sPath, 'ptr*', 0, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_ShellILCreateFromPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellNotifyIcon($iMessage, ByRef $tNOTIFYICONDATA)
	Local $Ret = DllCall('shell32.dll', 'bool', 'Shell_NotifyIconW', 'dword', $iMessage, 'struct*', $tNOTIFYICONDATA)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellNotifyIcon

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellNotifyIconGetRect($hWnd, $ID, $tGUID = 0)
	Local $tNII = DllStructCreate('dword;hwnd;uint;' & $tagGUID)
	DllStructSetData($tNII, 1, DllStructGetSize($tNII))
	DllStructSetData($tNII, 2, $hWnd)
	DllStructSetData($tNII, 3, $ID)

	If IsDllStruct($tGUID) Then
		If Not _WinAPI_MoveMemory(DllStructGetPtr($tNII, 4), DllStructGetPtr($tGUID), 16) Then Return SetError(@error + 10, @extended, 0)
	EndIf

	Local $tRECT = DllStructCreate($tagRECT)
	Local $Ret = DllCall('shell32.dll ', 'long', 'Shell_NotifyIconGetRect', 'struct*', $tNII, 'struct*', $tRECT)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tRECT
EndFunc   ;==>_WinAPI_ShellNotifyIconGetRect

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ShellObjectProperties($sPath, $iType = 2, $sProperty = '', $hParent = 0)
	Local $TypeOfProperty = 'wstr'
	If Not StringStripWS($sProperty, 3) Then
		$TypeOfProperty = 'ptr'
		$sProperty = 0
	EndIf

	Local $Ret = DllCall('shell32.dll', 'bool', 'SHObjectProperties', 'hwnd', $hParent, 'dword', $iType, 'wstr', $sPath, _
			$TypeOfProperty, $sProperty)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellObjectProperties

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellOpenFolderAndSelectItems($sPath, $aNames = 0, $iStart = 0, $iEnd = -1, $iFlags = 0)
	Local $PIDL, $Ret, $tPtr = 0, $Count = 0, $Obj = 0, $Error = 0

	$sPath = _WinAPI_PathRemoveBackslash(_WinAPI_PathSearchAndQualify($sPath))
	If IsArray($aNames) Then
		If $sPath And Not _WinAPI_PathIsDirectory($sPath) Then Return SetError(@error + 20, @extended, 0)
	EndIf
	$PIDL = _WinAPI_ShellILCreateFromPath($sPath)
	If @error Then Return SetError(@error + 30, @extended, 0)
	If Not __CheckErrorArrayBounds($aNames, $iStart, $iEnd) Then
		$tPtr = DllStructCreate('ptr[' & ($iEnd - $iStart + 1) & ']')
		For $i = $iStart To $iEnd
			$Count += 1
			If $aNames[$i] Then
				DllStructSetData($tPtr, 1, _WinAPI_ShellILCreateFromPath($sPath & '\' & $aNames[$i]), $Count)
			Else
				DllStructSetData($tPtr, 1, 0, $Count)
			EndIf
		Next
	EndIf
	If _WinAPI_CoInitialize() Then $Obj = 1
	$Ret = DllCall('shell32.dll', 'long', 'SHOpenFolderAndSelectItems', 'ptr', $PIDL, 'uint', $Count, 'struct*', $tPtr, _
			'dword', $iFlags)
	If @error Then
		$Error = @error + 10
	Else
		If $Ret[0] Then $Error = 10
	EndIf
	If $Obj Then _WinAPI_CoUninitialize()
	_WinAPI_CoTaskMemFree($PIDL)
	For $i = 1 To $Count
		$PIDL = DllStructGetData($tPtr, $i)
		If $PIDL Then
			_WinAPI_CoTaskMemFree($PIDL)
		EndIf
	Next
	If $Error = 10 Then Return SetError(10, $Ret[0], 0)
	If $Error Then Return SetError($Error, 0, 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellOpenFolderAndSelectItems

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellQueryRecycleBin($sRoot = '')
	Local $tSHQRBI = DllStructCreate('align 4;dword_ptr;int64;int64')
	DllStructSetData($tSHQRBI, 1, DllStructGetSize($tSHQRBI))

	Local $Ret = DllCall('shell32.dll', 'long', 'SHQueryRecycleBinW', 'wstr', $sRoot, 'struct*', $tSHQRBI)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $Result[2]
	$Result[0] = DllStructGetData($tSHQRBI, 2)
	$Result[1] = DllStructGetData($tSHQRBI, 3)
	Return $Result
EndFunc   ;==>_WinAPI_ShellQueryRecycleBin

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellQueryUserNotificationState()
	Local $Ret = DllCall('shell32.dll', 'long', 'SHQueryUserNotificationState', 'uint*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[1]
EndFunc   ;==>_WinAPI_ShellQueryUserNotificationState

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellRemoveLocalizedName($sPath)
	Local $Ret = DllCall('shell32.dll', 'long', 'SHRemoveLocalizedName', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellRemoveLocalizedName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellRestricted($iRestriction)
	Local $Ret = DllCall('shell32.dll', 'dword', 'SHRestricted', 'uint', $iRestriction)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ShellRestricted

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellSetKnownFolderPath($GUID, $sPath, $iFlags = 0, $hToken = 0)
	Local $tGUID = DllStructCreate($tagGUID)
	Local $Ret = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $GUID, 'struct*', $tGUID)
	If @error Or $Ret[0] Then Return SetError(@error + 20, @extended, 0)

	$Ret = DllCall('shell32.dll', 'long', 'SHSetKnownFolderPath', 'struct*', $tGUID, 'dword', $iFlags, 'handle', $hToken, 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellSetKnownFolderPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellSetLocalizedName($sPath, $sModule, $iResID)
	Local $Ret = DllCall('shell32.dll', 'long', 'SHSetLocalizedName', 'wstr', $sPath, 'wstr', $sModule, 'int', $iResID)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellSetLocalizedName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellSetSettings($iFlags, $fSet)
	Local $Val1 = 0, $Val2 = 0
	Local $Opt[20][2] = _
			[[0x00000001, 0x00000001], _
			[0x00000002, 0x00000002], _
			[0x00000004, 0x00008000], _
			[0x00000008, 0x00000020], _
			[0x00000010, 0x00000008], _
			[0x00000020, 0x00000080], _
			[0x00000040, 0x00000200], _
			[0x00000080, 0x00000400], _
			[0x00000100, 0x00000800], _
			[0x00000400, 0x00001000], _
			[0x00000800, 0x00002000], _
			[0x00001000, 0x00004000], _
			[0x00002000, 0x00020000], _
			[0x00008000, 0x00040000], _
			[0x00010000, 0x00100000], _
			[0x00000001, 0x00080000], _
			[0x00000002, 0x00200000], _
			[0x00000008, 0x00800000], _
			[0x00000010, 0x01000000], _
			[0x00000020, 0x02000000]]

	If $fSet Then
		For $i = 0 To 14
			If BitAND($iFlags, $Opt[$i][1]) Then
				$Val1 += $Opt[$i][0]
			EndIf
		Next
		For $i = 15 To 19
			If BitAND($iFlags, $Opt[$i][1]) Then
				$Val2 += $Opt[$i][0]
			EndIf
		Next
	EndIf

	Local $tSHELLSTATE = DllStructCreate('uint[8]')
	DllStructSetData($tSHELLSTATE, 1, $Val1, 1)
	DllStructSetData($tSHELLSTATE, 1, $Val2, 8)
	DllCall('shell32.dll', 'none', 'SHGetSetSettings', 'struct*', $tSHELLSTATE, 'dword', $iFlags, 'bool', 1)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellSetSettings

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShellUpdateImage($sIcon, $iIndex, $iImage, $iFlags = 0)
	DllCall('shell32.dll', 'none', 'SHUpdateImageW', 'wstr', $sIcon, 'int', $iIndex, 'uint', $iFlags, 'int', $iImage)
	If @error Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_ShellUpdateImage

#endregion Public Functions
