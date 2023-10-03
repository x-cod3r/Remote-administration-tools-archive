#include-once

; #AutoIt3Wrapper_Au3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6 -w 7
; #INDEX# =======================================================================================================================
; Title .........: _BinaryBin
; AutoIt Version : v3.3.2.0 or higher
; Language ......: English
; Description ...: Creates a bin file to store files that can then be extracted using native AutoIt code.
; Note ..........:
; Author(s) .....: guinness
; Remarks .......: Thanks to SmOke_N for hints about the DIR command and Malkey for the SRE's. [http://www.autoitscript.com/forum/topic/95580-a-question-regarding-pathsplit/page__view__findpost__p__687288].
; ===============================================================================================================================

; #INCLUDES# =========================================================================================================
#include <Constants.au3>
#include <Crypt.au3>
#include <File.au3>
#include <WinAPI.au3>

; #GLOBAL VARIABLES# =================================================================================================
; None

; #CURRENT# =====================================================================================================================
; _BinaryBin_Add: Add a file to a binary bin.
; _BinaryBin_AddFolder: Add a folder to a binary bin file. This is recursive i.e. it will search sub-folders too.
; _BinaryBin_Close: Close a binary bin file.
; _BinaryBin_Decrypt: Decrypt a binary bin file.
; _BinaryBin_Encrypt: Encrypt a binary bin file.
; _BinaryBin_Extract: Extract a binary bin file to a specified folder/path.
; _BinaryBin_GetBinCount: Retrieve the file count in a binary bin file.
; _BinaryBin_GetBinFiles: Retrieve the list of files in a binary bin file.
; _BinaryBin_GetBinFolders: Retrieve the list of folders in a binary bin file.
; _BinaryBin_GetBinSize: Retrieve the filesize of a BinaryBin file.
; _BinaryBin_GetFileFromHandle: Rerieve the filepath of a handle returned by _BinaryBin_Open.
; _BinaryBin_BinIsEncrypted: Check if a binary bin file is encrypted.
; _BinaryBin_Open: Open a binary bin file.
; ===============================================================================================================================

; #INTERNAL_USE_ONLY#============================================================================================================
; See below
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_Add
; Description ...: Add a file to a binary bin.
; Syntax ........: _BinaryBin_Add(Const Byref $aAPI, $sFilePath[, $fOverwrite = False])
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $sFilePath           - Valid filepath to add to the binary bin.
;                  $fOverwrite          - [optional] Clear the contents of the binary bin. Default is False.
; Return values .: Success - Returns data string added to the binary bin
;                  Failure - Returns blank string & sets @error to none-zero.
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_Add(ByRef Const $aAPI, $sFilePath, $fOverwrite = False)
	Return __BinaryBin_AddData($aAPI, $sFilePath, True, $fOverwrite, '')
EndFunc   ;==>_BinaryBin_Add

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_AddFolder
; Description ...: Add a folder to a binary bin file. This is recursive i.e. it will search sub-folders too.
; Syntax ........: _BinaryBin_AddFolder(Const Byref $aAPI, $sFolder[, $fOverwrite = False])
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $sFolder             - Valid folder to add to the binary bin file.
;                  $fOverwrite          - [optional] Clear the contents of the binary bin. Default is False.
; Return values .: Success - Returns array of files and folder added.
;                  Failure - Returns blank array & sets @error to none-zero.
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_AddFolder(ByRef Const $aAPI, $sFolder, $fOverwrite = False)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFilePath, $iAPIMax
	$sFolder = __BinaryBin_GetDirectoryFormat($sFolder, False)

	If StringInStr(FileGetAttrib($sFolder), 'D', 2) = 0 Then
		Local $aError[1] = [0]
		Return SetError(1, 0, $aError)
	EndIf

	Local $iPID = Run(@ComSpec & ' /C DIR /B /A-D /S', $sFolder & '\', @SW_HIDE, $STDOUT_CHILD) ; Thanks to SmOke_N.
	ProcessWaitClose($iPID)
	Local $aArray = StringRegExp(@ScriptFullPath & @CRLF & StdoutRead($iPID), '([^\r\n]*)(?:\r\n|\n|\r)', 3)
	$aArray[0] = UBound($aArray, 1) - 1

	If $fOverwrite Then
		Local $sData = ''
		__BinaryBin_FileWrite($aAPI[$hAPIHWnd], $sData, True)
	EndIf

	For $i = 1 To $aArray[0]
		If $aArray[$i] = $aAPI[$iAPIFileName] Then
			ContinueLoop
		EndIf
		__BinaryBin_AddData($aAPI, $aArray[$i], True, 0, StringReplace(StringRegExpReplace($aArray[$i], '(^.*\\)(.*)', '\1'), $sFolder & '\', '')) ; Thanks to Malkey for the SRE.
	Next
	Return $aArray
EndFunc   ;==>_BinaryBin_AddFolder

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_Close
; Description ...: Close a binary bin file.
; Syntax ........: _BinaryBin_Close(Byref $aAPI)
; Parameters ....: $aAPI                - [in/out] API created by _BinaryBin_Open.
; Return values .: Success - True
;                  Failure - None
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_Close(ByRef $aAPI)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFilePath

	Local $fReturn = _WinAPI_CloseHandle($aAPI[$hAPIHWnd])
	For $i = $iAPIFileName To $iAPIMax - 1
		$aAPI[$i] = ''
	Next
	Return $fReturn
EndFunc   ;==>_BinaryBin_Close

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_Decrypt
; Description ...: Decrypt a binary bin file.
; Syntax ........: _BinaryBin_Decrypt(Const Byref $aAPI, $sPassword)
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $sPassword           - Password to decrypt the binary bin file.
; Return values .: Success - True
;				   Failure - False
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_Decrypt(ByRef $aAPI, $sPassword)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIMax

	_Crypt_Startup()
	Local $fClose = _WinAPI_CloseHandle($aAPI[$hAPIHWnd]) = True, $fNotError = True
	Local $hDeriveKey = 0, $hFileOpen = 0, $sData = ''
	If $fClose Then
		$hFileOpen = FileOpen($aAPI[$iAPIFilePath], $FO_READ)
		$fNotError = ($hFileOpen > -1)
		If $fNotError Then
			$sData = FileRead($hFileOpen)
			FileClose($hFileOpen)
			$hDeriveKey = _Crypt_DeriveKey($sPassword, $CALG_RC4)
			$sData = _Crypt_DecryptData($sData, $hDeriveKey, $CALG_USERKEY)
			$fNotError = (@error = 0)
		EndIf
	EndIf
	_Crypt_DestroyKey($hDeriveKey)
	_Crypt_Shutdown()

	If $fNotError Then
		$hFileOpen = FileOpen($aAPI[$iAPIFilePath], $FO_OVERWRITE)
		$fNotError = ($hFileOpen > -1)
		If $fNotError Then
			FileWrite($hFileOpen, $sData)
			FileClose($hFileOpen)
		EndIf
	EndIf
	If $fClose Then
		$aAPI = _BinaryBin_Open($aAPI[$iAPIFilePath], False)
	EndIf
	Return $fNotError
EndFunc   ;==>_BinaryBin_Decrypt

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_Encrypt
; Description ...: Encrypt a binary bin file.
; Syntax ........: _BinaryBin_Encrypt(Const Byref $aAPI, $sPassword)
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $sPassword           - Password to encrypt the binary bin file.
; Return values .: Success - True
;				   Failure - False
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_Encrypt(ByRef $aAPI, $sPassword)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIMax

	_Crypt_Startup()
	Local $fClose = _WinAPI_CloseHandle($aAPI[$hAPIHWnd]) = True, $fNotError = True
	Local $hDeriveKey = 0, $hFileOpen = 0, $sData = ''
	If $fClose Then
		$hFileOpen = FileOpen($aAPI[$iAPIFilePath], $FO_READ)
		$fNotError = ($hFileOpen > -1)
		If $fNotError Then
			$sData = FileRead($hFileOpen)
			FileClose($hFileOpen)
			$hDeriveKey = _Crypt_DeriveKey($sPassword, $CALG_RC4)
			$sData = _Crypt_EncryptData($sData, $hDeriveKey, $CALG_USERKEY)
			$fNotError = (@error = 0)
		EndIf
	EndIf
	_Crypt_DestroyKey($hDeriveKey)
	_Crypt_Shutdown()

	If $fNotError Then
		$hFileOpen = FileOpen($aAPI[$iAPIFilePath], $FO_OVERWRITE)
		$fNotError = ($hFileOpen > -1)
		If $fNotError Then
			FileWrite($hFileOpen, $sData)
			FileClose($hFileOpen)
		EndIf
	EndIf
	If $fClose Then
		$aAPI = _BinaryBin_Open($aAPI[$iAPIFilePath], False)
	EndIf
	Return $fNotError
EndFunc   ;==>_BinaryBin_Encrypt

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_Extract
; Description ...: Extract a binary bin file to a specified folder/path.
; Syntax ........: _BinaryBin_Extract(Const Byref $aAPI[, $sDestination = @ScriptDir[, $iIndex = -1]])
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $sDestination        - [optional] Destination filepath to extract the files to. Default is @ScriptDir.
;                  $iIndex              - [optional] Index number of the file to extract. Default is -1 all contents.
; Return values .: Success - True
;                  Failure - False & sets @error to non-zero.
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_Extract(ByRef Const $aAPI, $sDestination = @ScriptDir, $iIndex = -1)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	If $iIndex = Default Then
		$iIndex = -1
	EndIf
	Local $aArray = __BinaryBin_Process($aAPI[$hAPIHWnd])
	Local $iCount = $iIndex
	$sDestination = __BinaryBin_GetDirectoryFormat($sDestination, True)
	If $iIndex <= 0 Or $iIndex > $aArray[0][0] Then
		$iCount = 1
		$iIndex = $aArray[0][0]
	EndIf
	Local $hFileOpen = 0
	If $aArray[0][0] > 0 Then
		For $i = $iCount To $iIndex
			DirCreate($sDestination & '\' & $aArray[$i][2])
			$hFileOpen = FileOpen($sDestination & '\' & $aArray[$i][2] & $aArray[$i][1], $FO_APPEND + $FO_BINARY)
			If $hFileOpen = -1 Then
				ContinueLoop
			EndIf
			FileWrite($hFileOpen, Binary($aArray[$i][0]))
			FileClose($hFileOpen)
		Next
		Return True
	EndIf
	Return SetError(1, 0, False)
EndFunc   ;==>_BinaryBin_Extract

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_GetBinCount
; Description ...: Retrieve the file count in a binary bin file.
; Syntax ........: _BinaryBin_GetBinCount(Const Byref $aAPI)
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
; Return values .: Success - File count.
;                  Failure - Returns 0 & sets @error to non-zero.
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_GetBinCount(ByRef Const $aAPI)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	Local $sData = __BinaryBin_FileRead($aAPI[$hAPIHWnd])
	Local $aStringRegExp = StringRegExp($sData, '<filename>([^<]*)</filename>', 3)
	If @error Then
		Return SetError(1, 0, 0)
	EndIf
	Return UBound($aStringRegExp, 1)
EndFunc   ;==>_BinaryBin_GetBinCount

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_GetBinFolders
; Description ...: Retrieve the list of files in a binary bin file.
; Syntax ........: _BinaryBin_GetBinFolders(Const Byref $aAPI[, $sDestination = @ScriptDir])
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
; Return values .: Success - An array containing a list of files.
;				   Failure - Blank array & sets @error to non-zero.
; Author ........: guinness
; Remarks........: The array returned is one-dimensional and is made up as follows:
;                                $aArray[0] = Number of Files returned
;                                $aArray[1] = 1st File
;                                $aArray[2] = 2nd File
;                                $aArray[3] = 3rd File
;                                $aArray[n] = nth File
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_GetBinFiles(ByRef Const $aAPI)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	Local $sData = __BinaryBin_FileRead($aAPI[$hAPIHWnd])
	Local $aReturn = StringRegExp('<filename>GetBinFilesCount</filename>' & @CRLF & $sData, '<filename>([^<]*)</filename>', 3)
	If @error Then
		Local $aError[1] = [0]
		Return SetError(1, 0, $aError)
	EndIf
	$aReturn[0] = UBound($aReturn, 1) - 1
	Return $aReturn
EndFunc   ;==>_BinaryBin_GetBinFiles

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_GetBinFolders
; Description ...: Retrieve the list of folders in a binary bin file.
; Syntax ........: _BinaryBin_GetBinFolders(Const Byref $aAPI[, $sDestination = @ScriptDir])
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $sDestination        - [optional] Destination filepath to extract the folders to. Default is @ScriptDir.
; Return values .: Success - An array containing a list of folders.
;				   Failure - Blank array & sets @error to non-zero.
; Author ........: guinness
; Remarks........: The array returned is one-dimensional and is made up as follows:
;                                $aArray[0] = Number of Folders returned
;                                $aArray[1] = 1st Folder
;                                $aArray[2] = 2nd Folder
;                                $aArray[3] = 3rd Folder
;                                $aArray[n] = nth Folder
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_GetBinFolders(ByRef Const $aAPI, $sDestination = @ScriptDir)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	If $sDestination = Default Then
		$sDestination = @ScriptDir
	EndIf
	Local $sData = __BinaryBin_FileRead($aAPI[$hAPIHWnd])
	$sDestination = __BinaryBin_GetDirectoryFormat($sDestination, False)

	Local $aArray = StringRegExp('<folder>GetBinFoldersCount</folder>' & @CRLF & $sData, '<folder>([^<]*)</folder>', 3)
	If @error Then
		Local $aError[1] = [0]
		Return SetError(1, 0, $aError)
	EndIf
	$aArray[0] = UBound($aArray, 1) - 1
	Local Const $sSOH = Chr(01)
	Local $sReturn = ''
	For $i = 1 To $aArray[0]
		If StringInStr($sSOH & $sReturn, $sSOH & $sDestination & '\' & $aArray[$i] & $sSOH, 2) = 0 Then
			$sReturn &= $sDestination & '\' & $aArray[$i] & $sSOH
		EndIf
	Next
	Return StringSplit(StringTrimRight($sReturn, StringLen($sSOH)), $sSOH)
EndFunc   ;==>_BinaryBin_GetBinFolders

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_GetBinSize
; Description ...: Retrieve the filesize of a BinaryBin file.
; Syntax ........: _BinaryBin_GetBinSize(Const Byref $aAPI[, $fFormatted = False])
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
;                  $fFormatted          - [optional] Return as a user friendly output e.g. 1000 bytes >> 1 KB. Default is False.
; Return values .: Filesize
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_GetBinSize(ByRef Const $aAPI, $fFormatted = False)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	Local $iSize = _WinAPI_GetFileSizeEx($aAPI[$hAPIHWnd])
	If $fFormatted Then
		Return __BinaryBin_ByteSuffix($iSize, 2)
	EndIf
	Return $iSize
EndFunc   ;==>_BinaryBin_GetBinSize

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_GetFileFromHandle
; Description ...: Rerieve the filepath of a handle returned by _BinaryBin_Open.
; Syntax ........: _BinaryBin_GetFileFromHandle(Const Byref $aAPI)
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
; Return values .: Filepath
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_GetFileFromHandle(ByRef Const $aAPI)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $hAPIHWnd, $iAPIMax

	Return $aAPI[$iAPIFilePath]
EndFunc   ;==>_BinaryBin_GetFileFromHandle

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_BinIsEncrypted
; Description ...: Check if a binary bin file is encrypted.
; Syntax ........: _BinaryBin_BinIsEncrypted(Const Byref $aAPI)
; Parameters ....: $aAPI                - [in/out and const] API created by _BinaryBin_Open.
; Return values .: Success - True
;                  Failure - False
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_BinIsEncrypted(ByRef Const $aAPI)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	Return StringInStr(__BinaryBin_FileRead($aAPI[$hAPIHWnd]), 'data', 2) = 0
EndFunc   ;==>_BinaryBin_BinIsEncrypted

; #FUNCTION# ====================================================================================================================
; Name ..........: _BinaryBin_Open
; Description ...: Open a binary bin file.
; Syntax ........: _BinaryBin_Open($sFilePath[, $fOverwrite = False])
; Parameters ....: $sFilePath           - Filepath of a new or previous binary bin file.
;                  $fOverwrite          - [optional] Overwrite the binary bin. Default is False.
; Return values .: API to be passed to relevant functions.
; Author ........: guinness
; Example .......: Yes
; ===============================================================================================================================
Func _BinaryBin_Open($sFilePath, $fOverwrite = False)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath

	Local $aAPI[$iAPIMax] = [__BinaryBin_GetFileName($sFilePath), $sFilePath], $iFlag = $OPEN_EXISTING
	If $fOverwrite Then
		$iFlag = $CREATE_NEW
	EndIf
	$aAPI[$hAPIHWnd] = _WinAPI_CreateFile($sFilePath, $iFlag, BitOR($FILE_SHARE_WRITE, $FILE_SHARE_DELETE), 0, 0, 0)
	Return $aAPI
EndFunc   ;==>_BinaryBin_Open

; #INTERNAL_USE_ONLY#============================================================================================================
Func __BinaryBin_AddData(ByRef Const $aAPI, $sFilePath, $fWrite, $fOverwrite, $sFolder)
	Local Enum $iAPIFileName, $iAPIFilePath, $hAPIHWnd, $iAPIMax
	#forceref $iAPIFileName, $iAPIFilePath, $iAPIMax

	Local $hFileOpen = FileOpen($sFilePath, $FO_BINARY)
	If $hFileOpen = -1 Then
		Return SetError(1, 0, '')
	EndIf
	Local $sData = '<data>' & Binary(FileRead($hFileOpen)) & '</data>' & _
			'<filename>' & __BinaryBin_GetFileName($sFilePath) & '</filename>' & _
			'<folder>' & $sFolder & '</folder>' & @CRLF
	FileClose($hFileOpen)
	If $fWrite Then
		__BinaryBin_FileWrite($aAPI[$hAPIHWnd], $sData, $fOverwrite)
		If @error Then
			Return SetError(2, 0, '')
		EndIf
	EndIf
	Return $sData
EndFunc   ;==>__BinaryBin_AddData

Func __BinaryBin_ByteSuffix($iBytes, $iRound)
	Local $i = 0, $aArray[9] = [' bytes', ' KB', ' MB', ' GB', ' TB', ' PB', ' EB', ' ZB', ' YB']
	While $iBytes > 1023
		$i += 1
		$iBytes /= 1024
	WEnd
	Return Round($iBytes, $iRound) & $aArray[$i]
EndFunc   ;==>__BinaryBin_ByteSuffix

Func __BinaryBin_FileRead($hFilePath)
	Local $iFileSize = (_WinAPI_GetFileSizeEx($hFilePath) + 1), $sText = ''
	Local $tBuffer = DllStructCreate('byte[' & $iFileSize & ']')
	_WinAPI_SetFilePointer($hFilePath, 0)
	_WinAPI_ReadFile($hFilePath, DllStructGetPtr($tBuffer), $iFileSize, $sText)
	Return SetError(@error, 0, BinaryToString(DllStructGetData($tBuffer, 1)))
EndFunc   ;==>__BinaryBin_FileRead

Func __BinaryBin_FileWrite($hFilePath, ByRef $sText, $fOverwrite)
	If $fOverwrite Then
		_WinAPI_SetFilePointer($hFilePath, $FILE_BEGIN)
		_WinAPI_SetEndOfFile($hFilePath)
	EndIf
	Local $iFileSize = _WinAPI_GetFileSizeEx($hFilePath), $iLength = StringLen($sText), $iWritten = 0
	Local $tBuffer = DllStructCreate('byte[' & $iLength & ']')
	DllStructSetData($tBuffer, 1, $sText)
	_WinAPI_SetFilePointer($hFilePath, $iFileSize)
	_WinAPI_WriteFile($hFilePath, DllStructGetPtr($tBuffer), $iLength, $iWritten)
	Return SetError(@error, @extended, $iWritten)
EndFunc   ;==>__BinaryBin_FileWrite

Func __BinaryBin_GetDirectoryFormat($sFolder, $fCreate)
	$sFolder = StringRegExpReplace($sFolder, '[\\/]+\z', '')
	If FileExists($sFolder) = 0 And $fCreate Then
		DirCreate($sFolder)
	EndIf
	Return $sFolder
EndFunc   ;==>__BinaryBin_GetDirectoryFormat

Func __BinaryBin_GetFileName($sFilePath)
	Return StringRegExpReplace($sFilePath, '^.*\\', '') ; Thanks to Malkey.
EndFunc   ;==>__BinaryBin_GetFileName

Func __BinaryBin_Process($hFilePath)
	Local Const $iColumns = 3

	Local $sData = __BinaryBin_FileRead($hFilePath)
	Local $aArray = StringRegExp($sData, '<data>(0x[[:xdigit:]]+)</data><filename>([^<]*)</filename><folder>([^<]*)</folder>', 3)
	If @error Then
		Local $aError[1][$iColumns] = [[0, $iColumns]]
		Return SetError(1, 0, $aError)
	EndIf
	Local $iColumn = 0, $iIndex = 0, $iUbound = UBound($aArray, 1)
	Local $aReturn[($iUbound / $iColumns) + 1][3] = [[0, $iColumns]]
	For $i = 0 To $iUbound - 1 Step 3
		$iColumn = 0
		$iIndex += $iColumns
		$aReturn[0][0] += 1
		For $j = $i To $iIndex - 1
			$aReturn[$aReturn[0][0]][$iColumn] = $aArray[$j]
			$iColumn += 1
		Next
	Next
	Return $aReturn
EndFunc   ;==>__BinaryBin_Process