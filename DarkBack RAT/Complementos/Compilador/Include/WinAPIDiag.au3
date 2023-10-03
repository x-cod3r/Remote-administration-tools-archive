#include-once

#include "APIDiagConstants.au3"
#include "WinAPI.au3"
#include "WinAPIFiles.au3"
#include "WinAPIProc.au3"
#include "WinAPIShellEx.au3"
#include "WinAPITheme.au3"
#include "WinAPIInternals.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIDiag.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: dbghelp.dll, kernel32.dll, connect.dll, sensapi.dll, ntdll.dll, advapi32.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
Global $__hFRDlg = 0, $__hFRDll = 0
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_DisplayStruct
; _WinAPI_EnumDllProc
; _WinAPI_FatalExit
; _WinAPI_GetApplicationRestartSettings
; _WinAPI_GetErrorMessage
; _WinAPI_GetErrorMode
; _WinAPI_IsInternetConnected
; _WinAPI_IsNetworkAlive
; _WinAPI_NtStatusToDosError
; _WinAPI_RegisterApplicationRestart
; _WinAPI_SetErrorMode
; _WinAPI_ShowLastError
; _WinAPI_UniqueHardwareID
; _WinAPI_UnregisterApplicationRestart
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DisplayStruct($tStruct, $sStruct = '', $sTitle = '', $iItem = 0, $iSubItem = 0, $iFlags = 0, $fTop = 1, $hParent = 0)
	If Not StringStripWS($sTitle, 3) Then
		$sTitle = 'Structure: ListView Display'
	EndIf
	$sStruct = StringRegExpReplace(StringStripWS($sStruct, 7), ';+\Z', '')
	Local $pData
	If IsDllStruct($tStruct) Then
		$pData = DllStructGetPtr($tStruct)
		If Not $sStruct Then
			$sStruct = 'byte[' & DllStructGetSize($tStruct) & ']'
			$iFlags = BitOR($iFlags, 64)
		EndIf
	Else
		$pData = $tStruct
		If Not $sStruct Then Return SetError(10, 0, 0)
	EndIf
	Local $tData = DllStructCreate($sStruct, $pData)

	Local $iData = DllStructGetSize($tData)
	If (Not BitAND($iFlags, 512)) And (_WinAPI_IsBadReadPtr($pData, $iData)) Then
		If Not BitAND($iFlags, 256) Then
			MsgBox(0x00040010, $sTitle, 'The memory range allocated to a given structure could not be read.' & _
					@CRLF & @CRLF & Ptr($pData) & ' - ' & Ptr($pData + $iData - 1) & _
					@CRLF & @CRLF & 'Press OK to exit.')
			Exit -1073741819
		EndIf
		Return SetError(15, 0, 0)
	EndIf

	Local $Opt1 = Opt('GUIDataSeparatorChar', '|')
	Local $Opt2 = Opt('GUIOnEventMode', 0)
	Local $Opt3 = Opt('GUICloseOnESC', 1)

	If $hParent Then
		GUISetState(@SW_DISABLE, $hParent)
	EndIf
	Local $iStyle = 0x00000001
	If $fTop Then
		$iStyle = BitOR($iStyle, 0x00000008)
	EndIf
	$__hFRDlg = GUICreate($sTitle, 570, 620, -1, -1, 0x80C70000, $iStyle, $hParent)
	Local $LV = GUICtrlCreateListView('#|Member|Offset|Type|Size|Value', 0, 0, 570, 620, 0x0000800D, __Iif($__WINVER < 0x0600, 0x00010031, 0x00010030))
	Local $hLV = GUICtrlGetHandle($LV)
	If $__WINVER >= 0x0600 Then
		_WinAPI_SetWindowTheme($hLV, 'Explorer')
	EndIf
	GUICtrlSetResizing(-1, 0x0066)
	GUICtrlSetFont(-1, 8.5, 400, 0, 'Tahoma')
	GUICtrlSetState(-1, 0x0100)
	Local $Val[101] = [0]
	If Not BitAND($iFlags, 1) Then
		__Inc($Val)
		$Val[$Val[0]] = ''
		GUICtrlCreateListViewItem('-|-|' & $pData & '|<struct>|0|-', $LV)
		GUICtrlSetColor(-1, 0x9C9C9C)
	EndIf
	Local $aData = StringSplit($sStruct, ';')
	Local $aItem, $rItem, $sItem, $iMode, $Index, $Count = 0, $Prev = 0
	Local $Sel[2] = [0, 0]
	Local $Type[29][2] = _
			[['BYTE', 1], _
			['UBYTE', 1], _
			['BOOLEAN', 1], _
			['CHAR', 1], _
			['WCHAR', 2], _
			['short', 2], _
			['USHORT', 2], _
			['WORD', 2], _
			['int', 4], _
			['long', 4], _
			['BOOL', 4], _
			['UINT', 4], _
			['ULONG', 4], _
			['DWORD', 4], _
			['INT64', 8], _
			['UINT64', 8], _
			['ptr', __Iif(@AutoItX64, 8, 4)], _
			['HWND', __Iif(@AutoItX64, 8, 4)], _
			['HANDLE', __Iif(@AutoItX64, 8, 4)], _
			['float', 4], _
			['double', 8], _
			['INT_PTR', __Iif(@AutoItX64, 8, 4)], _
			['LONG_PTR', __Iif(@AutoItX64, 8, 4)], _
			['LRESULT', __Iif(@AutoItX64, 8, 4)], _
			['LPARAM', __Iif(@AutoItX64, 8, 4)], _
			['UINT_PTR', __Iif(@AutoItX64, 8, 4)], _
			['ULONG_PTR', __Iif(@AutoItX64, 8, 4)], _
			['DWORD_PTR', __Iif(@AutoItX64, 8, 4)], _
			['WPARAM', __Iif(@AutoItX64, 8, 4)]]

	For $i = 1 To $aData[0]
		$aItem = StringSplit(StringStripWS($aData[$i], 3), ' ')
		Switch $aItem[1]
			Case 'ALIGN', 'STRUCT', 'ENDSTRUCT'
				ContinueLoop
			Case Else

		EndSwitch
		$Count += 1
		$iMode = 1
		$sItem = $Count & '|'
		If $aItem[0] > 1 Then
			$rItem = StringRegExpReplace($aItem[2], '\[.*\Z', '')
			$sItem &= $rItem & '|'
			If (Not BitAND($iFlags, 16)) And (Not StringCompare(StringRegExpReplace($rItem, '[0-9]+\Z', ''), 'RESERVED')) Then
				$iMode = 0
			EndIf
			If Not IsString($iItem) Then
				$rItem = $Count
			EndIf
			$Index = 2
		Else
			If Not BitAND($iFlags, 4) Then
				$sItem &= '<unnamed>|'
			Else
				$sItem &= '|'
			EndIf
			If Not IsString($iItem) Then
				$rItem = $Count
			Else
				$rItem = 0
			EndIf
			$Index = 1
		EndIf
		If (Not $Sel[0]) And ($rItem) And ($iItem) And ($rItem = $iItem) Then
			$Sel[0] = $Count
		EndIf
		Local $Offset = Number(DllStructGetPtr($tData, $Count) - $pData)
		$Index = StringRegExp($aItem[$Index], '\[(\d+)\]', 3)
		Local $iSize
		Do
			ReDim $aItem[3]
			$rItem = StringRegExpReplace($aItem[1], '\[.*\Z', '')
			For $j = 0 To UBound($Type) - 1
				If Not StringCompare($Type[$j][0], $rItem) Then
					$aItem[1] = $Type[$j][0]
					$aItem[2] = $Type[$j][1]
					$iSize = $aItem[2]
					ExitLoop 2
				EndIf
			Next
			$aItem[1] = '?'
			$aItem[2] = '?'
			$iSize = 0
		Until 1
		$sItem &= $Offset & '|'
		If (IsArray($Index)) And ($Index[0] > '1') Then
			If $iSize Then
				$aItem[2] = $aItem[2] * $Index[0]
			EndIf
			Do
				Switch $aItem[1]
					Case 'BYTE', 'UBYTE', 'BOOLEAN'
						If Not BitAND($iFlags, 64) Then
							ContinueCase
						EndIf
					Case 'CHAR', 'WCHAR'
						$sItem &= $aItem[1] & '[' & $Index[0] & ']|' & $aItem[2] & '|'
						$Index = 0
						ExitLoop
					Case Else

				EndSwitch
				If ($iSize) And ($iMode) Then
					$sItem &= $aItem[1] & '[' & $Index[0] & ']|' & $aItem[2] & ' (' & $iSize & ')' & '|'
				Else
					$sItem &= $aItem[1] & '[' & $Index[0] & ']|' & $aItem[2] & '|'
				EndIf
				If $iMode Then
					$Index = $Index[0]
				Else
					$Index = 0
				EndIf
			Until 1
		Else
			$sItem &= $aItem[1] & '|' & $aItem[2] & '|'
			$Index = 0
		EndIf
		If (Not BitAND($iFlags, 2)) And ($Prev) And ($Offset > $Prev) Then
			__Inc($Val)
			$Val[$Val[0]] = ''
			GUICtrlCreateListViewItem('-|-|-|<alignment>|' & ($Offset - $Prev) & '|-', $LV)
			GUICtrlSetColor(-1, 0xFF0000)
		EndIf
		If $iSize Then
			$Prev = $Offset + $aItem[2]
		Else
			$Prev = 0
		EndIf
		Local $ID, $Init
		If $Index Then
			Local $Pattern = '[%0' & StringLen($Index) & 'd] '
			For $j = 1 To $Index
				__Inc($Val)
				$Val[$Val[0]] = DllStructGetData($tData, $Count, $j)
				If BitAND($iFlags, 128) Then
					$Val[$Val[0]] = __Hex($Val[$Val[0]], $aItem[1])
				EndIf
				$ID = GUICtrlCreateListViewItem($sItem & StringFormat($Pattern, $j) & $Val[$Val[0]], $LV)
				If ($Sel[0] = $Count) And (Not $Sel[1]) Then
					If ($iSubItem < 1) Or ($iSubItem > $Index) Or ($iSubItem = $j) Then
						$Sel[1] = $ID
					EndIf
				EndIf
				If (Not $Init) And ($Count = 1) Then
					$Init = $ID
				EndIf
				If Not BitAND($iFlags, 8) Then
					GUICtrlSetBkColor(-1, 0xF5F5F5)
				EndIf
				If $iSize Then
					$sItem = '-|-|' & ($Offset + $j * $iSize) & '|-|-|'
				Else
					GUICtrlSetColor(-1, 0xFF8800)
					$sItem = '-|-|-|-|-|'
				EndIf
			Next
		Else
			__Inc($Val)
			If $iMode Then
				$Val[$Val[0]] = DllStructGetData($tData, $Count)
				If BitAND($iFlags, 128) Then
					$Val[$Val[0]] = __Hex($Val[$Val[0]], $aItem[1])
				EndIf
				$ID = GUICtrlCreateListViewItem($sItem & $Val[$Val[0]], $LV)
			Else
				$Val[$Val[0]] = ''
				$ID = GUICtrlCreateListViewItem($sItem & '-', $LV)
			EndIf
			If ($Sel[0] = $Count) And (Not $Sel[1]) Then
				$Sel[1] = $ID
			EndIf
			If (Not $Init) And ($Count = 1) Then
				$Init = $ID
			EndIf
			If Not $iSize Then
				GUICtrlSetColor(-1, 0xFF8800)
			EndIf
		EndIf
		If (Not BitAND($iFlags, 2)) And (Not $iSize) Then
			__Inc($Val)
			$Val[$Val[0]] = ''
			GUICtrlCreateListViewItem('-|-|-|<alignment>|?|-', $LV)
			GUICtrlSetColor(-1, 0xFF8800)
		EndIf
	Next
	If (Not BitAND($iFlags, 2)) And ($Prev) And ($iData > $Prev) Then
		__Inc($Val)
		$Val[$Val[0]] = ''
		GUICtrlCreateListViewItem('-|-|-|<alignment>|' & ($iData - $Prev) & '|-', $LV)
		GUICtrlSetColor(-1, 0xFF0000)
	EndIf
	If Not BitAND($iFlags, 1) Then
		__Inc($Val)
		$Val[$Val[0]] = ''
		GUICtrlCreateListViewItem('-|-|' & ($pData + $iData - 0) & '|<endstruct>|' & $iData & '|-', $LV)
		GUICtrlSetColor(-1, 0x9C9C9C)
	EndIf
	If $Sel[1] Then
		GUICtrlSetState($Sel[1], 0x0100)
	Else
		GUICtrlSetState($Init, 0x0100)
	EndIf
	Local $Dummy = GUICtrlCreateDummy()
	Local $Width[6] = [30, 130, 76, 100, 50, 167]
	For $i = 0 To UBound($Width) - 1
		GUICtrlSendMsg($LV, 0x101E, $i, $Width[$i])
	Next
	Local $tParam = DllStructCreate('ptr;uint')
	DllStructSetData($tParam, 1, $hLV)
	If Not BitAND($iFlags, 32) Then
		DllStructSetData($tParam, 2, $Dummy)
	Else
		DllStructSetData($tParam, 2, 0)
	EndIf
	$__hFRDll = DllCallbackRegister('__DlgSubclassProc', 'lresult', 'hwnd;uint;wparam;lparam;uint;ptr')
	Local $pDll = DllCallbackGetPtr($__hFRDll)
	If _WinAPI_SetWindowSubclass($__hFRDlg, $pDll, 1000, DllStructGetPtr($tParam)) Then
		OnAutoItExitRegister('__Quit')
	Else
		DllCallbackFree($__hFRDll)
		$__hFRDll = 0
	EndIf
	GUISetState()
	While 1
		Switch GUIGetMsg()
			Case 0
				ContinueLoop
			Case -3
				ExitLoop
			Case $Dummy
				$Index = GUICtrlRead($Dummy)
				If ($Index >= 0) And ($Index < $Val[0]) Then
					ClipPut($Val[$Index + 1])
				EndIf
		EndSwitch
	WEnd
	If $__hFRDll Then
		OnAutoItExitUnRegister('__Quit')
	EndIf
	__Quit()
	If $hParent Then
		GUISetState(@SW_ENABLE, $hParent)
	EndIf
	GUIDelete($__hFRDlg)
	Opt('GUIDataSeparatorChar', $Opt1)
	Opt('GUIOnEventMode', $Opt2)
	Opt('GUICloseOnESC', $Opt3)

	Return 1
EndFunc   ;==>_WinAPI_DisplayStruct

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumDllProc($sPath, $sMask = '', $iFlags = 0)
	If Not __DLL('dbghelp.dll') Then Return SetError(103, 0, 0)

	Local $Ver = __Ver('dbghelp.dll')
	If $Ver < 0x0501 Then Return SetError(2, 0, 0)

	$__Enum = 0

	Local $PE, $Ret, $Error = 0, $hLibrary = 0, $WOW64 = Default
	If _WinAPI_IsWow64Process() Then
		$Ret = DllCall('kernel32.dll', 'bool', 'Wow64DisableWow64FsRedirection', 'ptr*', 0)
		If Not @error And $Ret[0] Then $WOW64 = $Ret[1]
	EndIf
	Do
		$Ret = DllCall('kernel32.dll', 'dword', 'SearchPathW', 'ptr', 0, 'wstr', $sPath, 'ptr', 0, 'dword', 4096, 'wstr', '', 'ptr', 0)
		If @error Or Not $Ret[0] Then
			$Error = @error + 10
			ExitLoop
		EndIf
		$__Ext = $Ret[5]
		$PE = _WinAPI_GetPEType($__Ext)
		Switch $PE
			Case 0x014C
				; (x86): IMAGE_FILE_MACHINE_I386
			Case 0x0200, 0x8664
				; (x64): IMAGE_FILE_MACHINE_IA64, IMAGE_FILE_MACHINE_AMD64
			Case Else
				$Error = @error + 20
				ExitLoop
		EndSwitch
		$hLibrary = _WinAPI_LoadLibraryEx($__Ext, 0x00000003)
		If Not $hLibrary Then
			$Error = @error + 30
			ExitLoop
		EndIf
		If $Ver >= 0x0600 Then
			__EnumDllProcW($hLibrary, $sMask, $iFlags)
		Else
			__EnumDllProcA($hLibrary, $sMask, $iFlags)
		EndIf
		If @error Then
			$Error = @error + 40
			ExitLoop
		EndIf
	Until 1
	If $hLibrary Then
		_WinAPI_FreeLibrary($hLibrary)
	EndIf
	If Not ($WOW64 = Default) Then
		DllCall('kernel32.dll', 'bool', 'Wow64RevertWow64FsRedirection', 'ptr*', $WOW64)
	EndIf

	Return SetError($Error, $PE, $__Enum)
EndFunc   ;==>_WinAPI_EnumDllProc

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetApplicationRestartSettings($PID = 0)
	If Not $PID Then $PID = @AutoItPID

	Local $hProcess = DllCall('kernel32.dll', 'handle', 'OpenProcess', 'dword', __Iif($__WINVER < 0x0600, 0x00000410, 0x00001010), _
			'bool', 0, 'dword', $PID)
	If @error Or Not $hProcess[0] Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'uint', 'GetApplicationRestartSettings', 'handle', $hProcess[0], 'wstr', '', _
			'dword*', 4096, 'dword*', 0)
	Local $Extended = @extended
	If @error Then
		$Ret = @error
	ElseIf $Ret[0] Then
		$Ret = 10
		$Extended = $Ret[0]
	EndIf
	_WinAPI_CloseHandle($hProcess[0])
	If $Ret Then Return SetError($Ret, $Extended, 0)

	Local $Result[2]
	$Result[0] = $Ret[2]
	$Result[1] = $Ret[4]
	Return $Result
EndFunc   ;==>_WinAPI_GetApplicationRestartSettings

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetErrorMessage($iCode, $iLanguage = 0)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'FormatMessageW', 'dword', 0x1000, 'ptr', 0, 'dword', $iCode, _
			'dword', $iLanguage, 'wstr', '', 'dword', 4096, 'ptr', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return StringRegExpReplace($Ret[5], '[' & @LF & ',' & @CR & ']*\Z', '')
EndFunc   ;==>_WinAPI_GetErrorMessage

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetErrorMode()
	Local $Ret = DllCall('kernel32.dll', 'uint', 'GetErrorMode')
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetErrorMode

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsInternetConnected()
	If Not __DLL('connect.dll') Then Return SetError(103, 0, 0)

	Local $Ret = DllCall('connect.dll', 'long', 'IsInternetConnected')
	If @error Then Return SetError(@error, @extended, 0)
	If Not ($Ret[0] = 0 Or $Ret[0] = 1) Then ; not S_OK nor S_FALSE
		Return SetError(10, $Ret[0], False)
	EndIf

	Return Not $Ret[0]
EndFunc   ;==>_WinAPI_IsInternetConnected

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsNetworkAlive()
	If Not __DLL('sensapi.dll') Then Return SetError(103, 0, 0)

	Local $Ret = DllCall('sensapi.dll', 'bool', 'IsNetworkAlive', 'int*', 0)
	Local $LastError = _WinAPI_GetLastError()
	If $LastError Then Return SetError(1, $LastError, 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, $LastError, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[1]
EndFunc   ;==>_WinAPI_IsNetworkAlive

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_NtStatusToDosError($iStatus)
	Local $Ret = DllCall('ntdll.dll', 'ulong', 'RtlNtStatusToDosError', 'long', $iStatus)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_NtStatusToDosError

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegisterApplicationRestart($iFlags = 0, $sCmd = '')
	Local $Ret = DllCall('kernel32.dll', 'long', 'RegisterApplicationRestart', 'wstr', $sCmd, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegisterApplicationRestart

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetErrorMode($iMode)
	Local $Ret = DllCall('kernel32.dll', 'uint', 'SetErrorMode', 'uint', $iMode)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetErrorMode

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ShowLastError($sText = '', $fAbort = 0, $iLanguage = 0, $curErr = @error, $curExt = @extended)
	Local $sError

	Local $iLastError = _WinAPI_GetLastError()
	While 1
		$sError = _WinAPI_GetErrorMessage($iLastError, $iLanguage)
		If @error And $iLanguage Then
			$iLanguage = 0
		Else
			ExitLoop
		EndIf
	WEnd
	If StringStripWS($sText, 3) Then
		$sText &= @CRLF & @CRLF
	Else
		$sText = ''
	EndIf
	_WinAPI_MsgBox(BitOR(0x00040000, BitShift(0x00000010, -2 * (Not $iLastError))), $iLastError, $sText & $sError)
	If $iLastError Then
		_WinAPI_SetLastError($iLastError)
		If $fAbort Then
			Exit $iLastError
		EndIf
	EndIf

	Return SetError($curErr, $curExt, 1)
EndFunc   ;==>_WinAPI_ShowLastError

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UniqueHardwareID($iFlags = 0)
	Local $oService = ObjGet('winmgmts:\\.\root\cimv2')
	If Not IsObj($oService) Then Return SetError(1, 0, '')

	Local $oItems = $oService.ExecQuery('SELECT * FROM Win32_ComputerSystemProduct')
	If Not IsObj($oItems) Then Return SetError(2, 0, '')

	Local $Hw = '', $Result = 0
	For $Property In $oItems
		$Hw &= $Property.IdentifyingNumber
		$Hw &= $Property.Name
		$Hw &= $Property.SKUNumber
		$Hw &= $Property.UUID
		$Hw &= $Property.Vendor
		$Hw &= $Property.Version
	Next
	$Hw = StringStripWS($Hw, 8)
	If Not $Hw Then Return SetError(3, 0, '')

	Local $Text
	If BitAND($iFlags, 0x0001) Then
		$oItems = $oService.ExecQuery('SELECT * FROM Win32_BIOS')
		If Not IsObj($oItems) Then Return SetError(3, 0, '')

		$Text = ''
		For $Property In $oItems
			$Text &= $Property.IdentificationCode
			$Text &= $Property.Manufacturer
			$Text &= $Property.Name
			$Text &= $Property.SerialNumber
			$Text &= $Property.SMBIOSMajorVersion
			$Text &= $Property.SMBIOSMinorVersion
			;			$Text &= $Property.Version
		Next
		$Text = StringStripWS($Text, 8)
		If $Text Then
			$Result += 0x0001
			$Hw &= $Text
		EndIf
	EndIf
	If BitAND($iFlags, 0x0002) Then
		$oItems = $oService.ExecQuery('SELECT * FROM Win32_Processor')
		If Not IsObj($oItems) Then Return SetError(4, 0, '')

		$Text = ''
		For $Property In $oItems
			$Text &= $Property.Architecture
			$Text &= $Property.Family
			$Text &= $Property.Level
			$Text &= $Property.Manufacturer
			$Text &= $Property.Name
			$Text &= $Property.ProcessorId
			$Text &= $Property.Revision
			$Text &= $Property.Version
		Next
		$Text = StringStripWS($Text, 8)
		If $Text Then
			$Result += 0x0002
			$Hw &= $Text
		EndIf
	EndIf
	If BitAND($iFlags, 0x0004) Then
		$oItems = $oService.ExecQuery('SELECT * FROM Win32_PhysicalMedia')
		If Not IsObj($oItems) Then Return SetError(5, 0, '')

		$Text = ''
		For $Property In $oItems
			Switch _WinAPI_GetDriveBusType($Property.Tag)
				Case 0x03, 0x0B
					$Text &= $Property.SerialNumber
				Case Else

			EndSwitch
		Next
		$Text = StringStripWS($Text, 8)
		If $Text Then
			$Result += 0x0004
			$Hw &= $Text
		EndIf
	EndIf
	Local $Hash = __MD5($Hw)
	If Not $Hash Then Return SetError(6, 0, '')

	Return SetExtended($Result, '{' & StringMid($Hash, 1, 8) & '-' & StringMid($Hash, 9, 4) & '-' & StringMid($Hash, 13, 4) & '-' & StringMid($Hash, 17, 4) & '-' & StringMid($Hash, 21, 12) & '}')
EndFunc   ;==>_WinAPI_UniqueHardwareID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_UnregisterApplicationRestart()
	Local $Ret = DllCall('kernel32.dll', 'long', 'UnregisterApplicationRestart')
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_UnregisterApplicationRestart

#endregion Public Functions

#region Internal Functions

Func __DlgSubclassProc($hWnd, $iMsg, $wParam, $lParam, $ID, $pData)
	#forceref $ID

	Switch $iMsg
		Case 0x004E ; WM_NOTIFY

			Local $tNMIA = DllStructCreate('hwnd;uint_ptr;' & __Iif(@AutoItX64, 'int;int', 'int') & ';int Item;int;uint;uint;uint;long;long;lparam;uint', $lParam)
			Local $hListView = DllStructGetData($tNMIA, 1)
			Local $nMsg = DllStructGetData($tNMIA, 3)
			Local $tParam = DllStructCreate('ptr;uint', $pData)
			Local $iDummy = DllStructGetData($tParam, 2)
			Local $hLV = DllStructGetData($tParam, 1)

			Switch $hListView
				Case $hLV
					Switch $nMsg
						Case -109 ; LVN_BEGINDRAG
							Return 0
						Case -114 ; LVN_ITEMACTIVATE
							If $iDummy Then
								GUICtrlSendToDummy($iDummy, DllStructGetData($tNMIA, 'Item'))
							EndIf
							Return 0
					EndSwitch
			EndSwitch
	EndSwitch
	Return _WinAPI_DefSubclassProc($hWnd, $iMsg, $wParam, $lParam)
EndFunc   ;==>__DlgSubclassProc

Func __EnumDllProcA($hLibrary, $sMask, $iFlags)
	Local $hProcess, $pAddress = 0, $Init = 0, $Opts = Default, $Error = 0
	Local $TypeOfMask = 'str'
	$__Enum = 0
	Do
		Local $Ret = DllCall('dbghelp.dll', 'dword', 'SymGetOptions')
		If @error Then
			$Error = @error + 10
			ExitLoop
		EndIf
		$Opts = $Ret[0]
		$Ret = DllCall('dbghelp.dll', 'dword', 'SymSetOptions', 'dword', BitOR(BitAND($iFlags, 0x00000003), 0x00000204))
		If @error Or Not $Ret[0] Then
			$Error = @error + 20
			ExitLoop
		EndIf
		$hProcess = _WinAPI_GetCurrentProcess()
		$Ret = DllCall('dbghelp.dll', 'int', 'SymInitialize', 'handle', $hProcess, 'ptr', 0, 'int', 1)
		If @error Or Not $Ret[0] Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$Init = 1
		$Ret = DllCall('dbghelp.dll', 'uint64', 'SymLoadModule64', 'handle', $hProcess, 'ptr', 0, 'str', $__Ext, 'ptr', 0, 'uint64', $hLibrary, 'dword', 0)
		If @error Or Not $Ret[0] Then
			$Error = @error + 40
			ExitLoop
		EndIf
		$pAddress = $Ret[0]
		Dim $__Enum[501][2] = [[0]]
		Local $hEnumProc = DllCallbackRegister('__EnumSymbolsProcA', 'int', 'ptr;ulong;lparam')
		Local $pEnumProc = DllCallbackGetPtr($hEnumProc)
		If Not StringStripWS($sMask, 3) Then
			$TypeOfMask = 'ptr'
			$sMask = 0
		EndIf
		$Ret = DllCall('dbghelp.dll', 'int', 'SymEnumSymbols', 'handle', $hProcess, 'uint64', $pAddress, $TypeOfMask, $sMask, 'ptr', $pEnumProc, 'lparam', 0)
		If @error Or Not $Ret[0] Or (Not $__Enum[0][0]) Then
			$Error = @error + 50
			$__Enum = 0
		EndIf
		DllCallbackFree($hEnumProc)
		If IsArray($__Enum) Then
			__Inc($__Enum, -1)
		EndIf
	Until 1
	If $pAddress Then
		DllCall('dbghelp.dll', 'int', 'SymUnloadModule64', 'handle', $hProcess, 'uint64', $pAddress)
	EndIf
	If $Init Then
		DllCall('dbghelp.dll', 'int', 'SymCleanup', 'handle', $hProcess)
	EndIf
	If Not ($Opts = Default) Then
		DllCall('dbghelp.dll', 'dword', 'SymSetOptions', 'dword', $Opts)
	EndIf
	If $Error Then Return SetError($Error, 0, 0)

	Return 1
EndFunc   ;==>__EnumDllProcA

Func __EnumDllProcW($hLibrary, $sMask, $iFlags)
	Local $hProcess, $pAddress = 0, $Init = 0, $Opts = Default, $Error = 0
	Local $TypeOfMask = 'wstr'
	$__Enum = 0
	Do
		Local $Ret = DllCall('dbghelp.dll', 'dword', 'SymGetOptions')
		If @error Then
			$Error = @error + 10
			ExitLoop
		EndIf
		$Opts = $Ret[0]
		$Ret = DllCall('dbghelp.dll', 'dword', 'SymSetOptions', 'dword', BitOR(BitAND($iFlags, 0x00000003), 0x00000204))
		If @error Or Not $Ret[0] Then
			$Error = @error + 20
			ExitLoop
		EndIf
		$hProcess = _WinAPI_GetCurrentProcess()
		$Ret = DllCall('dbghelp.dll', 'int', 'SymInitializeW', 'handle', $hProcess, 'ptr', 0, 'int', 1)
		If @error Or Not $Ret[0] Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$Init = 1
		$Ret = DllCall('dbghelp.dll', 'uint64', 'SymLoadModuleExW', 'handle', $hProcess, 'ptr', 0, 'wstr', $__Ext, 'ptr', 0, 'uint64', $hLibrary, 'dword', 0, 'ptr', 0, 'dword', 0)
		If @error Or Not $Ret[0] Then
			$Error = @error + 40
			ExitLoop
		EndIf
		$pAddress = $Ret[0]
		Dim $__Enum[501][2] = [[0]]
		Local $hEnumProc = DllCallbackRegister('__EnumSymbolsProcW', 'int', 'ptr;ulong;lparam')
		Local $pEnumProc = DllCallbackGetPtr($hEnumProc)
		If Not StringStripWS($sMask, 3) Then
			$TypeOfMask = 'ptr'
			$sMask = 0
		EndIf
		$Ret = DllCall('dbghelp.dll', 'int', 'SymEnumSymbolsW', 'handle', $hProcess, 'uint64', $pAddress, $TypeOfMask, $sMask, 'ptr', $pEnumProc, 'lparam', 0)
		If @error Or Not $Ret[0] Or Not $__Enum[0][0] Then
			$Error = @error + 50
			$__Enum = 0
		EndIf
		DllCallbackFree($hEnumProc)
		If IsArray($__Enum) Then
			__Inc($__Enum, -1)
		EndIf
	Until 1
	If $pAddress Then
		DllCall('dbghelp.dll', 'int', 'SymUnloadModule64', 'handle', $hProcess, 'uint64', $pAddress)
	EndIf
	If $Init Then
		DllCall('dbghelp.dll', 'int', 'SymCleanup', 'handle', $hProcess)
	EndIf
	If Not ($Opts = Default) Then
		DllCall('dbghelp.dll', 'dword', 'SymSetOptions', 'dword', $Opts)
	EndIf
	If $Error Then Return SetError($Error, 0, 0)

	Return 1
EndFunc   ;==>__EnumDllProcW

Func __EnumSymbolsProcA($pSymInfo, $iSymSize, $lParam)
	#forceref $iSymSize, $lParam

	Local $tagSYMBOL_INFO = 'uint SizeOfStruct;uint TypeIndex;uint64 Reserved[2];uint Index;uint Size;uint64 ModBase;uint Flags;uint64 Value;uint64 Address;uint Register;uint Scope;uint Tag;uint NameLen;uint MaxNameLen;wchar Name[1]'
	Local $tSYMINFO = DllStructCreate($tagSYMBOL_INFO, $pSymInfo)
	Local $Length = DllStructGetData($tSYMINFO, 'NameLen')

	If $Length And BitAND(DllStructGetData($tSYMINFO, 'Flags'), 0x00000600) Then
		__Inc($__Enum, 500)
		$__Enum[$__Enum[0][0]][0] = DllStructGetData($tSYMINFO, 'Address') - DllStructGetData($tSYMINFO, 'ModBase')
		$__Enum[$__Enum[0][0]][1] = DllStructGetData(DllStructCreate('char[' & ($Length + 1) & ']', DllStructGetPtr($tSYMINFO, 'Name')), 1)
	EndIf
	Return 1
EndFunc   ;==>__EnumSymbolsProcA

Func __EnumSymbolsProcW($pSymInfo, $iSymSize, $lParam)
	#forceref $iSymSize, $lParam

	Local $tagSYMBOL_INFO = 'uint SizeOfStruct;uint TypeIndex;uint64 Reserved[2];uint Index;uint Size;uint64 ModBase;uint Flags;uint64 Value;uint64 Address;uint Register;uint Scope;uint Tag;uint NameLen;uint MaxNameLen;wchar Name[1]'
	Local $tSYMINFO = DllStructCreate($tagSYMBOL_INFO, $pSymInfo)
	Local $Length = DllStructGetData($tSYMINFO, 'NameLen')

	If $Length And BitAND(DllStructGetData($tSYMINFO, 'Flags'), 0x00000600) Then
		__Inc($__Enum, 500)
		$__Enum[$__Enum[0][0]][0] = DllStructGetData($tSYMINFO, 'Address') - DllStructGetData($tSYMINFO, 'ModBase')
		$__Enum[$__Enum[0][0]][1] = DllStructGetData(DllStructCreate('wchar[' & ($Length + 1) & ']', DllStructGetPtr($tSYMINFO, 'Name')), 1)
	EndIf
	Return 1
EndFunc   ;==>__EnumSymbolsProcW

Func __Hex($iValue, $sType)
	Local $Length

	Switch $sType
		Case 'BYTE', 'UBYTE', 'BOOLEAN'
			$Length = 2
		Case 'WORD', 'USHORT', 'short'
			$Length = 4
		Case 'BOOL', 'UINT', 'ULONG', 'DWORD', 'int', 'long'
			$Length = 8
		Case 'INT64', 'UINT64'
			$Length = 16
		Case 'INT_PTR', 'UINT_PTR', 'LONG_PTR', 'ULONG_PTR', 'DWORD_PTR', 'WPARAM', 'LPARAM', 'LRESULT'
			$Length = __Iif(@AutoItX64, 16, 8)
		Case Else
			$Length = 0
	EndSwitch
	If $Length Then
		Return '0x' & Hex($iValue, $Length)
	Else
		Return $iValue
	EndIf
EndFunc   ;==>__Hex

Func __MD5($sData)
	Local $hHash, $Error = 0

	Local $hProv = DllCall('advapi32.dll', 'int', 'CryptAcquireContextW', 'ptr*', 0, 'ptr', 0, 'ptr', 0, 'dword', 3, 'dword', 0xF0000000)
	If @error Or Not $hProv[0] Then Return SetError(@error + 10, @extended, '')
	Do
		$hHash = DllCall('advapi32.dll', 'int', 'CryptCreateHash', 'ptr', $hProv[1], 'uint', 0x00008003, 'ptr', 0, 'dword', 0, _
				'ptr*', 0)
		If @error Or Not $hHash[0] Then
			$Error = @error + 20
			$hHash = 0
			ExitLoop
		EndIf
		$hHash = $hHash[5]
		Local $tData = DllStructCreate('byte[' & BinaryLen($sData) & ']')
		DllStructSetData($tData, 1, $sData)
		Local $Ret = DllCall('advapi32.dll', 'int', 'CryptHashData', 'ptr', $hHash, 'struct*', $tData, _
				'dword', DllStructGetSize($tData), 'dword', 1)
		If @error Or Not $Ret[0] Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$tData = DllStructCreate('byte[16]')
		$Ret = DllCall('advapi32.dll', 'int', 'CryptGetHashParam', 'ptr', $hHash, 'dword', 2, 'struct*', $tData, 'dword*', 16, _
				'dword', 0)
		If @error Or Not $Ret[0] Then
			$Error = @error + 40
			ExitLoop
		EndIf
	Until 1
	If $hHash Then
		DllCall('advapi32.dll', 'int', 'CryptDestroyHash', 'ptr', $hHash)
	EndIf
	If $Error Then Return SetError($Error, 0, '')
	Return StringTrimLeft(DllStructGetData($tData, 1), 2)
EndFunc   ;==>__MD5

Func __Quit()
	Local $pDll = DllCallbackGetPtr($__hFRDll)
	If $pDll Then
		_WinAPI_RemoveWindowSubclass($__hFRDlg, $pDll, 1000)
		DllCallbackFree($__hFRDll)
	EndIf
	$__hFRDll = 0
EndFunc   ;==>__Quit

Func __Ver($sPath)
	Local $hLibrary = _WinAPI_GetModuleHandle($sPath)
	If Not $hLibrary Then Return SetError(@error + 10, @extended, 0)
	$sPath = _WinAPI_GetModuleFileNameEx(_WinAPI_GetCurrentProcess(), $hLibrary)
	If Not $sPath Then Return SetError(@error + 20, @extended, 0)
	Local $Ver = FileGetVersion($sPath)
	If @error Then Return SetError(1, 0, 0)
	$Ver = StringSplit($Ver, '.', 2)
	If UBound($Ver) < 2 Then Return SetError(2, 0, 0)
	Return BitOR(BitShift(Number($Ver[0]), -8), Number($Ver[1]))
EndFunc   ;==>__Ver

#endregion Internal Functions
