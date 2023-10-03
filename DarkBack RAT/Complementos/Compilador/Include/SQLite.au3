#include-once
#ignorefunc __SQLite_Inline_Version, __SQLite_Inline_Modified

#include "FileConstants.au3"
#include "InetConstants.au3"
#include "Array.au3" 	; Using: _ArrayAdd(),_ArrayDelete(),_ArraySearch()
#include "File.au3" 	; Using: _TempFile()

; #INDEX# =======================================================================================================================
; Title .........: SQLite
; AutoIt Version : 3.3.7.20++
; Language ......: English
; Description ...: Functions that assist access to an SQLite database.
; Author(s) .....: Fida Florian (piccaso), jchd, jpm
; Dll ...........: SQLite3.dll
; ===============================================================================================================================

; ------------------------------------------------------------------------------
; This software is provided 'as-is', without any express or
; implied warranty.  In no event will the authors be held liable for any
; damages arising from the use of this software.

; #VARIABLES# ===================================================================================================================
Global $g_hDll_SQLite = 0
Global $g_hDB_SQLite = 0
Global $g_bUTF8ErrorMsg_SQLite = False
Global $g_sPrintCallback_SQLite = "__SQLite_ConsoleWrite"
Global $__gbSafeModeState_SQLite = True ; Safemode State (boolean)
Global $__ghDBs_SQLite[1] = [''] ; Array of known $hDB handles
Global $__ghQuerys_SQLite[1] = [''] ; Array of known $hQuery handles
Global $__ghMsvcrtDll_SQLite = 0 ; pseudo dll handle for 'msvcrt.dll'
Global $__gaTempFiles_SQLite[1] = [''] ; Array of used Temp Files
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $SQLITE_OK = 0 ; /* Successful result */
Global Const $SQLITE_ERROR = 1 ; /* SQL error or missing database */
Global Const $SQLITE_INTERNAL = 2 ; /* An internal logic error in SQLite */
Global Const $SQLITE_PERM = 3 ; /* Access permission denied */
Global Const $SQLITE_ABORT = 4 ; /* Callback routine requested an abort */
Global Const $SQLITE_BUSY = 5 ; /* The database file is locked */
Global Const $SQLITE_LOCKED = 6 ; /* A table in the database is locked */
Global Const $SQLITE_NOMEM = 7 ; /* A malloc() failed */
Global Const $SQLITE_READONLY = 8 ; /* Attempt to write a readonly database */
Global Const $SQLITE_INTERRUPT = 9 ; /* Operation terminated by sqlite_interrupt() */
Global Const $SQLITE_IOERR = 10 ; /* Some kind of disk I/O error occurred */
Global Const $SQLITE_CORRUPT = 11 ; /* The database disk image is malformed */
Global Const $SQLITE_NOTFOUND = 12 ; /* (Internal Only) Table or record not found */
Global Const $SQLITE_FULL = 13 ; /* Insertion failed because database is full */
Global Const $SQLITE_CANTOPEN = 14 ; /* Unable to open the database file */
Global Const $SQLITE_PROTOCOL = 15 ; /* Database lock protocol error */
Global Const $SQLITE_EMPTY = 16 ; /* (Internal Only) Database table is empty */
Global Const $SQLITE_SCHEMA = 17 ; /* The database schema changed */
Global Const $SQLITE_TOOBIG = 18 ; /* Too much data for one row of a table */
Global Const $SQLITE_CONSTRAINT = 19 ; /* Abort due to constraint violation */
Global Const $SQLITE_MISMATCH = 20 ; /* Data type mismatch */
Global Const $SQLITE_MISUSE = 21 ; /* Library used incorrectly */
Global Const $SQLITE_NOLFS = 22 ; /* Uses OS features not supported on host */
Global Const $SQLITE_AUTH = 23 ; /* Authorization denied */
Global Const $SQLITE_ROW = 100 ; /* sqlite_step() has another row ready */
Global Const $SQLITE_DONE = 101 ; /* sqlite_step() has finished executing */

Global Const $SQLITE_OPEN_READONLY = 0x01 ; /* Database opened as read-only */
Global Const $SQLITE_OPEN_READWRITE = 0x02 ; /* Database opened as read-write */
Global Const $SQLITE_OPEN_CREATE = 0x04 ; /* Database will be created if not exists */

Global Const $SQLITE_ENCODING_UTF8 = 0 ; /* Database will be created if not exists with UTF8 encoding (default) */
Global Const $SQLITE_ENCODING_UTF16 = 1 ; /* Database will be created if not exists with UTF16le encoding */
Global Const $SQLITE_ENCODING_UTF16be = 2 ; /* Database will be created if not exists with UTF16be encoding (special usage) */

Global Const $SQLITE_TYPE_INTEGER = 1 ; /* column types */
Global Const $SQLITE_TYPE_FLOAT = 2
Global Const $SQLITE_TYPE_TEXT = 3
Global Const $SQLITE_TYPE_BLOB = 4
Global Const $SQLITE_TYPE_NULL = 5
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _SQLite_Startup
; _SQLite_Shutdown
; _SQLite_Open
; _SQLite_Close
; _SQLite_GetTable
; _SQLite_Exec
; _SQLite_LibVersion
; _SQLite_LastInsertRowID
; _SQLite_GetTable2d
; _SQLite_Changes
; _SQLite_TotalChanges
; _SQLite_ErrCode
; _SQLite_ErrMsg
; _SQLite_Display2DResult
; _SQLite_FetchData
; _SQLite_Query
; _SQLite_SetTimeout
; _SQLite_SafeMode
; _SQLite_QueryFinalize
; _SQLite_QueryReset
; _SQLite_FetchNames
; _SQLite_QuerySingleRow
; _SQLite_SQLiteExe
; _SQLite_Encode
; _SQLite_Escape
; _SQLite_FastEncode
; _SQLite_FastEscape
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; __SQLite_hChk
; __SQLite_hAdd
; __SQLite_hDel
; __SQLite_VersCmp
; __SQLite_hDbg
; __SQLite_ReportError
; __SQLite_szStringRead
; __SQLite_szFree
; __SQLite_StringToUtf8Struct
; __SQLite_Utf8StructToString
; __SQLite_ConsoleWrite
; __SQLite_Download_SQLite3Dll
; __SQLite_Print
; ===============================================================================================================================

#comments-start
	Changelog:
	26.11.05	Added _SQLite_QueryReset()
	26.11.05	Added _SQLite_QueryFinalize()
	26.11.05 	Added _SQLite_SaveMode()
	26.11.05 	Implemented SaveMode
	27.11.05	Renamed _SQLite_FetchArray() -> _SQLite_FetchData()
	27.11.05	Added _SQLite_FetchNames(), Example
	28.11.05	Removed _SQLite_Commit(), _SQLite_Close() handles $SQLITE_BUSY issues
	28.11.05	Added Function Headers
	28.11.05	Fixed Bug in _SQLite_Exec(), $sErrorMsg was set to 0 instead of 'Successful result'
	29.11.05	Changed _SQLite_Display2DResult(), Better Formating for Larger Tables & Ability to Return the Result
	30.11.05	Changed _SQLite_GetTable2d(), Ability to Switch Dimensions
	30.11.05	Fixed _SQLite_Display2DResult() $iCellWidth was ignored
	03.12.05	Added _SQLite_QuerySingleRow()
	04.12.05	Changed Standard $hDB Handling (Thank you jpm)
	04.12.05	Fixed Return Values of _SQLite_LibVersion(),_SQLite_LastInsertRowID(),_SQLite_Changes(),_SQLite_TotalChanges()
	04.12.05	Changed _SQLite_Open() now opens a ':memory:' database if no name specified
	05.12.05	Changed _SQLite_FetchData() NULL Values will be Skipped
	10.12.05	Changed _SQLite_QuerySingleResult() now uses 'sqlite3_get_table' API
	13.12.05	Added _SQLite_SQLiteExe() Wrapper for SQLite3.exe
	29.03.06	Removed _SQLite_SetGlobalTimeout()
	29.03.06	Added _SQLite_SetTimeout()
	17.05.06	:cdecl to support autoit debugging version
	18.05.06	_SQLite_SQLiteExe() now Creates nonexistent Directories
	18.05.06	Fixed SyntaxCheck Warnings (_SQLite_GetTable2d())
	21.05.06	Added support for Default Keyword for all Optional parameters
	25.05.06	Added _SQLite_Encode()
	25.05.06	Changed _SQLite_QueryNoResult() -> _SQLite_Execute()
	25.05.06	Changed _SQLite_FetchData() Binary Mode
	26.05.06	Removed _SQLite_GlobalRecover() out-of-memory recovery is automatic since SQLite 3.3.0
	26.05.06	Changed @error Values & Improved error catching (see Function headers)
	31.05.06	jpm's Nice @error values setting
	04.06.06	Inline SQLite3.dll
	08.06.06	Changed _SQLite_Exec(), _SQLite_GetTable2d(), _SQLite_GetTable() Removed '$sErrorMsg' parameter
	08.06.06	Removed _SQLite_Execute() because _SQLite_Exec() was the same
	08.06.06	Cleaning _SQLite_Startup(). (jpm)
	23.09.06	Fixed _SQLite_Exec() Memory Leak on SQL error
	23.09.06	Added SQL Error Reporting (only in interpreted mode)
	23.09.06	Added _SQLite_Escape()
	24.09.06	Changed _SQLite_Escape(), Changed _SQLite_GetTable*() New szString Reading method, Result will no longer be truncated
	25.09.06	Fixed Bug in szString read procedure (_SQLite_GetTable*, _SQLite_QuerySingleRow, _SQLite_Escape)
	29.09.06	Faster szString Reading, Function Header corrections
	29.09.06	Changed _SQLite_Exec() Callback
	12.03.07	Changed _SQLite_Query() to use 'sqlite3_prepare_v2' API
	16.03.07	Fixed _SQLite_Open() not setting @error, Missing DllClose() in _SQLite_Shutdown(), Stack corruption in szString reading procedure
	17.03.07	Improved Error handling/Reporting
	08.07.07	Fixed Bug in version comparison procedure
	26.10.07	Fixed _SQLite_SQLiteExe() referencing by default "Extras\SQLite\SQlite3.exe"
	23.06.08	Fixed _SQLite_* misuse if _SQLite_Startup() failed
	23.01.09	Fixed memory leak on error -> __SQLite_szFree() internal function
	01.05.09	Changed _SQLite_*() functions dealing with AutoIt Strings (Unicode string) for queries and results, without ANSI conversion.
	Note: no point for a Unicode version of _SQLite_SQLiteExe() since the DOS console doesn't handle Unicode. (jchd)
	02.05.09	Added _SQLite_Open() accepts a second parameter for read/write/create access mode. (jchd)
	04.05.09	Added _SQLite_Open() accepts a third parameter for UTF8/UTF16 encoding mode (Only use at creation time). (jpm)
	Warn: _SQLite_Open() is using now Filename that are Unicode as SQLite expects. Previous version was sending only Filenames with
	ASCII characters so previously script can have create valid ASCII filenames no more unreachable.
	25.05.09	_SQLite_Startup extra parameter to force UTF8 char on SciTE console with output.code.page=65001.
	09.06.09	_SQLite_SaveMode renamed to _SQLite_SafeMode().
	01.06.10	jchd updates ... _SQLite_FetchData, $iCharSize, _SQLite_QuerySingleRow, _SQLite_GetTable2d, _SQLite_Display2DResult.
	04.04.10	jchd Fixed _SQLite_Escape
	05.04.10	jchd Added _SQLite_FastEscape & _SQLite_FastEncode.
	06.04.10	jchd Updated _SQLite_GetTable.. optimization
	20.04.10	_SQLite_Startup() use FTP download instead of SQLite.dll.au3
	05.06.10	jchd Fixed _SQLite_Fetch_Data by forcing binary retrieval of BLOB items.  This fixes _SQLite_GetTable[2d] for blobs as well.
	05.08.10	Added _SQLite_Startup() can download maintenance version as 3.7.0.1.
	20.09.11	Valik Fixed SQLite library needs to support a user-defined callback for diagnostic messages instead of hard-coding ConsoleWrite().
	06.02.12	Fixed _SQLite_Startup() download error checking.
	08.11.13	Fixed running in X64 mode
	08.11.13	Fixed _SQLite_Startup() parameter checking and doc
#comments-end

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jpm
; ===============================================================================================================================
Func _SQLite_Startup($sDll_Filename = "", $bUTF8ErrorMsg = False, $iForceLocal = 0, $sPrintCallback = $g_sPrintCallback_SQLite)
	If $sDll_Filename = Default Or $sDll_Filename = -1 Then $sDll_Filename = ""

	; The $sPrintCallback parameter may look strange to assign it to $g_sPrintCallback_SQLite as
	; a default.  This is done so that $g_sPrintCallback_SQLite can be pre-initialized with the internal
	; callback in a single place in case that callback changes.  If the user overrides it then
	; that value becomes the new default.  An empty string will suppress any display.
	$g_sPrintCallback_SQLite = $sPrintCallback

	If $bUTF8ErrorMsg = Default Then $bUTF8ErrorMsg = False
	$g_bUTF8ErrorMsg_SQLite = $bUTF8ErrorMsg

	If $sDll_Filename = "" Then $sDll_Filename = "sqlite3.dll"
	If @AutoItX64 And (StringInStr($sDll_Filename, "_x64") = 0) Then $sDll_Filename = StringReplace($sDll_Filename, ".dll", "_x64.dll")

	Local $iExt = 0
	If $iForceLocal < 1 Then
		Local $bDownloadDLL = True
		Local $vInlineVersion = Call('__SQLite_Inline_Version')
		If @error Then $bDownloadDLL = False ; no valid SQLite version define so invalidate download

		If $iForceLocal = 0 Then
			; check SQLite version if local file exists
			If __SQLite_VersCmp(@ScriptDir & "\" & $sDll_Filename, $vInlineVersion) = $SQLITE_OK Then
				$sDll_Filename = @ScriptDir & "\" & $sDll_Filename
				$bDownloadDLL = False
			ElseIf __SQLite_VersCmp(@SystemDir & "\" & $sDll_Filename, $vInlineVersion) = $SQLITE_OK Then
				$sDll_Filename = @SystemDir & "\" & $sDll_Filename
				$bDownloadDLL = False
			ElseIf __SQLite_VersCmp(@WindowsDir & "\" & $sDll_Filename, $vInlineVersion) = $SQLITE_OK Then
				$sDll_Filename = @WindowsDir & "\" & $sDll_Filename
				$bDownloadDLL = False
			ElseIf __SQLite_VersCmp(@WorkingDir & "\" & $sDll_Filename, $vInlineVersion) = $SQLITE_OK Then
				$sDll_Filename = @WorkingDir & "\" & $sDll_Filename
				$bDownloadDLL = False
			EndIf
		EndIf

		If $bDownloadDLL Then
			If FileExists($sDll_Filename) Then
				$sDll_Filename = _TempFile(@TempDir, "~", ".dll")
				_ArrayAdd($__gaTempFiles_SQLite, $sDll_Filename)
				OnAutoItExitRegister("_SQLite_Shutdown") ; in case the script exit without calling _SQLite_Shutdown()
			Else
				; Create in SystemDir to avoid reloading: need #requireAdmin under Windows7/8
				$sDll_Filename = @SystemDir & "\" & $sDll_Filename
			EndIf
			If $iForceLocal Then
				; download the latest version. Usely related with internal testing.
				$vInlineVersion = ""
			Else
				; download the version related with the include version
				$vInlineVersion = "_" & $vInlineVersion
				$iExt = 1
			EndIf
			__SQLite_Download_SQLite3Dll($sDll_Filename, $vInlineVersion)
		EndIf
	EndIf
	Local $hDll = DllOpen($sDll_Filename)
	If $hDll = -1 Then
		$g_hDll_SQLite = 0
		Return SetError(1, $iExt, "")
	Else
		$g_hDll_SQLite = $hDll
		Return SetExtended($iExt, $sDll_Filename)
	EndIf
EndFunc   ;==>_SQLite_Startup

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_Shutdown()
	If $g_hDll_SQLite > 0 Then DllClose($g_hDll_SQLite)
	$g_hDll_SQLite = 0
	If $__ghMsvcrtDll_SQLite > 0 Then DllClose($__ghMsvcrtDll_SQLite)
	$__ghMsvcrtDll_SQLite = 0
	For $sTempFile In $__gaTempFiles_SQLite
		If FileExists($sTempFile) Then FileDelete($sTempFile)
	Next
	OnAutoItExitUnRegister("_SQLite_Shutdown")
EndFunc   ;==>_SQLite_Shutdown

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd, jpm
; ===============================================================================================================================
Func _SQLite_Open($sDatabase_Filename = Default, $iAccessMode = Default, $iEncoding = Default)
	If Not $g_hDll_SQLite Then Return SetError(3, $SQLITE_MISUSE, 0)
	If $sDatabase_Filename = Default Or Not IsString($sDatabase_Filename) Then $sDatabase_Filename = ":memory:"
	Local $tFilename = __SQLite_StringToUtf8Struct($sDatabase_Filename)
	If @error Then Return SetError(2, @error, 0)
	If $iAccessMode = Default Then $iAccessMode = BitOR($SQLITE_OPEN_READWRITE, $SQLITE_OPEN_CREATE)
	Local $OldBase = FileExists($sDatabase_Filename) ; encoding cannot be changed if base already exists
	If $iEncoding = Default Then
		$iEncoding = $SQLITE_ENCODING_UTF8
	EndIf
	Local $avRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_open_v2", "struct*", $tFilename, _ ; UTF-8 Database filename
			"ptr*", 0, _ ; OUT: SQLite db handle
			"int", $iAccessMode, _ ; database access mode
			"ptr", 0)
	If @error Then Return SetError(1, @error, 0) ; DllCall error
	If $avRval[0] <> $SQLITE_OK Then
		__SQLite_ReportError($avRval[2], "_SQLite_Open")
		_SQLite_Close($avRval[2])
		Return SetError(-1, $avRval[0], 0)
	EndIf

	$g_hDB_SQLite = $avRval[2]
	__SQLite_hAdd($__ghDBs_SQLite, $avRval[2])
	If Not $OldBase Then
		Local $encoding[3] = ["8", "16", "16be"]
		_SQLite_Exec($avRval[2], 'PRAGMA encoding="UTF-' & $encoding[$iEncoding] & '";')
	EndIf
	Return SetExtended($avRval[0], $avRval[2])
EndFunc   ;==>_SQLite_Open

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_GetTable($hDB, $sSQL, ByRef $aResult, ByRef $iRows, ByRef $iColumns, $iCharSize = -1)
	$aResult = ''
	If __SQLite_hChk($hDB, 1) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	If $iCharSize = "" Or $iCharSize < 1 Or $iCharSize = Default Then $iCharSize = -1
	; see comments in _SQLite_GetTable2d
	Local $hQuery
	Local $r = _SQLite_Query($hDB, $sSQL, $hQuery)
	If @error Then Return SetError(2, @error, $r)
	; we need column count and names
	Local $aDataRow
	$r = _SQLite_FetchNames($hQuery, $aDataRow)
	Local $err = @error
	If $err Then
		_SQLite_QueryFinalize($hQuery)
		Return SetError(3, $err, $r)
	EndIf
	$iColumns = UBound($aDataRow)
	Local Const $iRowsIncr = 64 ; initially allocate 64 datarows then grow by 4/3 of row count
	$iRows = 0 ; actual number of data rows
	Local $iAllocRows = $iRowsIncr ; number of allocated data rows
	Dim $aResult[($iAllocRows + 1) * $iColumns + 1]
	For $idx = 0 To $iColumns - 1
		If $iCharSize > 0 Then
			$aDataRow[$idx] = StringLeft($aDataRow[$idx], $iCharSize)
		EndIf
		$aResult[$idx + 1] = $aDataRow[$idx]
	Next
	While 1
		$r = _SQLite_FetchData($hQuery, $aDataRow, 0, 0, $iColumns)
		$err = @error
		Switch $r
			Case $SQLITE_OK
				$iRows += 1
				If $iRows = $iAllocRows Then
					$iAllocRows = Round($iAllocRows * 4 / 3)
					ReDim $aResult[($iAllocRows + 1) * $iColumns + 1]
				EndIf
				For $j = 0 To $iColumns - 1
					If $iCharSize > 0 Then
						$aDataRow[$j] = StringLeft($aDataRow[$j], $iCharSize)
					EndIf
					$idx += 1
					$aResult[$idx] = $aDataRow[$j]
				Next
			Case $SQLITE_DONE
				ExitLoop
			Case Else
				$aResult = ''
				_SQLite_QueryFinalize($hQuery)
				Return SetError(4, $err, $r)
		EndSwitch
	WEnd
	$aResult[0] = ($iRows + 1) * $iColumns
	ReDim $aResult[$aResult[0] + 1]
	Return ($SQLITE_OK)
EndFunc   ;==>_SQLite_GetTable

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_Exec($hDB, $sSQL, $sCallBack = "")
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	If $sCallBack <> "" Then
		Local $iRows, $iColumns
		Local $aResult = "SQLITE_CALLBACK:" & $sCallBack
		Local $iRval = _SQLite_GetTable2d($hDB, $sSQL, $aResult, $iRows, $iColumns)
		If @error Then Return SetError(3, @error, $iRval)
		Return $iRval
	EndIf
	Local $tSQL8 = __SQLite_StringToUtf8Struct($sSQL)
	If @error Then Return SetError(4, @error, 0)
	Local $avRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_exec", _
			"ptr", $hDB, _ ; An open database
			"struct*", $tSQL8, _ ; SQL to be executed
			"ptr", 0, _ ; Callback function
			"ptr", 0, _ ; 1st argument to callback function
			"long*", 0) ; Error msg written here
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	__SQLite_szFree($avRval[5]) ; free error message
	If $avRval[0] <> $SQLITE_OK Then
		__SQLite_ReportError($hDB, "_SQLite_Exec", $sSQL)
		SetError(-1)
	EndIf
	Return $avRval[0]
EndFunc   ;==>_SQLite_Exec

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_LibVersion()
	If $g_hDll_SQLite = 0 Then Return SetError(1, $SQLITE_MISUSE, 0)
	Local $r = DllCall($g_hDll_SQLite, "str:cdecl", "sqlite3_libversion")
	If @error Then Return SetError(1, @error, 0) ; DllCall error
	Return $r[0]
EndFunc   ;==>_SQLite_LibVersion

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_LastInsertRowID($hDB = -1)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, @extended, 0)
	Local $r = DllCall($g_hDll_SQLite, "long:cdecl", "sqlite3_last_insert_rowid", "ptr", $hDB)
	If @error Then Return SetError(1, @error, 0) ; DllCall error
	Return $r[0]
EndFunc   ;==>_SQLite_LastInsertRowID

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_Changes($hDB = -1)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, @extended, 0)
	Local $r = DllCall($g_hDll_SQLite, "long:cdecl", "sqlite3_changes", "ptr", $hDB)
	If @error Then Return SetError(1, @error, 0) ; DllCall error
	Return $r[0]
EndFunc   ;==>_SQLite_Changes

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_TotalChanges($hDB = -1)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, @extended, 0)
	Local $r = DllCall($g_hDll_SQLite, "long:cdecl", "sqlite3_total_changes", "ptr", $hDB)
	If @error Then Return SetError(1, @error, 0) ; DllCall error
	Return $r[0]
EndFunc   ;==>_SQLite_TotalChanges

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_ErrCode($hDB = -1)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $r = DllCall($g_hDll_SQLite, "long:cdecl", "sqlite3_errcode", "ptr", $hDB)
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	Return $r[0]
EndFunc   ;==>_SQLite_ErrCode

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_ErrMsg($hDB = -1)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, @extended, "Library used incorrectly")
	Local $r = DllCall($g_hDll_SQLite, "wstr:cdecl", "sqlite3_errmsg16", "ptr", $hDB)
	If @error Then
		__SQLite_ReportError($hDB, "_SQLite_ErrMsg", Default, "Call Failed")
		Return SetError(1, @error, "Library used incorrectly") ; DllCall error
	EndIf
	Return $r[0]
EndFunc   ;==>_SQLite_ErrMsg

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_Display2DResult($aResult, $iCellWidth = 0, $fReturn = False)
	If Not IsArray($aResult) Or UBound($aResult, 0) <> 2 Or $iCellWidth < 0 Then Return SetError(1, 0, "")
	Local $aiCellWidth
	If $iCellWidth = 0 Or $iCellWidth = Default Then
		Local $iCellWidthMax
		Dim $aiCellWidth[UBound($aResult, 2)]
		For $iRow = 0 To UBound($aResult, 1) - 1
			For $iCol = 0 To UBound($aResult, 2) - 1
				$iCellWidthMax = StringLen($aResult[$iRow][$iCol])
				If $iCellWidthMax > $aiCellWidth[$iCol] Then
					$aiCellWidth[$iCol] = $iCellWidthMax
				EndIf
			Next
		Next
	EndIf
	Local $sOut = "", $iCellWidthUsed
	For $iRow = 0 To UBound($aResult, 1) - 1
		For $iCol = 0 To UBound($aResult, 2) - 1
			If $iCellWidth = 0 Then
				$iCellWidthUsed = $aiCellWidth[$iCol]
			Else
				$iCellWidthUsed = $iCellWidth
			EndIf
			$sOut &= StringFormat(" %-" & $iCellWidthUsed & "." & $iCellWidthUsed & "s ", $aResult[$iRow][$iCol])
		Next
		$sOut &= @CRLF
		If Not $fReturn Then
			__SQLite_Print($sOut)
			$sOut = ""
		EndIf
	Next
	If $fReturn Then Return $sOut
EndFunc   ;==>_SQLite_Display2DResult

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian), blink314
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_GetTable2d($hDB, $sSQL, ByRef $aResult, ByRef $iRows, ByRef $iColumns, $iCharSize = -1, $fSwichDimensions = False)
	If __SQLite_hChk($hDB, 1) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	If $iCharSize = "" Or $iCharSize < 1 Or $iCharSize = Default Then $iCharSize = -1
	Local $sCallBack = "", $fCallBack = False
	If IsString($aResult) Then
		If StringLeft($aResult, 16) = "SQLITE_CALLBACK:" Then
			$sCallBack = StringTrimLeft($aResult, 16)
			$fCallBack = True
		EndIf
	EndIf
	$aResult = ''
	If $fSwichDimensions = Default Then $fSwichDimensions = False
	Local $hQuery
	Local $r = _SQLite_Query($hDB, $sSQL, $hQuery)
	If @error Then Return SetError(2, @error, $r)
	If $r <> $SQLITE_OK Then
		__SQLite_ReportError($hDB, "_SQLite_GetTable2d", $sSQL)
		_SQLite_QueryFinalize($hQuery)
		Return SetError(-1, 0, $r)
	EndIf
	$iRows = 0
	Local $iRval_Step, $err
	While True
		$iRval_Step = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_step", "ptr", $hQuery)
		If @error Then
			$err = @error
			_SQLite_QueryFinalize($hQuery)
			Return SetError(3, $err, $SQLITE_MISUSE) ; DllCall error
		EndIf
		Switch $iRval_Step[0]
			Case $SQLITE_ROW
				$iRows += 1
			Case $SQLITE_DONE
				ExitLoop
			Case Else
				_SQLite_QueryFinalize($hQuery)
				Return SetError(3, $err, $iRval_Step[0])
		EndSwitch
	WEnd
	Local $ret = _SQLite_QueryReset($hQuery)
	If @error Then
		$err = @error
		_SQLite_QueryFinalize($hQuery)
		Return SetError(4, $err, $ret)
	EndIf
	Local $aDataRow
	$r = _SQLite_FetchNames($hQuery, $aDataRow)
	If @error Then
		$err = @error
		_SQLite_QueryFinalize($hQuery)
		Return SetError(5, $err, $r)
	EndIf
	$iColumns = UBound($aDataRow)
	If $iColumns <= 0 Then
		_SQLite_QueryFinalize($hQuery)
		Return SetError(-1, 0, $SQLITE_DONE)
	EndIf
	If Not $fCallBack Then
		If $fSwichDimensions Then
			Dim $aResult[$iColumns][$iRows + 1]
			For $i = 0 To $iColumns - 1
				If $iCharSize > 0 Then
					$aDataRow[$i] = StringLeft($aDataRow[$i], $iCharSize)
				EndIf
				$aResult[$i][0] = $aDataRow[$i]
			Next
		Else
			Dim $aResult[$iRows + 1][$iColumns]
			For $i = 0 To $iColumns - 1
				If $iCharSize > 0 Then
					$aDataRow[$i] = StringLeft($aDataRow[$i], $iCharSize)
				EndIf
				$aResult[0][$i] = $aDataRow[$i]
			Next
		EndIf
	Else
		Local $iCbRval
		$iCbRval = Call($sCallBack, $aDataRow)
		If $iCbRval = $SQLITE_ABORT Or $iCbRval = $SQLITE_INTERRUPT Or @error Then
			$err = @error
			_SQLite_QueryFinalize($hQuery)
			Return SetError(7, $err, $iCbRval)
		EndIf
	EndIf
	If $iRows > 0 Then
		For $i = 1 To $iRows
			$r = _SQLite_FetchData($hQuery, $aDataRow, 0, 0, $iColumns)
			If @error Then
				$err = @error
				_SQLite_QueryFinalize($hQuery)
				Return SetError(6, $err, $r)
			EndIf
			If $fCallBack Then
				$iCbRval = Call($sCallBack, $aDataRow)
				If $iCbRval = $SQLITE_ABORT Or $iCbRval = $SQLITE_INTERRUPT Or @error Then
					$err = @error
					_SQLite_QueryFinalize($hQuery)
					Return SetError(7, $err, $iCbRval)
				EndIf
			Else
				For $j = 0 To $iColumns - 1
					If $iCharSize > 0 Then
						$aDataRow[$j] = StringLeft($aDataRow[$j], $iCharSize)
					EndIf
					If $fSwichDimensions Then
						$aResult[$j][$i] = $aDataRow[$j]
					Else
						$aResult[$i][$j] = $aDataRow[$j]
					EndIf
				Next
			EndIf
		Next
	EndIf
	Return (_SQLite_QueryFinalize($hQuery))
EndFunc   ;==>_SQLite_GetTable2d

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_SetTimeout($hDB = -1, $iTimeout = 1000)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	If $iTimeout = Default Then $iTimeout = 1000
	Local $avRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_busy_timeout", "ptr", $hDB, "int", $iTimeout)
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	If $avRval[0] <> $SQLITE_OK Then SetError(-1)
	Return $avRval[0]
EndFunc   ;==>_SQLite_SetTimeout

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_Query($hDB, $sSQL, ByRef $hQuery)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $iRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_prepare16_v2", _
			"ptr", $hDB, _
			"wstr", $sSQL, _
			"int", -1, _
			"ptr*", 0, _ ; OUT: Statement handle
			"ptr*", 0) ; OUT: Pointer to unused portion of zSql
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	If $iRval[0] <> $SQLITE_OK Then
		__SQLite_ReportError($hDB, "_SQLite_Query", $sSQL)
		Return SetError(-1, 0, $iRval[0])
	EndIf
	$hQuery = $iRval[4]
	__SQLite_hAdd($__ghQuerys_SQLite, $iRval[4])
	Return $iRval[0]
EndFunc   ;==>_SQLite_Query

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_FetchData($hQuery, ByRef $aRow, $fBinary = False, $fDoNotFinalize = False, $iColumns = 0)
	Dim $aRow[1]
	If __SQLite_hChk($hQuery, 7, False) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	If $fBinary = Default Then $fBinary = False
	If $fDoNotFinalize = Default Then $fDoNotFinalize = False
	Local $iRval_Step = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_step", "ptr", $hQuery)
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	If $iRval_Step[0] <> $SQLITE_ROW Then
		If $fDoNotFinalize = False And $iRval_Step[0] = $SQLITE_DONE Then
			_SQLite_QueryFinalize($hQuery)
		EndIf
		Return SetError(-1, 0, $iRval_Step[0])
	EndIf
	If Not $iColumns Then
		Local $iRval_ColCnt = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_data_count", "ptr", $hQuery)
		If @error Then Return SetError(2, @error, $SQLITE_MISUSE) ; DllCall error
		If $iRval_ColCnt[0] <= 0 Then Return SetError(-1, 0, $SQLITE_DONE)
		$iColumns = $iRval_ColCnt[0]
	EndIf
	ReDim $aRow[$iColumns]
	For $i = 0 To $iColumns - 1
		Local $iRval_coltype = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_column_type", "ptr", $hQuery, "int", $i)
		If @error Then Return SetError(4, @error, $SQLITE_MISUSE) ; DllCall error
		If $iRval_coltype[0] = $SQLITE_TYPE_NULL Then
			$aRow[$i] = ""
			ContinueLoop
		EndIf
		If (Not $fBinary) And ($iRval_coltype[0] <> $SQLITE_TYPE_BLOB) Then
			Local $sRval = DllCall($g_hDll_SQLite, "wstr:cdecl", "sqlite3_column_text16", "ptr", $hQuery, "int", $i)
			If @error Then Return SetError(3, @error, $SQLITE_MISUSE) ; DllCall error
			$aRow[$i] = $sRval[0]
		Else
			Local $vResult = DllCall($g_hDll_SQLite, "ptr:cdecl", "sqlite3_column_blob", "ptr", $hQuery, "int", $i)
			If @error Then Return SetError(6, @error, $SQLITE_MISUSE) ; DllCall error
			Local $iColBytes = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_column_bytes", "ptr", $hQuery, "int", $i)
			If @error Then Return SetError(5, @error, $SQLITE_MISUSE) ; DllCall error
			Local $vResultStruct = DllStructCreate("byte[" & $iColBytes[0] & "]", $vResult[0])
			$aRow[$i] = Binary(DllStructGetData($vResultStruct, 1))
		EndIf
	Next
	Return $SQLITE_OK
EndFunc   ;==>_SQLite_FetchData

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_Close($hDB = -1)
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $iRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_close", "ptr", $hDB) ; An open database
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	If $iRval[0] <> $SQLITE_OK Then
		__SQLite_ReportError($hDB, "_SQLite_Close")
		Return SetError(-1, 0, $iRval[0])
	EndIf
	$g_hDB_SQLite = 0
	__SQLite_hDel($__ghDBs_SQLite, $hDB)
	Return $iRval[0]
EndFunc   ;==>_SQLite_Close

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_SafeMode($fSafeModeState)
	$__gbSafeModeState_SQLite = ($fSafeModeState = True)
	Return $SQLITE_OK
EndFunc   ;==>_SQLite_SafeMode

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_QueryFinalize($hQuery)
	If __SQLite_hChk($hQuery, 2, False) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $avRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_finalize", "ptr", $hQuery)
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	__SQLite_hDel($__ghQuerys_SQLite, $hQuery)
	If $avRval[0] <> $SQLITE_OK Then SetError(-1)
	Return $avRval[0]
EndFunc   ;==>_SQLite_QueryFinalize

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_QueryReset($hQuery)
	If __SQLite_hChk($hQuery, 2, False) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $avRval = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_reset", "ptr", $hQuery)
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	If $avRval[0] <> $SQLITE_OK Then SetError(-1)
	Return $avRval[0]
EndFunc   ;==>_SQLite_QueryReset

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_FetchNames($hQuery, ByRef $aNames)
	Dim $aNames[1]
	If __SQLite_hChk($hQuery, 3, False) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $avDataCnt = DllCall($g_hDll_SQLite, "int:cdecl", "sqlite3_column_count", "ptr", $hQuery)
	If @error Then Return SetError(1, @error, $SQLITE_MISUSE) ; DllCall error
	If $avDataCnt[0] <= 0 Then Return SetError(-1, 0, $SQLITE_DONE)
	ReDim $aNames[$avDataCnt[0]]
	Local $avColName
	For $iCnt = 0 To $avDataCnt[0] - 1
		$avColName = DllCall($g_hDll_SQLite, "wstr:cdecl", "sqlite3_column_name16", "ptr", $hQuery, "int", $iCnt)
		If @error Then Return SetError(2, @error, $SQLITE_MISUSE) ; DllCall error
		$aNames[$iCnt] = $avColName[0]
	Next
	Return $SQLITE_OK
EndFunc   ;==>_SQLite_FetchNames

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian), jchd
; ===============================================================================================================================
Func _SQLite_QuerySingleRow($hDB, $sSQL, ByRef $aRow)
	$aRow = ''
	If __SQLite_hChk($hDB, 2) Then Return SetError(@error, 0, $SQLITE_MISUSE)
	Local $hQuery
	Local $iRval = _SQLite_Query($hDB, $sSQL, $hQuery)
	If @error Then
		_SQLite_QueryFinalize($hQuery)
		Return SetError(1, 0, $iRval)
	Else
		$iRval = _SQLite_FetchData($hQuery, $aRow)
		If $iRval = $SQLITE_OK Then
			_SQLite_QueryFinalize($hQuery)
			If @error Then
				Return SetError(4, 0, $iRval)
			Else
				Return $SQLITE_OK
			EndIf
		Else
			_SQLite_QueryFinalize($hQuery)
			Return SetError(3, 0, $iRval)
		EndIf
	EndIf
EndFunc   ;==>_SQLite_QuerySingleRow

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func _SQLite_SQLiteExe($sDatabaseFile, $sInput, ByRef $sOutput, $sSQLiteExeFilename = -1, $fDebug = False)
	If $sSQLiteExeFilename = -1 Or $sSQLiteExeFilename = Default Then
		$sSQLiteExeFilename = "SQLite3.exe"
		If Not FileExists($sSQLiteExeFilename) Then
			Local $aTemp = StringSplit(@AutoItExe, "\")
			$sSQLiteExeFilename = ""
			For $i = 1 To $aTemp[0] - 1
				$sSQLiteExeFilename &= $aTemp[$i] & "\"
			Next
			$sSQLiteExeFilename &= "Extras\SQLite\SQLite3.exe"
		EndIf
	EndIf
	If Not FileExists($sDatabaseFile) Then
		Local $hNewFile = FileOpen($sDatabaseFile, $FO_OVERWRITE + $FD_PROMPTCREATENEW)
		If $hNewFile = -1 Then
			Return SetError(1, 0, $SQLITE_CANTOPEN) ; Can't Create new Database
		EndIf
		FileClose($hNewFile)
	EndIf
	Local $sInputFile = _TempFile(), $sOutputFile = _TempFile(), $iRval = $SQLITE_OK
	Local $hInputFile = FileOpen($sInputFile, $FO_OVERWRITE)
	If $hInputFile > -1 Then
		$sInput = ".output stdout" & @CRLF & $sInput
		FileWrite($hInputFile, $sInput)
		FileClose($hInputFile)
		Local $sCmd = @ComSpec & " /c " & FileGetShortName($sSQLiteExeFilename) & '  "' _
				 & FileGetShortName($sDatabaseFile) _
				 & '" > "' & FileGetShortName($sOutputFile) _
				 & '" < "' & FileGetShortName($sInputFile) & '"'
		Local $nErrorLevel = RunWait($sCmd, @WorkingDir, @SW_HIDE)
		If $fDebug = True Then
			Local $nErrorTemp = @error
			__SQLite_Print('@@ Debug(_SQLite_SQLiteExe) : $sCmd = ' & $sCmd & @CRLF & '>ErrorLevel: ' & $nErrorLevel & @CRLF)
			SetError($nErrorTemp)
		EndIf
		If @error = 1 Or $nErrorLevel = 1 Then
			$iRval = $SQLITE_MISUSE ; SQLite.exe not found
		Else
			$sOutput = FileRead($sOutputFile, FileGetSize($sOutputFile))
			If StringInStr($sOutput, "SQL error:", 1) > 0 Or StringInStr($sOutput, "Incomplete SQL:", 1) > 0 Then $iRval = $SQLITE_ERROR ; SQL error / Incomplete SQL
		EndIf
	Else
		$iRval = $SQLITE_CANTOPEN ; Can't open Input File
	EndIf
	If FileExists($sInputFile) Then FileDelete($sInputFile)
	Switch $iRval
		Case $SQLITE_MISUSE
			SetError(2)
		Case $SQLITE_ERROR
			SetError(3)
		Case $SQLITE_CANTOPEN
			SetError(4)
	EndSwitch
	Return $iRval
EndFunc   ;==>_SQLite_SQLiteExe

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_Encode($vData)
	If IsNumber($vData) Then $vData = String($vData)
	If Not IsString($vData) And Not IsBinary($vData) Then Return SetError(1, 0, "")
	Local $vRval = "X'"
	If StringLower(StringLeft($vData, 2)) = "0x" And Not IsBinary($vData) Then
		; BinaryString would mess this up...
		For $iCnt = 1 To StringLen($vData)
			$vRval &= Hex(Asc(StringMid($vData, $iCnt, 1)), 2)
		Next
	Else
		; BinaryString is Faster
		If Not IsBinary($vData) Then $vData = StringToBinary($vData, 4)
		$vRval &= Hex($vData)
	EndIf
	$vRval &= "'"
	Return $vRval
EndFunc   ;==>_SQLite_Encode

; #FUNCTION# ====================================================================================================================
; Author ........: piccaso (Fida Florian)
; Modified.......: jchd
; ===============================================================================================================================
Func _SQLite_Escape($sString, $iBuffSize = Default)
	If $g_hDll_SQLite = 0 Then Return SetError(1, $SQLITE_MISUSE, "")
	If IsNumber($sString) Then $sString = String($sString) ; to help number passing common error
	Local $tSQL8 = __SQLite_StringToUtf8Struct($sString)
	If @error Then Return SetError(2, @error, 0)
	Local $aRval = DllCall($g_hDll_SQLite, "ptr:cdecl", "sqlite3_mprintf", "str", "'%q'", "struct*", $tSQL8)
	If @error Then Return SetError(1, @error, "") ; DllCall error
	If $iBuffSize = Default Or $iBuffSize < 1 Then $iBuffSize = -1
	Local $sResult = __SQLite_szStringRead($aRval[0], $iBuffSize)
	If @error Then Return SetError(3, @error, "") ; DllCall error
	DllCall($g_hDll_SQLite, "none:cdecl", "sqlite3_free", "ptr", $aRval[0])
	Return $sResult
EndFunc   ;==>_SQLite_Escape

; #FUNCTION# ====================================================================================================================
; Author ........: jchd
; ===============================================================================================================================
Func _SQLite_FastEncode($vData)
	If Not IsBinary($vData) Then Return SetError(1, 0, "")
	Return "X'" & Hex($vData) & "'"
EndFunc   ;==>_SQLite_FastEncode

; #FUNCTION# ====================================================================================================================
; Author ........: jchd
; ===============================================================================================================================
Func _SQLite_FastEscape($sString)
	If IsNumber($sString) Then $sString = String($sString) ; don't raise error if passing a numeric parameter
	If Not IsString($sString) Then Return SetError(1, 0, "")
	Return ("'" & StringReplace($sString, "'", "''", 0, 1) & "'")
EndFunc   ;==>_SQLite_FastEscape

#region		SQLite.au3 Internal Functions
; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __xxx
; Author ........: piccaso (Fida Florian)
; ===============================================================================================================================
Func __SQLite_hChk(ByRef $hGeneric, $nError, $bDB = True)
	If $g_hDll_SQLite = 0 Then Return SetError(1, $SQLITE_MISUSE, $SQLITE_MISUSE)
	If $hGeneric = -1 Or $hGeneric = "" Or $hGeneric = Default Then
		If Not $bDB Then Return SetError($nError, 0, $SQLITE_ERROR)
		$hGeneric = $g_hDB_SQLite
	EndIf
	If Not $__gbSafeModeState_SQLite Then Return $SQLITE_OK
	If $bDB Then
		If _ArraySearch($__ghDBs_SQLite, $hGeneric) > 0 Then Return $SQLITE_OK
	Else
		If _ArraySearch($__ghQuerys_SQLite, $hGeneric) > 0 Then Return $SQLITE_OK
	EndIf
	Return SetError($nError, 0, $SQLITE_ERROR)
EndFunc   ;==>__SQLite_hChk

Func __SQLite_hAdd(ByRef $ahLists, $hGeneric)
	_ArrayAdd($ahLists, $hGeneric)
EndFunc   ;==>__SQLite_hAdd

Func __SQLite_hDel(ByRef $ahLists, $hGeneric)
	Local $iElement = _ArraySearch($ahLists, $hGeneric)
	If $iElement > 0 Then _ArrayDelete($ahLists, $iElement)
EndFunc   ;==>__SQLite_hDel

Func __SQLite_VersCmp($sFile, $sVersion)
	; sqlite3_libversion_number cannot be used as it does not contain maintenance number as X.Y.Z.M
	Local $avRval = DllCall($sFile, "str:cdecl", "sqlite3_libversion")
	If @error Then Return $SQLITE_CORRUPT ; Not SQLite3.dll or Not found

	Local $szFileVersion = StringSplit($avRval[0], ".")
	Local $MaintVersion = 0
	If $szFileVersion[0] = 4 Then $MaintVersion = $szFileVersion[4]
	$szFileVersion = (($szFileVersion[1] * 1000 + $szFileVersion[2]) * 1000 + $szFileVersion[3]) * 100 + $MaintVersion
	If $sVersion < 10000000 Then $sVersion = $sVersion * 100 ; SQLite.dll.au3::__SQLite_Inline_Version() before 3.7.0.1 does not contain maintenance number

	If $szFileVersion >= $sVersion Then Return $SQLITE_OK ; Version OK
	Return $SQLITE_MISMATCH ; Version Older
EndFunc   ;==>__SQLite_VersCmp

Func __SQLite_hDbg()
	__SQLite_Print("State : " & $__gbSafeModeState_SQLite & @CRLF)
	Local $aTmp = $__ghDBs_SQLite
	For $i = 0 To UBound($aTmp) - 1
		__SQLite_Print("$__ghDBs_SQLite     -> [" & $i & "]" & $aTmp[$i] & @CRLF)
	Next
	$aTmp = $__ghQuerys_SQLite
	For $i = 0 To UBound($aTmp) - 1
		__SQLite_Print("$__ghQuerys_SQLite  -> [" & $i & "]" & $aTmp[$i] & @CRLF)
	Next
EndFunc   ;==>__SQLite_hDbg

Func __SQLite_ReportError($hDB, $sFunction, $sQuery = Default, $sError = Default, $vReturnValue = Default, $curErr = @error, $curExt = @extended)
	If @Compiled Then Return SetError($curErr, $curExt)
	If $sError = Default Then $sError = _SQLite_ErrMsg($hDB)
	If $sQuery = Default Then $sQuery = ""
	Local $sOut = "!   SQLite.au3 Error" & @CRLF
	$sOut &= "--> Function: " & $sFunction & @CRLF
	If $sQuery <> "" Then $sOut &= "--> Query:    " & $sQuery & @CRLF
	$sOut &= "--> Error:    " & $sError & @CRLF
	__SQLite_Print($sOut & @CRLF)
	If Not ($vReturnValue = Default) Then Return SetError($curErr, $curExt, $vReturnValue)
	Return SetError($curErr, $curExt)
EndFunc   ;==>__SQLite_ReportError

Func __SQLite_szStringRead($iszPtr, $iMaxLen = -1)
	If $iszPtr = 0 Then Return ""
	If $__ghMsvcrtDll_SQLite < 1 Then $__ghMsvcrtDll_SQLite = DllOpen("msvcrt.dll")
	Local $aStrLen = DllCall($__ghMsvcrtDll_SQLite, "ulong_ptr:cdecl", "strlen", "ptr", $iszPtr)
	If @error Then Return SetError(1, @error, "") ; DllCall error
	Local $iLen = $aStrLen[0] + 1
	Local $vszString = DllStructCreate("byte[" & $iLen & "]", $iszPtr)
	If @error Then Return SetError(2, @error, "")
	Local $err = 0
	Local $rtn = __SQLite_Utf8StructToString($vszString)
	If @error Then
		$err = 3
	EndIf
	If $iMaxLen <= 0 Then
		Return SetError($err, @extended, $rtn)
	Else
		Return SetError($err, @extended, StringLeft($rtn, $iMaxLen))
	EndIf
EndFunc   ;==>__SQLite_szStringRead

Func __SQLite_szFree($Ptr, $curErr = @error)
	If $Ptr <> 0 Then DllCall($g_hDll_SQLite, "none:cdecl", "sqlite3_free", "ptr", $Ptr)
	SetError($curErr)
EndFunc   ;==>__SQLite_szFree

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __SQLite_StringToUtf8Struct
; Description ...: UTF-16 to UTF-8 (as struct) conversion
; Syntax.........: __SQLite_StringToUtf8Struct ( $sString )
; Parameters ....: $sString     - String to be converted
; Return values .: Success      - Utf8 structure
;                  Failure      - Set @error
; Author ........: jchd
; Modified.......: jpm
; ===============================================================================================================================
Func __SQLite_StringToUtf8Struct($sString)
	Local $aResult = DllCall("kernel32.dll", "int", "WideCharToMultiByte", "uint", 65001, "dword", 0, "wstr", $sString, "int", -1, _
			"ptr", 0, "int", 0, "ptr", 0, "ptr", 0)
	If @error Then Return SetError(1, @error, "") ; DllCall error
	Local $tText = DllStructCreate("char[" & $aResult[0] & "]")
	$aResult = DllCall("Kernel32.dll", "int", "WideCharToMultiByte", "uint", 65001, "dword", 0, "wstr", $sString, "int", -1, _
			"struct*", $tText, "int", $aResult[0], "ptr", 0, "ptr", 0)
	If @error Then Return SetError(2, @error, "") ; DllCall error
	Return $tText
EndFunc   ;==>__SQLite_StringToUtf8Struct

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __SQLite_Utf8StructToString
; Description ...: UTF-8 (as struct) to UTF-16 conversion
; Syntax.........: __SQLite_Utf8StructToString ( $tText )
; Parameters ....: $tText       - Uft8 Structure
; Return values .: Success      - String converted
;                  Failure      - Set @error
; Author ........: jchd
; Modified.......: jpm
; ===============================================================================================================================
Func __SQLite_Utf8StructToString($tText)
	Local $aResult = DllCall("kernel32.dll", "int", "MultiByteToWideChar", "uint", 65001, "dword", 0, "struct*", $tText, "int", -1, _
			"ptr", 0, "int", 0)
	If @error Then Return SetError(1, @error, "") ; DllCall error
	Local $tWstr = DllStructCreate("wchar[" & $aResult[0] & "]")
	$aResult = DllCall("Kernel32.dll", "int", "MultiByteToWideChar", "uint", 65001, "dword", 0, "struct*", $tText, "int", -1, _
			"struct*", $tWstr, "int", $aResult[0])
	If @error Then Return SetError(2, @error, "") ; DllCall error
	Return DllStructGetData($tWstr, 1)
EndFunc   ;==>__SQLite_Utf8StructToString

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __SQLite_ConsoleWrite
; Description ...: write an ANSI or UNICODE String to Console
; Syntax.........: __SQLite_ConsoleWrite ( $sText )
; Parameters ....: $sText - Unicode String
; Return values .: none
; Author ........: jchd
; Modified.......: jpm
; ===============================================================================================================================
Func __SQLite_ConsoleWrite($sText)
	ConsoleWrite($sText)
EndFunc   ;==>__SQLite_ConsoleWrite

Func __SQLite_Download_SQLite3Dll(ByRef $tempfile, $version)
	Local $URL = "http://www.autoitscript.com/autoit3/files/beta/autoit/archive/sqlite/SQLite3" & $version
	Local $ret
	If @AutoItX64 Then
		$ret = InetGet($URL & "_x64.dll", $tempfile, $INET_FORCERELOAD)
	Else
		$ret = InetGet($URL & ".dll", $tempfile, $INET_FORCERELOAD)
	EndIf
	If @error And StringInStr($tempfile, @SystemDir) Then
		$tempfile = _TempFile(@TempDir, "~", ".dll")
		_ArrayAdd($__gaTempFiles_SQLite, $tempfile)
		OnAutoItExitRegister("_SQLite_Shutdown") ; in case the script exit without calling _SQLite_Shutdown()
		$ret = __SQLite_Download_SQLite3Dll($tempfile, $version)
		Return SetError(@error, 0, $ret)
	EndIf
	Local $error = @error
	If @error Then __SQLite_Print('@@ Debug(__SQLite_Download_SQLite3Dll) : $URL = ' & $URL & @CRLF & '$tempfile = ' & $tempfile & @CRLF & '>Error: ' & $error & @CRLF)

	Local $sModifiedTime = Call('__SQLite_Inline_Modified')
	If Not @error Then FileSetTime($tempfile, $sModifiedTime, 0) ; update filetime if defined
	Return SetError($error, 0, $ret)
EndFunc   ;==>__SQLite_Download_SQLite3Dll

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __SQLite_Print
; Description ...: Prints an ANSI or UNICODE String to the user-specified callback function.
; Syntax.........: __SQLite_Print ( $sText )
; Parameters ....: $sText - Unicode String
; Return values .: none
; Author ........: Valik
; ===============================================================================================================================
Func __SQLite_Print($sText)
	; Don't do anything if there is no callback registered.
	If $g_sPrintCallback_SQLite Then
		If $g_bUTF8ErrorMsg_SQLite Then
			; can be used when sending to application such SciTE configured with output.code.page=65001
			Local $tStr8 = __SQLite_StringToUtf8Struct($sText)
			Call($g_sPrintCallback_SQLite, DllStructGetData($tStr8, 1))
		Else
			Call($g_sPrintCallback_SQLite, $sText)
		EndIf
	EndIf
EndFunc   ;==>__SQLite_Print

#endregion		SQLite.au3 Internal Functions
