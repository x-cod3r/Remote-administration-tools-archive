#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Create several dummy cache groups
Global $iGroupIDCount = 10
Global $aiCacheGroupIDs[$iGroupIDCount]
For $i = 0 To $iGroupIDCount-1
	$aiCacheGroupIDs[$i] = _WinINet_CreateUrlCacheGroup()
Next

; Enumerate the cache groups
Global $avCacheGroup = _WinINet_FindFirstUrlCacheGroup()
While Not @error
	ConsoleWrite($avCacheGroup[1] & @CRLF)
	$avCacheGroup[1] = _WinINet_FindNextUrlCacheGroup($avCacheGroup[0])
WEnd

; Delete the cache groups
For $i = 0 To $iGroupIDCount-1
	_WinINet_DeleteUrlCacheGroup($aiCacheGroupIDs[$i], $CACHEGROUP_FLAG_FLUSHURL_ONDELETE)
Next

; Close handles
_WinINet_Shutdown()
