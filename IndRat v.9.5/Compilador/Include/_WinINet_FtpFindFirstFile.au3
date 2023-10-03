#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Set variables
Global $sServerName = ""
Global $iServerPort = 21
Global $sUsername = Default
Global $sPassword = Default

Global $sDirectory = "/"
Global $sFilenameFilter = "*"

; Create handles
Global $hInternetOpen = _WinINet_InternetOpen("AutoIt/" & @AutoItVersion)
Global $hInternetConnect = _WinINet_InternetConnect($hInternetOpen, $INTERNET_SERVICE_FTP, $sServerName, $iServerPort, 0, $sUsername, $sPassword)

; Enumerate directory files
If _WinINet_FtpSetCurrentDirectory($hInternetConnect, $sDirectory) Then
	Global $avFtpFile = _WinINet_FtpFindFirstFile($hInternetConnect, $sFilenameFilter)
	While Not @error
		ConsoleWrite(DllStructGetData($avFtpFile[1], "FileName") & @CRLF)
		_WinINet_InternetFindNextFile($avFtpFile[0], DllStructGetPtr($avFtpFile[1]))
	WEnd
EndIf

; Cleanup
_WinINet_InternetCloseHandle($hInternetConnect)
_WinINet_InternetCloseHandle($hInternetOpen)
_WinINet_Shutdown()
