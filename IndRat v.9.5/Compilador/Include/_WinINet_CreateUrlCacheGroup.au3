#Include <WinINet.au3>

; Initialize WinINet
_WinINet_Startup()

; Create a dummy cache group
Global $iCacheGroupID = _WinINet_CreateUrlCacheGroup()

; Set the cache group name
Global $avCacheGroupInfo[6] = [0, "Dummy Group"]
Global $tCacheGroupInfo = _WinINet_Struct_InternetCacheGroupInfo_FromArray($avCacheGroupInfo)
_WinINet_SetUrlCacheGroupAttribute($iCacheGroupID, $CACHEGROUP_ATTRIBUTE_GROUPNAME, DllStructGetPtr($tCacheGroupInfo))

; Get the cache group name
$avCacheGroupInfo = _WinINet_GetUrlCacheGroupAttribute($iCacheGroupID, $CACHEGROUP_ATTRIBUTE_GET_ALL)

; Print the cache group info
For $i = 0 To UBound($avCacheGroupInfo)-1
	ConsoleWrite(StringFormat("--> [%d]: %s", $i, $avCacheGroupInfo[$i]) & @CRLF)
Next

; Delete the cache group
_WinINet_DeleteUrlCacheGroup($iCacheGroupID, $CACHEGROUP_FLAG_FLUSHURL_ONDELETE)

; Close handles
_WinINet_Shutdown()
