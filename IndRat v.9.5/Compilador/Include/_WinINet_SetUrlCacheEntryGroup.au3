#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Create a dummy cache entry
Global $sSourceUrlName = "http://www.autoitscript.com/"
Global $sLocalFileName = _WinINet_CreateUrlCacheEntry($sSourceUrlName)

; Commit the dummy entry to disk
_WinINet_CommitUrlCacheEntry($sSourceUrlName, $sLocalFileName)

; Create a dummy cache group
Global $iCacheGroupID = _WinINet_CreateUrlCacheGroup()

; Set URL to be a part of the cache group
_WinINet_SetUrlCacheEntryGroup($sSourceUrlName, $INTERNET_CACHE_GROUP_ADD, $iCacheGroupID)

; Enumerate the cache entries in the cache group
Global $avCacheEntry = _WinINet_FindFirstUrlCacheEntryEx(0, $NORMAL_CACHE_ENTRY, $iCacheGroupID)

If Not @error Then
	; Pull the data out of the returned array
	Global $hCacheEntry = $avCacheEntry[0]
	Global $avCacheEntryInfo = $avCacheEntry[1]
	$avCacheEntry = 0

	While Not @error
		; Print the currently found cache entry info
		ConsoleWrite("----------" & @CRLF)
		For $i = 0 To UBound($avCacheEntryInfo)-1
			ConsoleWrite(StringFormat("--> [%d]: %s", $i, $avCacheEntryInfo[$i]) & @CRLF)
		Next
		ConsoleWrite("----------" & @CRLF & @CRLF)

		; Find the next cache entry
		$avCacheEntryInfo = _WinINet_FindNextUrlCacheEntryEx($hCacheEntry)
	WEnd

	; Close handles
	_WinINet_FindCloseUrlCache($hCacheEntry)
EndIf

; Delete the cache group
_WinINet_DeleteUrlCacheGroup($iCacheGroupID, $CACHEGROUP_FLAG_FLUSHURL_ONDELETE)

; Close handles
_WinINet_Shutdown()
