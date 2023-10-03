#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Create a dummy cache entry
Global $sSourceUrlName = "http://www.autoitscript.com/"
Global $sLocalFileName = _WinINet_CreateUrlCacheEntry($sSourceUrlName)

; Commit the dummy entry to disk
_WinINet_CommitUrlCacheEntry($sSourceUrlName, $sLocalFileName)

; Get the cache entry info
Global $avCacheEntryInfo = _WinINet_GetUrlCacheEntryInfo($sSourceUrlName)

; Print the cache entry info
For $i = 0 To UBound($avCacheEntryInfo)-1
	ConsoleWrite(StringFormat("--> [%d]: %s", $i, $avCacheEntryInfo[$i]) & @CRLF)
Next

; Delete the cache entry
_WinINet_DeleteUrlCacheEntry($sSourceUrlName)

; Cleanup
_WinINet_Shutdown()
