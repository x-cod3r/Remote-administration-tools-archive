#AutoIt3Wrapper_Au3Check_Parameters= -d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6
#include-Once
#include <WinINetConstants.au3>

; #INDEX# =======================================================================================================================
; Title .........: WinINet
; AutoIt Version : 3.2.12++
; Language ......: English
; Description ...: The Windows Internet (WinINet) application programming interface (API) enables applications to interact with
;                  Gopher, FTP, and HTTP protocols to access Internet resources. As standards evolve, these functions handle the
;                  changes in underlying protocols, enabling them to maintain consistent behavior.
; ===============================================================================================================================

; #GLOBALS# =====================================================================================================================
Global Const $__WinINet_sDLL = "wininet.dll"
Global $__WinINet_hDLL = $__WinINet_sDLL
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
;_WinINet_CommitUrlCacheEntry
;_WinINet_CreateUrlCacheEntry
;_WinINet_CreateUrlCacheGroup
;_WinINet_DeleteUrlCacheEntry
;_WinINet_DeleteUrlCacheGroup
;_WinINet_DetectAutoProxyUrl
;_WinINet_FindCloseUrlCache
;_WinINet_FindFirstUrlCacheEntry
;_WinINet_FindFirstUrlCacheEntryEx
;_WinINet_FindFirstUrlCacheGroup
;_WinINet_FindNextUrlCacheEntry
;_WinINet_FindNextUrlCacheEntryEx
;_WinINet_FindNextUrlCacheGroup
;_WinINet_FtpCommand
;_WinINet_FtpCreateDirectory
;_WinINet_FtpDeleteFile
;_WinINet_FtpFindFirstFile
;_WinINet_FtpGetCurrentDirectory
;_WinINet_FtpGetFile
;_WinINet_FtpGetFileSize
;_WinINet_FtpOpenFile
;_WinINet_FtpPutFile
;_WinINet_FtpRemoveDirectory
;_WinINet_FtpRenameFile
;_WinINet_FtpSetCurrentDirectory
;_WinINet_GetUrlCacheEntryInfo
;_WinINet_GetUrlCacheEntryInfoEx
;_WinINet_GetUrlCacheGroupAttribute
;_WinINet_GopherCreateLocator
;_WinINet_GopherFindFirstFile
;_WinINet_GopherGetAttribute
;_WinINet_GopherGetLocatorType
;_WinINet_GopherOpenFile
;_WinINet_HttpAddRequestHeaders
;_WinINet_HttpEndRequest
;_WinINet_HttpOpenRequest
;_WinINet_HttpQueryInfo
;_WinINet_HttpSendRequest
;_WinINet_HttpSendRequestEx
;_WinINet_InternetAttemptConnect
;_WinINet_InternetAutodial
;_WinINet_InternetAutodialHangup
;_WinINet_InternetCanonicalizeUrl
;_WinINet_InternetCheckConnection
;_WinINet_InternetClearAllPerSiteCookieDecisions
;_WinINet_InternetCloseHandle
;_WinINet_InternetCombineUrl
;_WinINet_InternetConfirmZoneCrossing
;_WinINet_InternetConnect
;_WinINet_InternetCrackUrl
;_WinINet_InternetCreateUrl
;_WinINet_InternetDial
;_WinINet_InternetEnumPerSiteCookieDecision
;_WinINet_InternetErrorDlg
;_WinINet_InternetFindNextFile
;_WinINet_InternetGetConnectedState
;_WinINet_InternetGetConnectedStateEx
;_WinINet_InternetGetCookie
;_WinINet_InternetGetCookieEx
;_WinINet_InternetGetLastResponseInfo
;_WinINet_InternetGetPerSiteCookieDecision
;_WinINet_InternetGoOnline
;_WinINet_InternetHangUp
;_WinINet_InternetLockRequestFile
;_WinINet_InternetOpen
;_WinINet_InternetOpenUrl
;_WinINet_InternetQueryDataAvailable
;_WinINet_InternetQueryOption
;_WinINet_InternetReadFile
;_WinINet_InternetReadFileEx
;_WinINet_InternetSetCookie
;_WinINet_InternetSetCookieEx
;_WinINet_InternetSetFilePointer
;_WinINet_InternetSetOption
;_WinINet_InternetSetPerSiteCookieDecision
;_WinINet_InternetSetStatusCallback
;_WinINet_InternetTimeFromSystemTime
;_WinINet_InternetTimeToSystemTime
;_WinINet_InternetUnlockRequestFile
;_WinINet_InternetWriteFile
;_WinINet_PrivacyGetZonePreferenceW
;_WinINet_PrivacySetZonePreferenceW
;_WinINet_ReadUrlCacheEntryStream
;_WinINet_ResumeSuspendedDownload
;_WinINet_RetrieveUrlCacheEntryFile
;_WinINet_RetrieveUrlCacheEntryStream
;_WinINet_SetUrlCacheEntryGroup
;_WinINet_SetUrlCacheEntryInfo
;_WinINet_SetUrlCacheGroupAttribute
;_WinINet_Shutdown
;_WinINet_Startup
;_WinINet_Struct_InternetCacheEntryInfo_ToArray
;_WinINet_Struct_InternetCacheGroupInfo_FromArray
;_WinINet_Struct_InternetCacheGroupInfo_ToArray
;_WinINet_Struct_UrlComponents_FromArray
;_WinINet_Struct_UrlComponents_ToArray
;_WinINet_UnlockUrlCacheEntryFile
;_WinINet_UnlockUrlCacheEntryStream
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
;_WinINet_DllStructReadArray
;_WinINet_SwapHiLowDWORDs
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: _WinINet_DllStructReadArray
; Description ...: Reads an array from a DllStruct pointer.
; Syntax ........: _WinINet_DllStructReadArray($pData, $iLength[, $sType = Default])
; Parameters ....: $pData   - The pointer to the array structure
;                  $iLength - The length of the array to read
;                  $sType   - [optional] The type of data to read from the array
; Return values .: Success - The data read from the array
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_DllStructReadArray($pData, $iLength, $sType = Default)
	If $iLength <= 0 Then Return ""
	If $sType = Default Then $sType = $WIN32_TCHAR
	Return DllStructGetData(DllStructCreate($sType & "[" & $iLength  & "]", $pData), 1)
EndFunc   ;==>_WinINet_DllStructReadArray

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: _WinINet_SwapHiLowDWORDs
; Description ...: Swaps the high and low DWORDs in the given QWORD
; Syntax ........: _WinINet_SwapHiLowDWORDs($iQWORD)
; Parameters ....: $iQWORD
; Return values .: Success - The swapped QWORD
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_SwapHiLowDWORDs($iQWORD)
	Local $tQWORD = DllStructCreate("int64")
	DllStructSetData($tQWORD, 1, $iQWORD)

	Local $tDWORDs = DllStructCreate("dword; dword", DllStructGetPtr($tQWORD))
	Local $iDWORDLow = DllStructGetData($tDWORDs, 1)
	DllStructSetData($tDWORDs, 1, DllStructGetData($tDWORDs, 2))
	DllStructSetData($tDWORDs, 2, $iDWORDLow)

	Return DllStructGetData($tQWORD, 1)
EndFunc   ;==>_WinINet_SwapHiLowDWORDs

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_CommitUrlCacheEntry
; Description ...: Stores data in the specified file in the Internet cache and associates it with the specified URL.
; Syntax ........: _WinINet_CommitUrlCacheEntry($sUrlName, $sLocalFileName[, $iExpireTime = 0[, $iLastModifiedTime = 0[, $iCacheEntryType = 0[, $sHeaderInfo = Default[, $sOriginalUrl = ""]]]]])
; Parameters ....: $sUrlName          - The source URL/name of the cache entry.
;                  $sLocalFileName    - The name of the local file that is being cached.
;                  $iExpireTime       - [optional] The expire time of the file being cached, in 100-nanosecond intervals since January 1, 1601 GMT
;                  $iLastModifiedTime - [optional] The last modified time of the file being cached, in 100-nanosecond intervals since January 1, 1601 GMT
;                  $iCacheEntryType   - [optional] A bitmask containing the type of cache entry and its properties. Can be a combination of the following:
;                  |$COOKIE_CACHE_ENTRY     - Cookie cache entry.
;                  |$EDITED_CACHE_ENTRY     - Cache entry file that has been edited externally. This cache entry type is exempt from scavenging.
;                  |$NORMAL_CACHE_ENTRY     - Normal cache entry; can be deleted to recover space for new entries.
;                  |$SPARSE_CACHE_ENTRY     - Partial response cache entry.
;                  |$STICKY_CACHE_ENTRY     - Sticky cache entry; exempt from scavenging.
;                  |$URLHISTORY_CACHE_ENTRY - Visited link cache entry.
;                  $sHeaderInfo       - [optional] The header information. If left as Default, this will be interepreted as "HTTP/1.0 200 OK" & @CRLF &@CRLF.
;                  $sOriginalUrl      - [optional] The original URL of the cache entry, if redirection has occurred.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: If the If the cache storage is full, _WinINet_CommitUrlCacheEntry invokes cache cleanup to make space for this
;                  new file. If the cache entry already exists, the function overwrites the entry if it is not in use. An entry
;                  is in use when it has been retrieved with either _WinINnet_RetrieveUrlCacheEntryStream or 
;                  _WinINnet_RetrieveUrlCacheEntryFile.
;+
;                  Clients that add entries to the cache should set the headers to at least "HTTP/1.0 200 OK" & @CRLF & @CRLF;
;                  otherwise, Microsoft Internet Explorer and other client applications should disregard the entry.
; Related .......: _WinINet_CreateUrlCacheEntry
; Link ..........: @@MsdnLink@@ CommitUrlCacheEntry
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_CommitUrlCacheEntry($sUrlName, $sLocalFileName, $iCacheEntryType = 0, $iExpireTime = 0, $iLastModifiedTime = 0, $sHeaderInfo = Default, $sOriginalUrl = "")
	; Set data/structures up
	If $sHeaderInfo = Default Then $sHeaderInfo = "HTTP/1.0 200 OK" & @CRLF & @CRLF

	Local $pHeaderInfo = 0
	Local $iHeaderInfo = 0
	If IsString($sHeaderInfo) Then
		$iHeaderInfo = StringLen($sHeaderInfo)
		Local $tHeaderInfo = DllStructCreate($WIN32_TCHAR & "[" & ($iHeaderInfo+1) & "]")
		DllStructSetData($tHeaderInfo, 1, $sHeaderInfo)
		$pHeaderInfo = DllStructGetPtr($tHeaderInfo)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "CommitUrlCacheEntry" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			$WIN32_TSTR, $sLocalFileName, _
			"int64",     $iExpireTime, _
			"int64",     $iLastModifiedTime, _
			"dword",     $iCacheEntryType, _
			"ptr",       $pHeaderInfo, _
			"dword",     $iHeaderInfo, _
			"ptr",       0, _
			$WIN32_TSTR, $sOriginalUrl _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_CommitUrlCacheEntry

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_CreateUrlCacheEntry
; Description ...: Creates a local file name for saving the cache entry based on the specified URL and the file extension.
; Syntax ........: _WinINet_CreateUrlCacheEntry($sUrlName, $sFileExtension[, $iExpectedFileSize = 0[, $iBufferSize = 2048]])
; Parameters ....: $sUrlName          - The source URL/name of the cache entry.
;                  $sFileExtension    - [optional] String that contains an extension name of the file in the local storage.
;                  $iExpectedFileSize - [optional] Expected size of the file needed to store the data that corresponds to the source entity, in characters.
;                  $iBufferSize       - [optional] The number of characters to allocate to the buffer for retrieving the cache entry data
; Return values .: Success - The filename of the cache entry
;                  Failure - "", sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: After _WinINet_CreateUrlCacheEntry is called, the application can write directly into the file in local storage.
;                  When the file is completely received, the caller should call _WinINet_CommitUrlCacheEntry to commit the entry
;                  in the cache.
; Related .......: _WinINet_CommitUrlCacheEntry
; Link ..........: @@MsdnLink@@ CreateUrlCacheEntry
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_CreateUrlCacheEntry($sUrlName, $sFileExtension = "", $iExpectedFileSize = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $tFileName = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "CreateUrlCacheEntry" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"dword",     $iExpectedFileSize, _
			$WIN32_TSTR, $sFileExtension, _
			"ptr",       DllStructGetPtr($tFileName), _
			"ptr",       0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, "")
	Return DllStructGetData($tFileName, 1)
EndFunc   ;==>_WinINet_CreateUrlCacheEntry

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_CreateUrlCacheGroup
; Description ...: Generates cache group identifications.
; Syntax ........: _WinINet_CreateUrlCacheGroup([$iFlags = 0])
; Parameters ....: $iFlag - [optional] Controls the creation of the cache group. Can be a combination of the following:
;                  |$CACHEGROUP_FLAG_GIDONLY      - Indicates that the function should only create a unique GROUPID for the cache group and not create the actual group.
;                  |$CACHEGROUP_FLAG_NONPURGEABLE - Indicates that the cache group cannot be purged.
; Return values .: Success - A unique GROUPID identifier for the created cache group
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ CreateUrlCacheGroup
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_CreateUrlCacheGroup($iFlags = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int64", "CreateUrlCacheGroup", _
			"dword", $iFlags, _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_SwapHiLowDWORDs($avResult[0])
EndFunc   ;==>_WinINet_CreateUrlCacheGroup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_DeleteUrlCacheEntry
; Description ...: Removes the file associated with the source name from the cache, if the file exists.
; Syntax ........: _WinINet_DeleteUrlCacheEntry($sUrlName)
; Parameters ....: $sUrlName - The source URL/name of the cache entry.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ DeleteUrlCacheEntry
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_DeleteUrlCacheEntry($sUrlName)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "DeleteUrlCacheEntry" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName _
	)

	; Return response
	If @error Or $avResult[0] <> 0 Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_DeleteUrlCacheEntry

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_DeleteUrlCacheGroup
; Description ...: Releases the specified GROUPID and any associated state in the cache index file.
; Syntax ........: _WinINet_DeleteUrlCacheGroup($iGroupID, $iFlags)
; Parameters ....: $iGroupID - The unique GROUPID identifier
;                  $iFlags   - Controls the cache group deletion. Can be a combination of the following:
;                  |$CACHEGROUP_FLAG_FLUSHURL_ONDELETE - Indicates that all the cache entries associated with the cache group should be deleted, unless the entry belongs to another cache group.
;                  |$CACHEGROUP_FLAG_GIDONLY           - Indicates that the function should only create a unique GROUPID for the cache group and not create the actual group.
;                  |$CACHEGROUP_FLAG_NONPURGEABLE      - Indicates that the cache group cannot be purged.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ DeleteUrlCacheGroup
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_DeleteUrlCacheGroup($iGroupID, $iFlags)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "DeleteUrlCacheGroup", _
			"int64", $iGroupID, _
			"dword", $iFlags, _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_DeleteUrlCacheGroup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_DetectAutoProxyUrl
; Description ...: Attempts to determine the location of a WPAD autoproxy script.
; Syntax ........: _WinINet_DetectAutoProxyUrl($iDetectFlags[, $iBufferSize = 2048]))
; Parameters ....: $iDetectFlags - Automation detection type. Can be a combination of the following:
;                  |$PROXY_AUTO_DETECT_TYPE_DHCP  - Use a Dynamic Host Configuration Protocol (DHCP) search to identify the proxy.
;                  |$PROXY_AUTO_DETECT_TYPE_DNS_A - Use a well qualified name search to identify the proxy.
;                  $iBufferSize  - [optional] The number of characters to allocate to the buffer for retrieving the URL
; Return values .: Success - The URL from which a WPAD autoproxy script can be downloaded.
;                  Failure - "", sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ DetectAutoProxyUrl
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_DetectAutoProxyUrl($iDetectFlags, $iBufferSize = 2048)
	; Set data/structures up
	Local $tAutoProxyUrl = DllStructCreate("char[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "DetectAutoProxyUrl", _
			"ptr",   DllStructGetPtr($tAutoProxyUrl), _
			"dword", $iBufferSize, _
			"dword", $iDetectFlags _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, "")
	Return DllStructGetData($tAutoProxyUrl, 1)
EndFunc   ;==>_WinINet_DetectAutoProxyUrl

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindCloseUrlCache
; Description ...: Closes the specified cache enumeration handle.
; Syntax ........: _WinINet_FindCloseUrlCache($hUrlCacheEntry)
; Parameters ....: $hUrlCacheEntry - Handle returned by a call to _WinINet_FindFirstUrlCacheEntry or _WinINet_FindFirstUrlCacheEntryEx.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FindCloseUrlCache
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindCloseUrlCache($hUrlCacheEntry)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FindCloseUrlCache", _
			"ptr", $hUrlCacheEntry _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FindCloseUrlCache

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindFirstUrlCacheEntry
; Description ...: Begins the enumeration of the Internet cache.
; Syntax ........: _WinINet_FindFirstUrlCacheEntry([$iCacheEntryType = 0])
; Parameters ....: $iCacheEntryType - [optional] The cache entry type to enumerate. Can be one of the following:
;                  |0 - Enumerate all cache entries
;                  |1 - Enumerate the cookies
;                  |2 - Enumerate the URL history entries
; Return values .: Success - An array with the following format:
;                  |[0] - A handle that the application can use in the _WinINet_FindNextUrlCacheEntry() function to retrieve subsequent entries in the cache.
;                  |[1] - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: At the end of the enumeration, the application should call _WinINet_FindCloseUrlCache().
; Related .......:
; Link ..........: @@MsdnLink@@ FindFirstUrlCacheEntry
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindFirstUrlCacheEntry($iCacheEntryType = 0)
	; Set data/structures up
	Local $sUrlSearchPattern = "*.*"
	Switch $iCacheEntryType
		Case 1
			$sUrlSearchPattern = "cookie:"
		Case 2
			$sUrlSearchPattern = "visited:"
	EndSwitch

	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"ptr", "FindFirstUrlCacheEntry" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlSearchPattern, _
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize) _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "FindFirstUrlCacheEntry" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlSearchPattern, _
			"ptr",       DllStructGetPtr($tCacheEntryInfo), _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)

	Local $avReturn[2] = [$avResult[0], _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)]
	Return $avReturn
EndFunc   ;==>_WinINet_FindFirstUrlCacheEntry

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindFirstUrlCacheEntryEx
; Description ...: Starts a filtered enumeration of the Internet cache.
; Syntax ........: _WinINet_FindFirstUrlCacheEntryEx([$iCacheEntryType = 0[, $iFilter = 0[, $iGroupID = 0]]])
; Parameters ....: $iCacheEntryType - [optional] The cache entry type to enumerate. Can be one of the following:
;                  |0 - Enumerate all cache entries
;                  |1 - Enumerate the cookies
;                  |2 - Enumerate the URL history entries
;                  $iFilter         - [optional] A bitmask indicating the type of cache entry and its properties. Can be a combination of the following:
;                  |$COOKIE_CACHE_ENTRY     - Cookie cache entry.
;                  |$EDITED_CACHE_ENTRY     - Cache entry file that has been edited externally. This cache entry type is exempt from scavenging.
;                  |$NORMAL_CACHE_ENTRY     - Normal cache entry; can be deleted to recover space for new entries.
;                  |$SPARSE_CACHE_ENTRY     - Partial response cache entry.
;                  |$STICKY_CACHE_ENTRY     - Sticky cache entry; exempt from scavenging.
;                  |$URLHISTORY_CACHE_ENTRY - Visited link cache entry.
;                  $iGroupID        - [optional] ID of the cache group to be enumerated. Set this parameter to 0 to enumerate all entries that are not grouped.
; Return values .: Success - An array with the following format:
;                  |[0] - A handle that the application can use in the _WinINet_FindNextUrlCacheEntryEx() function to retrieve subsequent entries in the cache.
;                  |[1] - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: At the end of the enumeration, the application should call _WinINet_FindCloseUrlCache().
; Related .......:
; Link ..........: @@MsdnLink@@ FindFirstUrlCacheEntryEx
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindFirstUrlCacheEntryEx($iCacheEntryType = 0, $iFilter = 0, $iGroupID = 0)
	; Set data/structures up
	Local $sUrlSearchPattern = "*.*"
	Switch $iCacheEntryType
		Case 1
			$sUrlSearchPattern = "cookie:"
		Case 2
			$sUrlSearchPattern = "visited:"
	EndSwitch

	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"ptr", "FindFirstUrlCacheEntryEx" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlSearchPattern, _
			"dword",     0, _
			"dword",     $iFilter, _
			"int64",     $iGroupID, _			
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"ptr",       0, _
			"ptr",       0, _
			"ptr",       0 _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "FindFirstUrlCacheEntryEx" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlSearchPattern, _
			"dword",     0, _
			"dword",     $iFilter, _
			"int64",     $iGroupID, _			
			"ptr",       DllStructGetPtr($tCacheEntryInfo), _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"ptr",       0, _
			"ptr",       0, _
			"ptr",       0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)

	Local $avReturn[2] = [$avResult[0], _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)]
	Return $avReturn
EndFunc   ;==>_WinINet_FindFirstUrlCacheEntryEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindFirstUrlCacheGroup
; Description ...: Initiates the enumeration of the cache groups in the Internet cache.
; Syntax ........: _WinINet_FindFirstUrlCacheGroup([$iFilter = 0])
; Parameters ....: $iFilter - [optional] Filters to be used. Can be one od the following:
;                  |$CACHEGROUP_SEARCH_ALL - Indicates that all of the cache groups in the user's system should be enumerated.
; Return values .: Success - An array with the following format:
;                  |[0] - A handle that the application can use in the _WinINet_FindNextUrlCacheGroup function to retrieve subsequent groups in the cache.
;                  |[1] - The found cache group ID
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FindFirstUrlCacheGroup
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindFirstUrlCacheGroup($iFilter = 0)
	; Set data/structures up
	Local $tGroupID = DllStructCreate("int64")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "FindFirstUrlCacheGroup", _
			"dword", 0, _
			"dword", $iFilter, _
			"ptr",   0, _			
			"dword", 0, _
			"ptr",   DllStructGetPtr($tGroupID), _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Local $avReturn[2] = [$avResult[0], DllStructGetData($tGroupID, 1)]
	Return $avReturn
EndFunc   ;==>_WinINet_FindFirstUrlCacheGroup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindNextUrlCacheEntry
; Description ...: Finds the next Internet cache entry in a cache enumeration started by the _WinINet_FindFirstUrlCacheEntry() function.
; Syntax ........: _WinINet_FindNextUrlCacheEntry($hUrlCacheEntry)
; Parameters ....: $hUrlCacheEntry - A handle returned by a call to _WinINet_FindFirstUrlCacheEntry.
; Return values .: Success - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: At the end of the enumeration, the application should call _WinINet_FindCloseUrlCache().
; Related .......:
; Link ..........: @@MsdnLink@@ FindNextUrlCacheEntry
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindNextUrlCacheEntry($hUrlCacheEntry)
	; Set data/structures up
	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"int", "FindNextUrlCacheEntry" & $WIN32_FTYPE, _
			"ptr", $hUrlCacheEntry, _
			"ptr", 0, _
			"ptr", DllStructGetPtr($tCacheEntryInfoSize) _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FindNextUrlCacheEntry" & $WIN32_FTYPE, _
			"ptr", $hUrlCacheEntry, _
			"ptr", DllStructGetPtr($tCacheEntryInfo), _
			"ptr", DllStructGetPtr($tCacheEntryInfoSize) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)
EndFunc   ;==>_WinINet_FindNextUrlCacheEntry

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindNextUrlCacheEntryEx
; Description ...: Finds the next Internet cache entry in a cache enumeration started by the _WinINet_FindFirstUrlCacheEntryEx() function.
; Syntax ........: _WinINet_FindNextUrlCacheEntryEx($hUrlCacheEntryEx)
; Parameters ....: $hUrlCacheEntryEx - A handle returned by a call to _WinINet_FindFirstUrlCacheEntryEx.
; Return values .: Success - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: At the end of the enumeration, the application should call _WinINet_FindCloseUrlCache().
; Related .......:
; Link ..........: @@MsdnLink@@ FindNextUrlCacheEntryEx
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindNextUrlCacheEntryEx($hUrlCacheEntryEx)
	; Set data/structures up
	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"int", "FindNextUrlCacheEntryEx" & $WIN32_FTYPE, _
			"ptr", $hUrlCacheEntryEx, _
			"ptr", 0, _
			"ptr", DllStructGetPtr($tCacheEntryInfoSize), _
			"ptr", 0, _
			"ptr", 0, _
			"ptr", 0 _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FindNextUrlCacheEntryEx" & $WIN32_FTYPE, _
			"ptr", $hUrlCacheEntryEx, _
			"ptr", DllStructGetPtr($tCacheEntryInfo), _
			"ptr", DllStructGetPtr($tCacheEntryInfoSize), _
			"ptr", 0, _
			"ptr", 0, _
			"ptr", 0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)
EndFunc   ;==>_WinINet_FindNextUrlCacheEntryEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FindNextUrlCacheGroup
; Description ...: Retrieves the next cache group in a cache group enumeration started by _WinINet_FindFirstUrlCacheGroup.
; Syntax ........: _WinINet_FindNextUrlCacheGroup($hUrlCacheGroup)
; Parameters ....: $hUrlCacheGroup - The cache group enumeration handle returned by a call to _WinINet_FindFirstUrlCacheGroup.
; Return values .: Success - The found cache group ID
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FindNextUrlCacheGroup
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FindNextUrlCacheGroup($hUrlCacheGroup)
	; Set data/structures up
	Local $tGroupID = DllStructCreate("int64")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FindNextUrlCacheGroup", _
			"ptr", $hUrlCacheGroup, _
			"ptr", DllStructGetPtr($tGroupID), _
			"ptr", 0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return DllStructGetData($tGroupID, 1)
EndFunc   ;==>_WinINet_FindNextUrlCacheGroup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpCommand
; Description ...: Sends commands directly to an FTP server.
; Syntax ........: _WinINet_FtpCommand($hInternetConnect, $sCommand[, $fExpectResponse = False[, $iFlags = 0[, $hContext = 0]]])
; Parameters ....: $hInternetConnect - A handle returned by a call to _WinINet_InternetConnect
;                  $sCommand         - The command to send to the FTP server
;                  $fExpectResponse  - A boolean that indicates whether the applicaiton expects a data connection to be establised by the FTP server.
;                  $iFlags           - A parameter that can be set to one of the following values:
;                  |$FTP_TRANSFER_TYPE_ASCII  - Transfers the file using the FTP ASCII (Type A) transfer method. Control and formatting data is converted to local equivalents.
;                  |$FTP_TRANSFER_TYPE_BINARY - Transfers the file using the FTP Image (Type I) transfer method. The file is transferred exactly with no changes. This is the default transfer method.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - If $fExpectResponse is True, returns a handle to a data socket, to be read with _WinINet_InternetReadFile() if opened; otherwise, returns True
;                  Failure - If $fExpectResponse is True, returns 0, sets @error to 1; otherwise, returns False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: If a response is expected, and the function call succeeds without an error, check the return value before
;                  using it to make sure it is not a null pointer.
; Related .......:
; Link ..........: @@MsdnLink@@ FtpCommand
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpCommand($hInternetConnect, $sCommand, $fExpectResponse = False, $iFlags = 0, $hContext = 0)
	; Set data/structures up
	Local $tFtpCommand = DllStructCreate("ptr")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpCommand" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			"int",       $fExpectResponse, _
			"int",       $iFlags, _
			$WIN32_TSTR, $sCommand, _
			"ptr",       $hContext, _
			"ptr",       DllStructGetPtr($tFtpCommand) _
	)

	; Return response
	If $fExpectResponse Then
		If @error Then Return SetError(1, 0, 0)
		Return DllStructGetData($tFtpCommand, 1)
	Else
		If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
		Return True
	EndIf
EndFunc   ;==>_WinINet_FtpCommand

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpCreateDirectory
; Description ...: Creates a new directory on the FTP server.
; Syntax ........: _WinINet_FtpCreateDirectory($hInternetConnect, $sDirectory)
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sDirectory       - The name of the directory to be created. This can be either a fully-qualified path or a name relative to the current directory.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpCreateDirectory
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpCreateDirectory($hInternetConnect, $sDirectory)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpCreateDirectory" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sDirectory _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpCreateDirectory

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpDeleteFile
; Description ...: Deletes a file stored on the FTP server.
; Syntax ........: _WinINet_FtpDeleteFile($hInternetConnect, $sFileName)
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sFileName        - The name of the file to be deleted. This can be either a fully-qualified path or a name relative to the current directory.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpDeleteFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpDeleteFile($hInternetConnect, $sFileName)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpDeleteFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sFileName _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpDeleteFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpFindFirstFile
; Description ...: Searches the specified directory of the given FTP session. File and directory entries are returned to the application in a WIN32_FIND_DATA structure.
; Syntax ........: _WinINet_FtpFindFirstFile($hInternetConnect[, $sSearchFile = ""[, $iFlags = 0[, $hContext = 0]]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sSearchFile      - [optional] A valid directory path or file name for the FTP server's file system. The string can contain wildcards, but no blank spaces are allowed.
;                  $iFlags           - [optional] Controls the find behavior. Can be a combination of the following:
;                  |$INTERNET_FLAG_HYPERLINK      - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_NEED_FILE      - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_NO_CACHE_WRITE - Does not add the returned entity to the cache.
;                  |$INTERNET_FLAG_RELOAD         - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE  - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - An array with the following format:
;                  |[0] - A handle for the request
;                  |[1] - A WIN32_FIND_DATA structure containing information about the found file or directory
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: After calling _WinINet_FtpFindFirstFile and until calling _WinINet_InternetCloseHandle, the application cannot
;                  call _WinINet_FtpFindFirstFile again on the given FTP session handle. If a call is made to FtpFindFirstFile on
;                  that handle, the function fails with $ERROR_FTP_TRANSFER_IN_PROGRESS.
;+
;                  After beginning a directory enumeration with _WinINet_FtpFindFirstFile, the _WinINet_InternetFindNextFile
;                  function can be used to continue the enumeration.
; Related .......:
; Link ..........: @@MsdnLink@@ FtpFindFirstFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpFindFirstFile($hInternetConnect, $sSearchFile = "", $iFlags = 0, $hContext = 0)
	; Set data/structures up
	Local $tFindFileData = DllStructCreate($tagWIN32_FIND_DATA)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "FtpFindFirstFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sSearchFile, _
			"ptr",       DllStructGetPtr($tFindFileData), _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Local $avReturn[2] = [$avResult[0], $tFindFileData]
	Return $avReturn
EndFunc   ;==>_WinINet_FtpFindFirstFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpGetCurrentDirectory
; Description ...: Retrieves the current directory for the specified FTP session.
; Syntax ........: _WinINet_FtpGetCurrentDirectory($hInternetConnect[, $iBufferSize = 2048])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $iBufferSize      - [optional] The number of characters to allocate to the buffer for retrieving the current direectory path
; Return values .: Success - A string containing the absolute path of the current directory.
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the full, current directory name
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpGetCurrentDirectory
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpGetCurrentDirectory($hInternetConnect, $iBufferSize = 2048)
	; Set data/structures up
	Local $tCurrentDirectoryLength = DllStructCreate("dword")
	DllStructSetData($tCurrentDirectoryLength, 1, $iBufferSize)

	Local $tCurrentDirectory = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpGetCurrentDirectory" & $WIN32_FTYPE, _
			"ptr", $hInternetConnect, _
			"ptr", DllStructGetPtr($tCurrentDirectory), _
			"ptr", DllStructGetPtr($tCurrentDirectoryLength) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tCurrentDirectoryLength, 1), "")
	Return DllStructGetData($tCurrentDirectory, 1)
EndFunc   ;==>_WinINet_FtpGetCurrentDirectory

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpGetFile
; Description ...: Retrieves a file from the FTP server and stores it under the specified file name, creating a new local file in the process.
; Syntax ........: _WinINet_FtpGetFile($hInternetConnect, $sRemoteFile, $sNewFile[, $fFailIfExists = True, $iFileAttributes = 0[, $iFlags = 0[, $hContext = 0]]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect.
;                  $sRemoteFile      - The name of the file to be retrieved. This can be either a fully-qualified path or a name relative to the current directory.
;                  $sNewFile         - The name of the file to be created on the local system. This can be either a fully-qualified path or a name relative to the current directory.
;                  $fFailIfExists    - [optional] Boolean that indicates whether function should proceed if a local file of the specified name already exists.
;                  $iFileAttributes  - [optional] File attributes for the new local file. Can be any combination of the following:
;                  |$FILE_ATTRIBUTE_ARCHIVE   - The file should be archived. Applications use this attribute to mark files for backup or removal.
;                  |$FILE_ATTRIBUTE_ENCRYPTED - The file or directory is encrypted. For a file, this means that all data in the file is encrypted. For a directory, this means that encryption is the default for newly created files and subdirectories. For more information, see File Encryption. This flag has no effect if FILE_ATTRIBUTE_SYSTEM is also specified.
;                  |$FILE_ATTRIBUTE_HIDDEN    - The file is hidden. Do not include it in an ordinary directory listing.
;                  |$FILE_ATTRIBUTE_NORMAL    - The file does not have other attributes set. This attribute is valid only if used alone.
;                  |$FILE_ATTRIBUTE_OFFLINE   - The data of a file is not immediately available. This attribute indicates that file data is physically moved to offline storage. This attribute is used by Remote Storage, the hierarchical storage management software. Applications should not arbitrarily change this attribute.
;                  |$FILE_ATTRIBUTE_READONLY  - The file is read only. Applications can read the file, but cannot write to or delete it.
;                  |$FILE_ATTRIBUTE_SYSTEM    - The file is part of or used exclusively by an operating system.
;                  |$FILE_ATTRIBUTE_TEMPORARY - The file is being used for temporary storage.
;                  $iFlags           - [optional] Controls how the function will handle the file download. Can be a combination of the following:
;                  |$FTP_TRANSFER_TYPE_ASCII       - Transfers the file using the FTP ASCII (Type A) transfer method. Control and formatting data is converted to local equivalents.
;                  |$FTP_TRANSFER_TYPE_BINARY      - Transfers the file using the FTP Image (Type I) transfer method. The file is transferred exactly with no changes. This is the default transfer method.
;                  |$FTP_TRANSFER_TYPE_UNKNOWN     - Defaults to $FTP_TRANSFER_TYPE_BINARY.
;                  |$INTERNET_FLAG_TRANSFER_ASCII  - Transfers the file as ASCII.
;                  |$INTERNET_FLAG_TRANSFER_BINARY - Transfers the file as binary.
;                  |$INTERNET_FLAG_HYPERLINK       - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_NEED_FILE       - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_RELOAD          - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE   - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpGetFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpGetFile($hInternetConnect, $sRemoteFile, $sNewFile, $fFailIfExists = True, $iFileAttributes = 0, $iFlags = 0, $hContext = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpGetFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sRemoteFile, _
			$WIN32_TSTR, $sNewFile, _
			"int",       $fFailIfExists, _
			"dword",     $iFileAttributes, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpGetFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpGetFileSize
; Description ...: Retrieves the file size of the requested FTP resource.
; Syntax ........: _WinINet_FtpGetFileSize($hFtpOpenFile)
; Parameters ....: $hFtpOpenFile - A handle returned from a call to _WinINet_FtpOpenFile
; Return values .: Success - The file size of the requested FTP resource
;                  Failure - -1, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpGetFileSize
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpGetFileSize($hFtpOpenFile)
	; Set data/structures up
	Local $tFileSizeHigh = DllStructCreate("dword")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpGetFileSize", _
			"ptr", $hFtpOpenFile, _
			"ptr", DllStructGetPtr($tFileSizeHigh) _
	)

	; Return response
	If @error Then Return SetError(1, 0, -1)
    Local $tFileSize = DllStructCreate("dword[2]")
	DllStructSetData($tFileSize, 1, $avResult[0], 1)
	DllStructSetData($tFileSize, 1, DllStructGetData($tFileSizeHigh, 1), 2)
	Return DllStructGetData(DllStructCreate("uint64", DllStructGetPtr($tFileSize)), 1)
EndFunc   ;==>_WinINet_FtpGetFileSize

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpOpenFile
; Description ...: Initiates access to a remote file on an FTP server for reading or writing.
; Syntax ........: _WinINet_FtpOpenFile($hInternetConnect, $sFileName, $iAccess[, $iFlags = 0[, $hContext = 0]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect.
;                  $sFileName        - The name of the file to be accessed. This can be either a fully-qualified path or a name relative to the current directory.
;                  $iAccess          - Controls the file access. Can be only one of the following:
;                  |$GENERIC_READ  - Opens the file with read access only
;                  |$GENERIC_WRITE - Opens the file with write access only
;                  $iFlags           - [optional] Controls how the function will handle the file download. Can be a combination of the following:
;                  |$FTP_TRANSFER_TYPE_ASCII       - Transfers the file using the FTP ASCII (Type A) transfer method. Control and formatting data is converted to local equivalents.
;                  |$FTP_TRANSFER_TYPE_BINARY      - Transfers the file using the FTP Image (Type I) transfer method. The file is transferred exactly with no changes. This is the default transfer method.
;                  |$FTP_TRANSFER_TYPE_UNKNOWN     - Defaults to $FTP_TRANSFER_TYPE_BINARY.
;                  |$INTERNET_FLAG_TRANSFER_ASCII  - Transfers the file as ASCII.
;                  |$INTERNET_FLAG_TRANSFER_BINARY - Transfers the file as binary.
;                  |$INTERNET_FLAG_HYPERLINK       - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_NEED_FILE       - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_RELOAD          - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE   - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - A handle to the opened file
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: After calling _WinINet_FtpOpenFile and until calling _WinINet_InternetCloseHandle, all other calls to FTP
;                  functions on the same FTP session handle will fail and set the error message to
;                  $ERROR_FTP_TRANSFER_IN_PROGRESS.
; Related .......:
; Link ..........: @@MsdnLink@@ FtpOpenFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpOpenFile($hInternetConnect, $sFileName, $iAccess, $iFlags = 0, $hContext = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "FtpOpenFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sFileName, _
			"dword",     $iAccess, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_FtpOpenFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpPutFile
; Description ...: Stores a file on the FTP server.
; Syntax ........: _WinINet_FtpPutFile($hInternetConnect, $sLocalFile, $sNewRemoteFile, $iFlags = 0, $hContext = 0)
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect.
;                  $sLocalFile       - The name of the file to be sent from the local filesystem. This can be either a fully-qualified path or a name relative to the current directory.
;                  $sNewRemoteFile   - The name of the file to be created on the remote system. This can be either a fully-qualified path or a name relative to the current directory.
;                  $iFlags           - [optional] Controls how the function will handle the file download. Can be a combination of the following:
;                  |$FTP_TRANSFER_TYPE_ASCII       - Transfers the file using the FTP ASCII (Type A) transfer method. Control and formatting data is converted to local equivalents.
;                  |$FTP_TRANSFER_TYPE_BINARY      - Transfers the file using the FTP Image (Type I) transfer method. The file is transferred exactly with no changes. This is the default transfer method.
;                  |$FTP_TRANSFER_TYPE_UNKNOWN     - Defaults to $FTP_TRANSFER_TYPE_BINARY.
;                  |$INTERNET_FLAG_TRANSFER_ASCII  - Transfers the file as ASCII.
;                  |$INTERNET_FLAG_TRANSFER_BINARY - Transfers the file as binary.
;                  |$INTERNET_FLAG_HYPERLINK       - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_NEED_FILE       - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_RELOAD          - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE   - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpPutFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpPutFile($hInternetConnect, $sLocalFile, $sNewRemoteFile, $iFlags = 0, $hContext = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpPutFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sLocalFile, _
			$WIN32_TSTR, $sNewRemoteFile, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpPutFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpRemoveDirectory
; Description ...: Removes the specified directory on the FTP server.
; Syntax ........: _WinINet_FtpRemoveDirectory($hInternetConnect, $sDirectory)
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sDirectory       - The name of the directory to be created. This can be either a fully-qualified path or a name relative to the current directory.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpRemoveDirectory
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpRemoveDirectory($hInternetConnect, $sDirectory)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpRemoveDirectory" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sDirectory _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpRemoveDirectory

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpRenameFile
; Description ...: Renames a file stored on the FTP server.
; Syntax ........: _WinINet_FtpRenameFile($hInternetConnect, $sExisting, $sNew)
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect.
;                  $sExisting        - The name of the remote file to be renamed. This can be either a fully-qualified path or a name relative to the current directory.
;                  $sNew             - The new name for the remote file. This can be either a fully-qualified path or a name relative to the current directory.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpRenameFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpRenameFile($hInternetConnect, $sExisting, $sNew)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpRenameFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sExisting, _
			$WIN32_TSTR, $sNew _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpRenameFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_FtpSetCurrentDirectory
; Description ...: Changes to a different working directory on the FTP server.
; Syntax ........: _WinINet_FtpSetCurrentDirectory($hInternetConnect, $sDirectory)
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sDirectory       - The name of the directory to be created. This can be either a fully-qualified path or a name relative to the current directory.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ FtpSetCurrentDirectory
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_FtpSetCurrentDirectory($hInternetConnect, $sDirectory)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "FtpSetCurrentDirectory" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sDirectory _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_FtpSetCurrentDirectory

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GetUrlCacheEntryInfo
; Description ...: Retrieves information about a cache entry.
; Syntax ........: _WinINet_GetUrlCacheEntryInfo($sUrlName)
; Parameters ....: $sUrlName - The source URL/name of the cache entry.
; Return values .: Success - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ GetUrlCacheEntryInfo
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_GetUrlCacheEntryInfo($sUrlName)
	; Set data/structures up
	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"int", "GetUrlCacheEntryInfo" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize) _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "GetUrlCacheEntryInfo" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       DllStructGetPtr($tCacheEntryInfo), _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)
EndFunc   ;==>_WinINet_GetUrlCacheEntryInfo

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GetUrlCacheEntryInfoEx
; Description ...: Retrieves information on the cache entry associated with the specified URL, taking into account any redirections that are applied in offline mode by the _WinINet_HttpSendRequest function.
; Syntax ........: _WinINet_GetUrlCacheEntryInfoEx($sUrl)
; Parameters ....: $sUrl - The name of the cache entry
; Return values .: Success - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ GetUrlCacheEntryInfoEx
; Example .......:
; ===============================================================================================================================
Func _WinINet_GetUrlCacheEntryInfoEx($sUrl)
	; Set data/structures up
	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"int", "GetUrlCacheEntryInfoEx" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"ptr",       0, _
			"ptr",       0, _
			"ptr",       0, _
			"dword",     0 _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "GetUrlCacheEntryInfoEx" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       DllStructGetPtr($tCacheEntryInfo), _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"ptr",       0, _
			"ptr",       0, _
			"ptr",       0, _
			"dword",     0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)
EndFunc   ;==>_WinINet_GetUrlCacheEntryInfoEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GetUrlCacheGroupAttribute
; Description ...: Retrieves the attribute information of the specified cache group.
; Syntax ........: _WinINet_GetUrlCacheGroupAttribute($iGroupID, $iAttributes)
; Parameters ....: $iGroupID    - The unique GROUPID identifier
;                  $iAttributes - The attributes to be retrieved. Can be one of the following:
;                  |$CACHEGROUP_ATTRIBUTE_BASIC     - Retrieves the flags, type, and disk quota attributes of the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_FLAG      - Sets or retrieves the flags associated with the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_GET_ALL   - Retrieves all the attributes of the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_GROUPNAME - Sets or retrieves the group name of the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_QUOTA     - Sets or retrieves the disk quota associated with the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_STORAGE   - Sets or retrieves the group owner storage associated with the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_TYPE      - Sets or retrieves the cache group type.
; Return values .: Success - An array returned by _WinINet_Struct_InternetCacheGroupInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ GetUrlCacheGroupAttribute
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_GetUrlCacheGroupAttribute($iGroupID, $iAttributes)
	; Set data/structures up
	Local $tGroupInfo = DllStructCreate($tagINTERNET_CACHE_GROUP_INFO)
	Local $tGroupInfoSize = DllStructCreate("dword")
	DllStructSetData($tGroupInfoSize, 1, DllStructGetSize($tGroupInfo))

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "GetUrlCacheGroupAttribute" & $WIN32_FTYPE, _
			"int64", $iGroupID, _
			"dword", 0, _
			"dword", $iAttributes, _
			"ptr",   DllStructGetPtr($tGroupInfo), _
			"ptr",   DllStructGetPtr($tGroupInfoSize), _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_InternetCacheGroupInfo_ToArray($tGroupInfo)
EndFunc   ;==>_WinINet_GetUrlCacheGroupAttribute

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GopherCreateLocator
; Description ...: Creates a Gopher or Gopher+ locator string from the selector string's component parts.
; Syntax ........: _WinINet_GopherCreateLocator($sHost[, $iPort = 0[, $sDisplayString = Default[, $sSelectorString = Default[, $iGopherType = 0[, $iBufferSize = 2048]]]]])
; Parameters ....: $sHost           - The name of the host, or a dotted-decimal IP address
;                  $iPort           - [optional] The port number on which the Gopher server lives. If set to 0, uses the default Gopher port.
;                  $sDisplayString  - [optional] The Gopher document or directory to be displayed. If Default, returns the default directory for the Gopher server
;                  $sSelectorString - [optional] The string to send to the Gopher server in order to retrieve information.
;                  $iGopherType     - [optional] Determines whether the selector string refers to a document or directory, or whether the server is Gopher or Gopher+. Can be one of the following:
;                  |$GOPHER_TYPE_ASK            - Ask+ item.
;                  |$GOPHER_TYPE_BINARY         - Binary file.
;                  |$GOPHER_TYPE_BITMAP         - Bitmap file.
;                  |$GOPHER_TYPE_CALENDAR       - Calendar file.
;                  |$GOPHER_TYPE_CSO            - CSO telephone book server.
;                  |$GOPHER_TYPE_DIRECTORY      - Directory of additional Gopher items.
;                  |$GOPHER_TYPE_DOS_ARCHIVE    - MS-DOS archive file.
;                  |$GOPHER_TYPE_ERROR          - Indicator of an error condition.
;                  |$GOPHER_TYPE_GIF            - GIF graphics file.
;                  |$GOPHER_TYPE_GOPHER_PLUS    - Gopher+ item.
;                  |$GOPHER_TYPE_HTML           - HTML document.
;                  |$GOPHER_TYPE_IMAGE          - Image file.
;                  |$GOPHER_TYPE_INDEX_SERVER   - Index server.
;                  |$GOPHER_TYPE_INLINE         - Inline file.
;                  |$GOPHER_TYPE_MAC_BINHEX     - Macintosh file in BINHEX format.
;                  |$GOPHER_TYPE_MOVIE          - Movie file.
;                  |$GOPHER_TYPE_PDF            - PDF file.
;                  |$GOPHER_TYPE_REDUNDANT      - Indicator of a duplicated server. The information contained within is a duplicate of the primary server. The primary server is defined as the last directory entry that did not have a GOPHER_TYPE_REDUNDANT type.
;                  |$GOPHER_TYPE_SOUND          - Sound file.
;                  |$GOPHER_TYPE_TELNET         - Telnet server.
;                  |$GOPHER_TYPE_TEXT_FILE      - ASCII text file.
;                  |$GOPHER_TYPE_TN3270         - TN3270 server.
;                  |$GOPHER_TYPE_UNIX_UUENCODED - UUENCODED file.
;                  |$GOPHER_TYPE_UNKNOWN        - Item type is unknown.
;                  $iBufferSize     - [optional] The number of characters to allocate to the buffer for retrieving the locator string
; Return values .: Success - A Gopher/Gopher+ locator string
;                  Failure - 0; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the full locator string
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ GopherCreateLocator
; Example .......:
; ===============================================================================================================================
Func _WinINet_GopherCreateLocator($sHost, $iPort = 0, $sDisplayString = Default, $sSelectorString = Default, $iGopherType = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $pDisplayString = 0
	If $sDisplayString <> Default Then
		Local $tDisplayString = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sDisplayString)+1) & "]")
		DllStructSetData($tDisplayString, 1, $sDisplayString)
		$pDisplayString = DllStructGetPtr($tDisplayString)
	EndIf

	Local $pSelectorString = 0
	If $sSelectorString <> Default Then
		Local $tSelectorString = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sSelectorString)+1) & "]")
		DllStructSetData($tSelectorString, 1, $sSelectorString)
		$pSelectorString = DllStructGetPtr($tSelectorString)
	EndIf

	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferSize)

	Local $tLocator = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "GopherCreateLocator" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sHost, _
			"ushort",    $iPort, _
			"ptr",       $pDisplayString, _
			"ptr",       $pSelectorString, _
			"dword",     $iGopherType, _
			"ptr",       DllStructGetPtr($tLocator), _
			"ptr",       DllStructGetPtr($tBufferLength) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tBufferLength, 1), 0)
	Return DllStructGetData($tLocator, 1)
EndFunc   ;==>_WinINet_GopherCreateLocator

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GopherFindFirstFile
; Description ...: Uses a Gopher locator and search criteria to create a session with the server and locate the requested documents, binary files, index servers, or directory trees.
; Syntax ........: _WinINet_GopherFindFirstFile($hInternetConnect[, $sLocator = Default[, $sSearchString = Default[, $iFlags = 0[, $hContext = 0]]]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sLocator         - [optional] The name of the item to locate. This can be a locator returned by a previous call to this function, _WinINet_InternetFindNextFile, or _WinINet_GopherCreateLocator
;                  $sSearchString    - [optional] The string to search, if this request is to an index server. Should be Default otherwise.
;                  $iFlags           - [optional] Controls the find behavior. Can be a combination of the following:
;                  |$INTERNET_FLAG_HYPERLINK      - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_NEED_FILE      - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_NO_CACHE_WRITE - Does not add the returned entity to the cache.
;                  |$INTERNET_FLAG_RELOAD         - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE  - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - An array with the following format:
;                  |[0] - A handle for the request
;                  |[1] - A GOPHER_FIND_DATA structure containing information about the found file or directory
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: After the calling application has finished using the handle returned by _WinINet_GopherFindFirstFile, it must
;                  be closed using the _WinINet_InternetCloseHandle function.
;+
;                  After calling _WinINet_GopherFindFirstFile to retrieve the first Gopher object in an enumeration, an application
;                  can use the _WinINet_InternetFindNextFile function to retrieve subsequent Gopher objects.
; Related .......:
; Link ..........: @@MsdnLink@@ GopherFindFirstFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_GopherFindFirstFile($hInternetConnect, $sLocator = Default, $sSearchString = Default, $iFlags = 0, $hContext = 0)
	; Set data/structures up
	Local $pLocator = 0
	If $sLocator <> Default Then
		Local $tLocator = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sLocator)+1) & "]")
		DllStructSetData($tLocator, 1, $sLocator)
		$pLocator = DllStructGetPtr($tLocator)
	EndIf

	Local $pSearchString = 0
	If $sSearchString <> Default Then
		Local $tSearchString = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sSearchString)+1) & "]")
		DllStructSetData($tSearchString, 1, $sSearchString)
		$pSearchString = DllStructGetPtr($tSearchString)
	EndIf

	Local $tFindData = DllStructCreate($tagGOPHER_FIND_DATA)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "GopherFindFirstFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			"ptr",       $pLocator, _
			"ptr",       $pSearchString, _
			"ptr",       DllStructGetPtr($tFindData), _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Then Return SetError(1, 0, 0)
	Local $avReturn[2] = [$avResult[0], $tFindData]
	Return $avReturn
EndFunc   ;==>_WinINet_GopherFindFirstFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GopherGetAttribute
; Description ...: Uses a Gopher locator and search criteria to create a session with the server and locate the requested documents, binary files, index servers, or directory trees.
; Syntax ........: _WinINet_GopherGetAttribute($hInternetConnect, $sLocator[, $sAttributeName = Default[, $hEnumerator = 0[, $hContext = 0[, $iBufferSize = 2048]]]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sLocator         - String that identifies the item at the Gopher server on which to return the attribute information
;                  $sAttributeName   - [optional] A space delimited string specifying the names of attributes to return. If Default, returns information about all attributes
;                  $hEnumerator      - [optional] Pointer to a GopherAttributeEnumerator callback function that enumerates each attribute of the locator. If 0, all Gopher attribute information is placed into the buffer.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
;                  $iBufferSize      - [optional] The number of bytes to allocate to the buffer for retrieving the attributes
; Return values .: Success - A binary variant containing information on the requested attribute(s)
;                  Failure - Binary(""), sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: The GopherAttributeEnumerator function is a boolean function, and should use "ptr;dword" as its parameter
;                  list, interpreted as:
;+
;                  ptr $pAttributeInfo - Pointer to a GOPHER_ATTRIBUTE_TYPE structure.
;                  dword $iError - Error value.
;+
;                  The callback function should return True to continue the enumeration, or False to stop it immediately.
;+
;                  For more detailed information, see <a href="http://msdn.microsoft.com/en-us/library/aa384194(VS.85).aspx">GopherAttributeEnumerator</a>.
; Related .......:
; Link ..........: @@MsdnLink@@ GopherGetAttribute
; Example .......:
; ===============================================================================================================================
Func _WinINet_GopherGetAttribute($hInternetConnect, $sLocator, $sAttributeName = Default, $hEnumerator = 0, $hContext = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $tBuffer = DllStructCreate("byte[" & $iBufferSize & "]")
	Local $tCharactersReturned = DllStructCreate("dword")

	Local $pAttributeName = 0
	If $sAttributeName <> Default Then
		Local $tAttributeName = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sAttributeName)+1) & "]")
		DllStructSetData($tAttributeName, 1, $sAttributeName)
		$pAttributeName = DllStructGetPtr($tAttributeName)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"bool", "GopherGetAttribute" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sLocator, _
			"ptr",       $pAttributeName, _
			"ptr",       DllStructGetPtr($tBuffer), _
			"dword",     $iBufferSize, _
			"ptr",       $tCharactersReturned, _
			"ptr",       $hEnumerator, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, Binary(""))
	Return BinaryMid(DllStructGetData($tBuffer, 1), 1, DllStructGetData($tCharactersReturned, 1))
EndFunc   ;==>_WinINet_GopherGetAttribute

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GopherGetLocatorType
; Description ...: Parses a Gopher locator and determines its attributes.
; Syntax ........: _WinINet_GopherGetLocatorType($sLocator)
; Parameters ....: $sLocator - The Gopher locator to be parsed
; Return values .: Success - The locator type
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: It is possible for multiple attributes to be set on a file. Use BitAND() on the returned value with the value
;                  you wish to compare it against to examine the part you are interested in.
; Related .......:
; Link ..........: @@MsdnLink@@ GopherGetLocatorType
; Example .......:
; ===============================================================================================================================
Func _WinINet_GopherGetLocatorType($sLocator)
	; Set data/structures up
	Local $tGopherType = DllStructCreate("dword")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "GopherGetLocatorType" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sLocator, _
			"ptr",       DllStructGetPtr($tGopherType) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return DllStructGetData($tGopherType, 1)
EndFunc   ;==>_WinINet_GopherGetLocatorType

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_GopherOpenFile
; Description ...: Begins reading a Gopher data file from a Gopher server.
; Syntax ........: _WinINet_GopherOpenFile($hInternetConnect, $sLocator[, $sView = Default[, $iFlags = 0[, $hContext = 0]]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sLocator         - The name of the item to be opened. This can be a locator returned by a previous call to this function, _WinINet_InternetFindNextFile, or _WinINet_GopherCreateLocator
;                  $sView            - [optional] The view to open if several views of the file exist on the server. If Default, the default view is used.
;                  $iFlags           - [optional] Controls the conditions under which subsequent transfers occur. Can be a combination of the following:
;                  |$INTERNET_FLAG_HYPERLINK      - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_NEED_FILE      - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_NO_CACHE_WRITE - Does not add the returned entity to the cache.
;                  |$INTERNET_FLAG_RELOAD         - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE  - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - A handle to the opened file
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ GopherOpenFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_GopherOpenFile($hInternetConnect, $sLocator, $sView = Default, $iFlags = 0, $hContext = 0)
	; Set data/structures up
	Local $pView = 0
	If $sView <> Default Then
		Local $tView = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sView)+1) & "]")
		DllStructSetData($tView, 1, $sView)
		$pView = DllStructGetPtr($tView)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "GopherOpenFile" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sLocator, _
			"ptr",       $pView, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_GopherOpenFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_HttpAddRequestHeaders
; Description ...: Adds one or more HTTP request headers to the HTTP request handle.
; Syntax ........: _WinINet_HttpAddRequestHeaders($hHttpOpenRequest, $sHeaders, $iModifiers)
; Parameters ....: $hHttpOpenRequest - A handle returned from a call to _WinINet_HttpOpenRequest
;                  $sHeaders         - The header(s) to append to the request. Each header must be terminated by @CRLF
;                  $iModifiers       - Controls the semantics of the function. Can be a combination of the following:
;                  |$HTTP_ADDREQ_FLAG_ADD                     - Adds the header if it does not exist. Used with HTTP_ADDREQ_FLAG_REPLACE.
;                  |$HTTP_ADDREQ_FLAG_ADD_IF_NEW              - Adds the header only if it does not already exist; otherwise, an error is returned.
;                  |$HTTP_ADDREQ_FLAG_COALESCE                - Coalesces headers of the same name using a comma.
;                  |$HTTP_ADDREQ_FLAG_COALESCE_WITH_COMMA     - Coalesces headers of the same name using a comma. For example, adding "Accept: text/*" followed by "Accept: audio/*" with this flag results in the formation of the single header "Accept: text/*, audio/*". This causes the first header found to be coalesced. It is up to the calling application to ensure a cohesive scheme with respect to coalesced/separate headers.
;                  |$HTTP_ADDREQ_FLAG_COALESCE_WITH_SEMICOLON - Coalesces headers of the same name using a semicolon.
;                  |$HTTP_ADDREQ_FLAG_REPLACE                 - Replaces or removes a header. If the header value is empty and the header is found, it is removed. If not empty, the header value is replaced.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: _WinINet_HttpAddRequestHeaders appends additional, free-format headers to the HTTP request handle and is
;                  intended for use by sophisticated clients that need detailed control over the exact request sent to the HTTP
;                  server.
;+
;                  Note that for basic _WinINet_HttpAddRequestHeaders, the application can pass in multiple headers in a single
;                  buffer. If the application is trying to remove or replace a header, only one header can be supplied in
;                  $sHeaders
; Related .......:
; Link ..........: @@MsdnLink@@ HttpAddRequestHeaders
; Example .......:
; ===============================================================================================================================
Func _WinINet_HttpAddRequestHeaders($hInternet, $sHeaders, $iModifiers)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "HttpAddRequestHeaders" & $WIN32_FTYPE, _
			"ptr",       $hInternet, _
			$WIN32_TSTR, $sHeaders, _
			"dword",     StringLen($sHeaders), _
			"dword",     $iModifiers _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_HttpAddRequestHeaders

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_HttpEndRequest
; Description ...: Ends an HTTP request that was initiated by _WinINet_HttpSendRequestEx.
; Syntax ........: _WinINet_HttpEndRequest($hInternet)
; Parameters ....: $hHttpOpenRequest - A handle returned by a call to _WinINet_HttpOpenRequest and sent by _WinINet_HttpSendRequestEx.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ HttpEndRequest
; Example .......:
; ===============================================================================================================================
Func _WinINet_HttpEndRequest($hInternet)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "HttpEndRequest" & $WIN32_FTYPE, _
			"ptr",   $hInternet, _
			"ptr",   0, _
			"dword", 0, _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_HttpEndRequest

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_HttpOpenRequest
; Description ...: Creates an HTTP request handle.
; Syntax ........: _WinINet_HttpOpenRequest($hInternetConnect, $sVerb, $sObjectName[, $iFlags = 0[, $sVersion = "HTTP/1.1"[, $sReferer = Default[, $asAcceptTypes = Default[, $hContext = 0]]]]])
; Parameters ....: $hInternetConnect - A handle returned from a call to _WinINet_InternetConnect
;                  $sVerb            - The HTTP verb to use in the request
;                  $sObjectName      - The name of the target object of the HTTP verb. This is generally a file name, an executable module, or a search specifier.
;                  $iFlags           - [optional] Internet options. Can be one of the following:
;                  |$INTERNET_FLAG_CACHE_IF_NET_FAIL        - Returns the resource from the cache if the network request for the resource fails due to an ERROR_INTERNET_CONNECTION_RESET or ERROR_INTERNET_CANNOT_CONNECT error.
;                  |$INTERNET_FLAG_HYPERLINK                - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_IGNORE_CERT_CN_INVALID   - Disables checking of SSL/PCT-based certificates that are returned from the server against the host name given in the request. WinINet uses a simple check against certificates by comparing for matching host names and simple wildcarding rules.
;                  |$INTERNET_FLAG_IGNORE_CERT_DATE_INVALID - Disables checking of SSL/PCT-based certificates for proper validity dates.
;                  |$INTERNET_FLAG_IGNORE_REDIRECT_TO_HTTP  - Disables detection of this special type of redirect. When this flag is used, WinINet transparently allows redirects from HTTPS to HTTP URLs.
;                  |$INTERNET_FLAG_IGNORE_REDIRECT_TO_HTTPS - Disables detection of this special type of redirect. When this flag is used, WinINet transparently allow redirects from HTTP to HTTPS URLs.
;                  |$INTERNET_FLAG_KEEP_CONNECTION          - Uses keep-alive semantics, if available, for the connection. This flag is required for Microsoft Network (MSN), NTLM, and other types of authentication.
;                  |$INTERNET_FLAG_NEED_FILE                - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_NO_AUTH                  - Does not attempt authentication automatically.
;                  |$INTERNET_FLAG_NO_AUTO_REDIRECT         - Does not automatically handle redirection in HttpSendRequest.
;                  |$INTERNET_FLAG_NO_CACHE_WRITE           - Does not add the returned entity to the cache.
;                  |$INTERNET_FLAG_NO_COOKIES               - Does not automatically add cookie headers to requests, and does not automatically add returned cookies to the cookie database.
;                  |$INTERNET_FLAG_NO_UI                    - Disables the cookie dialog box.
;                  |$INTERNET_FLAG_PRAGMA_NOCACHE           - Forces the request to be resolved by the origin server, even if a cached copy exists on the proxy.
;                  |$INTERNET_FLAG_RELOAD                   - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE            - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  |$INTERNET_FLAG_SECURE                   - Uses secure transaction semantics. This translates to using Secure Sockets Layer/Private Communications Technology (SSL/PCT) and is only meaningful in HTTP requests. This flag is redundant if https:// appears in the URL. The InternetConnect function uses this flag for HTTP connections; all the request handles created under this connection will inherit this flag.
;                  $sVersion         - [optional] The HTTP version.
;                  $sReferer         - [optional] The URL of the document from which the URL in the request ($sObjectName) was obtained.
;                  $asAcceptTypes    - [optional] An array of strings that indicates media types accepted by the client. If this parameter is NULL, no types are accepted by the client. Servers generally interpret a lack of accept types to indicate that the client accepts only documents of type "text/*" (that is, only text documents—no pictures or other binary files).
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - A handle to the HTTP request
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: If a verb other than "GET" or "POST" is specified, _WinINet_HttpOpenRequest automatically sets 
;                  $INTERNET_FLAG_NO_CACHE_WRITE and $INTERNET_FLAG_RELOAD for the request.
;+
;                  With Microsoft Internet Explorer 5 and later, if $sVerb is set to "HEAD", the Content-Length header is
;                  ignored on responses from HTTP/1.1 servers.
;+
;                  After the calling application has finished using the HINTERNET handle returned by _WinINet_HttpOpenRequest,
;                  it must be closed using the _WinINet_InternetCloseHandle function.
; Related .......:
; Link ..........: @@MsdnLink@@ HttpOpenRequest
; Example .......:
; ===============================================================================================================================
Func _WinINet_HttpOpenRequest($hInternetConnect, $sVerb, $sObjectName, $iFlags = 0, $sVersion = "HTTP/1.1", $sReferer = Default, $asAcceptTypes = Default, $hContext = 0)
	; Set data/structures up
	Local $pReferer = 0
	If $sReferer <> Default Then
		Local $tReferer = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sReferer)+1) & "]")
		DllStructSetData($tReferer, 1, $sReferer)
		$pReferer = DllStructGetPtr($tReferer)
	EndIf

	Local $pAcceptTypes = 0, $iAcceptTypes = UBound($asAcceptTypes)
	If $iAcceptTypes Then
		Local $tAcceptTypes = DllStructCreate("ptr[" & $iAcceptTypes & "]")
		Local $tType
		For $i = 0 To $iAcceptTypes-1
			$tType = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($asAcceptTypes[$i])+1) & "]")
			DllStructSetData($tType, 1, $asAcceptTypes[$i])
			DllStructSetData($tAcceptTypes, 1, DllStructGetPtr($tType), $i+1)
		Next
		$pAcceptTypes = DllStructGetPtr($tAcceptTypes)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "HttpOpenRequest" & $WIN32_FTYPE, _
			"ptr",       $hInternetConnect, _
			$WIN32_TSTR, $sVerb, _
			$WIN32_TSTR, $sObjectName, _
			$WIN32_TSTR, $sVersion, _
			"ptr",       $pReferer, _
			"ptr",       $pAcceptTypes, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_HttpOpenRequest

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_HttpQueryInfo
; Description ...: Retrieves header information associated with an HTTP request.
; Syntax ........: _WinINet_HttpQueryInfo($hInternet, $iInfoLevel[, $iIndex = 0[, $iBufferSize = 2048]])
; Parameters ....: $hHttpOpenRequest - A handle returned by a call to _WinINet_HttpOpenRequest or  _WinINet_InternetOpenUrl
;                  $iInfoLevel       - The attribute to be retrieved and flags that modify the request. Can be a combination of the $HTTP_QUERY_* variables.
;                  $iIndex           - [optional] The zero-based header index used to enumerate multiple headers with the same name.
;                  $iBufferSize      - [optional] The number of bytes to allocate to the buffer for retrieving the header
; Return values .: Success - An array with the following format:
;                  |[0] - A DllStruct containing a byte array of size $iBufferSize
;                  |[1] - The number of bytes actually written to the array
;                  |@extended is set to the index of the next header, or $ERROR_HTTP_HEADER_NOT_FOUND if the next header cannot be found
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the header
; Author ........: Ultima
; Modified.......:
; Remarks .......: Because HttpQueryInfo can return strings, SYSTEMTIME structures, or DWORDs, it is up to the user to decide how
;                  the returned struct is to be read/interpreted. To convert from a byte array into a SYSTEMTIME structure, for
;                  example, one can perform something like
;                  Local $tTime = DllStructCreate($tagSYSTEMTIME, DllStructGetPtr($tBuffer))
;                  where $tBuffer is the returned buffer. $tTime can then be acted upon as if it were a SYSTEMTIME struct.
; Related .......:
; Link ..........: @@MsdnLink@@ HttpQueryInfo
; Example .......:
; ===============================================================================================================================
Func _WinINet_HttpQueryInfo($hHttpOpenRequest, $iInfoLevel, $iIndex = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $tIndex = DllStructCreate("dword")
	DllStructSetData($tIndex, 1, $iIndex)

	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferSize)

	Local $tBuffer = DllStructCreate("byte[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "HttpQueryInfo" & $WIN32_FTYPE, _
			"ptr",   $hHttpOpenRequest, _
			"dword", $iInfoLevel, _
			"ptr",   DllStructGetPtr($tBuffer), _
			"ptr",   DllStructGetPtr($tBufferLength), _
			"ptr",   DllStructGetPtr($tIndex) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tBufferLength, 1), "")

	Local $avReturn[2] = [$tBuffer, DllStructGetData($tBufferLength, 1)]
	Return SetError(0, DllStructGetData($tIndex, 1), $avReturn)
EndFunc   ;==>_WinINet_HttpQueryInfo

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_HttpSendRequest
; Description ...: Sends the specified request to the HTTP server.
; Syntax ........: _WinINet_HttpSendRequest($hInternet[, $sHeaders = Default[, $vOptional = Default]])
; Parameters ....: $hHttpOpenRequest - A handle returned by a call to _WinINet_HttpOpenRequest
;                  $sHeaders         - [optional] Additional headers to append to the request
;                  $vOptional        - [optional] Additional data to be sent along with the request, generally used with POST and PUT operations
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: An application can use the same HTTP request handle in multiple calls to _WinINet_HttpSendRequest, but the
;                  application must read all data returned from the previous call before calling the function again.
; Related .......:
; Link ..........: @@MsdnLink@@ HttpSendRequest
; Example .......:
; ===============================================================================================================================
Func _WinINet_HttpSendRequest($hHttpOpenRequest, $sHeaders = Default, $vOptional = Default)
	; Set data/structures up
	Local $iHeaders = 0, $pHeaders = 0
	If $sHeaders <> Default Then
		$iHeaders = StringLen($sHeaders)
		Local $tHeaders = DllStructCreate($WIN32_TCHAR & "[" & ($iHeaders+1) & "]")
		DllStructSetData($tHeaders, 1, $sHeaders)
		$pHeaders = DllStructGetPtr($tHeaders)
	EndIf

	Local $iOptional = 0, $pOptional = 0
	If $vOptional <> Default Then
		If IsDllStruct($vOptional) Then
			$iOptional = DllStructGetSize($vOptional)
			$pOptional = DllStructGetPtr($vOptional)
		Else
			Local $tOptional
			If IsBinary($vOptional) Then
				$iOptional = BinaryLen($vOptional)
				$tOptional = DllStructCreate("byte[" & $iOptional & "]")
			Else
				$iOptional = StringLen($vOptional)
				$tOptional = DllStructCreate($WIN32_TCHAR & "[" & ($iOptional+1) & "]")
			EndIf

			DllStructSetData($tOptional, 1, $vOptional)
			$pOptional = DllStructGetPtr($tOptional)
		EndIf
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "HttpSendRequest" & $WIN32_FTYPE, _
			"ptr",   $hHttpOpenRequest, _
			"ptr",   $pHeaders, _
			"dword", $iHeaders, _
			"ptr",   $pOptional, _
			"dword", $iOptional _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_HttpSendRequest

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_HttpSendRequestEx
; Description ...: Sends the specified request to the HTTP server.
; Syntax ........: _WinINet_HttpSendRequestEx($hInternet[, $hBuffersIn = 0[, $hContext = 0]])
; Parameters ....: $hHttpOpenRequest - A handle returned by a call to _WinINet_HttpOpenRequest
;                  $pBuffersIn       - [optional] A pointer to an INTERNET_BUFFERS structure.
;                  $hContext         - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ HttpSendRequestEx
; Example .......:
; ===============================================================================================================================
Func _WinINet_HttpSendRequestEx($hHttpOpenRequest, $pBuffersIn = 0, $hContext = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "HttpSendRequestEx" & $WIN32_FTYPE, _
			"ptr",   $hHttpOpenRequest, _
			"ptr",   $pBuffersIn, _
			"ptr",   0, _
			"dword", 0, _
			"ptr",   $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_HttpSendRequestEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetAttemptConnect
; Description ...: Attempts to make a connection to the Internet.
; Syntax ........: _WinINet_InternetAttemptConnect()
; Parameters ....: None
; Return values .: Success - True
;                  Failure - False; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the returned system error code
; Author ........: Ultima
; Modified.......:
; Remarks .......: This function allows an application to first attempt to connect before issuing any requests. A client program
;                  can use this to evoke the dial-up dialog box. If the attempt fails, the application should enter offline mode.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetAttemptConnect
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetAttemptConnect()
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "InternetAttemptConnect", _
			"dword", 0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, False)
	If $avResult[0] <> 0 then Return SetError(2, $avResult[0], False)
	Return True
EndFunc   ;==>_WinINet_InternetAttemptConnect

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetAutodial
; Description ...: Causes the modem to automatically dial the default Internet connection.
; Syntax ........: _WinINet_InternetAutodial($iFlags[, $hWnd = 0])
; Parameters ....: $iFlags - Controls this operation. Can be one of the following:
;                  |$INTERNET_AUTODIAL_FAILIFSECURITYCHECK  - Causes InternetAutodial to fail if file and printer sharing is disabled for Windows 95 or later. This is obsolete in Windows Vista
;                  |$INTERNET_AUTODIAL_FORCE_ONLINE         - Forces an online Internet connection.
;                  |$INTERNET_AUTODIAL_FORCE_UNATTENDED     - Forces an unattended Internet dial-up.
;                  |$INTERNET_AUTODIAL_OVERRIDE_NET_PRESENT - Causes InternetAutodial to dial the modem connection even when a network connection to the Internet is present.
;                  $hWnd   - [optional] The window handle to use as the parent for this dialog.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: _WinINet_InternetAutodial does not support double-dial connections, SmartCard authentication, or connections
;                  that require registry-based certification.
;+
;                  _WinINet_InternetAutodial does not attempt to dial if there is an existing dial-up connection on the system.
;                  Also, if there is an existing LAN connection, and _WinINet_InternetAutodial is not configured to force dial
;                  (set the $INTERNET_AUTODIAL_FORCE_ONLINE in the $iFlags parameter), _WinINet_InternetAutodial does not attempt
;                  to dial the connection and returns True.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetAutodial
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetAutodial($iFlags, $hWnd = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetAutodial", _
			"dword", $iFlags, _
			"hwnd",  $hWnd _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetAutodial

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetAutodialHangup
; Description ...: Disconnects an automatic dial-up connection.
; Syntax ........: _WinINet_InternetAutodialHangup()
; Parameters ....: None
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: _WinINet_InternetAutodialHangup returns True if autodial is not enabled, or if autodial is enabled but does
;                  not have an entry configured on the computer.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetAutodialHangup
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetAutodialHangup()
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetAutodialHangup", _
			"dword", 0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetAutodialHangup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetCanonicalizeUrl
; Description ...: Canonicalizes a URL, which includes converting unsafe characters and spaces into escape sequences.
; Syntax ........: _WinINet_InternetCanonicalizeUrl($sUrl[, $iFlags = 0])
; Parameters ....: $sUrl   - The URL to canonicalize
;                  $iFlags - [optional] Controls canonicalization. If no flags are specified, the function converts all unsafe characters and meta sequences (such as \.,\ .., and \...) to escape sequences. Can be one of the following:
;                  |$ICU_NO_ENCODE          - Does not encode or decode characters after "#" or "?", and does not remove trailing white space after "?". If this value is not specified, the entire URL is encoded and trailing white space is removed.
;                  |$ICU_DECODE             - Converts all %XX sequences to characters, including escape sequences, before the URL is parsed.
;                  |$ICU_NO_META            - Encodes any percent signs encountered. By default, percent signs are not encoded. This value is available in Microsoft Internet Explorer 5 and later.
;                  |$ICU_ENCODE_SPACES_ONLY - Encodes spaces only.
;                  |$ICU_BROWSER_MODE       - Does not convert unsafe characters to escape sequences.
;                  |$ICU_ENCODE_PERCENT     - Does not remove meta sequences (such as "." and "..") from the URL.
; Return values .: Success - The canonicalized URL
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of characters required to retrieve the full canonicalized URL
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetCanonicalizeUrl
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetCanonicalizeUrl($sUrl, $iFlags = 0)
	; Set data/structures up
	Local $iBufferLength = StringLen($sUrl)*3+1 ; account for the fact that 1 character may be turned into 3 using % encoding
	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferLength)

	Local $tBuffer = DllStructCreate($WIN32_TCHAR & "[" & $iBufferLength & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetCanonicalizeUrl" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       DllStructGetPtr($tBuffer), _
			"ptr",       DllStructGetPtr($tBufferLength), _
			"dword",     $iFlags _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tBufferLength, 1), "")
	Return DllStructGetData($tBuffer, 1)
EndFunc   ;==>_WinINet_InternetCanonicalizeUrl

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetCheckConnection
; Description ...: Allows an application to check if a connection to the Internet can be established.
; Syntax ........: _WinINet_InternetCheckConnection([$sUrl = Default[, $iFlags = 0]])
; Parameters ....: $sUrl   - [optional] The URL to use to check the connection.
;                  $iFlags - [optional] Options. Can be one of the following:
;                  |$FLAG_ICC_FORCE_CONNECTION - Forces a connection to be made.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetCheckConnection
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetCheckConnection($sUrl = Default, $iFlags = 0)
	; Set data/structures up
	Local $pUrl = 0
	If $sUrl <> Default Then
		Local $tUrl = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sUrl)+1) & "]")
		DllStructSetData($tUrl, 1, $sUrl)
		$pUrl = DllStructGetPtr($tUrl)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetCheckConnection" & $WIN32_FTYPE, _
			"ptr",   $pUrl, _
			"dword", $iFlags, _
			"dword", 0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetCheckConnection

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetClearAllPerSiteCookieDecisions
; Description ...: Clears all decisions that were made about cookies on a site by site basis.
; Syntax ........: _WinINet_InternetClearAllPerSiteCookieDecisions()
; Parameters ....: None
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......: _WinINet_InternetEnumPerSiteCookieDecision, _WinINet_InternetGetPerSiteCookieDecision, _WinINet_InternetSetPerSiteCookieDecision, _WinINet_PrivacyGetZonePreferenceW, _WinINet_PrivacySetZonePreferenceW
; Link ..........: @@MsdnLink@@ InternetClearAllPerSiteCookieDecisions
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetClearAllPerSiteCookieDecisions()
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetClearAllPerSiteCookieDecisions" _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetClearAllPerSiteCookieDecisions

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetCloseHandle
; Description ...: Closes a single Internet handle.
; Syntax ........: _WinINet_InternetCloseHandle($hInternet)
; Parameters ....: $hInternet - The Internet connection handle to close
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetCloseHandle
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_InternetCloseHandle($hInternet)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetCloseHandle", _
			"ptr", $hInternet _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetCloseHandle

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetCombineUrl
; Description ...: Combines a base and relative URL into a single URL. The resultant URL is canonicalized.
; Syntax ........: _WinINet_InternetCombineUrl($sBaseUrl, $sRelativeUrl[, $iFlags = 0])
; Parameters ....: $sBaseUrl     - The base URL
;                  $sRelativeUrl - The relative URL
;                  $iFlags       - [optional] Controls canonicalization. If no flags are specified, the function converts all unsafe characters and meta sequences (such as \.,\ .., and \...) to escape sequences. Can be one of the following:
;                  |$ICU_NO_ENCODE          - Does not encode or decode characters after "#" or "?", and does not remove trailing white space after "?". If this value is not specified, the entire URL is encoded and trailing white space is removed.
;                  |$ICU_DECODE             - Converts all %XX sequences to characters, including escape sequences, before the URL is parsed.
;                  |$ICU_NO_META            - Encodes any percent signs encountered. By default, percent signs are not encoded. This value is available in Microsoft Internet Explorer 5 and later.
;                  |$ICU_ENCODE_SPACES_ONLY - Encodes spaces only.
;                  |$ICU_BROWSER_MODE       - Does not convert unsafe characters to escape sequences.
;                  |$ICU_ENCODE_PERCENT     - Does not remove meta sequences (such as "." and "..") from the URL.
; Return values .: Success - The combined URL
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of characters required to retrieve the full combined URL
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetCombineUrl
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetCombineUrl($sBaseUrl, $sRelativeUrl, $iFlags = 0)
	; Set data/structures up
	Local $iBufferLength = (StringLen($sBaseUrl)+StringLen($sRelativeUrl))*3+1
	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferLength)

	Local $tBuffer = DllStructCreate($WIN32_TCHAR & "[" & $iBufferLength & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetCombineUrl" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sBaseUrl, _
			$WIN32_TSTR, $sRelativeUrl, _
			"ptr",       DllStructGetPtr($tBuffer), _
			"ptr",       DllStructGetPtr($tBufferLength), _
			"dword",     $iFlags _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tBufferLength, 1), "")
	Return DllStructGetData($tBuffer, 1)
EndFunc   ;==>_WinINet_InternetCombineUrl

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetConfirmZoneCrossing
; Description ...: Checks for changes between secure and nonsecure URLs.
; Syntax ........: _WinINet_InternetConfirmZoneCrossing($sUrlPrev, $sUrlNew)
; Parameters ....: $sUrlPrev - The URL that was viewed before the current request was made.
;                  $sUrlNew  - The new URL that the user has requested to view.
; Return values .: Success - A Windows system error code
;                  Failure - -1, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: When going from a HTTP to HTTPS server, the function returns ERROR_INTERNET_HTTP_TO_HTTPS_ON_REDIR (12039).
;                  When going from a HTTPS to HTTP server, the function returns ERROR_INTERNET_HTTPS_TO_HTTP_ON_REDIR (12040).
; Related .......:
; Link ..........: @@MsdnLink@@ InternetConfirmZoneCrossing
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetConfirmZoneCrossing($sUrlPrev, $sUrlNew)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "InternetConfirmZoneCrossing" & $WIN32_FTYPE, _
			"hwnd",      0, _
			$WIN32_TSTR, $sUrlPrev, _
			$WIN32_TSTR, $sUrlNew, _
			"int",       0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, -1)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetConfirmZoneCrossing

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetConnect
; Description ...: Opens an File Transfer Protocol (FTP), Gopher, or HTTP session for a given site.
; Syntax ........: _WinINet_InternetConnect($hInternetOpen, $iService, $sServerName[, $iServerPort[, $iFlags = 0[, $sUsername = Default[, $sPassword = Default[, $hContext = 0]]]]])
; Parameters ....: $hInternetOpen - A handle returned by a call to _WinINet_InternetOpen
;                  $iService      - Type of service to access. Can be one of the following:
;                  |$INTERNET_SERVICE_FTP    - FTP service
;                  |$INTERNET_SERVICE_GOPHER - Gopher service
;                  |$INTERNET_SERVICE_HTTP   - HTTP service
;                  $sServerName   - The host name of an Internet server. Alternately, the string can contain the IP number of the site, in ASCII dotted-decimal format
;                  $iServerPort   - [optional] Transmission Control Protocol/Internet Protocol (TCP/IP) port on the server. If set to 0, uses the default port for the specified service.
;                  $iFlags        - [optional] Options specific to the service used.
;                  $sUsername     - [optional] The name of the user to log on. If this parameter is Default, the function uses an appropriate default, except for HTTP
;                  $sPassword     - [optional] he password to use to log on. If both $sPassword and $sUsername are Default, the function uses the default "anonymous" password. In the case of FTP, the default password is the user's e-mail name. If $sPassword is Default, but $sUsername is not Default, the function uses a blank password.
;                  $hContext      - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - A handle to the Internet connection session
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: After the calling application has finished using the handle returned by _WinINet_InternetConnect, it must be
;                  closed using the InternetCloseHandle function.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetConnect
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_InternetConnect($hInternetOpen, $iService, $sServerName, $iServerPort = 0, $iFlags = 0, $sUsername = Default, $sPassword = Default, $hContext = 0)
	; Set data/structures up
	Local $pUsername = 0
	If $sUsername <> Default Then
		Local $tUsername = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sUsername)+1) & "]")
		DllStructSetData($tUsername, 1, $sUsername)
		$pUsername = DllStructGetPtr($tUsername)
	EndIf

	Local $pPassword = 0
	If $sPassword <> Default Then
		Local $tPassword = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sPassword)+1) & "]")
		DllStructSetData($tPassword, 1, $sPassword)
		$pPassword = DllStructGetPtr($tPassword)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "InternetConnect" & $WIN32_FTYPE, _
			"ptr",       $hInternetOpen, _
			$WIN32_TSTR, $sServerName, _
			"dword",     $iServerPort, _
			"ptr",       $pUsername, _
			"ptr",       $pPassword, _
			"dword",     $iService, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetConnect

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetCrackUrl
; Description ...: Cracks a URL into its component parts.
; Syntax ........: _WinINet_InternetCrackUrl($sUrl[, $iFlags = 0])
; Parameters ....: $sUrl   - The canonical URL to be cracked
;                  $iFlags - [optional] Controls the operation. Can be one of the following:
;                  |$ICU_DECODE - Converts encoded characters back to their normal form.
;                  |$ICU_ESCAPE - Converts all escape sequences (%xx) to their corresponding characters.
; Return values .: Success - An array returned by _WinINet_Struct_UrlComponents_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetCrackUrl
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetCrackUrl($sUrl, $iFlags = 0)
	; Set data/structures up
	Local $iUrl = StringLen($sUrl)
	Local $tUrl = DllStructCreate($WIN32_TCHAR & "[" & ($iUrl+1) & "]")
	DllStructSetData($tUrl, 1, $sUrl)

	Local $tUrlComponents = DllStructCreate($tagURL_COMPONENTS)
	DllStructSetData($tUrlComponents, "StructSize",       DllStructGetSize($tUrlComponents))
	DllStructSetData($tUrlComponents, "SchemeNameLength", 1)
	DllStructSetData($tUrlComponents, "UserNameLength",   1)
	DllStructSetData($tUrlComponents, "PasswordLength",   1)
	DllStructSetData($tUrlComponents, "HostNameLength",   1)
	DllStructSetData($tUrlComponents, "UrlPathLength",    1)
	DllStructSetData($tUrlComponents, "ExtraInfoLength",  1)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetCrackUrl" & $WIN32_FTYPE, _
			"ptr",   DllStructGetPtr($tUrl), _
			"dword", $iUrl, _
			"dword", $iFlags, _
			"ptr",   DllStructGetPtr($tUrlComponents) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_UrlComponents_ToArray($tUrlComponents)
EndFunc   ;==>_WinINet_InternetCrackUrl

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetCreateUrl
; Description ...: Creates a URL from its component parts.
; Syntax ........: _WinINet_InternetCreateUrl($avUrlComponents[, $iFlags = 0[, $iBufferSize = 2048]])
; Parameters ....: $avUrlComponents - An array in the format as returned by _WinINet_InternetCrackUrl
;                  $iFlags          - [optional] Controls the operation of this function. Can be a combination of the following:
;                  |$ICU_ESCAPE - Converts all escape sequences (%xx) to their corresponding characters.
;                  $iBufferSize     - [optional] The number of characters to allocate to the buffer for creating the URL
; Return values .: Success - The combined URL
;                  Failure - 0; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of characters required to retrieve the full URL
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetCreateUrl
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetCreateUrl($avUrlComponents, $iFlags = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $tUrlLength = DllStructCreate("dword")
	DllStructSetData($tUrlLength, 1, $iBufferSize)

	Local $tUrl = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetCreateUrl" & $WIN32_FTYPE, _
			"ptr",   DllStructGetPtr(_WinINet_Struct_UrlComponents_FromArray($avUrlComponents)), _
			"dword", $iFlags, _
			"ptr",   DllStructGetPtr($tUrl), _
			"ptr",   DllStructGetPtr($tUrlLength) _
	)

	; Return response
	If @error Then Return SetError(1, 0, 0)
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tUrlLength, 1), 0)
	Return DllStructGetData($tUrl, 1)
EndFunc   ;==>_WinINet_InternetCreateUrl

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetDial
; Description ...: Initiates a connection to the Internet using a modem.
; Syntax ........: _WinINet_InternetDial([$sEntryName = Default[, $iFlags = 0[, $hWnd = 0]]])
; Parameters ....: $sEntryName - [optional] The name of the dial-up connection to be used. If this parameter contains the empty string (""), the user chooses the connection. If this parameter is Default, the function connects to the autodial connection.
;                  $iFlags     - [optional] Options. Can be one of the following:
;                  |$INTERNET_AUTODIAL_FORCE_ONLINE     - Forces an online Internet connection.
;                  |$INTERNET_AUTODIAL_FORCE_UNATTENDED - Forces an unattended Internet dial-up.
;                  |$INTERNET_DIAL_FORCE_PROMPT         - Ignores the "dial automatically" setting and forces the dialing user interface to be displayed.
;                  |$INTERNET_DIAL_SHOW_OFFLINE         - Shows the Work Offline button instead of the Cancel button in the dialing user interface.
;                  |$INTERNET_DIAL_UNATTENDED           - Connects to the Internet through a modem, without displaying a user interface, if possible. Otherwise, the function will wait for user input.
;                  $hWnd       - [optional] The window handle to use as the parent for this dialog.
; Return values .: Success - The connection number
;                  Failure - 0; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the Windows error code
; Author ........: Ultima
; Modified.......:
; Remarks .......: _WinINet_InternetDial does not support double-dial connections, SmartCard authentication, or connections that
;                  require registry-based certification.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetDial
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetDial($sEntryName = Default, $iFlags = 0, $hWnd = 0)
	; Set data/structures up
	Local $pEntryName = 0
	If $sEntryName <> Default Then
		Local $tEntryName = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sEntryName)+1) & "]")
		DllStructSetData($tEntryName, 1, $sEntryName)
		$pEntryName = DllStructGetPtr($tEntryName)
	EndIf

	Local $tConnection = DllStructCreate("dword")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "InternetDial" & $WIN32_FTYPE, _
			"hwnd",      $hWnd, _
			"ptr",       $pEntryName, _
			"dword",     $iFlags, _
			"ptr",       DllStructGetPtr($tConnection), _
			"dword",     0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, 0)
	If $avResult[0] <> 0 Then Return SetError(2, $avResult[0], 0)
	Return DllStructGetData($tConnection, 1)
EndFunc   ;==>_WinINet_InternetDial

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetEnumPerSiteCookieDecision
; Description ...: Retrieves the domains and cookie settings of Web sites for which site-specific cookie regulations are set.
; Syntax ........: _WinINet_InternetEnumPerSiteCookieDecision([$iIndex = 0[, $iBufferSize = 2048]])
; Parameters ....: $iIndex      - [optional] The index of the Web site and corresponding cookie setting to retrieve. This parameter should be 0 the first time the function is called. Incrementing this parameter steps through the list of Web sites and cookie settings
;                  $iBufferSize - [optional] The number of characters to allocate to the buffer for retrieving the Web site domain
; Return values .: Success - The Web site domain
;                  Failure - "", sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: If the function succeeds, @extended is set to the InternetCookieState enumeration value corresponding to the
;                  returned Web site domain.
; Related .......: _WinINet_InternetClearAllPerSiteCookieDecisions, _WinINet_InternetGetPerSiteCookieDecision, _WinINet_InternetSetPerSiteCookieDecision, _WinINet_PrivacyGetZonePreferenceW, _WinINet_PrivacySetZonePreferenceW
; Link ..........: @@MsdnLink@@ InternetEnumPerSiteCookieDecision
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetEnumPerSiteCookieDecision($iIndex = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $tSiteNameSize = DllStructCreate("ulong")
	DllStructSetData($tSiteNameSize, 1, $iBufferSize)

	Local $tDecision = DllStructCreate("ulong")
	Local $tSiteName = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetEnumPerSiteCookieDecision" & $WIN32_FTYPE, _
			"ptr",   DllStructGetPtr($tSiteName), _
			"ptr",   DllStructGetPtr($tSiteNameSize), _
			"ptr",   DllStructGetPtr($tDecision), _
			"ulong", $iIndex _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, "")
	Return SetError(0, DllStructGetData($tDecision, 1), DllStructGetData($tSiteName, 1))
EndFunc   ;==>_WinINet_InternetEnumPerSiteCookieDecision

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetErrorDlg
; Description ...: Displays a dialog box for the specified error, if an appropriate dialog box exists.
; Syntax ........: _WinINet_InternetErrorDlg($hInternet, $iError[, $iFlags = 0[, $pData = 0[, $hWnd = 0]]])
; Parameters ....: $hInternet - Handle to the Internet connection used in the call that caused the error.
;                  $iError    - Error value for which to display a dialog box. Can be one of the following values:
;                  |$ERROR_INTERNET_CLIENT_AUTH_CERT_NEEDED - The server is requesting client authentication. The return value for this error is always ERROR_SUCCESS, regardless of whether the user clicked the CANCEL button or selected a certificate. When the CANCEL button is clicked, there is no client certificate for the current request.
;                  |$ERROR_INTERNET_HTTP_TO_HTTPS_ON_REDIR  - The application is moving from a non-SSL to an SSL connection because of a redirect.
;                  |$ERROR_INTERNET_INCORRECT_PASSWORD      - Displays a dialog box requesting the user's name and password. (On Microsoft Windows 95, the function attempts to use any cached authentication information for the server being accessed before displaying a dialog box.)
;                  |$ERROR_INTERNET_INVALID_CA              - Notifies the user that the function does not recognize the certificate authority that generated the certificate for this Secure Sockets Layer (SSL) site.
;                  |$ERROR_INTERNET_POST_IS_NON_SECURE      - Displays a warning about posting data to the server through a nonsecure connection.
;                  |$ERROR_INTERNET_SEC_CERT_CN_INVALID     - Indicates that the SSL certificate Common Name (host name field) is incorrect. Displays an Invalid SSL Common Name dialog box and lets the user view the incorrect certificate. Also allows the user to select a certificate in response to a server request.
;                  |$ERROR_INTERNET_SEC_CERT_DATE_INVALID   - Tells the user that the SSL certificate has expired.
;                  $iFlags    - Actions. Can be a combination of the following values:
;                  |$FLAGS_ERROR_UI_FILTER_FOR_ERRORS    - Scans the returned headers for errors. Call InternetErrorDlg with this flag set following a call to HttpSendRequest so as to detect hidden errors. Authentication errors, for example, are normally hidden because the call to HttpSendRequest completes successfully, but by scanning the status codes, InternetErrorDlg can determine that the proxy or server requires authentication.
;                  |$FLAGS_ERROR_UI_FLAGS_CHANGE_OPTIONS - If the function succeeds, stores the results of the dialog box in the Internet handle.
;                  |$FLAGS_ERROR_UI_FLAGS_GENERATE_DATA  - Queries the Internet handle for needed information. The function constructs the appropriate data structure for the error. (For example, for Cert CN failures, the function grabs the certificate.)
;                  |$FLAGS_ERROR_UI_FLAGS_NO_UI          - Checks the headers for any hidden errors and displays a dialog box if needed.
;                  |$FLAGS_ERROR_UI_SERIALIZE_DIALOGS    - Serializes authentication dialog boxes for concurrent requests on a password cache entry. The lppvData parameter should contain the address of a pointer to an INTERNET_AUTH_NOTIFY_DATA structure, and the client should implement a thread-safe, nonblocking callback function.
;                  $pData     - [optional] Pointer to the address of a data structure. The structure can be different for each error that needs to be handled.
;                  $hWnd      - [optional] The window handle to use as the parent for this dialog.
; Return values .: Success - An error code (as described <a href="http://msdn.microsoft.com/en-us/library/aa384694(VS.85).aspx">on MSDN</a>).
;                  Failure - Sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetErrorDlg
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetErrorDlg($hInternet, $iError, $iFlags = 0, $pData = 0, $hWnd = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "InternetErrorDlg", _
			"hwnd",  $hWnd, _
			"ptr",   $hInternet, _
			"dword", $iError, _
			"dword", $iFlags, _
			"ptr",   $pData _
	)

	; Return response
	If @error Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetErrorDlg

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetFindNextFile
; Description ...: Continues a file search started as a result of a previous call to _WinINet_FtpFindFirstFile or _WinINet_GopherFindFirstFile.
; Syntax ........: _WinINet_InternetFindNextFile($hInternet, $pFindData)
; Parameters ....: $hInternet - Handle returned from either _WinINet_FtpFindFirstFile, _WinINet_GopherFindFirstFile, or _WinINet_InternetOpenUrl (directories only).
;                  $pFindData - Pointer to the buffer that receives information about the file or directory. The format of the information placed in the buffer depends on the protocol in use. The FTP protocol returns a WIN32_FIND_DATA structure, and the Gopher protocol returns a GOPHER_FIND_DATA structure.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetFindNextFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_InternetFindNextFile($hInternet, $pFindData)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetFindNextFile" & $WIN32_FTYPE, _
			"ptr", $hInternet, _
			"ptr", $pFindData _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetFindNextFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGetConnectedState
; Description ...: Retrieves the connected state of the local system.
; Syntax ........: _WinINet_InternetGetConnectedState()
; Parameters ....: None
; Return values .: Success - True if there is an active modem or a LAN Internet connection, False if there is no Internet connection, or if all possible Internet connections are not currently active. @extended is set to one of the following:
;                  |$INTERNET_CONNECTION_CONFIGURED - Local system has a valid connection to the Internet, but it might or might not be currently connected.
;                  |$INTERNET_CONNECTION_LAN        - Local system uses a local area network to connect to the Internet.
;                  |$INTERNET_CONNECTION_MODEM      - Local system uses a modem to connect to the Internet.
;                  |$INTERNET_CONNECTION_OFFLINE    - Local system is in offline mode.
;                  |$INTERNET_CONNECTION_PROXY      - Local system uses a proxy server to connect to the Internet.
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: A return value of True from _WinINet_InternetGetConnectedState indicates that at least one connection to the
;                  Internet is available. It does not guarantee that a connection to a specific host can be established.
;                  Applications should always check for errors returned from API calls that connect to a server.
;                  _WinINet_InternetCheckConnection can be called to determine if a connection to a specific destination can be
;                  established.
;+
;                  A return value of True indicates that either the modem connection is active, or a LAN connection is active and
;                  a proxy is properly configured for the LAN. A return value of False indicates that neither the modem nor the
;                  LAN is connected. If False is returned, the $INTERNET_CONNECTION_CONFIGURED flag may be set to indicate that
;                  autodial is configured to "always dial" but is not currently active. If autodial is not configured, the
;                  function returns False.
; Related .......: _WinINet_InternetGetConnectedStateEx
; Link ..........: @@MsdnLink@@ InternetGetConnectedState
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetGetConnectedState()
	; Set data/structures up
	Local $tFlags = DllStructCreate("dword")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGetConnectedState" & $WIN32_FTYPE, _
			"ptr",   DllStructGetPtr($tFlags), _
			"dword", 0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, False)
	Return SetError(0, DllStructGetData($tFlags, 1), $avResult[0] <> 0)
EndFunc   ;==>_WinINet_InternetGetConnectedState

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGetConnectedStateEx
; Description ...: Retrieves the connected state of the specified Internet connection.
; Syntax ........: _WinINet_InternetGetConnectedStateEx([$iBufferSize = 2048])
; Parameters ....: $iBufferSize - [optional] The number of characters to allocate to the buffer for retrieving the connection name
; Return values .: Success - The connection name (if connected), sets @error to 1 if there is an active modem or a LAN Internet connection, 0 if there is no Internet connection, or if all possible Internet connections are not currently active. @extended is set to one of the following:
;                  |$INTERNET_CONNECTION_CONFIGURED - Local system has a valid connection to the Internet, but it might or might not be currently connected.
;                  |$INTERNET_CONNECTION_LAN        - Local system uses a local area network to connect to the Internet.
;                  |$INTERNET_CONNECTION_MODEM      - Local system uses a modem to connect to the Internet.
;                  |$INTERNET_CONNECTION_OFFLINE    - Local system is in offline mode.
;                  |$INTERNET_CONNECTION_PROXY      - Local system uses a proxy server to connect to the Internet.
;                  Failure - "", sets @error to -1
; Author ........: Ultima
; Modified.......:
; Remarks .......: A return value of True from _WinINet_InternetGetConnectedState indicates that at least one connection to the
;                  Internet is available. It does not guarantee that a connection to a specific host can be established.
;                  Applications should always check for errors returned from API calls that connect to a server.
;                  _WinINet_InternetCheckConnection can be called to determine if a connection to a specific destination can be
;                  established.
;+
;                  A return value of True indicates that either the modem connection is active, or a LAN connection is active and
;                  a proxy is properly configured for the LAN. A return value of False indicates that neither the modem nor the
;                  LAN is connected. If False is returned, the $INTERNET_CONNECTION_CONFIGURED flag may be set to indicate that
;                  autodial is configured to "always dial" but is not currently active. If autodial is not configured, the
;                  function returns False.
; Related .......: _WinINet_InternetGetConnectedState
; Link ..........: @@MsdnLink@@ InternetGetConnectedStateEx
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetGetConnectedStateEx($iBufferSize = 2048)
	; Set data/structures up
	Local $tFlags = DllStructCreate("dword")

	Local $tConnectionName = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGetConnectedStateEx" & $WIN32_FTYPE, _
			"ptr",   DllStructGetPtr($tFlags), _
			"ptr",   DllStructGetPtr($tConnectionName), _
			"dword", $iBufferSize, _
			"dword", 0 _
	)

	; Return response
	If @error Then Return SetError(-1, 0, "")
	Return SetError($avResult[0], DllStructGetData($tFlags, 1), DllStructGetData($tConnectionName, 1))
EndFunc   ;==>_WinINet_InternetGetConnectedStateEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGetCookie
; Description ...: Retrieves the cookie for the specified URL.
; Syntax ........: _WinINet_InternetGetCookie($sUrl[, $iBufferSize = 2048])
; Parameters ....: $sUrl        - The URL for which cookies are to be retrieved.
;                  $iBufferSize - [optional] The number of characters to allocate to the buffer for retrieving the cookie data
; Return values .: Success - The cookie data
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the full cookie data
; Author ........: Ultima
; Modified.......:
; Remarks .......: _WinINet_InternetGetCookie does not require a call to _WinINet_InternetOpen. _WinINet_InternetGetCookie checks
;                  in the windows\cookies directory for persistent cookies that have an expiration date set sometime in the
;                  future. _WinINet_InternetGetCookie also searches memory for any session cookies, that is, cookies that do not
;                  have an expiration date that were created in the same process by _WinINet_InternetSetCookie, because these
;                  cookies are not written to any files. Rules for creating cookie files are internal to the system and can
;                  change in the future.
;+
;                  _WinINet_InternetGetCookie does not return cookies that the server marked as non-scriptable with the
;                  "HttpOnly" attribute in the Set-Cookie header.
; Related .......: _WinINet_InternetGetCookieEx
; Link ..........: @@MsdnLink@@ InternetGetCookie
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetGetCookie($sUrl, $iBufferSize = 2048)
	; Set data/structures up
	Local $tSize = DllStructCreate("dword")
	DllStructSetData($tSize, 1, $iBufferSize)

	Local $tCookieData = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGetCookie" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCookieData), _
			"ptr",       DllStructGetPtr($tSize) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(1, DllStructGetData($tSize, 1), "")
	Return DllStructGetData($tCookieData, 1)
EndFunc   ;==>_WinINet_InternetGetCookie

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGetCookieEx
; Description ...: Retrieves data stored in cookies associated with a specified URL. Unlike _WinINet_InternetGetCookie, _WinINet_InternetGetCookieEx can be used to restrict data retrieved to a single cookie name or, by policy, associated with untrusted sites or third-party cookies.
; Syntax ........: _WinINet_InternetGetCookieEx($sUrl, $sCookieName[, $iFlags = 0[, $iBufferSize = 2048]])
; Parameters ....: $sUrl        - The URL with which the cookie to retrieve is associated
;                  $sCookieName - The name of the cookie to retrieve. This name is case-sensitive.
;                  $iFlags      - [optional] A flag that controls how the function retrieves cookie data. Can be one of the following:
;                  |$INTERNET_COOKIE_THIRD_PARTY   - Indicates that a third-party cookie is being set or retrieved.
;                  |$INTERNET_FLAG_RESTRICTED_ZONE - Indicates that the cookie being set is associated with an untrusted site.
;                  $iBufferSize - [optional] The number of characters to allocate to the buffer for retrieving
; Return values .: Success - The cookie data
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the full cookie data
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......: _WinINet_InternetGetCookie
; Link ..........: @@MsdnLink@@ InternetGetCookieEx
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetGetCookieEx($sUrl, $sCookieName, $iFlags = 0, $iBufferSize = 2048)
	; Set data/structures up
	Local $tSize = DllStructCreate("dword")
	DllStructSetData($tSize, 1, $iBufferSize)

	Local $tCookieData = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGetCookieEx" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			$WIN32_TSTR, $sCookieName, _
			"ptr",       DllStructGetPtr($tCookieData), _
			"ptr",       DllStructGetPtr($tSize), _
			"dword",     $iFlags, _
			"ptr",       0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(1, DllStructGetData($tSize, 1), "")
	Return DllStructGetData($tCookieData, 1)
EndFunc   ;==>_WinINet_InternetGetCookieEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGetLastResponseInfo
; Description ...: Retrieves the last error description or server response on the thread calling this function.
; Syntax ........: _WinINet_InternetGetLastResponseInfo([$iBufferSize = 2048])
; Parameters ....: $iBufferSize - [optional] The number of characters to allocate to the buffer for retrieving the error message
; Return values .: Success - The error message, sets @extended to the error code
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of characters required to retrieve the full error message
; Author ........: Ultima
; Modified.......:
; Remarks .......: The FTP and Gopher protocols can return additional text information along with most errors. This extended
;                  error information can be retrieved by using the _WinINet_InternetGetLastResponseInfo function whenever
;                  GetLastError returns $ERROR_INTERNET_EXTENDED_ERROR (occurring after an unsuccessful function call).
; Related .......:
; Link ..........: @@MsdnLink@@ InternetGetLastResponseInfo
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_InternetGetLastResponseInfo($iBufferSize = 2048)
	; Set data/structures up
	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferSize)

	Local $tBuffer = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")
	Local $tError = DllStructCreate("dword")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGetLastResponseInfo" & $WIN32_FTYPE, _
			"ptr", DllStructGetPtr($tError), _
			"ptr", DllStructGetPtr($tBuffer), _
			"ptr", DllStructGetPtr($tBufferLength) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tBufferLength, 1), "")
	Return SetError(0, DllStructGetData($tError, 1), DllStructGetData($tBuffer, 1))
EndFunc   ;==>_WinINet_InternetGetLastResponseInfo

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGetPerSiteCookieDecision
; Description ...: Retrieves a decision on cookies for a given domain.
; Syntax ........: _WinINet_InternetGetPerSiteCookieDecision($sHostName)
; Parameters ....: $sHostName - The domain to check cookie decisions for.
; Return values .: Success - One of the following cookie states:
;                  |$COOKIE_STATE_ACCEPT    - The cookies are accepted.
;                  |$COOKIE_STATE_PROMPT    - The user is prompted to accept or deny the cookie.
;                  |$COOKIE_STATE_LEASH     - Cookies are accepted only in the first-party context.
;                  |$COOKIE_STATE_DOWNGRADE - Cookies are accepted and become session cookies.
;                  |$COOKIE_STATE_REJECT    - The cookies are rejected.
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: If the function fails, this may indicate that the domain does not have any site-specific cookie regulations.
;+
;                  WinINet minimizes the domain specified in the $sHostName parameter and sets the cookie policy on the minimimum
;                  legal domain. For example, if the specified host name is widgets.microsoft.com, the policy is set on the
;                  minimized host name microsoft.com.
; Related .......: _WinINet_InternetClearAllPerSiteCookieDecisions, _WinINet_InternetEnumPerSiteCookieDecision, _WinINet_InternetSetPerSiteCookieDecision, _WinINet_PrivacyGetZonePreferenceW, _WinINet_PrivacySetZonePreferenceW
; Link ..........: @@MsdnLink@@ InternetGetPerSiteCookieDecision
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetGetPerSiteCookieDecision($sHostName)
	; Set data/structures up
	Local $tResult = DllStructCreate("ulong")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGetPerSiteCookieDecision" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sHostName, _
			"ptr",       DllStructGetPtr($tResult) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return DllStructGetData($tResult, 1)
EndFunc   ;==>_WinINet_InternetGetPerSiteCookieDecision

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetGoOnline
; Description ...: Prompts the user for permission to initiate connection to a URL.
; Syntax ........: _WinINet_InternetGoOnline($sUrl[, $hWnd = 0])
; Parameters ....: $sUrl - The URL of the Web site for the connection.
;                  $hWnd - [optional] The window handle to use as the parent for this dialog.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetGoOnline
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetGoOnline($sUrl, $hWnd = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetGoOnline" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"hwnd",      $hWnd, _
			"dword",     0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetGoOnline

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetHangUp
; Description ...: Instructs the modem to disconnect from the Internet.
; Syntax ........: _WinINet_InternetHangUp($iConnection)
; Parameters ....: $iConnection - Connection number of the connection to be disconnected.
; Return values .: Success - True
;                  Failure - False; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the returned Windoes system error code
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetHangUp
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetHangUp($iConnection)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "InternetHangUp", _
			"dword", $iConnection, _
			"dword", 0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, False)
	If $avResult[0] <> 0 Then Return SetError(2, $avResult[0], False)
	Return True
EndFunc   ;==>_WinINet_InternetHangUp

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetLockRequestFile
; Description ...: Places a lock on the file that is being used.
; Syntax ........: _WinINet_InternetLockRequestFile($hInternet)
; Parameters ....: $hInternet - A handle returned by a call to _WinINet_FtpOpenFile, _WinINet_GopherOpenFile, _WinINet_HttpOpenRequest, or _WinINet_InternetOpenUrl.
; Return values .: Success - A handle to the lock request handle.
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: If the handle passed to $hInternet was created using $INTERNET_FLAG_NO_CACHE_WRITE or
;                  $INTERNET_FLAG_DONT_CACHE, the function creates a temporary file with the extension .tmp, unless it is an
;                  HTTPS resource. If the handle was created using $INTERNET_FLAG_NO_CACHE_WRITE or $INTERNET_FLAG_DONT_CACHE and
;                  it is accessing an HTTPS resource, _WinINet_InternetLockRequestFile fails.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetLockRequestFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetLockRequestFile($hInternet)
	; Set data/structures up
	Local $tLockReqHandle = DllStructCreate("ptr")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetLockRequestFile", _
			"ptr", $hInternet, _
			"ptr", DllStructGetPtr($tLockReqHandle) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return DllStructGetData($tLockReqHandle, 1)
EndFunc   ;==>_WinINet_InternetLockRequestFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetOpen
; Description ...: Initializes an application's use of the WinINet functions.
; Syntax ........: _WinINet_InternetOpen([$sAgent  Default[, $iAccessType = $INTERNET_OPEN_TYPE_DIRECT[, $iFlags = 0[, $sProxyName = Default[, $sProxyBypass = Default]]]]])
; Parameters ....: $sAgent       - [optional] The name of the application or entity calling the WinINet functions. This name is used as the user agent in the HTTP protocol.
;                  $iAccessType  - [optional] Type of access required. Can be one of the following:
;                  |$INTERNET_OPEN_TYPE_DIRECT                      - Resolves all host names locally.
;                  |$INTERNET_OPEN_TYPE_PRECONFIG                   - Retrieves the proxy or direct configuration from the registry.
;                  |$INTERNET_OPEN_TYPE_PRECONFIG_WITH_NO_AUTOPROXY - Passes requests to the proxy unless a proxy bypass list is supplied and the name to be resolved bypasses the proxy. In this case, the function uses INTERNET_OPEN_TYPE_DIRECT.
;                  |$INTERNET_OPEN_TYPE_PROXY                       - Retrieves the proxy or direct configuration from the registry and prevents the use of a startup Microsoft JScript or Internet Setup (INS) file.
;                  $iFlags       - [optional] Options. Can be a combination of the following:
;                  |$INTERNET_FLAG_ASYNC      - Makes only asynchronous requests on handles descended from the handle returned from this function.
;                  |$INTERNET_FLAG_FROM_CACHE - Does not make network requests. All entities are returned from the cache. If the requested item is not in the cache, a suitable error, such as ERROR_FILE_NOT_FOUND, is returned.
;                  |$INTERNET_FLAG_OFFLINE    - Identical to INTERNET_FLAG_FROM_CACHE.
;                  $sProxyName   - [optional] The name of the proxy server(s) to use when proxy access is specified by setting $iAccessType to $INTERNET_OPEN_TYPE_PROXY. Do not use an empty string, because _WinINet_InternetOpen will use it as the proxy name. The WinINet functions recognize only CERN type proxies (HTTP only) and the TIS FTP gateway (FTP only). If Microsoft Internet Explorer is installed, these functions also support SOCKS proxies. FTP and Gopher requests can be made through a CERN type proxy either by changing them to an HTTP request or by using _WinINet_InternetOpenUrl. If $iAccessType is not set to $INTERNET_OPEN_TYPE_PROXY, this parameter is ignored and should be Default. See the MSDN article on InternetOpen for additional information.
;                  $sProxyBypass - [optional] An optional list of host names or IP addresses, or both, that should not be routed through the proxy when $iAccessType is set to $INTERNET_OPEN_TYPE_PROXY. The list can contain wildcards. Do not use an empty string, because InternetOpen will use it as the proxy bypass list. If this parameter specifies the "<local>" macro as the only entry, the function bypasses any host name that does not contain a period. If $iAccessType is not set to $INTERNET_OPEN_TYPE_PROXY, this parameter is ignored and should be Default. See the MSDN article on InternetOpen for additional information.
; Return values .: Success - An Internet handle to be used in future calls to various WinINet finctions
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: After the calling application has finished using the handle returned by _WinINet_InternetOpen, it must be
;                  closed using the _WinINet_InternetCloseHandle function.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetOpen
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_InternetOpen($sAgent = Default, $iAccessType = $INTERNET_OPEN_TYPE_DIRECT, $iFlags = 0, $sProxyName = Default, $sProxyBypass = Default)
	; Set data/structures up
	If $sAgent = Default Then $sAgent = "AutoIt/" & @AutoItVersion

	Local $pProxyName = 0
	If $sProxyName <> Default Then
		Local $tProxyName = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sProxyName)+1) & "]")
		DllStructSetData($tProxyName, 1, $sProxyName)
		$pProxyName = DllStructGetPtr($tProxyName)
	EndIf

	Local $pProxyBypass = 0
	If $sProxyBypass <> Default Then
		Local $tProxyBypass = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sProxyBypass)+1) & "]")
		DllStructSetData($tProxyBypass, 1, $sProxyBypass)
		$pProxyBypass = DllStructGetPtr($tProxyBypass)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "InternetOpen" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sAgent, _
			"dword",     $iAccessType, _
			"ptr",       $pProxyName, _
			"ptr",       $pProxyBypass, _
			"dword",     $iFlags _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetOpen

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetOpenUrl
; Description ...: Opens a resource specified by a complete FTP, Gopher, or HTTP URL.
; Syntax ........: _WinINet_InternetOpenUrl($hInternetOpen, $sUrl[, $sHeaders = Default[, $iFlags = 0[, $hContext = 0]]])
; Parameters ....: $hInternetOpen - A handle returned by a call to _WinINet_InternetOpen
;                  $sUrl          - The URL to begin reading. Only URLs beginning with ftp:, gopher:, http:, or https: are supported.
;                  $sHeaders      - [optional] The header(s) to append to the request. Each header must be terminated by @CRLF
;                  $iFlags        - [optional] Options. Can be one of the following:
;                  |$INTERNET_FLAG_EXISTING_CONNECT         - Attempts to use an existing InternetConnect object if one exists with the same attributes required to make the request. This is useful only with FTP operations, since FTP is the only protocol that typically performs multiple operations during the same session. WinINet caches a single connection handle for each HINTERNET handle generated by InternetOpen. The InternetOpenUrl and InternetConnect functions use this flag for Http and Ftp connections.
;                  |$INTERNET_FLAG_HYPERLINK                - Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network.
;                  |$INTERNET_FLAG_IGNORE_CERT_CN_INVALID   - Disables checking of SSL/PCT-based certificates that are returned from the server against the host name given in the request. WinINet uses a simple check against certificates by comparing for matching host names and simple wildcarding rules.
;                  |$INTERNET_FLAG_IGNORE_CERT_DATE_INVALID - Disables checking of SSL/PCT-based certificates for proper validity dates.
;                  |$INTERNET_FLAG_IGNORE_REDIRECT_TO_HTTP  - Disables detection of this special type of redirect. When this flag is used, WinINet transparently allows redirects from HTTPS to HTTP URLs.
;                  |$INTERNET_FLAG_IGNORE_REDIRECT_TO_HTTPS - Disables detection of this special type of redirect. When this flag is used, WinINet transparently allow redirects from HTTP to HTTPS URLs.
;                  |$INTERNET_FLAG_KEEP_CONNECTION          - Uses keep-alive semantics, if available, for the connection. This flag is required for Microsoft Network (MSN), NTLM, and other types of authentication.
;                  |$INTERNET_FLAG_NEED_FILE                - Causes a temporary file to be created if the file cannot be cached.
;                  |$INTERNET_FLAG_NO_AUTH                  - Does not attempt authentication automatically.
;                  |$INTERNET_FLAG_NO_AUTO_REDIRECT         - Does not automatically handle redirection in HttpSendRequest.
;                  |$INTERNET_FLAG_NO_CACHE_WRITE           - Does not add the returned entity to the cache.
;                  |$INTERNET_FLAG_NO_COOKIES               - Does not automatically add cookie headers to requests, and does not automatically add returned cookies to the cookie database.
;                  |$INTERNET_FLAG_NO_UI                    - Disables the cookie dialog box.
;                  |$INTERNET_FLAG_PASSIVE                  - Uses passive FTP semantics. InternetOpenUrl uses this flag for FTP files and directories.
;                  |$INTERNET_FLAG_PRAGMA_NOCACHE           - Forces the request to be resolved by the origin server, even if a cached copy exists on the proxy.
;                  |$INTERNET_FLAG_RAW_DATA                 - Returns the data as a GOPHER_FIND_DATA structure when retrieving Gopher directory information, or as a WIN32_FIND_DATA structure when retrieving FTP directory information. If this flag is not specified or if the call is made through a CERN proxy, InternetOpenUrl returns the HTML version of the directory.
;                  |$INTERNET_FLAG_RELOAD                   - Forces a download of the requested file, object, or directory listing from the origin server, not from the cache.
;                  |$INTERNET_FLAG_RESYNCHRONIZE            - Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded.
;                  |$INTERNET_FLAG_SECURE                   - Uses secure transaction semantics. This translates to using Secure Sockets Layer/Private Communications Technology (SSL/PCT) and is only meaningful in HTTP requests. This flag is redundant if https:// appears in the URL.
;                  $hContext      - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - A handle to the FTP, Gopher, or HTTP URL if the connection is successfully established
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: Call _WinINet_InternetCanonicalizeUrl first if the URL being used contains a relative URL and a base URL
;                  separated by blank spaces.
;+
;                  This is a general function that an application can use to retrieve data over any of the protocols that
;                  WinINet supports. This function is especially useful when the application does not need to access the
;                  particulars of a protocol, but only requires the data corresponding to a URL. The _WinINet_InternetOpenUrl
;                  function parses the URL string, establishes a connection to the server, and prepares to download the data
;                  identified by the URL. The application can then use _WinINet_InternetReadFile (for files) or
;                  _WinINet_InternetFindNextFile (for directories) to retrieve the URL data. It is not necessary to call
;                  _WinINet_InternetConnect before _WinINet_InternetOpenUrl.
;+
;                  _WinINet_InternetOpenUrl disables Gopher on ports less than 1024, except for port 70—the standard Gopher
;                  port—and port 105—typically used for Central Services Organization (CSO) name searches.
;+
;                  After the calling application has finished using the handle returned by _WinINet_InternetOpenUrl, it must be
;                  closed using the _WinINet_InternetCloseHandle function.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetOpenUrl
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetOpenUrl($hInternetOpen, $sUrl, $sHeaders = Default, $iFlags = 0, $hContext = 0)
	; Set data/structures up
	Local $pHeaders = 0, $iHeaders = 0
	If $sHeaders <> Default Then
		$iHeaders = StringLen($sHeaders)
		Local $tHeaders = DllStructCreate($WIN32_TCHAR & "[" & ($iHeaders+1) & "]")
		DllStructSetData($tHeaders, 1, $sHeaders)
		$pHeaders = DllStructGetPtr($tHeaders)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "InternetOpenUrl" & $WIN32_FTYPE, _
			"ptr",       $hInternetOpen, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       $pHeaders, _
			"dword",     $iHeaders, _
			"dword",     $iFlags, _
			"ptr",       $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetOpenUrl

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetQueryDataAvailable
; Description ...: Queries the server to determine the amount of data available.
; Syntax ........: _WinINet_InternetQueryDataAvailable($hInternet)
; Parameters ....: $hInternet - A handle returned by a call to _WinINet_InternetOpenUrl, _WinINet_FtpOpenFile, _WinINet_GopherOpenFile, or _WinINet_HttpOpenRequest.
; Return values .: Success - The number of available bytes
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: This function returns the number of bytes of data that are available to be read immediately by a subsequent
;                  call to _WinINet_InternetReadFile. If there is currently no data available and the end of the file has not
;                  been reached, the request waits until data becomes available. The amount of data remaining will not be
;                  recalculated until all available data indicated by the call to _WinINet_InternetQueryDataAvailable is read.
;+
;                  For handles created by _WinINet_HttpOpenRequest and sent by _WinINet_HttpSendRequestEx, a call to
;                  _WinINet_HttpEndRequest must be made on the handle before _WinINet_InternetQueryDataAvailable can be used.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetQueryDataAvailable
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetQueryDataAvailable($hInternet)
	; Set data/structures up
	Local $tNumberOfBytesAvailable = DllStructCreate("dword")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetQueryDataAvailable", _
			"ptr",   $hInternet, _
			"ptr",   DllStructGetPtr($tNumberOfBytesAvailable), _
			"dword", 0, _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return DllStructGetData($tNumberOfBytesAvailable, 1)
EndFunc   ;==>_WinINet_InternetQueryDataAvailable

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetQueryOption
; Description ...: Queries an Internet option on the specified handle.
; Syntax ........: _WinINet_InternetQueryOption($hInternet, $iOption[, $iBufferSize = 2048])
; Parameters ....: $hInternet   - Handle on which to query information.
;                  $iOption     - Internet option to be queried. Can be one of the $INTERNET_OPTION_* options.
;                  $iBufferSize - [optional] The number of bytes to allocate to the buffer for retrieving the data
; Return values .: Success - A DllStruct containing a byte array of size $iBufferSize. @extended is set to the number of bytes actually written to the array
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the header
; Author ........: Ultima
; Modified.......:
; Remarks .......: Because InternetQueryOption can return different data types, it is up to the user to decide how the returned
;                  struct is to be read/interpreted. To convert from a byte array into a DWORD, for example, one can perform
;                  something like
;                  Local $tDWORD = DllStructCreate("dword", DllStructGetPtr($tBuffer))
;                  where $tBuffer is the returned buffer. $tDWORD can then be acted upon as if it were a DWORD struct.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetQueryOption
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetQueryOption($hInternet, $iOption, $iBufferSize = 2048)
	; Set data/structures up
	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferSize)

	Local $tBuffer = DllStructCreate("byte[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetQueryOption" & $WIN32_FTYPE, _
			"ptr",   $hInternet, _
			"dword", $iOption, _
			"ptr",   DllStructGetPtr($tBuffer), _
			"ptr",   DllStructGetPtr($tBufferLength) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tBufferLength, 1), "")
	Return SetError(0, DllStructGetData($tBufferLength, 1), $tBuffer)
EndFunc   ;==>_WinINet_InternetQueryOption

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetReadFile
; Description ...: Reads data from a handle opened by _WinINet_InternetOpenUrl, _WinINet_FtpOpenFile, _WinINet_GopherOpenFile, or _WinINet_HttpOpenRequest.
; Syntax ........: _WinINet_InternetReadFile($hInternet, $iNumberOfBytesToRead)
; Parameters ....: $hInternet            - A handle returned by a call to _WinINet_InternetOpenUrl, _WinINet_FtpOpenFile, _WinINet_GopherOpenFile, or _WinINet_HttpOpenRequest.
;                  $iNumberOfBytesToRead - Number of bytes to be read.
; Return values .: Success - A binary variant containing the read data. @extended is set to the number of bytes actually read from the handle.
;                  Failure - Binary(""), sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: To ensure all data is retrieved, an application must continue to call the _WinINet_InternetReadFile function
;                  until the function returns with both @error and @extended (the number of bytes read) set to 0.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetReadFile
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_InternetReadFile($hInternet, $iNumberOfBytesToRead)
	; Set data/structures up
	Local $tNumberOfBytesRead = DllStructCreate("dword")
	Local $tBuffer = DllStructCreate("byte[" & $iNumberOfBytesToRead & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetReadFile", _
			"ptr",   $hInternet, _
			"ptr",   DllStructGetPtr($tBuffer), _
			"dword", $iNumberOfBytesToRead, _
			"ptr",   DllStructGetPtr($tNumberOfBytesRead) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, Binary(""))

	Local $iNumberOfBytesRead = DllStructGetData($tNumberOfBytesRead, 1)
	Return SetError(0, $iNumberOfBytesRead, BinaryMid(DllStructGetData($tBuffer, 1), 1, $iNumberOfBytesRead))
EndFunc   ;==>_WinINet_InternetReadFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetReadFileEx
; Description ...: Reads data from a handle opened by _WinINet_InternetOpenUrl or _WinINet_HttpOpenRequest.
; Syntax ........: _WinINet_InternetReadFileEx($hInternet, [$iFlags = 0[, $hContext = 0]])
; Parameters ....: $hInternet - A handle opened by _WinINet_InternetOpenUrl or _WinINet_HttpOpenRequest.
;                  $iFlags    - [optional] Options. Can be one of the following:
;                  |$IRF_NO_WAIT - Do not wait for data. If there is data available, the function returns either the amount of data requested or the amount of data available (whichever is smaller).
;                  $hContext  - [optional] An application-defined value used to identify the application context in callback operations. Can be a DWORD value, or a pointer to a DllStruct.
; Return values .: Success - An INTERNET_BUFFERS structure.
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetReadFileEx
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetReadFileEx($hInternet, $iFlags = 0, $hContext = 0)
	; Set data/structures up
	Local $tBuffersOut = DllStructCreate($tagINTERNET_BUFFERS)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetReadFileEx" & $WIN32_FTYPE, _
			"ptr",   $hInternet, _
			"ptr",   DllStructGetPtr($tBuffersOut), _
			"dword", $iFlags, _
			"ptr",   $hContext _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $tBuffersOut
EndFunc   ;==>_WinINet_InternetReadFileEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetSetCookie
; Description ...: Creates a cookie associated with the specified URL.
; Syntax ........: _WinINet_InternetSetCookie($sUrl, $sCookieData[, $sCookieName = Default])
; Parameters ....: $sUrl        - The URL for which the cookie should be set.
;                  $sCookieData - The actual data to be associated with the URL.
;                  $sCookieName - [optional] The name to be associated with the cookie data.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: Cookies created by _WinINet_InternetSetCookie without an expiration date are stored in memory and are
;                  available only in the same process that created them. Cookies that include an expiration date are stored in
;                  the windows\cookies directory.
;+
;                  Creating a new cookie might cause a dialog box to appear on the screen asking the user if they want to allow
;                  or disallow cookies from this site based on the privacy settings for the user.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetSetCookie
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetSetCookie($sUrl, $sCookieData, $sCookieName = Default)
	; Set data/structures up
	Local $pCookieName = 0
	If $sCookieName <> Default Then
		Local $tCookieName = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sCookieName)+1) & "]")
		DllStructSetData($tCookieName, 1, $sCookieName)
		$pCookieName = DllStructGetPtr($tCookieName)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetSetCookie" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       $pCookieName, _
			$WIN32_TSTR, $sCookieData _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetSetCookie

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetSetCookieEx
; Description ...: The InternetSetCookieEx function creates a cookie with a specified name that is associated with a specified URL. This function differs from the _WinINet_InternetSetCookie function by being able to create third-party cookies.
; Syntax ........: _WinINet_InternetSetCookieEx($sUrl, $sCookieData[, $sCookieName = Default[, $iFlags = 0[, $pP3PHeader = 0]]])
; Parameters ....: $sUrl        - The URL for which the cookie should be set.
;                  $sCookieData - The actual data to be associated with the URL.
;                  $sCookieName - [optional] The name to be associated with the cookie data.
;                  $iFlags      - [optional] Flags that control how the function sets cookie data. Can be a combination of the following:
;                  |$INTERNET_COOKIE_EVALUATE_P3P - Indicates that a Platform for Privacy Protection (P3P) header is to be associated with a cookie.
;                  |$INTERNET_COOKIE_THIRD_PARTY  - Indicates that a third-party cookie is being set or retrieved.
;                  |$INTERNT_FLAG_RESTRICTED_ZONE - Indicates that the cookie being set is associated with an untrusted site.
;                  $pP3PHeader  - [optional] A Platform-for-Privacy-Protection (P3P) header to be associated with the cookie. This should be used only if $INTERNET_COOKIE_EVALUATE_P3P is set in $iFlags
; Return values .: Success - An InternetCookieState enumeration value
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetSetCookieEx
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetSetCookieEx($sUrl, $sCookieData, $sCookieName = Default, $iFlags = 0, $pP3PHeader = 0)
	; Set data/structures up
	Local $pCookieName = 0
	If $sCookieName <> Default Then
		Local $tCookieName = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($sCookieName)+1) & "]")
		DllStructSetData($tCookieName, 1, $sCookieName)
		$pCookieName = DllStructGetPtr($tCookieName)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetSetCookieEx" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrl, _
			"ptr",       $pCookieName, _
			$WIN32_TSTR, $sCookieData, _
			"dword",     $iFlags, _
			"ptr",       $pP3PHeader _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetSetCookieEx

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetSetFilePointer
; Description ...: Sets a file position for _WinINet_InternetReadFile.
; Syntax ........: _WinINet_InternetSetFilePointer($hInternet, $iDistanceToMove, $iMoveMethod)
; Parameters ....: $hInternet       - A handle returned by a call to _WinINet_InternetOpenUrl (on an HTTP or HTTPS URL) or _WinINet_HttpOpenRequest (using the GET or HEAD HTTP verb and passed to _WinINet_HttpSendRequest or _WinINet_HttpSendRequestEx). This handle must not have been created with the $INTERNET_FLAG_DONT_CACHE or $INTERNET_FLAG_NO_CACHE_WRITE value set.
;                  $iDistanceToMove - Number of bytes to move the file pointer. A positive value moves the pointer forward in the file; a negative value moves it backward.
;                  $iMoveMethod     - Starting point for the file pointer move. Can be one of the following values:
;                  |$FILE_BEGIN   - Starting point is zero or the beginning of the file. If FILE_BEGIN is specified, $iDistanceToMove is interpreted as an unsigned location for the new file pointer.
;                  |$FILE_CURRENT - Current value of the file pointer is the starting point.
;                  |$FILE_END     - Current end-of-file position is the starting point. This method fails if the content length is unknown.
; Return values .: Success - The current file position
;                  Failure - -1, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: This function cannot be used once the end of the file has been reached by _WinINet_InternetReadFile.
;+
;                  For handles created by _WinINet_HttpOpenRequest and sent by _WinINet_HttpSendRequestEx, a call to
;                  _WinINet_HttpEndRequest must be made on the handle before _WinINet_InternetSetFilePointer is used.
;+
;                  _WinINet_InternetSetFilePointer cannot be used reliably if the content length is unknown.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetSetFilePointer
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetSetFilePointer($hInternet, $iDistanceToMove, $iMoveMethod)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "InternetSetFilePointer", _
			"ptr",   $hInternet, _
			"long",  $iDistanceToMove, _
			"ptr",   0, _
			"dword", $iMoveMethod, _
			"ptr",   0 _
	)

	; Return response
	If @error Or $avResult[0] = -1 Then Return SetError(1, 0, -1)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetSetFilePointer

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetSetOption
; Description ...: Sets an Internet option.
; Syntax ........: _WinINet_InternetSetOption($hInternet, $iOption, $vBuffer)
; Parameters ....: $hInternet - Handle on which to set information.
;                  $iOption   - Internet option to be set. Can be one of the $INTERNET_OPTION_* options.
;                  $vBuffer   - The option setting.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetSetOption
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetSetOption($hInternet, $iOption, $vBuffer)
	; Set data/structures up
	Local $tBuffer, $iBuffer
	If IsBinary($vBuffer) Then
		$iBuffer = BinaryLen($vBuffer)
		$tBuffer = DllStructCreate("byte[" & $iBuffer & "]")
	Else
		$tBuffer = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($vBuffer)+1) & "]")
		$iBuffer = DllStructGetSize($tBuffer)
	EndIf
	DllStructSetData($tBuffer, 1, $vBuffer)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetSetOption" & $WIN32_FTYPE, _
			"ptr",   $hInternet, _
			"dword", $iOption, _
			"ptr",   DllStructGetPtr($tBuffer), _
			"dword", $iBuffer _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetSetOption

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetSetPerSiteCookieDecision
; Description ...: Sets a decision on cookies for a given domain.
; Syntax ........: _WinINet_InternetSetPerSiteCookieDecision($sHostName, $iDecision)
; Parameters ....: $sHostName - The domain to set the cookie decisions for.
;                  $iDecision - The cookie decisions to set for the specified domain. Can be one of the following:
;                  |$COOKIE_STATE_ACCEPT    - The cookies are accepted.
;                  |$COOKIE_STATE_PROMPT    - The user is prompted to accept or deny the cookie.
;                  |$COOKIE_STATE_LEASH     - Cookies are accepted only in the first-party context.
;                  |$COOKIE_STATE_DOWNGRADE - Cookies are accepted and become session cookies.
;                  |$COOKIE_STATE_REJECT    - The cookies are rejected.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: WinINet minimizes the domain specified in the $sHostName parameter and sets the cookie policy on the minimimum
;                  legal domain. For example, if the specified host name is widgets.microsoft.com, the policy is set on the
;                  minimized host name microsoft.com.
; Related .......: _WinINet_InternetClearAllPerSiteCookieDecisions, _WinINet_InternetEnumPerSiteCookieDecision, _WinINet_InternetGetPerSiteCookieDecision, _WinINet_PrivacyGetZonePreferenceW, _WinINet_PrivacySetZonePreferenceW
; Link ..........: @@MsdnLink@@ InternetSetPerSiteCookieDecision
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetSetPerSiteCookieDecision($sHostName, $iDecision)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetSetPerSiteCookieDecision" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sHostName, _
			"dword",     $iDecision _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetSetPerSiteCookieDecision

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetSetStatusCallback
; Description ...: Sets up a callback function that WinINet functions can call as progress is made during an operation.
; Syntax ........: _WinINet_InternetSetStatusCallback($hInternet[, $pInternetStatusCallback = 0])
; Parameters ....: $hInternet               - The handle for which the callback is set.
;                  $pInternetStatusCallback - [optional] A pointer to the callback function to call when progress is made, or 0 to remove the existing callback function.
; Return values .: Success - A pointer to the previously-defined status callback
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: The InternetStatusCallback function is a void function, and should use "ptr;ptr;dword;ptr;dword" as its
;                  parameter list, interpreted as:
;+
;                  ptr $hInternet - The handle for which the callback function is called.
;                  ptr $hContext - The application-defined value used to identify the application context in callback operations.
;                  dword $iInternetStatus - A status code that indicates why the callback function is called.
;                  ptr $pStatusInformation - A pointer to additional status information.
;                  dword $iStatusInformationLength - The size, in bytes, of the data pointed to by $pStatusInformation.
;+
;                  For more detailed information, see <a href="http://msdn.microsoft.com/en-us/library/aa385121(VS.85).aspx">InternetStatusCallback</a>.
;+
;                  Both synchronous and asynchronous functions use the callback function to indicate the progress of the request,
;                  such as resolving a name, connecting to a server, and so on. The callback function is required for an
;                  asynchronous operation. The asynchronous request will call back to the application with
;                  $INTERNET_STATUS_REQUEST_COMPLETE to indicate the request has been completed.
;+
;                  A callback function can be set on any handle, and is inherited by derived handles. A callback function can be
;                  changed using _WinINet_InternetSetStatusCallback, providing there are no pending requests that need to use the
;                  previous callback value. Note, however, that changing the callback function on a handle does not change the
;                  callbacks on derived handles, such as that returned by InternetConnect. You must change the callback function
;                  at each level.
;+
;                  Many of the WinINet functions perform several operations on the network. Each operation can take time to
;                  complete, and each can fail.
;+
;                  It is sometimes desirable to display status information during a long-term operation. You can display status
;                  information by setting up an Internet status callback function that cannot be removed as long as any callbacks
;                  or any asynchronous functions are pending.
;+
;                  After initiating _WinINet_InternetSetStatusCallback, the callback function can be accessed from within any
;                  WinINet function for monitoring time-intensive network operations.
;+
;                  Note: The callback function specified in the $pInternetCallback parameter will not be called on asynchronous
;                  operations for the request handle when the $hContext parameter of _WinINet_HttpOpenRequest is set to zero
;                  ($INTERNET_NO_CALLBACK), or the connection handle when the $hContext handle of _WinINet_InternetConnect is set
;                  to zero ($INTERNET_NO_CALLBACK).
; Related .......:
; Link ..........: @@MsdnLink@@ 
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetSetStatusCallback($hInternet, $pInternetStatusCallback = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "InternetSetStatusCallback", _
			"ptr", $hInternet, _
			"ptr", $pInternetStatusCallback _
	)

	; Return response
	If @error Or $avResult[0] = $INTERNET_INVALID_STATUS_CALLBACK Then Return SetError(1, 0, 0)
	Return $avResult[0]
EndFunc   ;==>_WinINet_InternetSetStatusCallback

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetTimeFromSystemTime
; Description ...: Formats a date and time according to the HTTP version 1.0 specification.
; Syntax ........: _WinINet_InternetTimeFromSystemTime($pSystemTime)
; Parameters ....: $pSystemTime - Pointer to a SYSTEMTIME structure that contains the date and time to format
; Return values .: Success - The formatted date and time
;                  Failure - "", sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetTimeFromSystemTime
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetTimeFromSystemTime($pSystemTime)
	; Hardcode parameters because only one value is currently supported
	Local $iRFC = $INTERNET_RFC1123_FORMAT
	Local $iBufferSize
	Switch $iRFC
		Case $INTERNET_RFC1123_FORMAT
			$iBuffersize = $INTERNET_RFC1123_BUFSIZE
		Case Else
			Return SetError(1, 0, "")
	EndSwitch

	; Set data/structures up
	Local $tTime = DllStructCreate($WIN32_TCHAR & "[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetTimeFromSystemTime" & $WIN32_FTYPE, _
			"ptr",   $pSystemTime, _
			"dword", $iRFC, _
			"ptr",   DllStructGetPtr($tTime), _
			"dword", DllStructGetSize($tTime) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, "")
	Return DllStructGetData($tTime, 1)
EndFunc   ;==>_WinINet_InternetTimeFromSystemTime

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetTimeToSystemTime
; Description ...: Converts an HTTP time/date string to a SYSTEMTIME structure.
; Syntax ........: _WinINet_InternetTimeToSystemTime($sTime)
; Parameters ....: $sTime - The date/time to be converted.
; Return values .: Success - A SYSTEMTIME structure.
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetTimeToSystemTime
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetTimeToSystemTime($sTime)
	; Set data/structures up
	Local $tSystemTime = DllStructCreate($tagSYSTEMTIME)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetTimeToSystemTime" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sTime, _
			"ptr",       DllStructGetPtr($tSystemTime), _
			"dword",     0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return $tSystemTime
EndFunc   ;==>_WinINet_InternetTimeToSystemTime

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetUnlockRequestFile
; Description ...: Unlocks a file that was locked using _WinINet_InternetLockRequestFile.
; Syntax ........: _WinINet_InternetUnlockRequestFile($hLockRequestInfo)
; Parameters ....: $hLockRequestInfo - A handle to the lock request handle returned by a call to _WinINet_InternetLockRequestFile
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ InternetUnlockRequestFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetUnlockRequestFile($hLockRequestInfo)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetUnlockRequestFile", _
			"ptr", $hLockRequestInfo _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_InternetUnlockRequestFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_InternetWriteFile
; Description ...: Writes data to an open Internet file.
; Syntax ........: _WinINet_InternetWriteFile($hInternet, $vBuffer)
; Parameters ....: $hInternet - A handle returned by a call to _WinINet_FtpOpenFile or a handle sent by _WinINet_HttpSendRequestEx.
;                  $vBuffer   - The data to be written to the file.
; Return values .: Success - True, set @extended to the number of bytes written to the file
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: When the application is sending data, it must call _WinINet_InternetCloseHandle to end the data transfer.
; Related .......:
; Link ..........: @@MsdnLink@@ InternetWriteFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_InternetWriteFile($hInternet, $vBuffer)
	; Set data/structures up
	Local $tNumberOfBytesWritten = DllStructCreate("dword")

	Local $tBuffer, $iBuffer
	If IsBinary($vBuffer) Then
		$iBuffer = BinaryLen($vBuffer)
		$tBuffer = DllStructCreate("byte[" & $iBuffer & "]")
	Else
		$tBuffer = DllStructCreate($WIN32_TCHAR & "[" & (StringLen($vBuffer)+1) & "]")
		$iBuffer = DllStructGetSize($tBuffer)
	EndIf
	DllStructSetData($tBuffer, 1, $vBuffer)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "InternetWriteFile", _
			"ptr",   $hInternet, _
			"ptr",   DllStructGetPtr($tBuffer), _
			"dword", $iBuffer, _
			"ptr",   DllStructGetPtr($tNumberOfBytesWritten) _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return SetError(0, DllStructGetData($tNumberOfBytesWritten, 1), True)
EndFunc   ;==>_WinINet_InternetWriteFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_PrivacyGetZonePreferenceW
; Description ...: Retrieves the privacy settings for a given URL zone and privacy type.
; Syntax ........: _WinINet_PrivacyGetZonePreferenceW($iZone, $iType[, $iBufferSize = 2048])
; Parameters ....: $iZone       - The URL zone for which privacy settings are being retrieved. Can be one of the following:
;                  |$URLZONE_LOCAL_MACHINE - Zone used for content already on the user's local computer. This zone is not exposed by the user interface.
;                  |$URLZONE_INTRANET      - Zone used for content found on an intranet.
;                  |$URLZONE_TRUSTED       - Zone used for trusted Web sites on the Internet.
;                  |$URLZONE_INTERNET      - Zone used for most of the content on the Internet.
;                  |$URLZONE_UNTRUSTED     - Zone used for Web sites that are not trusted.
;                  $iType       - The privacy type for which privacy settings are being retrieved. Can be one of the following:
;                  |$PRIVACY_TYPE_FIRST_PARTY - Refers to privacy settings for first party cookies.
;                  |$PRIVACY_TYPE_THIRD_PARTY - Refers to privacy settings for third party cookies.
;                  $iBufferSize - [optional] The number of characters to allocate to the buffer for retrieving the privacy template.
; Return values .: Success - A string representation of the (customized) privacy template.
;                  Failure - ""; if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the full template string
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......: _WinINet_InternetClearAllPerSiteCookieDecisions, _WinINet_InternetEnumPerSiteCookieDecision, _WinINet_InternetGetPerSiteCookieDecision, _WinINet_InternetSetPerSiteCookieDecision, _WinINet_PrivacySetZonePreferenceW
; Link ..........: @@MsdnLink@@ PrivacyGetZonePreferenceW
; Example .......:
; ===============================================================================================================================
Func _WinINet_PrivacyGetZonePreferenceW($iZone, $iType, $iBufferSize = 2048)
	; Set data/structures up
	Local $tTemplate = DllStructCreate("dword")

	Local $tBufferLength = DllStructCreate("dword")
	DllStructSetData($tBufferLength, 1, $iBufferSize)

	Local $tBuffer = DllStructCreate("wchar[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "PrivacyGetZonePreferenceW", _
			"dword", $iZone, _
			"dword", $iType, _
			"ptr",   DllStructGetPtr($tTemplate), _
			"ptr",   DllStructGetPtr($tBuffer), _
			"ptr",   DllStructGetPtr($tBufferLength) _
	)

	; Return response
	If @error Then Return SetError(1, 0, "")
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tTemplate, 1), "")
	Return DllStructGetData($tBuffer, 1)
EndFunc   ;==>_WinINet_PrivacyGetZonePreferenceW

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_PrivacySetZonePreferenceW
; Description ...: Sets the privacy settings for a given URL zone and privacy type.
; Syntax ........: _WinINet_PrivacySetZonePreferenceW($iZone, $iType, $iTemplate[, $sPreference = Default])
; Parameters ....: $iZone       - The URL zone that privacy settings are being set to. Can be one of the following:
;                  |$URLZONE_LOCAL_MACHINE - Zone used for content already on the user's local computer. This zone is not exposed by the user interface.
;                  |$URLZONE_INTRANET      - Zone used for content found on an intranet.
;                  |$URLZONE_TRUSTED       - Zone used for trusted Web sites on the Internet.
;                  |$URLZONE_INTERNET      - Zone used for most of the content on the Internet.
;                  |$URLZONE_UNTRUSTED     - Zone used for Web sites that are not trusted.
;                  $iType       - The privacy type that privacy settings are being set to. Can be one of the following:
;                  |$PRIVACY_TYPE_FIRST_PARTY - Refers to privacy settings for first party cookies.
;                  |$PRIVACY_TYPE_THIRD_PARTY - Refers to privacy settings for third party cookies.
;                  $iTemplate   - The privacy template to be used to set the privacy settings. Can be one of the following:
;                  |$PRIVACY_TEMPLATE_NO_COOKIES  - This is the same as Block All Cookies on the Privacy Preferences slider bar in Internet Options.
;                  |$PRIVACY_TEMPLATE_HIGH        - This is the same as High on the Privacy Preferences slider bar in Internet Options.
;                  |$PRIVACY_TEMPLATE_MEDIUM_HIGH - This is the same as Medium_High on the Privacy Preferences slider bar in Internet Options.
;                  |$PRIVACY_TEMPLATE_MEDIUM      - This is the same as Medium on the Privacy Preferences slider bar in Internet Options.
;                  |$PRIVACY_TEMPLATE_MEDIUM_LOW  - This is the same as Low on the Privacy Preferences slider bar in Internet Options.
;                  |$PRIVACY_TEMPLATE_LOW         - This is the same as Accept All Cookies on the Privacy Preferences slider bar in Internet Options.
;                  |$PRIVACY_TEMPLATE_CUSTOM      - User-defined. See How to Create a Customized Privacy Import File to understand how to set custom privacy settings.
;                  |$PRIVACY_TEMPLATE_ADVANCED    - User-defined. Advanced options are set in the Advanced Privacy Settings dialog reachable from the Privacy tab in Internet Options.
;                  $sPreference - [optional] If $iTemplate is set to $PRIVACY_TEMPLATE_CUSTOM, this is the string representation of the custom preferences. Otherwise, this should be Default.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: Custom privacy templates should be formatted according to the Remarks for PrivacySetZonePreferenceW on MSDN.
; Related .......: _WinINet_InternetClearAllPerSiteCookieDecisions, _WinINet_InternetEnumPerSiteCookieDecision, _WinINet_InternetGetPerSiteCookieDecision, _WinINet_InternetSetPerSiteCookieDecision, _WinINet_PrivacySetZonePreferenceW
; Link ..........: @@MsdnLink@@ PrivacySetZonePreferenceW
; Example .......:
; ===============================================================================================================================
Func _WinINet_PrivacySetZonePreferenceW($iZone, $iType, $iTemplate, $sPreference = Default)
	; Set data/structures up
	Local $pPreference = 0
	If $iTemplate = $PRIVACY_TEMPLATE_CUSTOM And $sPreference <> Default Then
		Local $tPreference = DllStructCreate("wchar[" & (StringLen($sPreference)+1) & "]")
		DllStructSetData($tPreference, 1, $sPreference)
		$pPreference = DllStructGetPtr($tPreference)
	EndIf

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"dword", "PrivacySetZonePreferenceW", _
			"dword", $iZone, _
			"dword", $iType, _
			"dword", $iTemplate, _
			"ptr",   $pPreference _
	)

	; Return response
	If @error Or $avResult[0] <> 0 Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_PrivacySetZonePreferenceW

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_ReadUrlCacheEntryStream
; Description ...: Reads the cached data from a stream that has been opened using the _WinINet_RetrieveUrlCacheEntryStream function.
; Syntax ........: _WinINet_ReadUrlCacheEntryStream($hUrlCacheStream, $iLocation[, $iBufferSize = 2048])
; Parameters ....: $hUrlCacheStream - A handle returned by a call to _WinINet_RetrieveUrlCacheEntryStream
;                  $iLocation       - Offset to be read from.
;                  $iBufferSize     - [optional] The number of bytes to allocate to the buffer for retrieving the cached data
; Return values .: Success - A binary variant containing the cached data
;                  Failure - Binary(""); if DllCall fails, sets @error to 1; if function call fails, sets @error to 2, sets @extended to the number of bytes required to retrieve the full, current directory name
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ ReadUrlCacheEntryStream
; Example .......:
; ===============================================================================================================================
Func _WinINet_ReadUrlCacheEntryStream($hUrlCacheStream, $iLocation, $iBufferSize = 2048)
	; Set data/structures up
	Local $tLen = DllStructCreate("dword")
	DllStructSetData($tLen, 1, $iBufferSize)

	Local $tBuffer = DllStructCreate("byte[" & $iBufferSize & "]")

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "ReadUrlCacheEntryStream", _
			"ptr",   $hUrlCacheStream, _
			"dword", $iLocation, _
			"ptr",   DllStructGetPtr($tBuffer), _
			"ptr",   DllStructGetPtr($tLen), _
			"dword", 0 _
	)

	; Return response
	If @error Then Return SetError(1, 0, Binary(""))
	If Not $avResult[0] Then Return SetError(2, DllStructGetData($tLen, 1), Binary(""))
	Return DllStructGetData($tBuffer, 1)
EndFunc   ;==>_WinINet_ReadUrlCacheEntryStream

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_ResumeSuspendedDownload
; Description ...: Resumes a request that is suspended by a user interface dialog box.
; Syntax ........: _WinINet_ResumeSuspendedDownload($hInternet[, $iResultCode = 0])
; Parameters ....: $hInternet   - A handle to a request that is suspended by a user interface dialog box
;                  $iResultCode - [optional] The error result returned from _WinINet_InternetErrorDlg, or zero if a different dialog is invoked.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ ResumeSuspendedDownload
; Example .......:
; ===============================================================================================================================
Func _WinINet_ResumeSuspendedDownload($hInternet, $iResultCode = 0)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "ResumeSuspendedDownload", _
			"ptr",   $hInternet, _
			"dword", $iResultCode _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_ResumeSuspendedDownload

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_RetrieveUrlCacheEntryFile
; Description ...: Locks the cache entry file associated with the specified URL.
; Syntax ........: _WinINet_RetrieveUrlCacheEntryFile($sUrlName)
; Parameters ....: $sUrlName - The source URL/name of the cache entry.
; Return values .: Success - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: _WinINet_RetrieveUrlCacheEntryFile does not do any URL parsing, so a URL containing an anchor (#) will not be
;                  found in the cache, even if the resource is cached. For example, if the URL http://adatum.com/example.htm#sample
;                  was passed, the function would return ERROR_FILE_NOT_FOUND even if http://adatum.com/example.htm is in the cache.
;+
;                  The file is locked for the caller when it is retrieved; the caller should unlock the file after the caller is
;                  finished with the file. The cache manager automatically unlocks the files after a certain interval. While the
;                  file is locked, the cache manager will not remove the file from the cache. It is important to note that this
;                  function can be efficient or expensive, depending on the internal implementation of the cache. For instance,
;                  if the URL data is stored in a packed file that contains data for other URLs, the cache will make a copy of
;                  the data to a file in a temporary directory maintained by the cache. The cache will eventually delete the
;                  copy. It is recommended that this function be used only in situations where a file name is needed to launch
;                  an application. _WinINet_RetrieveUrlCacheEntryStream and associated stream functions should be used in most
;                  cases.
; Related .......:
; Link ..........: @@MsdnLink@@ RetrieveUrlCacheEntryFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_RetrieveUrlCacheEntryFile($sUrlName)
	; Set data/structures up
	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"int", "RetrieveUrlCacheEntryFile" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"dword",     0 _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "RetrieveUrlCacheEntryFile" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       DllStructGetPtr($tCacheEntryInfo), _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"dword",     0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)
	Return _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)
EndFunc   ;==>_WinINet_RetrieveUrlCacheEntryFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_RetrieveUrlCacheEntryStream
; Description ...: Provides the most efficient and implementation-independent way to access the cache data.
; Syntax ........: _WinINet_RetrieveUrlCacheEntryStream($sUrlName, $fRandomRead)
; Parameters ....: $sUrlName    - The source URL/name of the cache entry.
;                  $fRandomRead - Determines whether the stream is open for random access.
; Return values .: Success - An array with the following format:
;                  |[0] - A handle for use in _WinINet_ReadUrlCacheEntryStream and _WinINet_UnlockUrlCacheEntryStream
;                  |[1] - An array returned by _WinINet_Struct_InternetCacheEntryInfo_ToArray()
;                  Failure - 0, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ RetrieveUrlCacheEntryStream
; Example .......:
; ===============================================================================================================================
Func _WinINet_RetrieveUrlCacheEntryStream($sUrlName, $fRandomRead)
	; Set data/structures up
	Local $tCacheEntryInfoSize = DllStructCreate("dword")

	; (dummy call to get required structure size)
	DllCall($__WinINet_hDLL, _
		"ptr", "RetrieveUrlCacheEntryStream" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       0, _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"int",       $fRandomRead, _
			"dword",     0 _
	)
	If @error Then Return SetError(1, 0, 0)

	; (space slightly overallocated so we don't need to waste time creating the structure twice)
	Local $tCacheEntryInfo = DllStructCreate( _
		$tagINTERNET_CACHE_ENTRY_INFO & "; " & _
		"byte[" & (DllStructGetData($tCacheEntryInfoSize, 1)+1) & "]" _
	)

	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"ptr", "RetrieveUrlCacheEntryStream" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       DllStructGetPtr($tCacheEntryInfo), _
			"ptr",       DllStructGetPtr($tCacheEntryInfoSize), _
			"int",       $fRandomRead, _
			"dword",     0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, 0)

	Local $avReturn[2] = [$avResult[0], _WinINet_Struct_InternetCacheEntryInfo_ToArray($tCacheEntryInfo)]
	Return $avReturn
EndFunc   ;==>_WinINet_RetrieveUrlCacheEntryStream

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_SetUrlCacheEntryGroup
; Description ...: Adds entries to or removes entries from a cache group.
; Syntax ........: _WinINet_SetUrlCacheEntryGroup($sUrlName, $iFlags, $iGroupID)
; Parameters ....: $sUrlName - The source URL/name of the cache entry.
;                  $iFlags   - Determines whether the entry is added to or removed from a cache group. Can be one of the following:
;                  |$INTERNET_CACHE_GROUP_ADD    - Adds the cache entry to the cache group.
;                  |$INTERNET_CACHE_GROUP_REMOVE - Removes the entry from the cache group.
;                  $iGroupID - The unique GROUPID identifier
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: A cache entry can belong to more than one cache group.
; Related .......:
; Link ..........: @@MsdnLink@@ SetUrlCacheEntryInfo
; Example .......:
; ===============================================================================================================================
Func _WinINet_SetUrlCacheEntryGroup($sUrlName, $iFlags, $iGroupID)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "SetUrlCacheEntryGroup" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"dword",     $iFlags, _
			"int64",     $iGroupID, _
			"ptr",       0, _
			"dword",     0, _
			"ptr",       0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_SetUrlCacheEntryGroup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_SetUrlCacheEntryInfo
; Description ...: Sets the specified members of the INTERNET_CACHE_ENTRY_INFO structure.
; Syntax ........: _WinINet_SetUrlCacheEntryInfo($sUrlName, $pCacheEntryInfo, $iFieldControl)
; Parameters ....: $sUrlName        - The source URL/name of the cache entry.
;                  $pCacheEntryInfo - Pointer to an INTERNET_CACHE_GROUP_INFO structure that specifies the values to be assigned to the cache entry designated by $sUrlName
;                  $iFieldControl   - The members to be set. Can be a combination of the following:
;                  |$CACHE_ENTRY_ACCTIME_FC      - Sets the last access time.
;                  |$CACHE_ENTRY_ATTRIBUTE_FC    - Sets the cache entry type.
;                  |$CACHE_ENTRY_EXEMPT_DELTA_FC - Sets the exempt delta.
;                  |$CACHE_ENTRY_EXPTIME_FC      - Sets the expire time.
;                  |$CACHE_ENTRY_HITRATE_FC      - Sets the hit rate.
;                  |$CACHE_ENTRY_MODTIME_FC      - Sets the last modified time.
;                  |$CACHE_ENTRY_SYNCTIME_FC     - Sets the last sync time
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ SetUrlCacheEntryInfo
; Example .......:
; ===============================================================================================================================
Func _WinINet_SetUrlCacheEntryInfo($sUrlName, $pCacheEntryInfo, $iFieldControl)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "SetUrlCacheEntryInfo" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"ptr",       $pCacheEntryInfo, _
			"dword",     $iFieldControl _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_SetUrlCacheEntryInfo

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_SetUrlCacheGroupAttribute
; Description ...: Sets the attribute information of the specified cache group.
; Syntax ........: _WinINet_SetUrlCacheGroupAttribute($iGroupID, $iAttributes, $pGroupInfo)
; Parameters ....: $iGroupID    - The unique GROUPID identifier
;                  $iAttributes - The attributes to set. Can be one of the following:
;                  |$CACHEGROUP_ATTRIBUTE_FLAG      - Sets or retrieves the flags associated with the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_GROUPNAME - Sets or retrieves the group name of the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_QUOTA     - Sets or retrieves the disk quota associated with the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_STORAGE   - Sets or retrieves the group owner storage associated with the cache group.
;                  |$CACHEGROUP_ATTRIBUTE_TYPE      - Sets or retrieves the cache group type.
;                  |$CACHEGROUP_READWRITE_MASK      - Sets the type, disk quota, group name, and owner storage attributes of the cache group.
;                  $pGroupInfo  - Pointer to an INTERNET_CACHE_GROUP_INFO structure that specifies the attribute information to be stored.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ SetUrlCacheGroupAttribute
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_SetUrlCacheGroupAttribute($iGroupID, $iAttributes, $pGroupInfo)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "SetUrlCacheGroupAttribute" & $WIN32_FTYPE, _
			"int64", $iGroupID, _
			"dword", 0, _
			"dword", $iAttributes, _
			"ptr",   $pGroupInfo, _
			"ptr",   0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_SetUrlCacheGroupAttribute

; #FUNCTION# ====================================================================================================================
; Name...........: _WinINet_Shutdown
; Description ...: Clean up resources used by WinINet
; Syntax.........: _WinINet_Shutdown()
; Parameters ....:
; Return values .:
; Author ........: Ultima
; Modified.......:
; Remarks .......: You should dispose of all of your WinINet handles before you call _WinINet_Shutdown
; Related .......: _WinINet_Startup
; Link ..........:
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_Shutdown()
	If Not IsString($__WinINet_hDLL) Then
		DllClose($__WinINet_hDLL)
	EndIf

	$__WinINet_hDLL = $__WinINet_sDLL
EndFunc   ;==>_WinINet_Shutdown

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_Startup
; Description ...: Clean up resources used by WinINet
; Syntax ........: _WinINet_Startup()
; Parameters ....:
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......: _WinINet_Shutdown
; Link ..........:
; Example .......: Yes
; ===============================================================================================================================
Func _WinINet_Startup()
	If IsString($__WinINet_hDLL) Then
		$__WinINet_hDLL = DllOpen($__WinINet_sDLL)
	EndIf

	If (@error Or $__WinINet_hDLL = -1) Then
		_WinINet_Shutdown()
		Return SetError(1, 0, False)
	EndIf

	Return True
EndFunc   ;==>_WinINet_Startup

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_Struct_InternetCacheEntryInfo_ToArray
; Description ...: Converts the given INTERNET_CACHE_ENTRY_INFO structure into an array
; Syntax ........: _WinINet_Struct_InternetCacheEntryInfo_ToArray(ByRef $tCacheEntryInfo)
; Parameters ....: $tCacheEntryInfo - The INTERNET_CACHE_ENTRY_INFO structure to convert
; Return values .: Success - An array with the following format:
;                  |[0]  - Cache Entry Type
;                  |[1]  - Source URL
;                  |[2]  - Local File
;                  |[3]  - File Extension
;                  |[4]  - Header Info
;                  |[5]  - Use Count
;                  |[6]  - Hit Rate
;                  |[7]  - Size
;                  |[8]  - Expire Time
;                  |[9]  - Last Access Time
;                  |[10] - Last Sync Time
;                  |[11] - Last Modified Time
;                  |[12] - Reserved / Exempt Delta
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_Struct_InternetCacheEntryInfo_ToArray(ByRef $tCacheEntryInfo)
	; We need to "fudge" the length of several members of the $tagINTERNET_CACHE_ENTRY_INFO structure because they are simply
	; pointers to an area in memory located at the end of the structure. We cannot detect the exact length of the strings short
	; of looping through the memory looking for a null character by calling DllStructGetData() on a DllStruct created at each
	; address in memory immediately following the pointer, which is very slow and inefficient. As such, we estimate the maximum
	; possible size of the buffer instead of getting an exact size, read that much data as Binary, then let
	; String(BinaryToString()) truncate the string for us.

	Local $avReturn[13], $iPtr, $iStructEnd = Dec(StringTrimLeft(DllStructGetPtr($tCacheEntryInfo), 2)) + DllStructGetSize($tCacheEntryInfo)
	Local $iB2SFlag = $AU3_UNICODE + 1

	; Cache Entry Type
	$avReturn[0] = DllStructGetData($tCacheEntryInfo, "CacheEntryType")

	; Source URL
	$iPtr = DllStructGetData($tCacheEntryInfo, "SourceUrlName")
	$avReturn[1] = String(BinaryToString(_WinINet_DllStructReadArray($iPtr, $iStructEnd - Dec(StringTrimLeft($iPtr, 2)), "byte"), $iB2SFlag))

	; Local File
	$iPtr = DllStructGetData($tCacheEntryInfo, "LocalFileName")
	$avReturn[2] = String(BinaryToString(_WinINet_DllStructReadArray($iPtr, $iStructEnd - Dec(StringTrimLeft($iPtr, 2)), "byte"), $iB2SFlag))

	; File Extension
	$iPtr = DllStructGetData($tCacheEntryInfo, "FileExtension")
	$avReturn[3] = String(BinaryToString(_WinINet_DllStructReadArray($iPtr, $iStructEnd - Dec(StringTrimLeft($iPtr, 2)), "byte"), $iB2SFlag))

	; Header Info
	$iPtr = DllStructGetData($tCacheEntryInfo, "HeaderInfo")
	$avReturn[4] = String(BinaryToString(_WinINet_DllStructReadArray($iPtr, $iStructEnd - Dec(StringTrimLeft($iPtr, 2)), "byte"), $iB2SFlag))

	; Use Count
	$avReturn[5] = DllStructGetData($tCacheEntryInfo, "UseCount")

	; Hit Rate
	$avReturn[6] = DllStructGetData($tCacheEntryInfo, "HitRate")

	; Size
	$avReturn[7] = DllStructGetData(DllStructCreate("int64", DllStructGetPtr($tCacheEntryInfo, "Size")), 1)

	; Expire Time
	$avReturn[8] = DllStructGetData(DllStructCreate("int64", DllStructGetPtr($tCacheEntryInfo, "ExpireTime")), 1)

	; Last Access Time
	$avReturn[9] = DllStructGetData(DllStructCreate("int64", DllStructGetPtr($tCacheEntryInfo, "LasAccessTime")), 1)

	; Last Sync Time
	$avReturn[10] = DllStructGetData(DllStructCreate("int64", DllStructGetPtr($tCacheEntryInfo, "LastSyncTime")), 1)

	; Last Modified Time
	$avReturn[11] = DllStructGetData(DllStructCreate("int64", DllStructGetPtr($tCacheEntryInfo, "LastModifiedTime")), 1)

	; Reserved / Exempt Delta
	$avReturn[12] = DllStructGetData($tCacheEntryInfo, "ReservedExemptDelta")

	Return $avReturn
EndFunc   ;==>_WinINet_Struct_InternetCacheEntryInfo_ToArray

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_Struct_InternetCacheGroupInfo_FromArray
; Description ...: Converts the given array into a INTERNET_CACHE_GROUP_INFO structure
; Syntax ........: _WinINet_Struct_InternetCacheGroupInfo_FromArray(ByRef $avCacheGroupInfo)
; Parameters ....: $avCacheGroupInfo - An array in the format returned by _WinINet_Struct_InternetCacheGroupInfo_ToArray()
; Return values .: Success - A INTERNET_CACHE_GROUP_INFO structure
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_Struct_InternetCacheGroupInfo_FromArray(ByRef $avCacheGroupInfo)
	Local $tCacheGroupInfo = DllStructCreate($tagINTERNET_CACHE_GROUP_INFO)
	DllStructSetData($tCacheGroupInfo, "GroupType", $avCacheGroupInfo[0])
	DllStructSetData($tCacheGroupInfo, "GroupName", $avCacheGroupInfo[1])
	DllStructSetData($tCacheGroupInfo, "GroupFlags", $avCacheGroupInfo[2])
	DllStructSetData($tCacheGroupInfo, "DiskUsage", $avCacheGroupInfo[3])
	DllStructSetData($tCacheGroupInfo, "DiskQuota", $avCacheGroupInfo[4])

	For $i = 1 To $GROUP_OWNER_STORAGE_SIZE
		DllStructSetData($tCacheGroupInfo, "OwnerStorage", DllStructGetData($avCacheGroupInfo[5], "OwnerStorage", $i), $i)
	Next

	Return $tCacheGroupInfo
EndFunc   ;==>_WinINet_Struct_InternetCacheGroupInfo_FromArray

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_Struct_InternetCacheGroupInfo_ToArray
; Description ...: Converts the given INTERNET_CACHE_GROUP_INFO structure into an array
; Syntax ........: _WinINet_Struct_InternetCacheGroupInfo_ToArray(ByRef $tCacheGroupInfo)
; Parameters ....: $tCacheGroupInfo - The INTERNET_CACHE_GROUP_INFO structure to convert
; Return values .: Success - An array with the following format:
;                  |[0] - Group type
;                  |[1] - Group name
;                  |[2] - Group flags
;                  |[3] - Disk usage
;                  |[4] - Disk quota
;                  |[5] - Owner storage (structure containing an array of DWORDs)
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_Struct_InternetCacheGroupInfo_ToArray(ByRef $tCacheGroupInfo)
	; We copy the data from the original structure into a new DllStruct just in case simply creating a new DllStruct reference
	; causes any problems with reference counting and garbage collection for the original structure

	Local $tOwnerStorage = DllStructCreate("dword OwnerStorage[" & $GROUP_OWNER_STORAGE_SIZE & "]")
	For $i = 1 To $GROUP_OWNER_STORAGE_SIZE
		DllStructSetData($tOwnerStorage, "OwnerStorage", DllStructGetData($tCacheGroupInfo, "OwnerStorage", $i), $i)
	Next

	Local $avReturn[6] = [ _
		DllStructGetData($tCacheGroupInfo, "GroupType"), _
		DllStructGetData($tCacheGroupInfo, "GroupName"), _
		DllStructGetData($tCacheGroupInfo, "GroupFlags"), _
		DllStructGetData($tCacheGroupInfo, "DiskUsage"), _
		DllStructGetData($tCacheGroupInfo, "DiskQuota"), _
		$tOwnerStorage _ ; DllStructCreate("dword OwnerStorage[" & $GROUP_OWNER_STORAGE_SIZE & "]", DllStructGetPtr($tCacheGroupInfo, "OwnerStorage"))
	]
	Return $avReturn
EndFunc   ;==>_WinINet_Struct_InternetCacheGroupInfo_ToArray

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_Struct_UrlComponents_FromArray
; Description ...: Converts the given array into a URL_COMPONENTS structure
; Syntax ........: _WinINet_Struct_UrlComponents_FromArray(ByRef $avUrlComponents)
; Parameters ....: $avUrlComponents - An array in the format returned by _WinINet_Struct_UrlComponents_ToArray()
; Return values .: Success - A URL_COMPONENTS structure
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_Struct_UrlComponents_FromArray(ByRef $avUrlComponents)
	Local $tUrlComponents = DllStructCreate($tagURL_COMPONENTS)
	DllStructSetData($tUrlComponents, "StructSize",       DllStructGetSize($tUrlComponents))
	DllStructSetData($tUrlComponents, "Scheme",           $avUrlComponents[0])
	DllStructSetData($tUrlComponents, "Port",             $avUrlComponents[5])

	Local $iSchemeNameLength = StringLen($avUrlComponents[1])
	If $iSchemeNameLength > 0 Then
		Local $tSchemeName = DllStructCreate($WIN32_TCHAR & "[" & ($iSchemeNameLength+1) & "]")
		DllStructSetData($tSchemeName, 1, $avUrlComponents[1])
		DllStructSetData($tUrlComponents, "SchemeName",       DllStructGetPtr($tSchemeName))
		DllStructSetData($tUrlComponents, "SchemeNameLength", $iSchemeNameLength)
	EndIf

	Local $iUserNameLength = StringLen($avUrlComponents[2])
	If $iUserNameLength > 0 Then
		Local $tUserName = DllStructCreate($WIN32_TCHAR & "[" & ($iUserNameLength+1) & "]")
		DllStructSetData($tUserName, 1, $avUrlComponents[2])
		DllStructSetData($tUrlComponents, "UserName",       DllStructGetPtr($tUserName))
		DllStructSetData($tUrlComponents, "UserNameLength", $iUserNameLength)
	EndIf

	Local $iPasswordLength = StringLen($avUrlComponents[3])
	If $iPasswordLength > 0 Then
		Local $tPassword = DllStructCreate($WIN32_TCHAR & "[" & ($iPasswordLength+1) & "]")
		DllStructSetData($tPassword, 1, $avUrlComponents[3])
		DllStructSetData($tUrlComponents, "Password",       DllStructGetPtr($tPassword))
		DllStructSetData($tUrlComponents, "PasswordLength", $iPasswordLength)
	EndIf

	Local $iHostNameLength = StringLen($avUrlComponents[4])
	If $iHostNameLength > 0 Then
		Local $tHostName = DllStructCreate($WIN32_TCHAR & "[" & ($iHostNameLength+1) & "]")
		DllStructSetData($tHostName, 1, $avUrlComponents[4])
		DllStructSetData($tUrlComponents, "HostName",       DllStructGetPtr($tHostName))
		DllStructSetData($tUrlComponents, "HostNameLength", $iHostNameLength)
	EndIf

	Local $iUrlPathLength = StringLen($avUrlComponents[6])
	If $iUrlPathLength > 0 Then
		Local $tUrlPath = DllStructCreate($WIN32_TCHAR & "[" & ($iUrlPathLength+1) & "]")
		DllStructSetData($tUrlPath, 1, $avUrlComponents[6])
		DllStructSetData($tUrlComponents, "UrlPath",       DllStructGetPtr($tUrlPath))
		DllStructSetData($tUrlComponents, "UrlPathLength", $iUrlPathLength)
	EndIf

	Local $iExtraInfoLength = StringLen($avUrlComponents[7])
	If $iExtraInfoLength > 0 Then
		Local $tExtraInfo = DllStructCreate($WIN32_TCHAR & "[" & ($iExtraInfoLength+1) & "]")
		DllStructSetData($tExtraInfo, 1, $avUrlComponents[7])
		DllStructSetData($tUrlComponents, "ExtraInfo",       DllStructGetPtr($tExtraInfo))
		DllStructSetData($tUrlComponents, "ExtraInfoLength", $iExtraInfoLength)
	EndIf

	Return $tUrlComponents
EndFunc   ;==>_WinINet_Struct_UrlComponents_FromArray

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_Struct_UrlComponents_ToArray
; Description ...: Converts the given URL_COMPONENTS structure into an array
; Syntax ........: _WinINet_Struct_UrlComponents_ToArray(ByRef $tUrlComponents)
; Parameters ....: $tUrlComponents - The URL_COMPONENTS structure to convert
; Return values .: Success - An array with the following format:
;                  |[0] - Scheme
;                  |[1] - Scheme name
;                  |[2] - Username
;                  |[3] - Password
;                  |[4] - Hostname
;                  |[5] - Port
;                  |[6] - URL path
;                  |[7] - Extra information (like ?something or #something)
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _WinINet_Struct_UrlComponents_ToArray(ByRef $tUrlComponents)
	Local $avReturn[8] = [ _
		DllStructGetData($tUrlComponents, "Scheme"), _
		_WinINet_DllStructReadArray(DllStructGetData($tUrlComponents, "SchemeName"), DllStructGetData($tUrlComponents, "SchemeNameLength")), _
		_WinINet_DllStructReadArray(DllStructGetData($tUrlComponents, "UserName")  , DllStructGetData($tUrlComponents, "UserNameLength")), _
		_WinINet_DllStructReadArray(DllStructGetData($tUrlComponents, "Password")  , DllStructGetData($tUrlComponents, "PasswordLength")), _
		_WinINet_DllStructReadArray(DllStructGetData($tUrlComponents, "HostName")  , DllStructGetData($tUrlComponents, "HostNameLength")), _
		DllStructGetData($tUrlComponents, "Port"), _
		_WinINet_DllStructReadArray(DllStructGetData($tUrlComponents, "UrlPath")   , DllStructGetData($tUrlComponents, "UrlPathLength")), _
		_WinINet_DllStructReadArray(DllStructGetData($tUrlComponents, "ExtraInfo") , DllStructGetData($tUrlComponents, "ExtraInfoLength")) _
	]
	Return $avReturn
EndFunc   ;==>_WinINet_Struct_UrlComponents_ToArray

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_UnlockUrlCacheEntryFile
; Description ...: Unlocks the cache entry that was locked while the file was retrieved for use from the cache.
; Syntax ........: _WinINet_UnlockUrlCacheEntryFile($sUrlName)
; Parameters ....: $sUrlName - The source URL/name of the cache entry.
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......: The application should not access the file after calling this function.
; Related .......:
; Link ..........: @@MsdnLink@@ UnlockUrlCacheEntryFile
; Example .......:
; ===============================================================================================================================
Func _WinINet_UnlockUrlCacheEntryFile($sUrlName)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "UnlockUrlCacheEntryFile" & $WIN32_FTYPE, _
			$WIN32_TSTR, $sUrlName, _
			"dword",     0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_UnlockUrlCacheEntryFile

; #FUNCTION# ====================================================================================================================
; Name ..........: _WinINet_UnlockUrlCacheEntryStream
; Description ...: Closes the stream that has been retrieved using the _WinINet_RetrieveUrlCacheEntryStream function.
; Syntax ........: _WinINet_UnlockUrlCacheEntryStream($hUrlCacheStream)
; Parameters ....: $hUrlCacheStream - Handel that was returned by a call to _WinINet_RetrieveUrlCacheEntryStream
; Return values .: Success - True
;                  Failure - False, sets @error to 1
; Author ........: Ultima
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........: @@MsdnLink@@ UnlockUrlCacheEntryStream
; Example .......:
; ===============================================================================================================================
Func _WinINet_UnlockUrlCacheEntryStream($hUrlCacheStream)
	; Make DLL call
	Local $avResult = DllCall($__WinINet_hDLL, _
		"int", "UnlockUrlCacheEntryStream", _
			"ptr",   $hUrlCacheStream, _
			"dword", 0 _
	)

	; Return response
	If @error Or Not $avResult[0] Then Return SetError(1, 0, False)
	Return True
EndFunc   ;==>_WinINet_UnlockUrlCacheEntryStream
