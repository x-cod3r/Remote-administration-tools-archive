#include-once

#include "APIFilesConstants.au3"
#include "FileConstants.au3"
#include "WinAPIShPath.au3"
#include "WinAPIMisc.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.3.8.1++
; Description ...: Additional variables, constants and functions for the WinAPIFiles.au3
; Author(s) .....: Yashied, jpm
; Dll(s) ........: kernel32.dll, advapi32.dll, ntdll.dll, shlwapi.dll, comdlg32.dll, userenv.dll, ntshrui.dll, ole32.dll, sfc.dll
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

#region Global Variables and Constants

; #VARIABLES# ===================================================================================================================
Global $__iHeapSize = 8388608
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $tagDEVMODE = 'wchar DeviceName[32];ushort SpecVersion;ushort DriverVersion;ushort Size;ushort DriverExtra;dword Fields;short Orientation;short PaperSize;short PaperLength;short PaperWidth;short Scale;short Copies;short DefaultSource;short PrintQuality;short Color;short Duplex;short YResolution;short TTOption;short Collate;wchar FormName[32];ushort Unused1;dword Unused2[3];dword Nup;dword Unused3;dword ICMMethod;dword ICMIntent;dword MediaType;dword DitherType;dword Reserved1;dword Reserved2;dword PanningWidth;dword PanningHeight'
Global Const $tagDEVNAMES = 'ushort DriverOffset;ushort DeviceOffset;ushort OutputOffset;ushort Default'
Global Const $tagFILEINFO = 'uint64 CreationTime;uint64 LastAccessTime;uint64 LastWriteTime;uint64 ChangeTime;dword Attributes'
Global Const $tagFILE_ID_DESCRIPTOR = 'dword Size;uint Type;' & $tagGUID
Global Const $tagWIN32_FIND_STREAM_DATA = 'int64 StreamSize;wchar StreamName[296]'
Global Const $tagWIN32_STREAM_ID = 'dword StreamId;dword StreamAttributes;int64 Size;dword StreamNameSize;wchar StreamName[1]'
; ===============================================================================================================================
#endregion Global Variables and Constants

#region Functions list

; #CURRENT# =====================================================================================================================
; _WinAPI_BackupRead
; _WinAPI_BackupReadAbort
; _WinAPI_BackupSeek
; _WinAPI_BackupWrite
; _WinAPI_BackupWriteAbort
; _WinAPI_CopyFileEx
; _WinAPI_CreateDirectory
; _WinAPI_CreateDirectoryEx
; _WinAPI_CreateFileEx
; _WinAPI_CreateFileMapping
; _WinAPI_CreateHardLink
; _WinAPI_CreateObjectID
; _WinAPI_CreateSymbolicLink
; _WinAPI_DecryptFile
; _WinAPI_DefineDosDevice
; _WinAPI_DeleteFile
; _WinAPI_DeleteObjectID
; _WinAPI_DeleteVolumeMountPoint
; _WinAPI_DeviceIoControl
; _WinAPI_DuplicateEncryptionInfoFile
; _WinAPI_EjectMedia
; _WinAPI_EncryptFile
; _WinAPI_EncryptionDisable
; _WinAPI_EnumFiles
; _WinAPI_EnumFileStreams
; _WinAPI_EnumHardLinks
; _WinAPI_FileEncryptionStatus
; _WinAPI_FileExists
; _WinAPI_FileInUse
; _WinAPI_FindClose
; _WinAPI_FindCloseChangeNotification
; _WinAPI_FindFirstChangeNotification
; _WinAPI_FindFirstFile
; _WinAPI_FindFirstFileName
; _WinAPI_FindFirstStream
; _WinAPI_FindNextChangeNotification
; _WinAPI_FindNextFile
; _WinAPI_FindNextFileName
; _WinAPI_FindNextStream
; _WinAPI_FlushViewOfFile
; _WinAPI_GetBinaryType
; _WinAPI_GetCDType
; _WinAPI_GetCompressedFileSize
; _WinAPI_GetCompression
; _WinAPI_GetCurrentDirectory
; _WinAPI_GetDiskFreeSpaceEx
; _WinAPI_GetDriveBusType
; _WinAPI_GetDriveGeometryEx
; _WinAPI_GetDriveNumber
; _WinAPI_GetDriveType
; _WinAPI_GetFileAttributes
; _WinAPI_GetFileID
; _WinAPI_GetFileInformationByHandle
; _WinAPI_GetFileInformationByHandleEx
; _WinAPI_GetFilePointerEx
; _WinAPI_GetFileSizeOnDisk
; _WinAPI_GetFileTitle
; _WinAPI_GetFileType
; _WinAPI_GetFinalPathNameByHandle
; _WinAPI_GetFinalPathNameByHandleEx
; _WinAPI_GetFullPathName
; _WinAPI_GetLogicalDrives
; _WinAPI_GetObjectID
; _WinAPI_GetPEType
; _WinAPI_GetProfilesDirectory
; _WinAPI_GetTempFileName
; _WinAPI_GetVolumeInformation
; _WinAPI_GetVolumeInformationByHandle
; _WinAPI_GetVolumeNameForVolumeMountPoint
; _WinAPI_IOCTL
; _WinAPI_IsDoorOpen
; _WinAPI_IsPathShared
; _WinAPI_IsWritable
; _WinAPI_LoadMedia
; _WinAPI_LockDevice
; _WinAPI_LockFile
; _WinAPI_MapViewOfFile
; _WinAPI_MoveFileEx
; _WinAPI_OpenFileById
; _WinAPI_OpenFileMapping
; _WinAPI_PathIsDirectory
; _WinAPI_PathIsDirectoryEmpty
; _WinAPI_QueryDosDevice
; _WinAPI_ReadDirectoryChanges
; _WinAPI_RemoveDirectory
; _WinAPI_ReOpenFile
; _WinAPI_ReplaceFile
; _WinAPI_SearchPath
; _WinAPI_SetCompression
; _WinAPI_SetCurrentDirectory
; _WinAPI_SetFileAttributes
; _WinAPI_SetFileInformationByHandleEx
; _WinAPI_SetFilePointerEx
; _WinAPI_SetFileShortName
; _WinAPI_SetFileValidData
; _WinAPI_SetSearchPathMode
; _WinAPI_SetVolumeMountPoint
; _WinAPI_SfcIsFileProtected
; _WinAPI_UnlockFile
; _WinAPI_UnmapViewOfFile
; _WinAPI_Wow64EnableWow64FsRedirection
; ===============================================================================================================================
#endregion Functions list

#region Public Functions

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_BackupRead($hFile, $pBuffer, $iLength, ByRef $iBytes, ByRef $pContext, $fSecurity = 0)
	$iBytes = 0

	Local $Ret = DllCall('kernel32.dll', 'bool', 'BackupRead', 'handle', $hFile, 'ptr', $pBuffer, 'dword', $iLength, _
			'dword*', 0, 'bool', 0, 'bool', $fSecurity, 'ptr*', $pContext)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	$iBytes = $Ret[4]
	$pContext = $Ret[7]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_BackupRead

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_BackupReadAbort(ByRef $pContext)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'BackupRead', 'handle', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'bool', 1, _
			'bool', 0, 'ptr*', $pContext)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	$pContext = $Ret[7]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_BackupReadAbort

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_BackupSeek($hFile, $iSeek, ByRef $iBytes, ByRef $pContext)
	$iBytes = 0

	Local $Ret = DllCall('kernel32.dll', 'bool', 'BackupSeek', 'handle', $hFile, 'dword', _WinAPI_LoDWord($iSeek), _
			'dword', _WinAPI_HiDWord($iSeek), 'dword*', 0, 'dword*', 0, 'ptr*', $pContext)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	$iBytes = __WinAPI_MakeQWord($Ret[4], $Ret[5])
	$pContext = $Ret[6]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_BackupSeek

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_BackupWrite($hFile, $pBuffer, $iLength, ByRef $iBytes, ByRef $pContext, $fSecurity = 0)
	$iBytes = 0

	Local $Ret = DllCall('kernel32.dll', 'bool', 'BackupWrite', 'handle', $hFile, 'ptr', $pBuffer, 'dword', $iLength, _
			'dword*', 0, 'bool', 0, 'bool', $fSecurity, 'ptr*', $pContext)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	$iBytes = $Ret[4]
	$pContext = $Ret[7]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_BackupWrite

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_BackupWriteAbort(ByRef $pContext)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'BackupWrite', 'handle', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'bool', 1, _
			'bool', 0, 'ptr*', $pContext)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	$pContext = $Ret[7]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_BackupWriteAbort

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CopyFileEx($sExistingFile, $sNewFile, $iFlags = 0, $pProgressProc = 0, $pData = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'CopyFileExW', 'wstr', $sExistingFile, 'wstr', $sNewFile, _
			'ptr', $pProgressProc, 'long_ptr', $pData, 'ptr', 0, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CopyFileEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateDirectory($sDir, $tSecurity = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'CreateDirectoryW', 'wstr', $sDir, 'struct*', $tSecurity)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateDirectoryEx($sNewDir, $sTemplateDir, $tSecurity = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'CreateDirectoryExW', 'wstr', $sTemplateDir, 'wstr', $sNewDir, 'struct*', $tSecurity)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateDirectoryEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CreateFileEx($sFile, $iCreation, $iAccess = 0, $iShare = 0, $iFlagsAndAttributes = 0, $tSecurity = 0, $hTemplate = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'CreateFileW', 'wstr', $sFile, 'dword', $iAccess, 'dword', $iShare, _
			'struct*', $tSecurity, 'dword', $iCreation, 'dword', $iFlagsAndAttributes, 'handle', $hTemplate)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] = Ptr(-1) Then Return SetError(10, _WinAPI_GetLastError(), 0) ; $INVALID_HANDLE_VALUE

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateFileEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_CreateFileMapping($hFile, $iSize = 0, $sName = '', $iProtect = 0x0004, $tSecurity = 0)
	Local $TypeOfName = 'wstr'
	If Not StringStripWS($sName, 3) Then
		$TypeOfName = 'ptr'
		$sName = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'handle', 'CreateFileMappingW', 'handle', $hFile, 'struct*', $tSecurity, _
			'dword', $iProtect, 'dword', _WinAPI_HiDWord($iSize), 'dword', _WinAPI_LoDWord($iSize), _
			$TypeOfName, $sName)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return SetExtended(_WinAPI_GetLastError(), $Ret[0]) ; ERROR_ALREADY_EXISTS
EndFunc   ;==>_WinAPI_CreateFileMapping

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_CreateHardLink($sNewFile, $sExistingFile)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'CreateHardLinkW', 'wstr', $sNewFile, 'wstr', $sExistingFile, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateHardLink

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_CreateObjectID($sPath)
	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hFile = _WinAPI_CreateFileEx($sPath, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $tFOID = DllStructCreate('byte[16];byte[48]')
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x000900C0, 'ptr', 0, _
			'dword', 0, 'struct*', $tFOID, 'dword', DllStructGetSize($tFOID), 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Local $tGUID = DllStructCreate($tagGUID)
	_WinAPI_MoveMemory(DllStructGetPtr($tGUID), DllStructGetPtr($tFOID), 16)
	; Return SetError(3, 0, 0) ; cannot really occur
	; EndIf
	Return $tGUID
EndFunc   ;==>_WinAPI_CreateObjectID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_CreateSymbolicLink($sSymlink, $sTarget, $fDirectory = 0)
	If $fDirectory Then
		$fDirectory = 1
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'boolean', 'CreateSymbolicLinkW', 'wstr', $sSymlink, 'wstr', $sTarget, 'dword', $fDirectory)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_CreateSymbolicLink

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DecryptFile($sFile)
	Local $Ret = DllCall('advapi32.dll', 'bool', 'DecryptFileW', 'wstr', $sFile, 'dword', 0)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_DecryptFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DefineDosDevice($sDevice, $iFlags, $sPath = '')
	Local $TypeOfPath = 'wstr'
	If Not StringStripWS($sPath, 3) Then
		$TypeOfPath = 'ptr'
		$sPath = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DefineDosDeviceW', 'dword', $iFlags, 'wstr', $sDevice, $TypeOfPath, $sPath)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_DefineDosDevice

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DeleteFile($sFile)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeleteFileW', 'wstr', $sFile)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_DeleteFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DeleteObjectID($sPath)
	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hFile = _WinAPI_CreateFileEx($sPath, $OPEN_EXISTING, $GENERIC_WRITE, $FILE_SHARE_READWRITE, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x000900A0, 'ptr', 0, _
			'dword', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_DeleteObjectID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DeleteVolumeMountPoint($sPath)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeleteVolumeMountPointW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_DeleteVolumeMountPoint

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_DeviceIoControl($hDevice, $iControlCode, $pInBuffer = 0, $iInBufferSize = 0, $pOutBuffer = 0, $iOutBufferSize = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hDevice, 'dword', $iControlCode, _
			'ptr', $pInBuffer, 'dword', $iInBufferSize, 'ptr', $pOutBuffer, 'dword', $iOutBufferSize, _
			'dword*', 0, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return SetExtended($Ret[7], $Ret[0])
EndFunc   ;==>_WinAPI_DeviceIoControl

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_DuplicateEncryptionInfoFile($sSrcFile, $sDestFile, $iCreation = 2, $iAttributes = 0, $tSecurity = 0)
	Local $Ret = DllCall('advapi32.dll', 'dword', 'DuplicateEncryptionInfoFile', 'wstr', $sSrcFile, 'wstr', $sDestFile, _
			'dword', $iCreation, 'dword', $iAttributes, 'struct*', $tSecurity)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_DuplicateEncryptionInfoFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EjectMedia($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D4808, 'ptr', 0, _
			'dword', 0, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_EjectMedia

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_EncryptFile($sFile)
	Local $Ret = DllCall('advapi32.dll', 'bool', 'EncryptFileW', 'wstr', $sFile)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_EncryptFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_EncryptionDisable($sDir, $fDisable)
	Local $Ret = DllCall('advapi32.dll', 'bool', 'EncryptionDisable', 'wstr', $sDir, 'bool', $fDisable)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_EncryptionDisable

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumFiles($sDir, $iFlag = 0, $sTemplate = '', $fExclude = 0)
	Local $Ret = 0, $Error = 0
	Local $aData[501][7] = [[0]]

	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hDir = _WinAPI_CreateFileEx($sDir, $OPEN_EXISTING, 0x00000001, $FILE_SHARE_ANY, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $pBuffer = __HeapAlloc($__iHeapSize)
	If @error Then
		$Error = @error
	Else
		Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
		$Ret = DllCall('ntdll.dll', 'uint', 'ZwQueryDirectoryFile', 'handle', $hDir, 'ptr', 0, 'ptr', 0, 'ptr', 0, _
				'struct*', $tIOSB, 'ptr', $pBuffer, 'ulong', 8388608, 'uint', 1, 'boolean', 0, 'ptr', 0, 'boolean', 1)
		If @error Or $Ret[0] Then
			$Error = @error + 40
		EndIf
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hDir)
	If $Error Then
		__HeapFree($pBuffer, 1)
		If IsArray($Ret) Then
			Return SetError(10, $Ret[0], 0)
		Else
			Return SetError($Error, 0, 0)
		EndIf
	EndIf

	Local $tFDI, $Attrib, $Target, $Length = 0, $Offset = 0
	Do
		$Length += $Offset
		$tFDI = DllStructCreate('ulong;ulong;int64;int64;int64;int64;int64;int64;ulong;ulong;wchar[' & (DllStructGetData(DllStructCreate('ulong', $pBuffer + $Length + 60), 1) / 2) & ']', $pBuffer + $Length)
		$Target = DllStructGetData($tFDI, 11)
		$Attrib = DllStructGetData($tFDI, 9)
		$Offset = DllStructGetData($tFDI, 1)
		Switch $Target
			Case '.', '..'
				ContinueLoop
			Case Else
				Switch $iFlag
					Case 1, 2
						If BitAND($Attrib, 0x00000010) Then
							If $iFlag = 1 Then
								ContinueLoop
							EndIf
						Else
							If $iFlag = 2 Then
								ContinueLoop
							EndIf
						EndIf
				EndSwitch
				If $sTemplate Then
					$Ret = DllCall('shlwapi.dll', 'int', 'PathMatchSpecW', 'wstr', $Target, 'wstr', $sTemplate)
					If @error Or ($Ret[0] And $fExclude) Or (Not $Ret[0] And Not $fExclude) Then
						ContinueLoop
					EndIf
				EndIf
		EndSwitch
		__Inc($aData, 500)
		$aData[$aData[0][0]][0] = $Target
		$aData[$aData[0][0]][1] = DllStructGetData($tFDI, 3)
		$aData[$aData[0][0]][2] = DllStructGetData($tFDI, 4)
		$aData[$aData[0][0]][3] = DllStructGetData($tFDI, 5)
		$aData[$aData[0][0]][4] = DllStructGetData($tFDI, 7)
		$aData[$aData[0][0]][5] = DllStructGetData($tFDI, 8)
		$aData[$aData[0][0]][6] = $Attrib
	Until Not $Offset
	__HeapFree($pBuffer)
	__Inc($aData, -1)
	Return $aData
EndFunc   ;==>_WinAPI_EnumFiles

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumFileStreams($sFile)
	Local $tData = DllStructCreate('byte[32768]')
	Local $pData = DllStructGetPtr($tData)
	Local $aData[101][2] = [[0]]

	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hFile = _WinAPI_CreateFileEx($sFile, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'ptr', $pData, _
			'ulong', 32768, 'uint', 22)
	If @error Then $Ret = @error
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
	If $Ret Then Return SetError($Ret, 0, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Local $tFSI, $Length = 0, $Offset = 0
	Do
		$Length += $Offset
		$tFSI = DllStructCreate('ulong;ulong;int64;int64;wchar[' & (DllStructGetData(DllStructCreate('ulong', $pData + $Length + 4), 1) / 2) & ']', $pData + $Length)
		__Inc($aData)
		$aData[$aData[0][0]][0] = DllStructGetData($tFSI, 5)
		$aData[$aData[0][0]][1] = DllStructGetData($tFSI, 3)
		$Offset = DllStructGetData($tFSI, 1)
	Until Not $Offset
	__Inc($aData, -1)
	Return $aData
EndFunc   ;==>_WinAPI_EnumFileStreams

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_EnumHardLinks($sFile)
	Local $tData = DllStructCreate('byte[32768]')
	Local $pData = DllStructGetPtr($tData)

	Local $hFile = _WinAPI_CreateFileEx($sFile, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $Error = 0
	Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'ptr', $pData, _
			'ulong', 32768, 'uint', 46)
	If @error Or $Ret[0] Then
		$Error = @error + 10
		DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
		If $Ret Then Return SetError($Error, 0, 0)
		If $Ret[0] Then Return SetError(10, $Error, 0)
	EndIf

	Local $Count = DllStructGetData(DllStructCreate('ulong;ulong', $pData), 2)
	Local $aData[$Count + 1] = [$Count]
	Local $tFLEI, $hPath, $sPath, $Length = 8
	For $i = 1 To $Count
		$tFLEI = DllStructCreate('ulong;int64;ulong;wchar[' & (DllStructGetData(DllStructCreate('ulong', $pData + $Length + 16), 1)) & ']', $pData + $Length)
		$Error = 0
		Do
			$hPath = _WinAPI_OpenFileById($hFile, DllStructGetData($tFLEI, 2), 0x00100080, 0x03, 0x02000000)
			If @error Then
				$Error = @error + 100
				ExitLoop
			EndIf
			$sPath = _WinAPI_GetFinalPathNameByHandleEx($hPath)
			If @error Then
				$Error = @error + 200
				ExitLoop
			EndIf
		Until 1
		If $hPath Then
			DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hPath)
		EndIf
		If $Error Then ExitLoop

		$aData[$i] = _WinAPI_PathAppend($sPath, DllStructGetData($tFLEI, 4))
		$Length += DllStructGetData($tFLEI, 1)
	Next
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
	If $Error Then Return SetError($Error, 0, 0)

	Return $aData
EndFunc   ;==>_WinAPI_EnumHardLinks

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FileEncryptionStatus($sFile)
	Local $Ret = DllCall('advapi32.dll', 'bool', 'FileEncryptionStatusW', 'wstr', $sFile, 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, -1)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_FileEncryptionStatus

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FileExists($sFile)
	If Not FileExists($sFile) Then Return 0
	If _WinAPI_PathIsDirectory($sFile) Then Return SetExtended(1, 0)

	Return 1
EndFunc   ;==>_WinAPI_FileExists

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FileInUse($sFile)
	Local $hFile = _WinAPI_CreateFileEx($sFile, $OPEN_EXISTING, $GENERIC_READ)
	If @error Then
		If @extended = 32 Then Return 1 ; ERROR_SHARING_VIOLATION
		Return SetError(@error, @extended, 0)
	EndIf
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
	Return 0
EndFunc   ;==>_WinAPI_FileInUse

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_FindClose($hSearch)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'FindClose', 'handle', $hSearch)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindClose

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_FindCloseChangeNotification($hChange)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'FindCloseChangeNotification', 'handle', $hChange)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindCloseChangeNotification

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindFirstChangeNotification($sDirectory, $iFilter, $fSubtree = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'FindFirstChangeNotificationW', 'wstr', $sDirectory, 'bool', $fSubtree, _
			'dword', $iFilter)
	If @error Or ($Ret[0] = Ptr(-1)) Then Return SetError(@error + 10, @extended, 0) ; $INVALID_HANDLE_VALUE

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindFirstChangeNotification

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindFirstFile($sPath, $pData)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'FindFirstFileW', 'wstr', $sPath, 'ptr', $pData)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] = Ptr(-1) Then Return SetError(10, _WinAPI_GetLastError(), 0); $INVALID_HANDLE_VALUE

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindFirstFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindFirstFileName($sPath, ByRef $sLink)
	$sLink = ''

	Local $Ret = DllCall('kernel32.dll', 'handle', 'FindFirstFileNameW', 'wstr', $sPath, 'dword', 0, 'dword*', 4096, 'wstr', '')
	If @error Or ($Ret[0] = Ptr(-1)) Then Return SetError(@error + 10, @extended, 0) ; $INVALID_HANDLE_VALUE

	$sLink = $Ret[4]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindFirstFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindFirstStream($sPath, $pData)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'FindFirstStreamW', 'wstr', $sPath, 'uint', 0, 'ptr', $pData, 'dword', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] = Ptr(-1) Then Return SetError(10, _WinAPI_GetLastError(), 0) ; $INVALID_HANDLE_VALUE

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindFirstStream

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_FindNextChangeNotification($hChange)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'FindNextChangeNotification', 'handle', $hChange)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindNextChangeNotification

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindNextFile($hSearch, $pData)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'FindNextFileW', 'handle', $hSearch, 'ptr', $pData)
	If @error Then Return SetError(@error, @extended, False)
	If Not $Ret[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindNextFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindNextFileName($hSearch, ByRef $sLink)
	$sLink = ''

	Local $Ret = DllCall('kernel32.dll', 'bool', 'FindNextFileNameW', 'handle', $hSearch, 'dword*', 4096, 'wstr', '')
	If @error Then Return SetError(@error, @extended, False)
	If Not $Ret[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)

	$sLink = $Ret[3]
	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindNextFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_FindNextStream($hSearch, $pData)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'FindNextStreamW', 'handle', $hSearch, 'ptr', $pData)
	If @error Then Return SetError(@error, @extended, False)
	If Not $Ret[0] Then Return SetError(10, _WinAPI_GetLastError(), 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FindNextStream

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_FlushViewOfFile($pAddress, $iBytes = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'FlushViewOfFile', 'ptr', $pAddress, 'dword', $iBytes)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_FlushViewOfFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetBinaryType($sPath)
	Local $Ret = DllCall('kernel32.dll', 'int', 'GetBinaryTypeW', 'wstr', $sPath, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If Not $Ret[0] Then $Ret[2] = 0

	Return SetExtended($Ret[2], $Ret[0])
EndFunc   ;==>_WinAPI_GetBinaryType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetCDType($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $tagSCSI_PASS_THROUGH = 'struct;ushort Length;byte ScsiStatus;byte PathId;byte TargetId;byte Lun;byte CdbLength;byte SenseInfoLength;byte DataIn;ulong DataTransferLength;ulong TimeOutValue;ulong_ptr DataBufferOffset;ulong SenseInfoOffset;byte Cdb[16];endstruct'
	Local $tSPT = DllStructCreate($tagSCSI_PASS_THROUGH & ';byte Hdr[8]')
	Local $tCDB = DllStructCreate('byte;byte;byte[2];byte[3];byte[2];byte;byte[2];byte[4]', DllStructGetPtr($tSPT, 'Cdb'))
	Local $tHDR = DllStructCreate('byte[4];byte;byte;byte[2]', DllStructGetPtr($tSPT, 'Hdr'))
	Local $Size = DllStructGetPtr($tSPT, 'Hdr') - DllStructGetPtr($tSPT)

	DllStructSetData($tSPT, 'Length', $Size)
	DllStructSetData($tSPT, 'ScsiStatus', 0)
	DllStructSetData($tSPT, 'PathId', 0)
	DllStructSetData($tSPT, 'TargetId', 0)
	DllStructSetData($tSPT, 'Lun', 0)
	DllStructSetData($tSPT, 'CdbLength', 12)
	DllStructSetData($tSPT, 'SenseInfoLength', 0)
	DllStructSetData($tSPT, 'DataIn', 1)
	DllStructSetData($tSPT, 'DataTransferLength', 8)
	DllStructSetData($tSPT, 'TimeOutValue', 86400)
	DllStructSetData($tSPT, 'DataBufferOffset', $Size)
	DllStructSetData($tSPT, 'SenseInfoOffset', 0)

	DllStructSetData($tCDB, 1, 0x46)
	DllStructSetData($tCDB, 2, 0)
	DllStructSetData($tCDB, 3, 0, 1)
	DllStructSetData($tCDB, 3, 0, 2)
	DllStructSetData($tCDB, 5, 0, 1)
	DllStructSetData($tCDB, 5, 8, 2)
	DllStructSetData($tCDB, 6, 0)
	DllStructSetData($tCDB, 7, 0, 1)
	DllStructSetData($tCDB, 7, 0, 2)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0004D004, 'struct*', $tSPT, _
			'dword', $Size, 'struct*', $tSPT, 'dword', DllStructGetSize($tSPT), 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Return BitOR(BitShift(DllStructGetData($tHDR, 4, 1), -8), DllStructGetData($tHDR, 4, 2))
EndFunc   ;==>_WinAPI_GetCDType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetCompressedFileSize($sFile)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetCompressedFileSizeW', 'wstr', $sFile, 'dword*', 0)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] = -1 Then
		Local $iLastError = _WinAPI_GetLastError()
		If $Ret[2] = 0 Then Return SetError(10, $iLastError, 0)
		If $iLastError Then Return SetError(11, $iLastError, 0)
	EndIf

	Return __WinAPI_MakeQWord($Ret[0], $Ret[2])
EndFunc   ;==>_WinAPI_GetCompressedFileSize

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetCompression($sPath)
	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hFile = _WinAPI_CreateFileEx($sPath, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0009003C, 'ptr', 0, 'dword', 0, _
			'ushort*', 0, 'dword', 2, 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, -1)

	Return $Ret[5]
EndFunc   ;==>_WinAPI_GetCompression

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetCurrentDirectory()
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetCurrentDirectoryW', 'dword', 4096, 'wstr', '')
	If @error Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0,'')

	Return SetExtended($Ret[0], $Ret[2])
EndFunc   ;==>_WinAPI_GetCurrentDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetDiskFreeSpaceEx($sDrive)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetDiskFreeSpaceEx', 'str', $sDrive, 'int64*', 0, 'int64*', 0, 'int64*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Local $Result[3]
	For $i = 0 To 2
		$Result[$i] = $Ret[$i + 2]
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetDiskFreeSpaceEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetDriveBusType($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, -1)

	Local $tagSTORAGE_PROPERTY_QUERY = 'ulong PropertyId;ulong QueryType;byte AdditionalParameters[1]'
	Local $tSPQ = DllStructCreate($tagSTORAGE_PROPERTY_QUERY)
	Local $tSDD = DllStructCreate('ulong Version;ulong Size;byte DeviceType;byte DeviceTypeModifier;byte RemovableMedia;byte CommandQueueing;ulong VendorIdOffset;ulong ProductIdOffset;ulong ProductRevisionOffset;ulong SerialNumberOffset;ulong BusType;ulong RawPropertiesLength;byte RawDeviceProperties[1]')

	DllStructSetData($tSPQ, 'PropertyId', 0)
	DllStructSetData($tSPQ, 'QueryType', 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D1400, 'struct*', $tSPQ, _
			'dword', DllStructGetSize($tSPQ), 'struct*', $tSDD, 'dword', DllStructGetSize($tSDD), _
			'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, -1)

	Return DllStructGetData($tSDD, 'BusType')
EndFunc   ;==>_WinAPI_GetDriveBusType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetDriveGeometryEx($iDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\PhysicalDrive' & $iDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $tDGEX = DllStructCreate('uint64;dword;dword;dword;dword;uint64')
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x000700A0, 'ptr', 0, _
			'dword', 0, 'struct*', $tDGEX, 'dword', DllStructGetSize($tDGEX), 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Local $Result[6]
	For $i = 0 To 5
		$Result[$i] = DllStructGetData($tDGEX, $i + 1)
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetDriveGeometryEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetDriveNumber($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $tSDN = DllStructCreate('dword;ulong;ulong')
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D1080, 'ptr', 0, _
			'dword', 0, 'struct*', $tSDN, 'dword', DllStructGetSize($tSDN), 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Local $Result[3]
	For $i = 0 To 2
		$Result[$i] = DllStructGetData($tSDN, $i + 1)
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetDriveNumber

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetDriveType($sDrive = '')
	Local $TypeOfDrive = 'str'
	If Not StringStripWS($sDrive, 3) Then
		$TypeOfDrive = 'ptr'
		$sDrive = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'uint', 'GetDriveType', $TypeOfDrive, $sDrive)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetDriveType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetFileAttributes($sFile)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetFileAttributesW', 'wstr', $sFile)
	If @error Or ($Ret[0] = 4294967295) Then Return SetError(@error, @extended, 0)
	; If $Ret[0] = 4294967295Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetFileAttributes

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetFileID($hFile)
	Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'int64*', 0, _
			'ulong', 8, 'uint', 6)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetFileID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetFileInformationByHandle($hFile)
	Local $tBHFI = DllStructCreate('dword;dword[2];dword[2];dword[2];dword;dword;dword;dword;dword;dword')
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetFileInformationByHandle', 'handle', $hFile, 'struct*', $tBHFI)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Local $Result[8]
	$Result[0] = DllStructGetData($tBHFI, 1)
	For $i = 1 To 3
		If DllStructGetData($tBHFI, $i + 1) Then
			$Result[$i] = DllStructCreate($tagFILETIME)
			_WinAPI_MoveMemory(DllStructGetPtr($Result[$i]), DllStructGetPtr($tBHFI, $i + 1), 8)
			; Return SetError(@error + 10, @extended, 0) ; cannot really occur
			; EndIf
		Else
			$Result[$i] = 0
		EndIf
	Next
	$Result[4] = DllStructGetData($tBHFI, 5)
	$Result[5] = __WinAPI_MakeQWord(DllStructGetData($tBHFI, 7), DllStructGetData($tBHFI, 6))
	$Result[6] = DllStructGetData($tBHFI, 8)
	$Result[7] = __WinAPI_MakeQWord(DllStructGetData($tBHFI, 9), DllStructGetData($tBHFI, 10))
	Return $Result
EndFunc   ;==>_WinAPI_GetFileInformationByHandle

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetFileInformationByHandleEx($hFile)
	Local $tFI = DllStructCreate($tagFILEINFO)
	Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'struct*', $tFI, _
			'ulong', DllStructGetSize($tFI), 'uint', 4)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return $tFI
EndFunc   ;==>_WinAPI_GetFileInformationByHandleEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetFilePointerEx($hFile)
	Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'int64*', 0, _
			'ulong', 8, 'uint', 14)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetFilePointerEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetFileSizeOnDisk($sFile)
	Local $Size = FileGetSize($sFile)
	If @error Then Return SetError(@error + 10, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetDiskFreeSpaceW', _
			'wstr', _WinAPI_PathStripToRoot(_WinAPI_GetFullPathName($sFile)), 'dword*', 0, 'dword*', 0, _
			'dword*', 0, 'dword*', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return Ceiling($Size / ($Ret[2] * $Ret[3])) * ($Ret[2] * $Ret[3])
EndFunc   ;==>_WinAPI_GetFileSizeOnDisk

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetFileTitle($sFile)
	Local $Ret = DllCall('comdlg32.dll', 'short', 'GetFileTitleW', 'wstr', $sFile, 'wstr', '', 'word', 4096)
	If @error Or $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetFileTitle

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetFileType($hFile)
	Local $Ret = DllCall('kernel32.dll ', 'dword', 'GetFileType', 'handle', $hFile)
	If @error Then Return SetError(@error, @extended, -1)
	Local $iLastError = _WinAPI_GetLastError()
	If Not $Ret[0] And $iLastError Then Return SetError(10, $iLastError, -1)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetFileType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetFinalPathNameByHandle($hFile)
	Local $tFNI = DllStructCreate('ulong;wchar[4096]')
	Local $tIOSB = DllStructCreate('ptr;ulong_ptr')
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwQueryInformationFile', 'handle', $hFile, 'struct*', $tIOSB, 'struct*', $tFNI, _
			'ulong', DllStructGetSize($tFNI), 'uint', 9)
	If @error Then Return SetError(@error, @extended, '')
	If $Ret[0] Then Return SetError(10, $Ret[0], '')
	Local $Length = DllStructGetData($tFNI, 1)
	If Not $Length Then Return SetError(12, 0, '')

	Return DllStructGetData(DllStructCreate('wchar[' & ($Length / 2) & ']', DllStructGetPtr($tFNI, 2)), 1)
EndFunc   ;==>_WinAPI_GetFinalPathNameByHandle

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetFinalPathNameByHandleEx($hFile, $iFlags = 0)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetFinalPathNameByHandleW', 'handle', $hFile, 'wstr', '', 'dword', 4096, _
			'dword', $iFlags)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetFinalPathNameByHandleEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetFullPathName($sFile)
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetFullPathNameW', 'wstr', $sFile, 'dword', 4096, 'wstr', '', 'ptr', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[3]
EndFunc   ;==>_WinAPI_GetFullPathName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetLogicalDrives()
	Local $Ret = DllCall('kernel32.dll', 'dword', 'GetLogicalDrives')
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_GetLogicalDrives

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetObjectID($sPath)
	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hFile = _WinAPI_CreateFileEx($sPath, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $tFOID = DllStructCreate('byte[16];byte[48]')
	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0009009C, 'ptr', 0, _
			'dword', 0, 'struct*', $tFOID, 'dword', DllStructGetSize($tFOID), 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Local $tGUID = DllStructCreate($tagGUID)
	_WinAPI_MoveMemory(DllStructGetPtr($tGUID), DllStructGetPtr($tFOID), 16)
	; Return SetError(3, 0, 0) ; cannot really occur
	; EndIf
	Return $tGUID
EndFunc   ;==>_WinAPI_GetObjectID

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetPEType($sFile)
	Local $tData = DllStructCreate('ushort[2]')
	Local $pData = DllStructGetPtr($tData)
	Local $tUInt = DllStructCreate('uint', $pData)

	Local $hFile = _WinAPI_CreateFileEx($sFile, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $Error = 0, $Val
	Do
		Local $Ret = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'ptr', $pData, 'dword', 2, 'dword*', 0, 'ptr', 0)
		If @error Or (Not $Ret[0]) Or ($Ret[4] <> 2) Then
			$Error = @error + 30
			ExitLoop
		EndIf
		$Val = DllStructGetData($tData, 1, 1)
		If $Val <> 0x00005A4D Then
			$Error = 3
			ExitLoop
		EndIf
		If Not _WinAPI_SetFilePointerEx($hFile, 0x0000003C) Then
			$Error = @error + 40
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'ptr', $pData, 'dword', 4, 'dword*', 0, 'ptr', 0)
		If @error Or (Not $Ret[0]) Or ($Ret[4] <> 4) Then
			$Error = @error + 50
			ExitLoop
		EndIf
		If Not _WinAPI_SetFilePointerEx($hFile, DllStructGetData($tUInt, 1)) Then
			$Error = @error + 60
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'ptr', $pData, 'dword', 4, 'dword*', 0, 'ptr', 0)
		If @error Or (Not $Ret[0]) Or ($Ret[4] <> 4) Then
			$Error = @error + 70
			ExitLoop
		EndIf
		$Val = DllStructGetData($tUInt, 1)
		If $Val <> 0x00004550 Then
			$Error = 4
			ExitLoop
		EndIf
		$Ret = DllCall('kernel32.dll', 'bool', 'ReadFile', 'handle', $hFile, 'ptr', $pData, 'dword', 2, 'dword*', 0, 'ptr', 0)
		If @error Or (Not $Ret[0]) Or ($Ret[4] <> 2) Then
			$Error = @error + 80
			ExitLoop
		EndIf
		$Val = DllStructGetData($tData, 1, 1)
	Until 1
	DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hFile)
	If $Error Then Return SetError($Error, 0, 0)

	Return $Val
EndFunc   ;==>_WinAPI_GetPEType

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetProfilesDirectory()
	Local $Ret = DllCall('userenv.dll', 'bool', 'GetProfilesDirectoryW', 'wstr', '', 'dword*', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return $Ret[1]
EndFunc   ;==>_WinAPI_GetProfilesDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetTempFileName($sPath, $sPrefix = '')
	Local $Ret = DllCall('kernel32.dll', 'uint', 'GetTempFileNameW', 'wstr', $sPath, 'wstr', $sPrefix, 'uint', 0, 'wstr', '')
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return $Ret[4]
EndFunc   ;==>_WinAPI_GetTempFileName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetVolumeInformation($sRoot = '')
	Local $TypeOfRoot = 'wstr'
	If Not StringStripWS($sRoot, 3) Then
		$TypeOfRoot = 'ptr'
		$sRoot = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetVolumeInformationW', $TypeOfRoot, $sRoot, 'wstr', '', 'dword', 4096, _
			'dword*', 0, 'dword*', 0, 'dword*', 0, 'wstr', '', 'dword', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Local $Result[5]
	For $i = 0 To 4
		Switch $i
			Case 0
				$Result[$i] = $Ret[2]
			Case Else
				$Result[$i] = $Ret[$i + 3]
		EndSwitch
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetVolumeInformation

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_GetVolumeInformationByHandle($hFile)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetVolumeInformationByHandleW', 'handle', $hFile, 'wstr', '', 'dword', 4096, _
			'dword*', 0, 'dword*', 0, 'dword*', 0, 'wstr', '', 'dword', 4096)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, 0)

	Local $Result[5]
	For $i = 0 To 4
		Switch $i
			Case 0
				$Result[$i] = $Ret[2]
			Case Else
				$Result[$i] = $Ret[$i + 3]
		EndSwitch
	Next
	Return $Result
EndFunc   ;==>_WinAPI_GetVolumeInformationByHandle

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_GetVolumeNameForVolumeMountPoint($sPath)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'GetVolumeNameForVolumeMountPointW', 'wstr', $sPath, 'wstr', '', 'dword', 80)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Return $Ret[2]
EndFunc   ;==>_WinAPI_GetVolumeNameForVolumeMountPoint

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......:
; ===============================================================================================================================
Func _WinAPI_IOCTL($iDeviceType, $iFunction, $iMethod, $iAccess)
	Return BitOR(BitShift($iDeviceType, -16), BitShift($iAccess, -14), BitShift($iFunction, -2), $iMethod)
EndFunc   ;==>_WinAPI_IOCTL

; #FUNCTION# ====================================================================================================================
; Author.........: G.Sandler (CreatoR)
; Modified.......: Yashied, jpm
; ===============================================================================================================================
Func _WinAPI_IsDoorOpen($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, False)

	Local $tSPT = DllStructCreate('ushort Length;byte ScsiStatus;byte PathId;byte TargetId;byte Lun;byte CdbLength;byte SenseInfoLength;byte DataIn;byte Alignment[3];ulong DataTransferLength;ulong TimeOutValue;ulong_ptr DataBufferOffset;ulong SenseInfoOffset;byte Cdb[16]' & __Iif(@AutoItX64, ';byte[4]', '') & ';byte Hdr[8]')
	Local $tCDB = DllStructCreate('byte;byte;byte[6];byte[2];byte;byte;byte[4]', DllStructGetPtr($tSPT, 'Cdb'))
	Local $tHDR = DllStructCreate('byte;byte;byte[3];byte;byte[2]', DllStructGetPtr($tSPT, 'Hdr'))
	Local $Size = DllStructGetPtr($tSPT, 'Hdr') - DllStructGetPtr($tSPT)

	DllStructSetData($tSPT, 'Length', $Size)
	DllStructSetData($tSPT, 'ScsiStatus', 0)
	DllStructSetData($tSPT, 'PathId', 0)
	DllStructSetData($tSPT, 'TargetId', 0)
	DllStructSetData($tSPT, 'Lun', 0)
	DllStructSetData($tSPT, 'CdbLength', 12)
	DllStructSetData($tSPT, 'SenseInfoLength', 0)
	DllStructSetData($tSPT, 'DataIn', 1)
	DllStructSetData($tSPT, 'DataTransferLength', 8)
	DllStructSetData($tSPT, 'TimeOutValue', 86400)
	DllStructSetData($tSPT, 'DataBufferOffset', $Size)
	DllStructSetData($tSPT, 'SenseInfoOffset', 0)

	DllStructSetData($tCDB, 1, 0xBD)
	DllStructSetData($tCDB, 2, 0)
	DllStructSetData($tCDB, 4, 0, 1)
	DllStructSetData($tCDB, 4, 8, 2)
	DllStructSetData($tCDB, 5, 0)
	DllStructSetData($tCDB, 6, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0004D004, 'struct*', $tSPT, _
			'dword', $Size, 'struct*', $tSPT, 'dword', DllStructGetSize($tSPT), 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, False)

	Return (BitAND(DllStructGetData($tHDR, 2), 0x10) = 0x10)
EndFunc   ;==>_WinAPI_IsDoorOpen

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_IsPathShared($sPath)
	If Not __DLL('ntshrui.dll') Then Return SetError(103, 0, 0)

	Local $Ret = DllCall('ntshrui.dll', 'bool', 'IsPathSharedW', 'wstr', _WinAPI_PathRemoveBackslash($sPath), 'int', 1)
	If @error Then Return SetError(@error, @extended, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsPathShared

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: JPM
; ===============================================================================================================================
Func _WinAPI_IsWritable($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, False)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x00070024, 'ptr', 0, 'dword', 0, _
			'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
	Local Const $ERROR_WRITE_PROTECT = 19 ; The media is write protected.
	If __CheckErrorCloseHandle($Ret, $hFile, 1) <> 10 And @extended <> $ERROR_WRITE_PROTECT Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_IsWritable

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_LoadMedia($sDrive)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READ, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, False)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D480C, 'ptr', 0, 'dword', 0, _
			'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_LoadMedia

; #FUNCTION# ====================================================================================================================
; Author.........: Psandu.ro
; Modified.......: Yashied, jpm
; ===============================================================================================================================
Func _WinAPI_LockDevice($sDrive, $fLock)
	Local $hFile = _WinAPI_CreateFileEx('\\.\' & $sDrive, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE)
	If @error Then Return SetError(@error + 20, @extended, False)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x002D4804, 'boolean*', $fLock, _
			'dword', 1, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_LockDevice

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_LockFile($hFile, $iOffset, $iLength)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'LockFile', 'handle', $hFile, _
			'dword', _WinAPI_LoDWord($iOffset), 'dword', _WinAPI_HiDWord($iOffset), _
			'dword', _WinAPI_LoDWord($iLength), 'dword', _WinAPI_HiDWord($iLength))
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_LockFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_MapViewOfFile($hMapping, $iOffset = 0, $iBytes = 0, $iAccess = 0x0006)
	Local $Ret = DllCall('kernel32.dll', 'ptr', 'MapViewOfFile', 'handle', $hMapping, 'dword', $iAccess, _
			'dword', _WinAPI_HiDWord($iOffset), 'dword', _WinAPI_LoDWord($iOffset), 'ulong_ptr', $iBytes)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_MapViewOfFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_MoveFileEx($sExistingFile, $sNewFile, $iFlags = 0, $pProgressProc = 0, $pData = 0)
	Local $TypeOfNewFile = 'wstr'
	If Not StringStripWS($sNewFile, 3) Then
		$TypeOfNewFile = 'ptr'
		$sNewFile = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'bool', 'MoveFileWithProgressW', 'wstr', $sExistingFile, $TypeOfNewFile, $sNewFile, _
			'ptr', $pProgressProc, 'long_ptr', $pData, 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_MoveFileEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_OpenFileById($hFile, $ID, $iAccess = 0, $iShare = 0, $iFlags = 0)
	Local $tFIDD = DllStructCreate('dword;uint;int64;int64')
	Local $hObj, $Ret, $Type, $Error = 0

	Select
		Case IsString($ID)
			$Ret = DllCall('ole32.dll', 'long', 'CLSIDFromString', 'wstr', $ID, 'ptr', DllStructGetPtr($tFIDD, 3))
			If @error Or $Ret[0] Then
				Return SetError(@error + 30, 0, 0)
			EndIf
			$Type = 1
		Case IsDllStruct($ID)
			If Not _WinAPI_MoveMemory(DllStructGetPtr($tFIDD, 3), DllStructGetPtr($ID), 16) Then
				Return SetError(@error + 40, 0, 0)
			EndIf
			$Type = 1
		Case Else
			DllStructSetData($tFIDD, 3, $ID)
			$Type = 0
	EndSelect
	DllStructSetData($tFIDD, 1, DllStructGetSize($tFIDD))
	DllStructSetData($tFIDD, 2, $Type)
	If IsString($hFile) Then
		; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
		$hObj = _WinAPI_CreateFileEx($hFile, $OPEN_EXISTING, 0, $FILE_SHARE_READWRITE, 0x02000000)
		If @error Then Return SetError(@error + 20, @extended, 0)
	Else
		$hObj = $hFile
	EndIf
	$Ret = DllCall('kernel32.dll', 'handle', 'OpenFileById', 'handle', $hObj, 'struct*', $tFIDD, 'dword', $iAccess, _
			'dword', $iShare, 'ptr', 0, 'dword', $iFlags)
	If @error Or ($Ret[0] = Ptr(-1)) Then $Error = @error + 10 ; $INVALID_HANDLE_VALUE
	If IsString($hFile) Then
		DllCall("kernel32.dll", "bool", "CloseHandle", "handle", $hObj)
	EndIf
	If $Error Then Return SetError($Error, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_OpenFileById

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_OpenFileMapping($sName, $iAccess = 0x0006, $fInherit = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'OpenFileMappingW', 'dword', $iAccess, 'bool', $fInherit, 'wstr', $sName)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_OpenFileMapping

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_PathIsDirectoryEmpty($sPath)
	Local $Ret = DllCall('shlwapi.dll', 'bool', 'PathIsDirectoryEmptyW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_PathIsDirectoryEmpty

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_QueryDosDevice($sDevice)
	Local $TypeOfDevice = 'wstr'
	If Not StringStripWS($sDevice, 3) Then
		$TypeOfDevice = 'ptr'
		$sDevice = 0
	EndIf

	Local $tData = DllStructCreate('wchar[16384]')
	Local $Ret = DllCall('kernel32.dll', 'dword', 'QueryDosDeviceW', $TypeOfDevice, $sDevice, 'struct*', $tData, 'dword', 16384)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')

	Local $Result = _WinAPI_StructToArray($tData)
	If IsString($sDevice) Then
		$Result = $Result[1]
	EndIf
	Return $Result
EndFunc   ;==>_WinAPI_QueryDosDevice

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_ReadDirectoryChanges($hDirectory, $iFilter, $pBuffer, $iLength, $fSubtree = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'ReadDirectoryChangesW', 'handle', $hDirectory, 'ptr', $pBuffer, _
			'dword', $iLength - Mod($iLength, 4), 'bool', $fSubtree, 'dword', $iFilter, 'dword*', 0, 'ptr', 0, 'ptr', 0)
	If @error Or Not $Ret[0] Or (Not $Ret[6]) Then Return SetError(@error + 10, @extended, 0)

	Local $aData[101][2] = [[0]]
	Local $tFNI, $Length = 0, $Offset = 0
	Do
		$Length += $Offset
		$tFNI = DllStructCreate('dword;dword;dword;wchar[' & (DllStructGetData(DllStructCreate('dword', $pBuffer + $Length + 8), 1) / 2) & ']', $pBuffer + $Length)
		__Inc($aData)
		$aData[$aData[0][0]][0] = DllStructGetData($tFNI, 4)
		$aData[$aData[0][0]][1] = DllStructGetData($tFNI, 2)
		$Offset = DllStructGetData($tFNI, 1)
	Until Not $Offset
	__Inc($aData, -1)
	Return $aData
EndFunc   ;==>_WinAPI_ReadDirectoryChanges

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_RemoveDirectory($sPath)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'RemoveDirectoryW', 'wstr', $sPath)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_RemoveDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ReOpenFile($hFile, $iAccess, $iShare, $iFlags = 0)
	Local $Ret = DllCall('kernel32.dll', 'handle', 'ReOpenFile', 'handle', $hFile, 'dword', $iAccess, 'dword', $iShare, 'dword', $iFlags)
	If @error Or ($Ret[0] = Ptr(-1)) Then Return SetError(@error, @extended, 0) ; $INVALID_HANDLE_VALUE
	; If $Ret[0] = Ptr(-1) Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ReOpenFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_ReplaceFile($sReplacedFile, $sReplacementFile, $sBackupFile = '', $iFlags = 0)
	Local $TypeOfBackupFile = 'wstr'
	If Not StringStripWS($sBackupFile, 3) Then
		$TypeOfBackupFile = 'ptr'
		$sBackupFile = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'bool', 'ReplaceFileW', 'wstr', $sReplacedFile, 'wstr', $sReplacementFile, _
			$TypeOfBackupFile, $sBackupFile, 'dword', $iFlags, 'ptr', 0, 'ptr', 0)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_ReplaceFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SearchPath($sFile, $sPath = '')
	Local $TypeOfPath = 'wstr'
	If Not StringStripWS($sPath, 3) Then
		$TypeOfPath = 'ptr'
		$sPath = 0
	EndIf

	Local $Ret = DllCall('kernel32.dll', 'dword', 'SearchPathW', $TypeOfPath, $sPath, 'wstr', $sFile, 'ptr', 0, 'dword', 4096, 'wstr', '', 'ptr', 0)
	If @error Or Not $Ret[0] Then Return SetError(@error + 10, @extended, '')
	; If Not $Ret[0] Then Return SetError(1000, 0, '')

	Return $Ret[5]
EndFunc   ;==>_WinAPI_SearchPath

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetCompression($sPath, $iCompression)
	; Local Const $FILE_FLAG_BACKUP_SEMANTICS = 0x02000000
	Local $hFile = _WinAPI_CreateFileEx($sPath, $OPEN_EXISTING, $GENERIC_READWRITE, $FILE_SHARE_READWRITE, 0x02000000)
	If @error Then Return SetError(@error + 20, @extended, 0)

	Local $Ret = DllCall('kernel32.dll', 'bool', 'DeviceIoControl', 'handle', $hFile, 'dword', 0x0009C040, _
			'ushort*', $iCompression, 'dword', 2, 'ptr', 0, 'dword', 0, 'dword*', 0, 'ptr', 0)
	If __CheckErrorCloseHandle($Ret, $hFile) Then Return SetError(@error, @extended, 0)

	Return 1
EndFunc   ;==>_WinAPI_SetCompression

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetCurrentDirectory($sDir)
	Local $Ret = DllCall('kernel32.dll', 'int', 'SetCurrentDirectoryW', 'wstr', $sDir)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetCurrentDirectory

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetFileAttributes($sFile, $iAttributes)
	Local $Ret = DllCall('kernel32.dll', 'int', 'SetFileAttributesW', 'wstr', $sFile, 'dword', $iAttributes)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetFileAttributes

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SetFileInformationByHandleEx($hFile, $tFILEINFO)
	Local $Ret = DllCall('ntdll.dll', 'long', 'ZwSetInformationFile', 'handle', $hFile, 'struct*', $tFILEINFO, _
			'struct*', $tFILEINFO, 'ulong', DllStructGetSize($tFILEINFO), 'uint', 4)
	If @error Then Return SetError(@error, @extended, 0)
	If $Ret[0] Then Return SetError(10, $Ret[0], 0)

	Return 1
EndFunc   ;==>_WinAPI_SetFileInformationByHandleEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetFilePointerEx($hFile, $iPos, $iMethod = 0)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetFilePointerEx', 'handle', $hFile, 'int64', $iPos, 'int64*', 0, 'dword', $iMethod)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetFilePointerEx

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetFileShortName($hFile, $sShortName)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetFileShortNameW', 'handle', $hFile, 'wstr', $sShortName)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetFileShortName

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetFileValidData($hFile, $iLength)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetFileValidData', 'ptr', $hFile, 'int64', $iLength)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetFileValidData

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetSearchPathMode($iFlags)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetSearchPathMode', 'dword', $iFlags)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetSearchPathMode

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_SetVolumeMountPoint($sPath, $GUID)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'SetVolumeMountPointW', 'wstr', $sPath, 'wstr', $GUID)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SetVolumeMountPoint

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: jpm
; ===============================================================================================================================
Func _WinAPI_SfcIsFileProtected($sFile)
	If Not __DLL('sfc.dll') Then Return SetError(103, 0, False)

	Local $Ret = DllCall('sfc.dll', 'bool', 'SfcIsFileProtected', 'handle', 0, 'wstr', $sFile)
	If @error Then Return SetError(@error, @extended, False)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_SfcIsFileProtected

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_UnlockFile($hFile, $iOffset, $iLength)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'UnlockFile', 'handle', $hFile, _
			'dword', _WinAPI_LoDWord($iOffset), 'dword', _WinAPI_HiDWord($iOffset), _
			'dword', _WinAPI_LoDWord($iLength), 'dword', _WinAPI_HiDWord($iLength))
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_UnlockFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_UnmapViewOfFile($pAddress)
	Local $Ret = DllCall('kernel32.dll', 'bool', 'UnmapViewOfFile', 'ptr', $pAddress)
	If @error Then Return SetError(@error, @extended, False)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_UnmapViewOfFile

; #FUNCTION# ====================================================================================================================
; Author.........: Yashied
; Modified.......: Jpm
; ===============================================================================================================================
Func _WinAPI_Wow64EnableWow64FsRedirection($fEnable)
	Local $Ret = DllCall('kernel32.dll', 'boolean', 'Wow64EnableWow64FsRedirection', 'boolean', $fEnable)
	If @error Then Return SetError(@error, @extended, 0)
	; If Not $Ret[0] Then Return SetError(1000, 0, 0)

	Return $Ret[0]
EndFunc   ;==>_WinAPI_Wow64EnableWow64FsRedirection

#endregion Public Functions

#region Internal Functions

Func __WinAPI_MakeQWord($LoDWORD, $HiDWORD)
	Local $tInt64 = DllStructCreate("uint64")
	Local $tDwords = DllStructCreate("dword;dword", DllStructGetPtr($tInt64))
	DllStructSetData($tDwords, 1, $LoDWORD)
	DllStructSetData($tDwords, 2, $HiDWORD)

	Return DllStructGetData($tInt64, 1)
EndFunc   ;==>__WinAPI_MakeQWord

#endregion Internal Functions
