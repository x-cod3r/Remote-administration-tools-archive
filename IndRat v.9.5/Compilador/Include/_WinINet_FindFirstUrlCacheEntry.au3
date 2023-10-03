#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Find the first of all cache entires
Global $avCacheEntry = _WinINet_FindFirstUrlCacheEntry()

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
		$avCacheEntryInfo = _WinINet_FindNextUrlCacheEntry($hCacheEntry)
	WEnd

	; Close handles
	_WinINet_FindCloseUrlCache($hCacheEntry)
EndIf

; Cleanup
_WinINet_Shutdown()
