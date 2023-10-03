#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Set variables
Global $sServerName = ""
Global $iServerPort = 21
Global $sUsername = Default
Global $sPassword = Default

Global $iPauseTime = 3000
Global $sDirectory = "/_WININET_UDF_TEST_DIRECTORY_"
Global $sFile = "_WININET_UDF_TEST_FILE_"
Global $sFileRenamed = "_WININET_UDF_TEST_FILE_RENAMED_"

; Create handles
Global $hInternetOpen = _WinINet_InternetOpen("AutoIt/" & @AutoItVersion)
Global $hInternetConnect = _WinINet_InternetConnect($hInternetOpen, $INTERNET_SERVICE_FTP, $sServerName, $iServerPort, 0, $sUsername, $sPassword)

; Create new directory
_WinINet_FtpCreateDirectory($hInternetConnect, $sDirectory)
_WinINet_FtpSetCurrentDirectory($hInternetConnect, $sDirectory)
ConsoleWrite("Current Directory: " & _WinINet_FtpGetCurrentDirectory($hInternetConnect) & @CRLF & @CRLF)

; Create/upload test file
Sleep($iPauseTime)
ConsoleWrite("Uploading: " & @TempDir & "\" & $sFile & @CRLF)
FileWrite(@TempDir & "\" & $sFile, "AutoIt v" & @AutoItVersion)
_WinINet_FtpPutFile($hInternetConnect, @TempDir & "\" & $sFile, $sFile)

; Rename test file
Sleep($iPauseTime)
ConsoleWrite("Renaming to: " & $sFileRenamed & @CRLF)
_WinINet_FtpRenameFile($hInternetConnect, $sFile, $sFileRenamed)

; Make sure remote file exists
Global $avFtpFile = _WinINet_FtpFindFirstFile($hInternetConnect, $sFileRenamed)
If Not @error Then
	ConsoleWrite("Found: " & DllStructGetData($avFtpFile[1], "FileName") & @CRLF & @CRLF)

	; Check remote file size
	Sleep($iPauseTime)
	ConsoleWrite("Local Size: " & FileGetSize(@TempDir & "\" & $sFile) & @CRLF)

	Global $hFtpOpenFile = _WinINet_FtpOpenFile($hInternetConnect, $sFileRenamed, $GENERIC_READ)
	Global $iFileSize = _WinINet_FtpGetFileSize($hFtpOpenFile)
	ConsoleWrite("Remote Size: " & $iFileSize & @CRLF & @CRLF)

	; Read remote file
	Sleep($iPauseTime)
	Global $vReceived = Binary("")
	Do
		$vReceived &= _WinINet_InternetReadFile($hFtpOpenFile, $iFileSize)
	Until @error Or Not @extended
	_WinINet_InternetCloseHandle($hFtpOpenFile)

	ConsoleWrite("Remote file contents: " & BinaryToString($vReceived) & @CRLF)

	; Download remote file
	Sleep($iPauseTime)
	_WinINet_FtpGetFile($hInternetConnect, $sFileRenamed, @TempDir & "\" & $sFileRenamed)
	ConsoleWrite("Downloaded file contents: " & FileRead(@TempDir & "\" & $sFileRenamed) & @CRLF & @CRLF)

	; Delete remote file
	Sleep($iPauseTime)
	ConsoleWrite("Deleting remote file..."& @CRLF)
	_WinINet_FtpDeleteFile($hInternetConnect, $sFileRenamed)

	; Delete remote directory
	Sleep($iPauseTime)
	ConsoleWrite("Deleting remote directory..."& @CRLF)
	_WinINet_FtpSetCurrentDirectory($hInternetConnect, $sDirectory & "/..")
	_WinINet_FtpRemoveDirectory($hInternetConnect, $sDirectory)
EndIf

; Cleanup...
ConsoleWrite("Local cleanup..."& @CRLF)
FileDelete(@TempDir & "\" & $sFile)
FileDelete(@TempDir & "\" & $sFileRenamed)

; Cleanup
_WinINet_InternetCloseHandle($hInternetConnect)
_WinINet_InternetCloseHandle($hInternetOpen)
_WinINet_Shutdown()
