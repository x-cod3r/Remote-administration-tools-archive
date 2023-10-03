#include-once

#include "APIRegConstants.au3"
#include "StructureConstants.au3"
#include "WinAPICom.au3"
#include "WinAPIInternals.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIReg.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: comctl32.dll, shlwapi.dll, ntdll.dll, advapi32.dll, sfc.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_AddMRUString
; _WinAPI_AssocGetPerceivedType
; _WinAPI_AssocQueryString
; _WinAPI_CreateMRUList
; _WinAPI_DllInstall
; _WinAPI_DllUninstall
; _WinAPI_EnumMRUList
; _WinAPI_FreeMRUList
; _WinAPI_GetRegKeyNameByHandle
; _WinAPI_RegCloseKey
; _WinAPI_RegConnectRegistry
; _WinAPI_RegCopyTree
; _WinAPI_RegCopyTreeEx
; _WinAPI_RegCreateKey
; _WinAPI_RegDeleteEmptyKey
; _WinAPI_RegDeleteKey
; _WinAPI_RegDeleteKeyValue
; _WinAPI_RegDeleteTree
; _WinAPI_RegDeleteTreeEx
; _WinAPI_RegDeleteValue
; _WinAPI_RegDisableReflectionKey
; _WinAPI_RegDuplicateHKey
; _WinAPI_RegEnableReflectionKey
; _WinAPI_RegEnumKey
; _WinAPI_RegEnumValue
; _WinAPI_RegFlushKey
; _WinAPI_RegLoadMUIString
; _WinAPI_RegNotifyChangeKeyValue
; _WinAPI_RegOpenKey
; _WinAPI_RegQueryInfoKey
; _WinAPI_RegQueryLastWriteTime
; _WinAPI_RegQueryMultipleValues
; _WinAPI_RegQueryReflectionKey
; _WinAPI_RegQueryValue
; _WinAPI_RegRestoreKey
; _WinAPI_RegSaveKey
; _WinAPI_RegSetValue
; _WinAPI_SfcIsKeyProtected
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_AddMRUString($hMRU, $sStr)
	Local $Ret = DllCall('comctl32.dll', 'int', 'AddMRUStringW', 'handle', $hMRU, 'wstr', $sStr)
	If @error Then Return SetError(@error, @extended, -1)
	; If $Ret[0] = -1 Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_AddMRUString

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_AssocGetPerceivedType($sExt)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'AssocGetPerceivedType', 'wstr', $sExt, 'int*', 0, 'dword*', 0, 'ptr*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $Result[3]
	$Result[0] = $Ret[2]
	$Result[1] = $Ret[3]
	$Result[2] = _WinAPI_GetString($Ret[4])
	_WinAPI_CoTaskMemFree($Ret[4])
	Return $Result
EndFunc   ;==>_WinAPI_AssocGetPerceivedType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_AssocQueryString($sAssoc, $iType, $iFlags = 0, $sExtra = '')
	Local $TypeOfExtra = 'wstr'
	If Not StringStripWS($sExtra, 3) Then
		$TypeOfExtra = 'ptr'
		$sExtra = 0
	EndIf

	Local $Ret = DllCall('shlwapi.dll', 'long', 'AssocQueryStringW', 'dword', $iFlags, 'dword', $iType, 'wstr', $sAssoc, _
			$TypeOfExtra, $sExtra, 'wstr', '', 'dword*', 4096)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[5]
EndFunc   ;==>_WinAPI_AssocQueryString

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateMRUList($hKey, $sSubKey, $iMax = 26)
	Local Const $tagMRUINFO = 'dword Size;uint Max;uint Flags;handle hKey;ptr szSubKey;ptr fnCompare'
	Local $tMRUINFO = DllStructCreate($tagMRUINFO & ';wchar[' & (StringLen($sSubKey) + 1) & ']')
	DllStructSetData($tMRUINFO, 1, DllStructGetPtr($tMRUINFO, 7) - DllStructGetPtr($tMRUINFO))
	DllStructSetData($tMRUINFO, 2, $iMax)
	DllStructSetData($tMRUINFO, 3, 0)
	DllStructSetData($tMRUINFO, 4, $hKey)
	DllStructSetData($tMRUINFO, 5, DllStructGetPtr($tMRUINFO, 7))
	DllStructSetData($tMRUINFO, 6, 0)
	DllStructSetData($tMRUINFO, 7, $sSubKey)

	Local $Ret = DllCall('comctl32.dll', 'int', 'CreateMRUListW', 'struct*', $tMRUINFO)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateMRUList

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DllInstall($sPath)
	Local $Ret = RunWait(@SystemDir & '\regsvr32.exe /s ' & $sPath)
	If @error Or $Ret Then Return SetError(@error + ($Ret + 100), @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_DllInstall

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DllUninstall($sPath)
	Local $Ret = RunWait(@SystemDir & '\regsvr32.exe /s /u ' & $sPath)
	If @error Or $Ret Then Return SetError(@error + ($Ret + 100), @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_DllUninstall

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumMRUList($hMRU, $iItem)
	Local $Ret = DllCall('comctl32.dll', 'int', 'EnumMRUListW', 'handle', $hMRU, 'int', $iItem, 'wstr', '', 'uint', 4096)
	If @error Or ($Ret[0] = -1) Then Return SetError(@error + 10, @extended, 0)

	If $iItem < 0 Then
		Return $Ret[0]
	Else
		If Not $Ret[0] Then Return SetError(1, 0, 0)
	EndIf

	Return $Ret[3]
EndFunc   ;==>_WinAPI_EnumMRUList

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_FreeMRUList($hMRU)
	Local $Ret = DllCall('comctl32.dll', 'int', 'FreeMRUList', 'handle', $hMRU)
	If @error Then Return SetError(@error, @extended, False)
	; If $Ret[0] = -1 Then Return SetError(1000, 0, 0)

	Return ($Ret[0] <> -1)
EndFunc   ;==>_WinAPI_FreeMRUList

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetRegKeyNameByHandle($hKey)
	Local $tagKEY_NAME_INFORMATION = 'ulong NameLength;wchar Name[4096]'
	Local $tKNI = DllStructCreate($tagKEY_NAME_INFORMATION)
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryKey', 'handle', $hKey, 'uint', 3, 'struct*', $tKNI, _
			'ulong', DllStructGetSize($tKNI), 'ulong*', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')
	Local $Length = DllStructGetData($tKNI, 1)
	If Not $Length Then Return SetError(12, 0, '')

	Return DllStructGetData(DllStructCreate('wchar[' & ($Length / 2) & ']', DllStructGetPtr($tKNI, 2)), 1)
EndFunc   ;==>_WinAPI_GetRegKeyNameByHandle

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegCloseKey($hKey, $fFlush = 0)
	If $fFlush Then
		If Not _WinAPI_RegFlushKey($hKey) Then
			Return SetError(@error + 10, @extended, 0)
		EndIf
	EndIf

	Local $Ret = DllCall('advapi32.dll', 'long', 'RegCloseKey', 'handle', $hKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegCloseKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegConnectRegistry($sComputer, $hKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegConnectRegistryW', 'wstr', $sComputer, 'handle', $hKey, 'handle*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_RegConnectRegistry

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegCopyTree($hSrcKey, $sSrcSubKey, $hDestKey)
	Local $Ret = DllCall('shlwapi.dll', 'long', 'SHCopyKeyW', 'handle', $hSrcKey, 'wstr', $sSrcSubKey, 'ulong_ptr', $hDestKey, _
			'dword', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegCopyTree

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegCopyTreeEx($hSrcKey, $sSrcSubKey, $hDestKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegCopyTreeW', 'handle', $hSrcKey, 'wstr', $sSrcSubKey, 'ulong_ptr', $hDestKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegCopyTreeEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegCreateKey($hKey, $sSubKey = '', $iAccess = 0x000F003F, $iOptions = 0, $tSecurity = 0)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegCreateKeyExW', 'handle', $hKey, 'wstr', $sSubKey, 'dword', 0, 'ptr', 0, _
			'dword', $iOptions, 'dword', $iAccess, 'struct*', $tSecurity, 'ulong_ptr*', 0, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return SetExtended(Number($Ret[9] = 1), $Ret[8])
EndFunc   ;==>_WinAPI_RegCreateKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDeleteEmptyKey($hKey, $sSubKey = '')
	Local $Ret = DllCall('shlwapi.dll', 'long', 'SHDeleteEmptyKeyW', 'handle', $hKey, 'wstr', $sSubKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDeleteEmptyKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDeleteKey($hKey, $sSubKey = '')
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegDeleteKeyW', 'handle', $hKey, 'wstr', $sSubKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDeleteKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDeleteKeyValue($hKey, $sSubKey, $sValueName)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegDeleteKeyValueW', 'handle', $hKey, 'wstr', $sSubKey, 'wstr', $sValueName)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDeleteKeyValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDeleteTree($hKey, $sSubKey = '')
	Local $Ret = DllCall('shlwapi.dll', 'long', 'SHDeleteKeyW', 'ulong_ptr', $hKey, 'wstr', $sSubKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDeleteTree

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_RegDeleteTreeEx($hKey, $sSubKey = 0)
	Local $sSubKeyType = 'wstr'
	If Not IsString($sSubKey) Then $sSubKeyType = 'ptr'

	Local $Ret = DllCall('advapi32.dll', 'long', 'RegDeleteTreeW', 'handle', $hKey, $sSubKeyType, $sSubKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDeleteTreeEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDeleteValue($hKey, $sValueName)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegDeleteValueW', 'handle', $hKey, 'wstr', $sValueName)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDeleteValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDisableReflectionKey($hKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegDisableReflectionKey', 'handle', $hKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegDisableReflectionKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegDuplicateHKey($hKey)
	Local $Ret = DllCall('shlwapi.dll', 'handle', 'SHRegDuplicateHKey', 'handle', $hKey)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_RegDuplicateHKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegEnableReflectionKey($hKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegEnableReflectionKey', 'handle', $hKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegEnableReflectionKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegEnumKey($hKey, $iIndex)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegEnumKeyExW', 'ulong_ptr', $hKey, 'dword', $iIndex, 'wstr', '', _
			'dword*', 256, 'dword', 0, 'ptr', 0, 'ptr', 0, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_RegEnumKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegEnumValue($hKey, $iIndex)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegEnumValueW', 'handle', $hKey, 'dword', $iIndex, 'wstr', '', _
			'dword*', 16384, 'dword', 0, 'dword*', 0, 'ptr', 0, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return SetExtended($Ret[6], $Ret[3])
EndFunc   ;==>_WinAPI_RegEnumValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegFlushKey($hKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegFlushKey', 'handle', $hKey)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegFlushKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegLoadMUIString($hKey, $sValueName, $sDirectory = '')
	Local $TypeOfDirectory = 'wstr'
	If Not StringStripWS($sDirectory, 3) Then
		$TypeOfDirectory = 'ptr'
		$sDirectory = 0
	EndIf

	Local $Ret = DllCall('advapi32.dll', 'long', 'RegLoadMUIStringW', 'handle', $hKey, 'wstr', $sValueName, 'wstr', '', _
			'dword', 16384, 'dword*', 0, 'dword', 0, $TypeOfDirectory, $sDirectory)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_RegLoadMUIString

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegNotifyChangeKeyValue($hKey, $iFilter, $fSubtree = 0, $fAsync = 0, $hEvent = 0)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegNotifyChangeKeyValue', 'handle', $hKey, 'bool', $fSubtree, _
			'dword', $iFilter, 'handle', $hEvent, 'bool', $fAsync)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegNotifyChangeKeyValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_RegOpenKey($hKey, $sSubKey = '', $iAccess = 0x000F003F)
	Local $sSubKeyType = 'wstr'
	If Not IsString($sSubKey) Then $sSubKeyType = 'ptr'

	Local $Ret = DllCall('advapi32.dll', 'long', 'RegOpenKeyExW', 'handle', $hKey, $sSubKeyType, $sSubKey, 'dword', 0, _
			'dword', $iAccess, 'ulong_ptr*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_RegOpenKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegQueryInfoKey($hKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegQueryInfoKeyW', 'handle', $hKey, 'ptr', 0, 'ptr', 0, 'ptr', 0, _
			'dword*', 0, 'dword*', 0, 'ptr', 0, 'dword*', 0, 'dword*', 0, 'dword*', 0, 'ptr', 0, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $Result[5]
	$Result[0] = $Ret[5]
	$Result[1] = $Ret[6]
	$Result[2] = $Ret[8]
	$Result[3] = $Ret[9]
	$Result[4] = $Ret[10]
	Return $Result
EndFunc   ;==>_WinAPI_RegQueryInfoKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegQueryLastWriteTime($hKey)
	Local $tFILETIME = DllStructCreate($tagFILETIME)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegQueryInfoKeyW', 'handle', $hKey, 'ptr', 0, 'ptr', 0, 'ptr', 0, 'ptr', 0, _
			'ptr', 0, 'ptr', 0, 'ptr', 0, 'ptr', 0, 'ptr', 0, 'ptr', 0, 'struct*', $tFILETIME)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tFILETIME
EndFunc   ;==>_WinAPI_RegQueryLastWriteTime

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegQueryMultipleValues($hKey, ByRef $aValent, ByRef $pBuffer, $iStart = 0, $iEnd = -1)
	$pBuffer = 0
	If __CheckErrorArrayBounds($aValent, $iStart, $iEnd, 2) Then Return SetError(@error + 10, @extended, 0)
	If UBound($aValent, 2) < 4 Then Return SetError(13, 0, 0)

	Local $Values = $iEnd - $iStart + 1
	Local $Struct = ''
	For $i = 1 To $Values
		$Struct &= 'ptr;dword;ptr;dword;'
	Next
	Local $tValent = DllStructCreate($Struct)

	Local $Item[$Values], $Count = 0
	For $i = $iStart To $iEnd
		$Item[$Count] = DllStructCreate('wchar[' & (StringLen($aValent[$i][0]) + 1) & ']')
		DllStructSetData($tValent, 4 * $Count + 1, DllStructGetPtr($Item[$Count]))
		DllStructSetData($Item[$Count], 1, $aValent[$i][0])
		$Count += 1
	Next
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegQueryMultipleValuesW', 'handle', $hKey, 'struct*', $tValent, 'dword', $Values, _
			'ptr', 0, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] <> 234 Then Return SetError(10, $Ret[0], 0) ; not ERROR_MORE_DATA
	$pBuffer = __HeapAlloc($Ret[5])
	If @error Then Return SetError(@error + 100, @extended, 0)
	$Ret = DllCall('advapi32.dll', 'long', 'RegQueryMultipleValuesW', 'handle', $hKey, 'struct*', $tValent, 'dword', $Values, _
			'ptr', $pBuffer, 'dword*', $Ret[5])
	If @error Or $Ret[0] Then
		Local $Error = @error
		__HeapFree($pBuffer)
		If IsArray($Ret) Then
			Return SetError(20, $Ret[0], 0)
		Else
			Return SetError($Error + 20, @extended, 0) ; should not occur as previously called
		EndIf
	EndIf

	$Count = 0
	For $i = $iStart To $iEnd
		For $j = 1 To 3
			$aValent[$i][$j] = DllStructGetData($tValent, 4 * $Count + $j + 1)
		Next
		$Count += 1
	Next
	Return $Ret[5]
EndFunc   ;==>_WinAPI_RegQueryMultipleValues

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegQueryReflectionKey($hKey)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegQueryReflectionKey', 'handle', $hKey, 'bool*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_RegQueryReflectionKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegQueryValue($hKey, $sValueName, ByRef $tValueData)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegQueryValueExW', 'handle', $hKey, 'wstr', $sValueName, 'dword', 0, _
			'dword*', 0, 'struct*', $tValueData, 'dword*', DllStructGetSize($tValueData))
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return SetExtended($Ret[4], $Ret[6])
EndFunc   ;==>_WinAPI_RegQueryValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegRestoreKey($hKey, $sFile)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegRestoreKeyW', 'handle', $hKey, 'wstr', $sFile, 'dword', 8)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegRestoreKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegSaveKey($hKey, $sFile, $fReplace = 0, $tSecurity = 0)
	Local $Ret
	While 1
		$Ret = DllCall('advapi32.dll', 'long', 'RegSaveKeyW', 'handle', $hKey, 'wstr', $sFile, 'struct*', $tSecurity)
		If @error Then Return SetError(@error, @extended, 0)
		Switch $Ret[0]
			Case 0
				ExitLoop
			Case 183 ; ERROR_ALREADY_EXISTS
				If $fReplace Then
					; If Not _WinAPI_DeleteFile($sFile) Then
					If Not FileDelete($sFile) Then
						Return SetError(20, _WinAPI_GetLastError(), 0)
					Else
						ContinueLoop
					EndIf
				Else
					ContinueCase
				EndIf
			Case Else
				Return SetError(10, $Ret[0], 0)
		EndSwitch
	WEnd

	Return 1
EndFunc   ;==>_WinAPI_RegSaveKey

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_RegSetValue($hKey, $sValueName, $iType, $tValueData, $iBytes)
	Local $Ret = DllCall('advapi32.dll', 'long', 'RegSetValueExW', 'handle', $hKey, 'wstr', $sValueName, 'dword', 0, _
			'dword', $iType, 'struct*', $tValueData, 'dword', $iBytes)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_RegSetValue

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_SfcIsKeyProtected($hKey, $sSubKey = 0, $iFlag = 0)
	If Not __DLL('sfc.dll') Then Return SetError(103, 0, False)

	Local $sSubKeyType = 'wstr'
	If Not IsString($sSubKey) Then $sSubKeyType = 'ptr'

	Local $Ret = DllCall('sfc.dll', 'int', 'SfcIsKeyProtected', 'handle', $hKey, $sSubKeyType, $sSubKey, 'dword', $iFlag)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SfcIsKeyProtected

#endregion Public Functions
