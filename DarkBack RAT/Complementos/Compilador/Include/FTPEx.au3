#include-once

#include "WinAPIError.au3"
#include "FileConstants.au3"
#include "StructureConstants.au3"
#include "Date.au3"

; #INDEX# =======================================================================================================================
; Title .........: FTP
; AutoIt Version : 3.3.7.20++
; Language ......: English
; Description ...: Functions that assist with FTP.
; Author(s) .....: Wouter, Prog@ndy, jpm, Beege
; Notes .........: based on FTP_Ex.au3 16/02/2009 http://www.autoit.de/index.php?page=Thread&postID=48393
; Dll(s) ........: wininet.dll
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
Global $__ghWinInet_FTP = -1
Global $__ghCallback_FTP, $__gbCallback_Set = False
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $INTERNET_OPEN_TYPE_DIRECT = 1
Global Const $INTERNET_OPEN_TYPE_PRECONFIG = 0
Global Const $INTERNET_OPEN_TYPE_PRECONFIG_WITH_NO_AUTOPROXY = 4
Global Const $INTERNET_OPEN_TYPE_PROXY = 3

Global Const $FTP_TRANSFER_TYPE_UNKNOWN = 0 ;Defaults to FTP_TRANSFER_TYPE_BINARY.
Global Const $FTP_TRANSFER_TYPE_ASCII = 1 ;Type A transfer method. Control and formatting information is converted to local equivalents.
Global Const $FTP_TRANSFER_TYPE_BINARY = 2 ;Type I transfer method. The file is transferred exactly as it exists with no changes.

Global Const $INTERNET_FLAG_PASSIVE = 0x08000000
Global Const $INTERNET_FLAG_TRANSFER_ASCII = $FTP_TRANSFER_TYPE_ASCII
Global Const $INTERNET_FLAG_TRANSFER_BINARY = $FTP_TRANSFER_TYPE_BINARY

Global Const $INTERNET_DEFAULT_FTP_PORT = 21
Global Const $INTERNET_SERVICE_FTP = 1

; _FTP_FindFileFirst flags
Global Const $INTERNET_FLAG_HYPERLINK = 0x00000400
Global Const $INTERNET_FLAG_NEED_FILE = 0x00000010
Global Const $INTERNET_FLAG_NO_CACHE_WRITE = 0x04000000
Global Const $INTERNET_FLAG_RELOAD = 0x80000000
Global Const $INTERNET_FLAG_RESYNCHRONIZE = 0x00000800

; _FTP_Open flags
Global Const $INTERNET_FLAG_ASYNC = 0x10000000
Global Const $INTERNET_FLAG_FROM_CACHE = 0x01000000
Global Const $INTERNET_FLAG_OFFLINE = $INTERNET_FLAG_FROM_CACHE

; _FTP_...() Status
Global Const $INTERNET_STATUS_CLOSING_CONNECTION = 50
Global Const $INTERNET_STATUS_CONNECTION_CLOSED = 51
Global Const $INTERNET_STATUS_CONNECTING_TO_SERVER = 20
Global Const $INTERNET_STATUS_CONNECTED_TO_SERVER = 21
Global Const $INTERNET_STATUS_CTL_RESPONSE_RECEIVED = 42
Global Const $INTERNET_STATUS_INTERMEDIATE_RESPONSE = 120
Global Const $INTERNET_STATUS_PREFETCH = 43
Global Const $INTERNET_STATUS_REDIRECT = 110
Global Const $INTERNET_STATUS_REQUEST_COMPLETE = 100
Global Const $INTERNET_STATUS_HANDLE_CREATED = 60
Global Const $INTERNET_STATUS_HANDLE_CLOSING = 70
Global Const $INTERNET_STATUS_SENDING_REQUEST = 30
Global Const $INTERNET_STATUS_REQUEST_SENT = 31
Global Const $INTERNET_STATUS_RECEIVING_RESPONSE = 40
Global Const $INTERNET_STATUS_RESPONSE_RECEIVED = 41
Global Const $INTERNET_STATUS_STATE_CHANGE = 200
Global Const $INTERNET_STATUS_RESOLVING_NAME = 10
Global Const $INTERNET_STATUS_NAME_RESOLVED = 11
; ===============================================================================================================================

; #OLD_FUNCTIONS#================================================================================================================
; Old Function/Name                     ; --> New Function/Name/Replacement(s)
;
; deprecated functions will no longer work, no parameter change just renaming unless stated
; _FTP_DownloadProgress					; --> _FTP_ProgressDownload
; _FTP_UploadProgress					; --> _FTP_ProgressUpload
; _FTPClose								; --> _FTP_Close
; _FTPCloseFile							; --> _FTP_FileClose
; _FTPCommand							; --> _FTP_Command
; _FTPConnect							; --> _FTP_Connect
; _FTPDelDir								; --> _FTP_DirDelete
; _FTPDelFile							; --> _FTP_FileDelete
; _FTPFileFindClose						; --> _FTP_FindFileClose		; $l_DllStruct suppression
; _FTPFileFindFirst						; --> _FTP_FindFileFirst		; $l_DllStruct suppression
; _FTPFileFindNext						; --> _FTP_FindFileNext			; $l_DllStruct suppression
; _FTPFileSizeLoHi						; --> _FTP_FileSizeLoHi
; _FTPFilesListto2DArray					; --> _FTP_ListToArray2D
; _FTPFilesListtoArray					; --> _FTP_ListToArray
; _FTPFilesListtoArrayEx					; --> _FTP_ListToArrayEx		; $b_Fmt added
; _FTPFileTimeLoHi						; --> _WinAPI_MakeQWord			; parameter inversion
; _FTPFileTimeLoHiToStr					; --> _FTP_FileTimeLoHiToStr	; new optional parameter for type of format
; _FTPGetCurrentDir						; --> _FTP_DirGetCurrent
; _FTPGetFile							; --> _FTP_FileGet
; _FTPGetFileSize						; --> _FTP_FileGetSize
; _FTPMakeDir							; --> _FTP_DirCreate
; _FTPOpen								; --> _FTP_Open
; _FTPOpenFile							; --> _FTP_FileOpen
; _FTPPutFile							; --> _FTP_FilePut
; _FTPPutFolderContents					; --> _FTP_DirPutContents
; _FTPReadFile							; --> _FTP_FileRead
; _FTPRenameFile							; --> _FTP_FileRename
; _FtpSetCurrentDir						; --> _FTP_DirSetCurrent
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _FTP_Close
; _FTP_Command
; _FTP_Connect
; _FTP_DecodeInternetStatus
; _FTP_DirCreate
; _FTP_DirDelete
; _FTP_DirGetCurrent
; _FTP_DirPutContents
; _FTP_DirSetCurrent
; _FTP_FileClose
; _FTP_FileDelete
; _FTP_FileGet
; _FTP_FileGetSize
; _FTP_FileOpen
; _FTP_FilePut
; _FTP_FileRead
; _FTP_FileRename
; _FTP_FileTimeLoHiToStr
; _FTP_FindFileClose
; _FTP_FindFileFirst
; _FTP_FindFileNext
; _FTP_GetLastResponseInfo
; _FTP_ListToArray
; _FTP_ListToArray2D
; _FTP_ListToArrayEx
; _FTP_Open
; _FTP_ProgressDownload
; _FTP_ProgressUpload
; _FTP_SetStatusCallback
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
; __FTP_ListToArray
; __FTP_Init
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......: Beege
; ===============================================================================================================================
Func _FTP_Close($l_InternetSession)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $l_InternetSession)
	If @error Or $ai_InternetCloseHandle[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	If $__gbCallback_Set = True Then DllCallbackFree($__ghCallback_FTP)

	Return $ai_InternetCloseHandle[0]
EndFunc   ;==>_FTP_Close

; #FUNCTION# ====================================================================================================================
; Author ........: Bill Mezian
; Modified.......:
; ===============================================================================================================================
Func _FTP_Command($l_FTPSession, $s_FTPCommand, $l_Flags = $FTP_TRANSFER_TYPE_ASCII, $l_ExpectResponse = 0, $l_Context = 0)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPCommand = DllCall($__ghWinInet_FTP, 'bool', 'FtpCommandW', 'handle', $l_FTPSession, 'bool', $l_ExpectResponse, 'dword', $l_Flags, 'wstr', $s_FTPCommand, 'dword_ptr', $l_Context, 'ptr*', 0)
	If @error Or $ai_FTPCommand[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return SetError(0, $ai_FTPCommand[6], $ai_FTPCommand[0])
EndFunc   ;==>_FTP_Command

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_Connect($l_InternetSession, $s_ServerName, $s_Username, $s_Password, $i_Passive = 0, $i_ServerPort = 0, $l_Service = $INTERNET_SERVICE_FTP, $l_Flags = 0, $l_Context = 0)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	If $i_Passive == 1 Then $l_Flags = BitOR($l_Flags, $INTERNET_FLAG_PASSIVE)
	Local $ai_InternetConnect = DllCall($__ghWinInet_FTP, 'hwnd', 'InternetConnectW', 'handle', $l_InternetSession, 'wstr', $s_ServerName, 'ushort', $i_ServerPort, 'wstr', $s_Username, 'wstr', $s_Password, 'dword', $l_Service, 'dword', $l_Flags, 'dword_ptr', $l_Context)
	If @error Or $ai_InternetConnect[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_InternetConnect[0]
EndFunc   ;==>_FTP_Connect

; #FUNCTION# ====================================================================================================================
; Author ........: Beege
; Modified.......: jpm
; ===============================================================================================================================
Func _FTP_DecodeInternetStatus($dwInternetStatus)
	Switch $dwInternetStatus
		Case $INTERNET_STATUS_CLOSING_CONNECTION
			Return 'Closing connection ...'

		Case $INTERNET_STATUS_CONNECTION_CLOSED
			Return 'Connection closed'

		Case $INTERNET_STATUS_CONNECTING_TO_SERVER
			Return 'Connecting to server ...'

		Case $INTERNET_STATUS_CONNECTED_TO_SERVER
			Return 'Connected to server'

		Case $INTERNET_STATUS_CTL_RESPONSE_RECEIVED
			Return 'CTL esponse received'

		Case $INTERNET_STATUS_INTERMEDIATE_RESPONSE
			Return 'Intermediate response'

		Case $INTERNET_STATUS_PREFETCH
			Return 'Prefetch'

		Case $INTERNET_STATUS_REDIRECT
			Return 'Redirect'

		Case $INTERNET_STATUS_REQUEST_COMPLETE
			Return 'Request complete'

		Case $INTERNET_STATUS_HANDLE_CREATED
			Return 'Handle created'

		Case $INTERNET_STATUS_HANDLE_CLOSING
			Return 'Handle closing ...'

		Case $INTERNET_STATUS_SENDING_REQUEST
			Return 'Sending request ...'

		Case $INTERNET_STATUS_REQUEST_SENT
			Return 'Request sent'

		Case $INTERNET_STATUS_RECEIVING_RESPONSE
			Return 'Receiving response ...'

		Case $INTERNET_STATUS_RESPONSE_RECEIVED
			Return 'Response received'

		Case $INTERNET_STATUS_STATE_CHANGE
			Return 'State change'

		Case $INTERNET_STATUS_RESOLVING_NAME
			Return 'Resolving name ...'

		Case $INTERNET_STATUS_NAME_RESOLVED
			Return 'Name resolved'
		Case Else
			Return 'UNKNOWN status = ' & $dwInternetStatus
	EndSwitch
EndFunc   ;==>_FTP_DecodeInternetStatus

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_DirCreate($l_FTPSession, $s_Remote)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPMakeDir = DllCall($__ghWinInet_FTP, 'bool', 'FtpCreateDirectoryW', 'handle', $l_FTPSession, 'wstr', $s_Remote)
	If @error Or $ai_FTPMakeDir[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPMakeDir[0]
EndFunc   ;==>_FTP_DirCreate

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_DirDelete($l_FTPSession, $s_Remote)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPDelDir = DllCall($__ghWinInet_FTP, 'bool', 'FtpRemoveDirectoryW', 'handle', $l_FTPSession, 'wstr', $s_Remote)
	If @error Or $ai_FTPDelDir[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPDelDir[0]
EndFunc   ;==>_FTP_DirDelete

; #FUNCTION# ====================================================================================================================
; Author ........: Beast
; Modified.......:
; ===============================================================================================================================
Func _FTP_DirGetCurrent($l_FTPSession)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPGetCurrentDir = DllCall($__ghWinInet_FTP, 'bool', 'FtpGetCurrentDirectoryW', 'handle', $l_FTPSession, 'wstr', "", 'dword*', 260)
	If @error Or $ai_FTPGetCurrentDir[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPGetCurrentDir[2]
EndFunc   ;==>_FTP_DirGetCurrent

; #FUNCTION# ====================================================================================================================
; Author ........: Stumpii
; Modified.......:
; ===============================================================================================================================
Func _FTP_DirPutContents($l_InternetSession, $s_LocalFolder, $s_RemoteFolder, $b_RecursivePut, $l_Context = 0)
	If StringRight($s_LocalFolder, 1) == "\" Then $s_LocalFolder = StringTrimRight($s_LocalFolder, 1)
	; Shows the filenames of all files in the current directory.
	Local $search = FileFindFirstFile($s_LocalFolder & "\*.*")

	; Check if the search was successful
	If $search = -1 Then Return SetError(1, 0, 0)

	Local $File
	While 1
		$File = FileFindNextFile($search)
		If @error Then ExitLoop
		If StringInStr(FileGetAttrib($s_LocalFolder & "\" & $File), "D") Then
			_FTP_DirCreate($l_InternetSession, $s_RemoteFolder & "/" & $File)
			If $b_RecursivePut Then
				_FTP_DirPutContents($l_InternetSession, $s_LocalFolder & "\" & $File, $s_RemoteFolder & "/" & $File, $b_RecursivePut, $l_Context)
			EndIf
		Else
			_FTP_FilePut($l_InternetSession, $s_LocalFolder & "\" & $File, $s_RemoteFolder & "/" & $File, 0, $l_Context)
		EndIf
	WEnd

	; Close the search handle
	FileClose($search)
	Return 1
EndFunc   ;==>_FTP_DirPutContents

; #FUNCTION# ====================================================================================================================
; Author ........: Beast
; Modified.......:
; ===============================================================================================================================
Func _FTP_DirSetCurrent($l_FTPSession, $s_Remote)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPSetCurrentDir = DllCall($__ghWinInet_FTP, 'bool', 'FtpSetCurrentDirectoryW', 'handle', $l_FTPSession, 'wstr', $s_Remote)
	If @error Or $ai_FTPSetCurrentDir[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPSetCurrentDir[0]
EndFunc   ;==>_FTP_DirSetCurrent

; #FUNCTION# ====================================================================================================================
; Author ........: joeyb1275
; Modified.......: Prog@ndy
; ===============================================================================================================================
Func _FTP_FileClose($l_InternetSession)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $l_InternetSession)
	If @error Or $ai_InternetCloseHandle[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_InternetCloseHandle[0]
EndFunc   ;==>_FTP_FileClose

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_FileDelete($l_FTPSession, $s_RemoteFile)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPPutFile = DllCall($__ghWinInet_FTP, 'bool', 'FtpDeleteFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile)
	If @error Or $ai_FTPPutFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPPutFile[0]
EndFunc   ;==>_FTP_FileDelete

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_FileGet($l_FTPSession, $s_RemoteFile, $s_LocalFile, $fFailIfExists = False, $dwFlagsAndAttributes = 0, $l_Flags = $FTP_TRANSFER_TYPE_UNKNOWN, $l_Context = 0)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPGetFile = DllCall($__ghWinInet_FTP, 'bool', 'FtpGetFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile, 'wstr', $s_LocalFile, 'bool', $fFailIfExists, 'dword', $dwFlagsAndAttributes, 'dword', $l_Flags, 'dword_ptr', $l_Context)
	If @error Or $ai_FTPGetFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPGetFile[0]
EndFunc   ;==>_FTP_FileGet

; #FUNCTION# ====================================================================================================================
; Author ........: Joachim de Koning
; Modified.......: jpm
; ===============================================================================================================================
Func _FTP_FileGetSize($l_FTPSession, $s_FileName)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPGetSizeHandle = DllCall($__ghWinInet_FTP, 'handle', 'FtpOpenFileW', 'handle', $l_FTPSession, 'wstr', $s_FileName, 'dword', $GENERIC_READ, 'dword', $INTERNET_FLAG_NO_CACHE_WRITE + $INTERNET_FLAG_TRANSFER_BINARY, 'dword_ptr', 0)
	If @error Or $ai_FTPGetSizeHandle[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Local $ai_FTPGetFileSize = DllCall($__ghWinInet_FTP, 'dword', 'FtpGetFileSize', 'handle', $ai_FTPGetSizeHandle[0], 'dword*', 0)
	If @error Or $ai_FTPGetFileSize[0] = 0 Then
		Local $lasterror = _WinAPI_GetLastError()
		DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_FTPGetSizeHandle[0])
		; No need to test @error.

		Return SetError(-1, $lasterror, 0)
	EndIf

	DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_FTPGetSizeHandle[0])
	; No need to test @error.

	Return _WinAPI_MakeQWord($ai_FTPGetFileSize[0], $ai_FTPGetFileSize[2])
EndFunc   ;==>_FTP_FileGetSize

; #FUNCTION# ====================================================================================================================
; Author ........: joeyb1275
; Modified.......: Prog@ndy
; ===============================================================================================================================
Func _FTP_FileOpen($hConnect, $lpszFileName, $dwAccess = $GENERIC_READ, $dwFlags = $INTERNET_FLAG_TRANSFER_BINARY, $dwContext = 0)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_ftpopenfile = DllCall($__ghWinInet_FTP, 'handle', 'FtpOpenFileW', 'handle', $hConnect, 'wstr', $lpszFileName, 'dword', $dwAccess, 'dword', $dwFlags, 'dword_ptr', $dwContext)
	If @error Or $ai_ftpopenfile[0] == 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_ftpopenfile[0]
EndFunc   ;==>_FTP_FileOpen

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_FilePut($l_FTPSession, $s_LocalFile, $s_RemoteFile, $l_Flags = 0, $l_Context = 0)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPPutFile = DllCall($__ghWinInet_FTP, 'bool', 'FtpPutFileW', 'handle', $l_FTPSession, 'wstr', $s_LocalFile, 'wstr', $s_RemoteFile, 'dword', $l_Flags, 'dword_ptr', $l_Context)
	If @error Or $ai_FTPPutFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPPutFile[0]
EndFunc   ;==>_FTP_FilePut

; #FUNCTION# ====================================================================================================================
; Author ........: joeyb1275
; Modified.......: Prog@ndy
; ===============================================================================================================================
Func _FTP_FileRead($h_File, $dwNumberOfBytesToRead)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $lpBuffer = DllStructCreate("byte[" & $dwNumberOfBytesToRead & "]")

	Local $ai_FTPReadFile = DllCall($__ghWinInet_FTP, 'bool', 'InternetReadFile', 'handle', $h_File, 'struct*', $lpBuffer, 'dword', $dwNumberOfBytesToRead, 'dword*', 0) ;LPDWORD lpdwNumberOfBytesRead
	If @error Then Return SetError(1, _WinAPI_GetLastError(), 0)

	Local $lpdwNumberOfBytesRead = $ai_FTPReadFile[4]
	If $lpdwNumberOfBytesRead == 0 And $ai_FTPReadFile[0] == 1 Then
		Return SetError(-1, 0, 0)
	ElseIf $ai_FTPReadFile[0] == 0 Then
		Return SetError(2, _WinAPI_GetLastError(), 0)
	EndIf

	Local $s_FileRead
	If $dwNumberOfBytesToRead > $lpdwNumberOfBytesRead Then
		$s_FileRead = BinaryMid(DllStructGetData($lpBuffer, 1), 1, $lpdwNumberOfBytesRead) ;index is omitted so the entire array is written into $s_FileRead as a BinaryString
	Else
		$s_FileRead = DllStructGetData($lpBuffer, 1) ;index is omitted so the entire array is written into $s_FileRead as a BinaryString
	EndIf

	Return SetError(0, $lpdwNumberOfBytesRead, $s_FileRead)
EndFunc   ;==>_FTP_FileRead

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_FileRename($l_FTPSession, $s_Existing, $s_New)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPRenameFile = DllCall($__ghWinInet_FTP, 'bool', 'FtpRenameFileW', 'handle', $l_FTPSession, 'wstr', $s_Existing, 'wstr', $s_New)
	If @error Or $ai_FTPRenameFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_FTPRenameFile[0]
EndFunc   ;==>_FTP_FileRename

; #FUNCTION# ====================================================================================================================
; Author ........: Prog@ndy
; Modified.......:
; ===============================================================================================================================
Func _FTP_FileTimeLoHiToStr($LoDWORD, $HiDWORD, $bFmt = 0)
	Local $tFileTime = DllStructCreate($tagFILETIME)
	If Not $LoDWORD And Not $HiDWORD Then Return SetError(1, 0, "")
	DllStructSetData($tFileTime, 1, $LoDWORD)
	DllStructSetData($tFileTime, 2, $HiDWORD)
	Local $date = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
	Return SetError(@error, @extended, $date)
EndFunc   ;==>_FTP_FileTimeLoHiToStr

; #FUNCTION# ====================================================================================================================
; Author ........: Dick Bronsdijk
; Modified.......: Prog@ndy, jpm
; ===============================================================================================================================
Func _FTP_FindFileClose($h_Handle)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $ai_FTPPutFile = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $h_Handle)
	If @error Or $ai_FTPPutFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), "")

	Return $ai_FTPPutFile[0]
EndFunc   ;==>_FTP_FindFileClose

; #FUNCTION# ====================================================================================================================
; Author ........: Dick Bronsdijk
; Modified.......: Prog@ndy, jpm
; ===============================================================================================================================
Func _FTP_FindFileFirst($l_FTPSession, $s_RemotePath, ByRef $h_Handle, $l_Flags = 0, $l_Context = 0)
	;flags = 0 changed to $INTERNET_FLAG_TRANSFER_BINARY to see if stops hanging
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)
	Local $l_DllStruct = DllStructCreate($tagWIN32_FIND_DATA)
	If @error Then Return SetError(-3, 0, "")

	Local $a_FTPFileList[1]
	$a_FTPFileList[0] = 0

	Local $ai_FTPFirstFile = DllCall($__ghWinInet_FTP, 'handle', 'FtpFindFirstFileW', 'handle', $l_FTPSession, 'wstr', $s_RemotePath, 'struct*', $l_DllStruct, 'dword', $l_Flags, 'dword_ptr', $l_Context)
	If @error Or $ai_FTPFirstFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), $ai_FTPFirstFile)

	$h_Handle = $ai_FTPFirstFile[0]

	Local $a_FTPFileList[12]
	$a_FTPFileList[0] = 11
	$a_FTPFileList[1] = DllStructGetData($l_DllStruct, "dwFileAttributes")
	$a_FTPFileList[2] = DllStructGetData($l_DllStruct, "ftCreationTime", 1)
	$a_FTPFileList[3] = DllStructGetData($l_DllStruct, "ftCreationTime", 2)
	$a_FTPFileList[4] = DllStructGetData($l_DllStruct, "ftLastAccessTime", 1)
	$a_FTPFileList[5] = DllStructGetData($l_DllStruct, "ftLastAccessTime", 2)
	$a_FTPFileList[6] = DllStructGetData($l_DllStruct, "ftLastWriteTime", 1)
	$a_FTPFileList[7] = DllStructGetData($l_DllStruct, "ftLastWriteTime", 2)
	$a_FTPFileList[8] = DllStructGetData($l_DllStruct, "nFileSizeHigh")
	$a_FTPFileList[9] = DllStructGetData($l_DllStruct, "nFileSizeLow")
	$a_FTPFileList[10] = DllStructGetData($l_DllStruct, "cFileName")
	$a_FTPFileList[11] = DllStructGetData($l_DllStruct, "cAlternateFileName")

	Return $a_FTPFileList
EndFunc   ;==>_FTP_FindFileFirst

; #FUNCTION# ====================================================================================================================
; Author ........: Dick Bronsdijk
; Modified.......: Prog@ndy, jpm
; ===============================================================================================================================
Func _FTP_FindFileNext($h_Handle)
	Local $l_DllStruct = DllStructCreate($tagWIN32_FIND_DATA)

	Local $a_FTPFileList[1]
	$a_FTPFileList[0] = 0

	Local $ai_FTPPutFile = DllCall($__ghWinInet_FTP, 'bool', 'InternetFindNextFileW', 'handle', $h_Handle, 'struct*', $l_DllStruct)
	If @error Or $ai_FTPPutFile[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), $a_FTPFileList)

	Local $a_FTPFileList[12]
	$a_FTPFileList[0] = 11
	$a_FTPFileList[1] = DllStructGetData($l_DllStruct, "dwFileAttributes")
	$a_FTPFileList[2] = DllStructGetData($l_DllStruct, "ftCreationTime", 1)
	$a_FTPFileList[3] = DllStructGetData($l_DllStruct, "ftCreationTime", 2)
	$a_FTPFileList[4] = DllStructGetData($l_DllStruct, "ftLastAccessTime", 1)
	$a_FTPFileList[5] = DllStructGetData($l_DllStruct, "ftLastAccessTime", 2)
	$a_FTPFileList[6] = DllStructGetData($l_DllStruct, "ftLastWriteTime", 1)
	$a_FTPFileList[7] = DllStructGetData($l_DllStruct, "ftLastWriteTime", 2)
	$a_FTPFileList[8] = DllStructGetData($l_DllStruct, "nFileSizeHigh")
	$a_FTPFileList[9] = DllStructGetData($l_DllStruct, "nFileSizeLow")
	$a_FTPFileList[10] = DllStructGetData($l_DllStruct, "cFileName")
	$a_FTPFileList[11] = DllStructGetData($l_DllStruct, "cAlternateFileName")

	Return $a_FTPFileList
EndFunc   ;==>_FTP_FindFileNext

; #FUNCTION# ====================================================================================================================
; Author ........: jpm
; Modified.......:
; ===============================================================================================================================
Func _FTP_GetLastResponseInfo(ByRef $dwError, ByRef $szMessage)
	Local $ai_LastResponseInfo = DllCall($__ghWinInet_FTP, 'bool', 'InternetGetLastResponseInfoW', 'dword*', 0, 'wstr', "", 'dword*', 4096)
	If @error Or $ai_LastResponseInfo[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)
	$dwError = $ai_LastResponseInfo[1]
	$szMessage = $ai_LastResponseInfo[2]
	Return $ai_LastResponseInfo[0]
EndFunc   ;==>_FTP_GetLastResponseInfo

; #FUNCTION# ====================================================================================================================
; Author ........: Beast, Prog@ndy
; Modified.......:
; ===============================================================================================================================
Func _FTP_ListToArray($l_FTPSession, $Return_Type = 0, $l_Flags = $INTERNET_FLAG_NO_CACHE_WRITE, $l_Context = 0)
	Local $aArray[1]
	$aArray[0] = 0
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, $aArray)
	$aArray = __FTP_ListToArray($l_FTPSession, $Return_Type, $l_Flags, 0, 1, $l_Context)
	Return SetError(@error, @extended, $aArray)
EndFunc   ;==>_FTP_ListToArray

; #FUNCTION# ====================================================================================================================
; Author ........: Prog@ndy
; Modified.......: jpm
; ===============================================================================================================================
Func _FTP_ListToArray2D($l_FTPSession, $Return_Type = 0, $l_Flags = $INTERNET_FLAG_NO_CACHE_WRITE, $l_Context = 0)
	Local $aArray[1][1]
	$aArray[0][0] = 0
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, $aArray)
	$aArray = __FTP_ListToArray($l_FTPSession, $Return_Type, $l_Flags, 0, 2, $l_Context)
	Return SetError(@error, @extended, $aArray)
EndFunc   ;==>_FTP_ListToArray2D

; #FUNCTION# ====================================================================================================================
; Author ........: Beast, Prog@ndy
; Modified.......: jpm
; ===============================================================================================================================
Func _FTP_ListToArrayEx($l_FTPSession, $Return_Type = 0, $l_Flags = $INTERNET_FLAG_NO_CACHE_WRITE, $b_Fmt = 1, $l_Context = 0)
	Local $aArray[1][1]
	$aArray[0][0] = 0
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, $aArray)
	$aArray = __FTP_ListToArray($l_FTPSession, $Return_Type, $l_Flags, $b_Fmt, 6, $l_Context)
	Return SetError(@error, @extended, $aArray)
EndFunc   ;==>_FTP_ListToArrayEx

; #FUNCTION# ====================================================================================================================
; Author ........: Wouter van Kesteren
; Modified.......:
; ===============================================================================================================================
Func _FTP_Open($s_Agent, $l_AccessType = $INTERNET_OPEN_TYPE_DIRECT, $s_ProxyName = '', $s_ProxyBypass = '', $l_Flags = 0)
	If $__ghWinInet_FTP = -1 Then __FTP_Init()
	Local $ai_InternetOpen = DllCall($__ghWinInet_FTP, 'handle', 'InternetOpenW', 'wstr', $s_Agent, 'dword', $l_AccessType, _
			'wstr', $s_ProxyName, 'wstr', $s_ProxyBypass, 'dword', $l_Flags)
	If @error Or $ai_InternetOpen[0] = 0 Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Return $ai_InternetOpen[0]
EndFunc   ;==>_FTP_Open

; #FUNCTION# ====================================================================================================================
; Author ........: limette, Prog@ndy
; Modified.......: jchd
; ===============================================================================================================================
Func _FTP_ProgressDownload($l_FTPSession, $s_LocalFile, $s_RemoteFile, $FunctionToCall = "")
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)

	Local $fhandle = FileOpen($s_LocalFile, $FO_OVERWRITE + $FO_BINARY)
	If $fhandle < 0 Then Return SetError(-1, 0, 0)

	Local $ai_ftpopenfile = DllCall($__ghWinInet_FTP, 'handle', 'FtpOpenFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile, 'dword', $GENERIC_READ, 'dword', $FTP_TRANSFER_TYPE_BINARY, 'dword_ptr', 0)
	If @error Or $ai_ftpopenfile[0] = 0 Then Return SetError(-3, _WinAPI_GetLastError(), 0)

	Local $ai_FTPGetFileSize = DllCall($__ghWinInet_FTP, 'dword', 'FtpGetFileSize', 'handle', $ai_ftpopenfile[0], 'dword*', 0)
	If @error Then Return SetError(-2, _WinAPI_GetLastError(), 0)

	If $FunctionToCall = "" Then ProgressOn("FTP Download", "Downloading " & $s_LocalFile)

	Local $glen = _WinAPI_MakeQWord($ai_FTPGetFileSize[0], $ai_FTPGetFileSize[2]) ;FileGetSize($s_RemoteFile)
	Local Const $ChunkSize = 256 * 1024
	Local $last = Mod($glen, $ChunkSize)

	Local $parts = Ceiling($glen / $ChunkSize)
	Local $buffer = DllStructCreate("byte[" & $ChunkSize & "]")

	Local $ai_InternetCloseHandle, $ai_FTPread, $out, $ret, $lasterror
	Local $x = $ChunkSize
	Local $done = 0
	For $i = 1 To $parts
		If $i = $parts And $last > 0 Then
			$x = $last
		EndIf

		$ai_FTPread = DllCall($__ghWinInet_FTP, 'bool', 'InternetReadFile', 'handle', $ai_ftpopenfile[0], 'struct*', $buffer, 'dword', $x, 'dword*', $out)
		If @error Or $ai_FTPread[0] = 0 Then
			$lasterror = _WinAPI_GetLastError()
			$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
			; No need to test @error.
			FileClose($fhandle)
			If $FunctionToCall = "" Then ProgressOff()
			Return SetError(-4, $lasterror, 0)
		EndIf
		$ret = FileWrite($fhandle, BinaryMid(DllStructGetData($buffer, 1), 1, $ai_FTPread[4]))
		If Not $ret Then
			$lasterror = _WinAPI_GetLastError()
			$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
			; No need to test @error.
			FileClose($fhandle)
			FileDelete($s_LocalFile)
			If $FunctionToCall = "" Then ProgressOff()
			Return SetError(-7, $lasterror, 0)
		EndIf
		$done += $ai_FTPread[4]

		If $FunctionToCall = "" Then
			ProgressSet(($done / $glen) * 100)
		Else
			$ret = Call($FunctionToCall, ($done / $glen) * 100)
			If $ret <= 0 Then
				$lasterror = @error
				$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
				; No need to test @error.
				FileClose($fhandle)
				FileDelete($s_LocalFile)
				If $FunctionToCall = "" Then ProgressOff()
				Return SetError(-6, $lasterror, $ret)
			EndIf
		EndIf
		Sleep(10)
	Next

	FileClose($fhandle)

	If $FunctionToCall = "" Then ProgressOff()

	$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
	If @error Or $ai_InternetCloseHandle[0] = 0 Then
		Return SetError(-5, _WinAPI_GetLastError(), 0)
	EndIf

	Return 1
EndFunc   ;==>_FTP_ProgressDownload

; #FUNCTION# ====================================================================================================================
; Author ........: limette, Prog@ndy
; Modified.......: jchd
; ===============================================================================================================================
Func _FTP_ProgressUpload($l_FTPSession, $s_LocalFile, $s_RemoteFile, $FunctionToCall = "")
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)

	Local $fhandle = FileOpen($s_LocalFile, $FO_BINARY)
	If @error Then Return SetError(-1, _WinAPI_GetLastError(), 0)

	Local $ai_ftpopenfile = DllCall($__ghWinInet_FTP, 'handle', 'FtpOpenFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile, 'dword', $GENERIC_WRITE, 'dword', $FTP_TRANSFER_TYPE_BINARY, 'dword_ptr', 0)
	If @error Or $ai_ftpopenfile[0] = 0 Then Return SetError(-3, _WinAPI_GetLastError(), 0)

	If $FunctionToCall = "" Then ProgressOn("FTP Upload", "Uploading " & $s_LocalFile)

	Local $glen = FileGetSize($s_LocalFile)
	Local Const $ChunkSize = 256 * 1024
	Local $last = Mod($glen, $ChunkSize)

	Local $parts = Ceiling($glen / $ChunkSize)
	Local $buffer = DllStructCreate("byte[" & $ChunkSize & "]")

	Local $ai_InternetCloseHandle, $ai_ftpwrite, $out, $ret, $lasterror
	Local $x = $ChunkSize
	Local $done = 0
	For $i = 1 To $parts
		If $i = $parts And $last > 0 Then
			$x = $last
		EndIf
		DllStructSetData($buffer, 1, FileRead($fhandle, $x))

		$ai_ftpwrite = DllCall($__ghWinInet_FTP, 'bool', 'InternetWriteFile', 'handle', $ai_ftpopenfile[0], 'struct*', $buffer, 'dword', $x, 'dword*', $out)
		If @error Or $ai_ftpwrite[0] = 0 Then
			$lasterror = _WinAPI_GetLastError()
			$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
			; No need to test @error.
			FileClose($fhandle)

			If $FunctionToCall = "" Then ProgressOff()
			Return SetError(-4, $lasterror, 0)
		EndIf
		$done += $x

		If $FunctionToCall = "" Then
			ProgressSet(($done / $glen) * 100)
		Else
			$ret = Call($FunctionToCall, ($done / $glen) * 100)
			If $ret <= 0 Then
				$lasterror = @error
				$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
				; No need to test @error.
				DllCall($__ghWinInet_FTP, 'bool', 'FtpDeleteFileW', 'handle', $l_FTPSession, 'wstr', $s_RemoteFile)
				; No need to test @error.
				FileClose($fhandle)
				If $FunctionToCall = "" Then ProgressOff()
				Return SetError(-6, $lasterror, $ret)
			EndIf
		EndIf
		Sleep(10)
	Next

	FileClose($fhandle)

	If $FunctionToCall = "" Then ProgressOff()

	$ai_InternetCloseHandle = DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $ai_ftpopenfile[0])
	; No need to test @error.
	If @error Or $ai_InternetCloseHandle[0] = 0 Then Return SetError(-5, _WinAPI_GetLastError(), 0)

	Return 1
EndFunc   ;==>_FTP_ProgressUpload

; FUNCTION# ====================================================================================================================
; Name...........: _FTP_SetStatusCallback
; Description ...: Registers callback function that WinINet functions can call as progress is made during an operation.
; Syntax.........: _InternetSetStatusCallback ($l_InternetSession, $sFunctionName )
; Parameters ....: $l_InternetSession   - as returned by _FTP_Open().
;                  $sFunctionName       - The name of the User Defined Function to call
; Return values .: Success      - Pointer to callback function
;                  Failure      - 0 and Set @error
; Author ........: Beege
; Modified.......: jpm
; Remarks .......:
; Related .......: _FTP_DecodeInternetStatus
; Link ..........: @@MsdnLink@@ InternetSetStatusCallback
; Example .......: Yes
; ===============================================================================================================================
Func _FTP_SetStatusCallback($l_InternetSession, $sFunctionName)
	If $__ghWinInet_FTP = -1 Then Return SetError(-2, 0, 0)

	Local $CallBack_Register = DllCallbackRegister($sFunctionName, "none", "ptr;ptr;dword;ptr;dword")
	If Not $CallBack_Register Then Return SetError(-1, 0, 0)

	Local $ah_CallBackFunction = DllCall('wininet.dll', "ptr", "InternetSetStatusCallback", "ptr", $l_InternetSession, "ulong_ptr", DllCallbackGetPtr($CallBack_Register))
	If @error Then Return SetError(-3, 0, 0)
	If $ah_CallBackFunction[0] = Ptr(-1) Then Return SetError(-4, 0, 0) ; INTERNET_INVALID_STATUS_CALLBACK

	$__gbCallback_Set = True
	$__ghCallback_FTP = $CallBack_Register
	Return $ah_CallBackFunction[1]
EndFunc   ;==>_FTP_SetStatusCallback

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __FTP_ListToArray
; Description ...:
; Syntax.........: __FTP_ListToArray ( $l_FTPSession [, $Return_Type = 0 [, $l_Flags = 0 [, $bFmt = 1 [, $ArrayCount = 6 [, $l_Context = 0 ]]]]] )
; Parameters ....:
; Return values .: an 2D array with the requested info defined by $ArrayCount
;                  [0] Filename
;                  [1] Filesize
;                  [2] FileAttribute
;                  [3] File Modification time
;                  [4] File Creation time
;                  [5] File Access time
; Author ........: Beast, Prog@ndy
; Modified.......: jpm (to be use by external UDFs)
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __FTP_ListToArray($l_FTPSession, $Return_Type, $l_Flags, $bFmt, $ArrayCount, $l_Context)
	If $ArrayCount = 1 Then
		Local $FileArray[1], $DirectoryArray[1]
		$FileArray[0] = 0
	Else
		Local $FileArray[1][$ArrayCount], $DirectoryArray[1][$ArrayCount]
		$FileArray[0][0] = 0
	EndIf

	If $Return_Type < 0 Or $Return_Type > 2 Then Return SetError(3, 0, $FileArray)

	; Global Const $tagWIN32_FIND_DATA = "DWORD dwFileAttributes; dword ftCreationTime[2]; dword ftLastAccessTime[2]; dword ftLastWriteTime[2]; DWORD nFileSizeHigh; DWORD nFileSizeLow; dword dwReserved0; dword dwReserved1; WCHAR cFileName[260]; WCHAR cAlternateFileName[14];"
	Local $tWIN32_FIND_DATA = DllStructCreate($tagWIN32_FIND_DATA)
	Local $lasterror
	Local $callFindFirst = DllCall($__ghWinInet_FTP, 'handle', 'FtpFindFirstFileW', 'handle', $l_FTPSession, 'wstr', "", 'struct*', $tWIN32_FIND_DATA, 'dword', $l_Flags, 'dword_ptr', $l_Context)
	If @error Or Not $callFindFirst[0] Then
		$lasterror = _WinAPI_GetLastError()
		If $lasterror = 12003 Then ; ERROR_INTERNET_EXTENDED_ERROR
			Local $dwError, $szMessage
			_FTP_GetLastResponseInfo($dwError, $szMessage)
			$lasterror = $dwError
		EndIf
		Return SetError(1, $lasterror, $FileArray)
	EndIf

	Local $DirectoryIndex = 0, $FileIndex = 0
	Local $tFileTime, $IsDir, $callFindNext
	Do
		$IsDir = BitAND(DllStructGetData($tWIN32_FIND_DATA, "dwFileAttributes"), $FILE_ATTRIBUTE_DIRECTORY) = $FILE_ATTRIBUTE_DIRECTORY
		If $IsDir And ($Return_Type <> 2) Then
			$DirectoryIndex += 1
			If $ArrayCount = 1 Then
				If UBound($DirectoryArray) < $DirectoryIndex + 1 Then ReDim $DirectoryArray[$DirectoryIndex * 2]
				$DirectoryArray[$DirectoryIndex] = DllStructGetData($tWIN32_FIND_DATA, "cFileName")
			Else
				If UBound($DirectoryArray) < $DirectoryIndex + 1 Then ReDim $DirectoryArray[$DirectoryIndex * 2][$ArrayCount]
				$DirectoryArray[$DirectoryIndex][0] = DllStructGetData($tWIN32_FIND_DATA, "cFileName")

				$DirectoryArray[$DirectoryIndex][1] = _WinAPI_MakeQWord(DllStructGetData($tWIN32_FIND_DATA, "nFileSizeLow"), DllStructGetData($tWIN32_FIND_DATA, "nFileSizeHigh"))
				If $ArrayCount = 6 Then
					$DirectoryArray[$DirectoryIndex][2] = DllStructGetData($tWIN32_FIND_DATA, "dwFileAttributes")

					$tFileTime = DllStructCreate($tagFILETIME, DllStructGetPtr($tWIN32_FIND_DATA, "ftLastWriteTime"))
					$DirectoryArray[$DirectoryIndex][3] = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
					$tFileTime = DllStructCreate($tagFILETIME, DllStructGetPtr($tWIN32_FIND_DATA, "ftCreationTime"))
					$DirectoryArray[$DirectoryIndex][4] = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
					$tFileTime = DllStructCreate($tagFILETIME, DllStructGetPtr($tWIN32_FIND_DATA, "ftLastAccessTime"))
					$DirectoryArray[$DirectoryIndex][5] = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
				EndIf
			EndIf
		ElseIf Not $IsDir And $Return_Type <> 1 Then
			$FileIndex += 1
			If $ArrayCount = 1 Then
				If UBound($FileArray) < $FileIndex + 1 Then ReDim $FileArray[$FileIndex * 2]
				$FileArray[$FileIndex] = DllStructGetData($tWIN32_FIND_DATA, "cFileName")
			Else
				If UBound($FileArray) < $FileIndex + 1 Then ReDim $FileArray[$FileIndex * 2][$ArrayCount]
				$FileArray[$FileIndex][0] = DllStructGetData($tWIN32_FIND_DATA, "cFileName")

				$FileArray[$FileIndex][1] = _WinAPI_MakeQWord(DllStructGetData($tWIN32_FIND_DATA, "nFileSizeLow"), DllStructGetData($tWIN32_FIND_DATA, "nFileSizeHigh"))
				If $ArrayCount = 6 Then
					$FileArray[$FileIndex][2] = DllStructGetData($tWIN32_FIND_DATA, "dwFileAttributes")

					$tFileTime = DllStructCreate($tagFILETIME, DllStructGetPtr($tWIN32_FIND_DATA, "ftLastWriteTime"))
					$FileArray[$FileIndex][3] = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
					$tFileTime = DllStructCreate($tagFILETIME, DllStructGetPtr($tWIN32_FIND_DATA, "ftCreationTime"))
					$FileArray[$FileIndex][4] = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
					$tFileTime = DllStructCreate($tagFILETIME, DllStructGetPtr($tWIN32_FIND_DATA, "ftLastAccessTime"))
					$FileArray[$FileIndex][5] = _Date_Time_FileTimeToStr($tFileTime, $bFmt)
				EndIf
			EndIf
		EndIf

		$callFindNext = DllCall($__ghWinInet_FTP, 'bool', 'InternetFindNextFileW', 'handle', $callFindFirst[0], 'struct*', $tWIN32_FIND_DATA)
		If @error Then
			$lasterror = _WinAPI_GetLastError()
			DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $callFindFirst[0])
			Return SetError(2, $lasterror, $FileArray)
		EndIf
	Until Not $callFindNext[0]

	DllCall($__ghWinInet_FTP, 'bool', 'InternetCloseHandle', 'handle', $callFindFirst[0])
	; No need to test @error.

	If $ArrayCount = 1 Then
		$DirectoryArray[0] = $DirectoryIndex
		$FileArray[0] = $FileIndex
	Else
		$DirectoryArray[0][0] = $DirectoryIndex
		$FileArray[0][0] = $FileIndex
	EndIf

	Switch $Return_Type
		Case 0
			If $ArrayCount = 1 Then
				ReDim $DirectoryArray[$DirectoryArray[0] + $FileArray[0] + 1]
				For $i = 1 To $FileIndex
					$DirectoryArray[$DirectoryArray[0] + $i] = $FileArray[$i]
				Next
				$DirectoryArray[0] += $FileArray[0]
			Else
				ReDim $DirectoryArray[$DirectoryArray[0][0] + $FileArray[0][0] + 1][$ArrayCount]
				For $i = 1 To $FileIndex
					For $j = 0 To $ArrayCount - 1
						$DirectoryArray[$DirectoryArray[0][0] + $i][$j] = $FileArray[$i][$j]
					Next
				Next
				$DirectoryArray[0][0] += $FileArray[0][0]
			EndIf
			Return $DirectoryArray
		Case 1
			If $ArrayCount = 1 Then
				ReDim $DirectoryArray[$DirectoryIndex + 1]
			Else
				ReDim $DirectoryArray[$DirectoryIndex + 1][$ArrayCount]
			EndIf
			Return $DirectoryArray
		Case 2
			If $ArrayCount = 1 Then
				ReDim $FileArray[$FileIndex + 1]
			Else
				ReDim $FileArray[$FileIndex + 1][$ArrayCount]
			EndIf
			Return $FileArray
	EndSwitch
EndFunc   ;==>__FTP_ListToArray

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __FTP_Init
; Description ...: DllOpen wininet.dll
; Syntax.........: __FTP_Init ( )
; Parameters ....:
; Return values .:
; Author ........:
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __FTP_Init()
	$__ghWinInet_FTP = DllOpen('wininet.dll')
EndFunc   ;==>__FTP_Init
