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

; Create handles
Global $hInternetOpen = _WinINet_InternetOpen("AutoIt/" & @AutoItVersion)
Global $hInternetConnect = _WinINet_InternetConnect($hInternetOpen, $INTERNET_SERVICE_FTP, $sServerName, $iServerPort, 0, $sUsername, $sPassword)

; Create directory
ConsoleWrite("Creating directory..." & @CRLF)
Sleep($iPauseTime)
_WinINet_FtpCommand($hInternetConnect, "MKD " & $sDirectory)
ConsoleWrite("Server Response: " & _WinINet_InternetGetLastResponseInfo() & @CRLF)

; Change current working directory
ConsoleWrite("Entering created directory..." & @CRLF)
Sleep($iPauseTime)
_WinINet_FtpCommand($hInternetConnect, "CWD " & $sDirectory)
ConsoleWrite("Server Response: " & _WinINet_InternetGetLastResponseInfo() & @CRLF)

; Change current working directory
ConsoleWrite("Exiting created directory..." & @CRLF)
Sleep($iPauseTime)
_WinINet_FtpCommand($hInternetConnect, "CWD ..")
ConsoleWrite("Server Response: " & _WinINet_InternetGetLastResponseInfo() & @CRLF)

; Remove directory
ConsoleWrite("Removing created directory..." & @CRLF)
Sleep($iPauseTime)
_WinINet_FtpCommand($hInternetConnect, "RMD " & $sDirectory)
ConsoleWrite("Server Response: " & _WinINet_InternetGetLastResponseInfo() & @CRLF)

; Cleanup
_WinINet_InternetCloseHandle($hInternetConnect)
_WinINet_InternetCloseHandle($hInternetOpen)
_WinINet_Shutdown()
