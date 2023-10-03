#include-Once

; #AUTOIT# ======================================================================================================================
Global Const $AU3_VERSION = StringSplit(@AutoItVersion, ".")
Global Const $AU3_UNICODE = Number($AU3_VERSION[2] & "." & $AU3_VERSION[3]) >= 2.13
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
Global $WIN32_FTYPE, $WIN32_TCHAR, $WIN32_TSTR

If $AU3_UNICODE Then
	$WIN32_FTYPE = "W"
	$WIN32_TCHAR = "wchar"
	$WIN32_TSTR = "wstr"
Else
	$WIN32_FTYPE = "A"
	$WIN32_TCHAR = "char"
	$WIN32_TSTR = "str"
EndIf
; ===============================================================================================================================

Global Const $WIN32_MAX_PATH = 256
Global Const $MAX_GOPHER_DISPLAY_TEXT = 128

Global Const $FILE_BEGIN   = 0 ; Starting point is zero or the beginning of the file.
Global Const $FILE_CURRENT = 1 ; Current value of the file pointer is the starting point.
Global Const $FILE_END     = 2 ; Current end-of-file position is the starting point.

Global Const $tagSYSTEMTIME = "word Year; word Month; word DayOfWeek; word Day; word Hour; word Minute; word Second; word Milliseconds"
Global Const $tagWIN32_FIND_DATA = "dword FileAttributes; dword CreationTime[2]; dword LastAccessTime[2]; dword LastWriteTime[2]; dword FileSizeHigh; dword FileSizeLow; dword Reserved0; dword Reserved1; " & $WIN32_TCHAR & " FileName[" & $WIN32_MAX_PATH & "]; " & $WIN32_TCHAR & " AlternateFileName[14]"

Global Const $IRF_NO_WAIT = 0x8 ; Do not wait for data. If there is data available, the function returns either the amount of data requested or the amount of data available (whichever is smaller). This is used by InternetReadFileEx.

Global Const $PRIVACY_TEMPLATE_NO_COOKIES  = 0   ; This is the same as Block All Cookies on the Privacy Preferences slider bar in Internet Options.
Global Const $PRIVACY_TEMPLATE_HIGH        = 1   ; This is the same as High on the Privacy Preferences slider bar in Internet Options.
Global Const $PRIVACY_TEMPLATE_MEDIUM_HIGH = 2   ; This is the same as Medium_High on the Privacy Preferences slider bar in Internet Options.
Global Const $PRIVACY_TEMPLATE_MEDIUM      = 3   ; This is the same as Medium on the Privacy Preferences slider bar in Internet Options.
Global Const $PRIVACY_TEMPLATE_MEDIUM_LOW  = 4   ; This is the same as Low on the Privacy Preferences slider bar in Internet Options.
Global Const $PRIVACY_TEMPLATE_LOW         = 5   ; This is the same as Accept All Cookies on the Privacy Preferences slider bar in Internet Options.
Global Const $PRIVACY_TEMPLATE_CUSTOM      = 100 ; User-defined. See How to Create a Customized Privacy Import File to understand how to set custom privacy settings.
Global Const $PRIVACY_TEMPLATE_ADVANCED    = 101 ; User-defined. Advanced options are set in the Advanced Privacy Settings dialog reachable from the Privacy tab in Internet Options.
Global Const $PRIVACY_TEMPLATE_MAX         = $PRIVACY_TEMPLATE_LOW

Global Const $FLAGS_ERROR_UI_FILTER_FOR_ERRORS    = 0x1 ; Scans the returned headers for errors. Call InternetErrorDlg with this flag set following a call to HttpSendRequest so as to detect hidden errors. Authentication errors, for example, are normally hidden because the call to HttpSendRequest completes successfully, but by scanning the status codes, InternetErrorDlg can determine that the proxy or server requires authentication.
Global Const $FLAGS_ERROR_UI_FLAGS_CHANGE_OPTIONS = 0x2 ; If the function succeeds, stores the results of the dialog box in the Internet handle.
Global Const $FLAGS_ERROR_UI_FLAGS_GENERATE_DATA  = 0x4 ; Queries the Internet handle for needed information. The function constructs the appropriate data structure for the error. (For example, for Cert CN failures, the function grabs the certificate.)
Global Const $FLAGS_ERROR_UI_FLAGS_NO_UI          = 0x8 ; Checks the headers for any hidden errors and displays a dialog box if needed.

Global Const $FLAGS_ERROR_UI_SERIALIZE_DIALOGS    = 0x10 ; Serializes authentication dialog boxes for concurrent requests on a password cache entry. The lppvData parameter should contain the address of a pointer to an INTERNET_AUTH_NOTIFY_DATA structure, and the client should implement a thread-safe, nonblocking callback function.

Global Const $INTERNET_CONNECTION_CONFIGURED = 0x40 ; Local system has a valid connection to the Internet, but it might or might not be currently connected.
Global Const $INTERNET_CONNECTION_LAN        = 0x02 ; Local system uses a local area network to connect to the Internet.
Global Const $INTERNET_CONNECTION_MODEM      = 0x01 ; Local system uses a modem to connect to the Internet.
Global Const $INTERNET_CONNECTION_MODEM_BUSY = 0x08 ; No longer used.
Global Const $INTERNET_CONNECTION_OFFLINE    = 0x20 ; Local system is in offline mode.
Global Const $INTERNET_CONNECTION_PROXY      = 0x04 ; Local system uses a proxy server to connect to the Internet.

Global Const $URLZONE_INVALID        = -1    ; Internet Explorer 7. Invalid zone. Used only if no appropriate zone is available.
Global Const $URLZONE_PREDEFINED_MIN = 0     ; Minimum value for a predefined zone.
Global Const $URLZONE_LOCAL_MACHINE  = 0     ; Zone used for content already on the user's local computer. This zone is not exposed by the user interface.
Global Const $URLZONE_INTRANET       = 1     ; Zone used for content found on an intranet.
Global Const $URLZONE_TRUSTED        = 2     ; Zone used for trusted Web sites on the Internet.
Global Const $URLZONE_INTERNET       = 3     ; Zone used for most of the content on the Internet.
Global Const $URLZONE_UNTRUSTED      = 4     ; Zone used for Web sites that are not trusted.
Global Const $URLZONE_PREDEFINED_MAX = 999   ; Maximum value for a predefined zone.
Global Const $URLZONE_USER_MIN       = 1000  ; Minimum value allowed for a user-defined zone.
Global Const $URLZONE_USER_MAX       = 10000 ; Maximum value allowed for a user-defined zone.

Global Const $INTERNET_RFC1123_FORMAT = 0
Global Const $INTERNET_RFC1123_BUFSIZE = 30

Global Const $PRIVACY_TYPE_FIRST_PARTY = 0 ; Refers to privacy settings for first party cookies.
Global Const $PRIVACY_TYPE_THIRD_PARTY = 1 ; Refers to privacy settings for third party cookies.

Global Const $INTERNET_INVALID_STATUS_CALLBACK  = -1

Global Const $INTERNET_AUTODIAL_FAILIFSECURITYCHECK  = 0x4 ; Causes InternetAutodial to fail if file and printer sharing is disabled for Windows 95 or later.
Global Const $INTERNET_AUTODIAL_FORCE_ONLINE         = 0x1 ; Forces an online Internet connection.
Global Const $INTERNET_AUTODIAL_FORCE_UNATTENDED     = 0x2 ; Forces an unattended Internet dial-up.
Global Const $INTERNET_AUTODIAL_OVERRIDE_NET_PRESENT = 0x8 ; Causes InternetAutodial to dial the modem connection even when a network connection to the Internet is present.

Global Const $INTERNET_DIAL_FORCE_PROMPT = 0x2000 ; Ignores the "dial automatically" setting and forces the dialing user interface to be displayed.
Global Const $INTERNET_DIAL_SHOW_OFFLINE = 0x4000 ; Shows the Work Offline button instead of the Cancel button in the dialing user interface.
Global Const $INTERNET_DIAL_UNATTENDED   = 0x8000 ; Connects to the Internet through a modem, without displaying a user interface, if possible. Otherwise, the function will wait for user input.

Global Const $ICU_NO_ENCODE          = 0x20000000 ; Does not encode or decode characters after "#" or "?", and does not remove trailing white space after "?". If this value is not specified, the entire URL is encoded and trailing white space is removed.
Global Const $ICU_DECODE             = 0x10000000 ; Converts all %XX sequences to characters, including escape sequences, before the URL is parsed.
Global Const $ICU_NO_META            = 0x08000000 ; Encodes any percent signs encountered. By default, percent signs are not encoded. This value is available in Microsoft Internet Explorer 5 and later.
Global Const $ICU_ENCODE_SPACES_ONLY = 0x04000000 ; Encodes spaces only.
Global Const $ICU_BROWSER_MODE       = 0x02000000 ; Does not convert unsafe characters to escape sequences.
Global Const $ICU_ENCODE_PERCENT     = 0x00001000 ; Does not remove meta sequences (such as "." and "..") from the URL.

Global Const $FILE_ATTRIBUTE_ARCHIVE   = 0x0020 ; The file should be archived. Applications use this attribute to mark files for backup or removal.
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 0x4000 ; The file or directory is encrypted. For a file, this means that all data in the file is encrypted. For a directory, this means that encryption is the default for newly created files and subdirectories. For more information, see File Encryption. This flag has no effect if FILE_ATTRIBUTE_SYSTEM is also specified.
Global Const $FILE_ATTRIBUTE_HIDDEN    = 0x0002 ; The file is hidden. Do not include it in an ordinary directory listing.
Global Const $FILE_ATTRIBUTE_NORMAL    = 0x0080 ; The file does not have other attributes set. This attribute is valid only if used alone.
Global Const $FILE_ATTRIBUTE_OFFLINE   = 0x1000 ; The data of a file is not immediately available. This attribute indicates that file data is physically moved to offline storage. This attribute is used by Remote Storage, the hierarchical storage management software. Applications should not arbitrarily change this attribute.
Global Const $FILE_ATTRIBUTE_READONLY  = 0x0001 ; The file is read only. Applications can read the file, but cannot write to or delete it.
Global Const $FILE_ATTRIBUTE_SYSTEM    = 0x0004 ; The file is part of or used exclusively by an operating system.
Global Const $FILE_ATTRIBUTE_TEMPORARY = 0x0100 ; The file is being used for temporary storage.

Global Const $CACHE_ENTRY_ACCTIME_FC      = 0x0100 ; Sets the last access time.
Global Const $CACHE_ENTRY_ATTRIBUTE_FC    = 0x0004 ; Sets the cache entry type.
Global Const $CACHE_ENTRY_EXEMPT_DELTA_FC = 0x0800 ; Sets the exempt delta.
Global Const $CACHE_ENTRY_EXPTIME_FC      = 0x0080 ; Sets the expire time.
Global Const $CACHE_ENTRY_HEADERINFO_FC   = 0x0400 ; Not currently implemented.
Global Const $CACHE_ENTRY_HITRATE_FC      = 0x0010 ; Sets the hit rate.
Global Const $CACHE_ENTRY_MODTIME_FC      = 0x0040 ; Sets the last modified time.
Global Const $CACHE_ENTRY_SYNCTIME_FC     = 0x0200 ; Sets the last sync time

Global Const $INTERNET_CACHE_GROUP_ADD    = 0 ; Adds the cache entry to the cache group.
Global Const $INTERNET_CACHE_GROUP_REMOVE = 1 ; Removes the entry from the cache group.

Global Const $HTTP_ADDREQ_FLAG_ADD                     = 0x20000000 ; Adds the header if it does not exist. Used with HTTP_ADDREQ_FLAG_REPLACE.
Global Const $HTTP_ADDREQ_FLAG_ADD_IF_NEW              = 0x10000000 ; Adds the header only if it does not already exist; otherwise, an error is returned.
Global Const $HTTP_ADDREQ_FLAG_COALESCE_WITH_COMMA     = 0x40000000 ; Coalesces headers of the same name. For example, adding "Accept: text/*" followed by "Accept: audio/*" with this flag results in the formation of the single header "Accept: text/*, audio/*". This causes the first header found to be coalesced. It is up to the calling application to ensure a cohesive scheme with respect to coalesced/separate headers.
Global Const $HTTP_ADDREQ_FLAG_COALESCE_WITH_SEMICOLON = 0x01000000 ; Coalesces headers of the same name using a semicolon.
Global Const $HTTP_ADDREQ_FLAG_REPLACE                 = 0x80000000 ; Replaces or removes a header. If the header value is empty and the header is found, it is removed. If not empty, the header value is replaced.
Global Const $HTTP_ADDREQ_FLAG_COALESCE                = $HTTP_ADDREQ_FLAG_COALESCE_WITH_COMMA ; Coalesces headers of the same name.

Global Const $FTP_TRANSFER_TYPE_UNKNOWN = 0x0
Global Const $FTP_TRANSFER_TYPE_ASCII   = 0x1
Global Const $FTP_TRANSFER_TYPE_BINARY  = 0x2
;Global Const $INTERNET_FLAG_TRANSFER_ASCII = $FTP_TRANSFER_TYPE_ASCII
;Global Const $INTERNET_FLAG_TRANSFER_BINARY = $FTP_TRANSFER_TYPE_BINARY

Global Const $COOKIE_CACHE_ENTRY     = 0x00100000 ; Cookie cache entry.
Global Const $EDITED_CACHE_ENTRY     = 0x00000008 ; Cache entry file that has been edited externally. This cache entry type is exempt from scavenging.
Global Const $NORMAL_CACHE_ENTRY     = 0x00000001 ; Normal cache entry; can be deleted to recover space for new entries.
Global Const $SPARSE_CACHE_ENTRY     = 0x00010000 ; Partial response cache entry.
Global Const $STICKY_CACHE_ENTRY     = 0x00000004 ; Sticky cache entry; exempt from scavenging.
Global Const $URLHISTORY_CACHE_ENTRY = 0x00200000 ; Visited link cache entry.

Global Const $ERROR_SUCCESS = 0
Global Const $FLAG_ICC_FORCE_CONNECTION = 1 ; USED WITH InternetCheckConnection!!!!! ; Forces a connection to be made.

Global Const $PROXY_AUTO_DETECT_TYPE_DHCP  = 1 ; Use a Dynamic Host Configuration Protocol (DHCP) search to identify the proxy.
Global Const $PROXY_AUTO_DETECT_TYPE_DNS_A = 2 ; Use a well qualified name search to identify the proxy.

Global Const $GENERIC_READ  = 0x80000000
Global Const $GENERIC_WRITE = 0x40000000

; Internet Scheme
Global Const $INTERNET_SCHEME_PARTIAL    = -2 ; Partial URL.
Global Const $INTERNET_SCHEME_UNKNOWN    = -1 ; Unknown URL scheme.
Global Const $INTERNET_SCHEME_DEFAULT    = 0  ; Default URL scheme.
Global Const $INTERNET_SCHEME_FTP        = 1  ; FTP URL scheme (ftp:).
Global Const $INTERNET_SCHEME_GOPHER     = 2  ; Gopher URL scheme (gopher:).
Global Const $INTERNET_SCHEME_HTTP       = 3  ; HTTP URL scheme (http:).
Global Const $INTERNET_SCHEME_HTTPS      = 4  ; HTTPS URL scheme (https:).
Global Const $INTERNET_SCHEME_FILE       = 5  ; File URL scheme (file:).
Global Const $INTERNET_SCHEME_NEWS       = 6  ; News URL scheme (news:).
Global Const $INTERNET_SCHEME_MAILTO     = 7  ; Mail URL scheme (mailto:).
Global Const $INTERNET_SCHEME_SOCKS      = 8  ; Socks URL scheme (socks:).
Global Const $INTERNET_SCHEME_JAVASCRIPT = 9  ; JScript URL scheme (javascript:).
Global Const $INTERNET_SCHEME_VBSCRIPT   = 10 ; VBScript URL scheme (vbscript:).
Global Const $INTERNET_SCHEME_RES        = 11 ; Resource URL scheme (res:).
Global Const $INTERNET_SCHEME_FIRST      = $INTERNET_SCHEME_FTP ; Lowest known scheme value.
Global Const $INTERNET_SCHEME_LAST       = $INTERNET_SCHEME_RES ; Highest known scheme value.

; Internet Service Type
Global Const $INTERNET_SERVICE_FTP    = 1
Global Const $INTERNET_SERVICE_GOPHER = 2
Global Const $INTERNET_SERVICE_HTTP   = 3

; Internet Access Type
Global Const $INTERNET_OPEN_TYPE_DIRECT                      = 1 ; Resolves all host names locally.
Global Const $INTERNET_OPEN_TYPE_PRECONFIG                   = 0 ; Retrieves the proxy or direct configuration from the registry.
Global Const $INTERNET_OPEN_TYPE_PRECONFIG_WITH_NO_AUTOPROXY = 4 ; Passes requests to the proxy unless a proxy bypass list is supplied and the name to be resolved bypasses the proxy. In this case, the function uses INTERNET_OPEN_TYPE_DIRECT.
Global Const $INTERNET_OPEN_TYPE_PROXY                       = 3 ; Retrieves the proxy or direct configuration from the registry and prevents the use of a startup Microsoft JScript or Internet Setup (INS) file.

; Internet Cookie State
Global Const $COOKIE_STATE_UNKNOWN   = 0x0 ; Reserved.
Global Const $COOKIE_STATE_ACCEPT    = 0x1 ; The cookies are accepted.
Global Const $COOKIE_STATE_PROMPT    = 0x2 ; The user is prompted to accept or deny the cookie.
Global Const $COOKIE_STATE_LEASH     = 0x3 ; Cookies are accepted only in the first-party context.
Global Const $COOKIE_STATE_DOWNGRADE = 0x4 ; Cookies are accepted and become session cookies.
Global Const $COOKIE_STATE_REJECT    = 0x5 ; The cookies are rejected.
Global Const $COOKIE_STATE_MAX       = $COOKIE_STATE_REJECT ; Highest known cookie state value.

; API Flags
Global Const $INTERNET_COOKIE_EVALUATE_P3P = 0x80 ; Indicates that a Platform for Privacy Protection (P3P) header is to be associated with a cookie.
Global Const $INTERNET_COOKIE_THIRD_PARTY  = 0x10 ; Indicates that a third-party cookie is being set or retrieved.

Global Const $INTERNET_FLAG_ASYNC                    = 0x10000000 ; Makes only asynchronous requests on handles descended from the handle returned from this function. Only the InternetOpen function uses this flag.
Global Const $INTERNET_FLAG_CACHE_ASYNC              = 0x00000080 ; Allows a lazy cache write.
Global Const $INTERNET_FLAG_CACHE_IF_NET_FAIL        = 0x00010000 ; Returns the resource from the cache if the network request for the resource fails due to an ERROR_INTERNET_CONNECTION_RESET or ERROR_INTERNET_CANNOT_CONNECT error. This flag is used by HttpOpenRequest.
Global Const $INTERNET_FLAG_DONT_CACHE               = 0x04000000 ; Does not add the returned entity to the cache. This is identical to the preferred value, INTERNET_FLAG_NO_CACHE_WRITE.
Global Const $INTERNET_FLAG_EXISTING_CONNECT         = 0x20000000 ; Attempts to use an existing InternetConnect object if one exists with the same attributes required to make the request. This is useful only with FTP operations, since FTP is the only protocol that typically performs multiple operations during the same session. WinINet caches a single connection handle for each HINTERNET handle generated by InternetOpen. The InternetOpenUrl and InternetConnect functions use this flag for Http and Ftp connections.
Global Const $INTERNET_FLAG_FORMS_SUBMIT             = 0x00000040 ; Indicates that this is a Forms submission.
Global Const $INTERNET_FLAG_FROM_CACHE               = 0x01000000 ; Does not make network requests. All entities are returned from the cache. If the requested item is not in the cache, a suitable error, such as ERROR_FILE_NOT_FOUND, is returned. Only the InternetOpen function uses this flag.
Global Const $INTERNET_FLAG_FWD_BACK                 = 0x00000020 ; Indicates that the function should use the copy of the resource that is currently in the Internet cache. The expiration date and other information about the resource is not checked. If the requested item is not found in the Internet cache, the system attempts to locate the resource on the network. This value was introduced in Microsoft Internet Explorer 5 and is associated with the Forward and Back button operations of Internet Explorer.
Global Const $INTERNET_FLAG_HYPERLINK                = 0x00000400 ; Forces a reload if there is no Expires time and no LastModified time returned from the server when determining whether to reload the item from the network. This flag can be used by GopherFindFirstFile, GopherOpenFile, FtpFindFirstFile, FtpGetFile, FtpOpenFile, FtpPutFile, HttpOpenRequest, and InternetOpenUrl.
Global Const $INTERNET_FLAG_IGNORE_CERT_CN_INVALID   = 0x00001000 ; Disables checking of SSL/PCT-based certificates that are returned from the server against the host name given in the request. WinINet uses a simple check against certificates by comparing for matching host names and simple wildcarding rules. This flag can be used by HttpOpenRequest and InternetOpenUrl (for HTTP requests).
Global Const $INTERNET_FLAG_IGNORE_CERT_DATE_INVALID = 0x00002000 ; Disables checking of SSL/PCT-based certificates for proper validity dates. This flag can be used by HttpOpenRequest and InternetOpenUrl (for HTTP requests).
Global Const $INTERNET_FLAG_IGNORE_REDIRECT_TO_HTTP  = 0x00008000 ; Disables detection of this special type of redirect. When this flag is used, WinINet transparently allows redirects from HTTPS to HTTP URLs. This flag can be used by HttpOpenRequest and InternetOpenUrl (for HTTP requests).
Global Const $INTERNET_FLAG_IGNORE_REDIRECT_TO_HTTPS = 0x00004000 ; Disables detection of this special type of redirect. When this flag is used, WinINet transparently allow redirects from HTTP to HTTPS URLs. This flag can be used by HttpOpenRequest and InternetOpenUrl (for HTTP requests).
Global Const $INTERNET_FLAG_KEEP_CONNECTION          = 0x00400000 ; Uses keep-alive semantics, if available, for the connection. This flag is used by HttpOpenRequest and InternetOpenUrl (for HTTP requests). This flag is required for Microsoft Network (MSN), NTLM, and other types of authentication.
Global Const $INTERNET_FLAG_MAKE_PERSISTENT          = 0x02000000 ; No longer supported.
Global Const $INTERNET_FLAG_MUST_CACHE_REQUEST       = 0x00000010 ; Identical to the preferred value, INTERNET_FLAG_NEED_FILE. Causes a temporary file to be created if the file cannot be cached. This flag can be used by GopherFindFirstFile, GopherOpenFile, FtpFindFirstFile, FtpGetFile, FtpOpenFile, FtpPutFile, HttpOpenRequest, and InternetOpenUrl.
Global Const $INTERNET_FLAG_NEED_FILE                = 0x00000010 ; Causes a temporary file to be created if the file cannot be cached. This flag can be used by GopherFindFirstFile, GopherOpenFile, FtpFindFirstFile, FtpGetFile, FtpOpenFile, FtpPutFile, HttpOpenRequest, and InternetOpenUrl.
Global Const $INTERNET_FLAG_NO_AUTH                  = 0x00040000 ; Does not attempt authentication automatically. This flag can be used by HttpOpenRequest and InternetOpenUrl (for HTTP requests).
Global Const $INTERNET_FLAG_NO_AUTO_REDIRECT         = 0x00200000 ; Does not automatically handle redirection in HttpSendRequest. This flag can also be used by InternetOpenUrl for HTTP requests.
Global Const $INTERNET_FLAG_NO_CACHE_WRITE           = 0x04000000 ; Does not add the returned entity to the cache. This flag is used by GopherFindFirstFile, GopherOpenFile, HttpOpenRequest, and InternetOpenUrl.
Global Const $INTERNET_FLAG_NO_COOKIES               = 0x00080000 ; Does not automatically add cookie headers to requests, and does not automatically add returned cookies to the cookie database. This flag can be used by HttpOpenRequest and InternetOpenUrl (for HTTP requests).
Global Const $INTERNET_FLAG_NO_UI                    = 0x00000200 ; Disables the cookie dialog box. This flag can be used by HttpOpenRequest and InternetOpenUrl (HTTP requests only).
Global Const $INTERNET_FLAG_OFFLINE                  = 0x01000000 ; Identical to INTERNET_FLAG_FROM_CACHE. Does not make network requests. All entities are returned from the cache. If the requested item is not in the cache, a suitable error, such as ERROR_FILE_NOT_FOUND, is returned. Only the InternetOpen function uses this flag.
Global Const $INTERNET_FLAG_PASSIVE                  = 0x08000000 ; Uses passive FTP semantics. Only InternetConnect and InternetOpenUrl use this flag. InternetConnect uses this flag for FTP requests, and InternetOpenUrl uses this flag for FTP files and directories.
Global Const $INTERNET_FLAG_PRAGMA_NOCACHE           = 0x00000100 ; Forces the request to be resolved by the origin server, even if a cached copy exists on the proxy. The InternetOpenUrl function (on HTTP and HTTPS requests only) and HttpOpenRequest function use this flag.
Global Const $INTERNET_FLAG_RAW_DATA                 = 0x40000000 ; Returns the data as a GOPHER_FIND_DATA structure when retrieving Gopher directory information, or as a WIN32_FIND_DATA structure when retrieving FTP directory information. If this flag is not specified or if the call is made through a CERN proxy, InternetOpenUrl returns the HTML version of the directory. Only the InternetOpenUrl function uses this flag.
Global Const $INTERNET_FLAG_READ_PREFETCH            = 0x00100000 ; This flag is currently disabled.
Global Const $INTERNET_FLAG_RELOAD                   = 0x80000000 ; Forces a download of the requested file, object, or directory listing from the origin server, not from the cache. The GopherFindFirstFile, GopherOpenFile, FtpFindFirstFile, FtpGetFile, FtpOpenFile, FtpPutFile, HttpOpenRequest, and InternetOpenUrl functions utilize this flag.
Global Const $INTERNET_FLAG_RESTRICTED_ZONE          = 0x00020000 ; Indicates that the cookie being set is associated with an untrusted site.
Global Const $INTERNET_FLAG_RESYNCHRONIZE            = 0x00000800 ; Reloads HTTP resources if the resource has been modified since the last time it was downloaded. All FTP and Gopher resources are reloaded. This flag can be used by GopherFindFirstFile, GopherOpenFile, FtpFindFirstFile, FtpGetFile, FtpOpenFile, FtpPutFile, HttpOpenRequest, and InternetOpenUrl.
Global Const $INTERNET_FLAG_SECURE                   = 0x00800000 ; Uses secure transaction semantics. This translates to using Secure Sockets Layer/Private Communications Technology (SSL/PCT) and is only meaningful in HTTP requests. This flag is used by HttpOpenRequest and InternetOpenUrl, but this is redundant if https:// appears in the URL.The InternetConnect function uses this flag for HTTP connections; all the request handles created under this connection will inherit this flag.
Global Const $INTERNET_FLAG_TRANSFER_ASCII           = 0x00000001 ; Transfers file as ASCII (FTP only). This flag can be used by FtpOpenFile, FtpGetFile, and FtpPutFile.
Global Const $INTERNET_FLAG_TRANSFER_BINARY          = 0x00000002 ; Transfers file as binary (FTP only). This flag can be used by FtpOpenFile, FtpGetFile, and FtpPutFile.

Global Const $INTERNET_NO_CALLBACK = 0x0 ; Indicates that no callbacks should be made for that API. This is used for the dxContext parameter of the functions that allow asynchronous operations.

Global Const $WININET_API_FLAG_ASYNC       = 0x1 ; Forces asynchronous operations.
Global Const $WININET_API_FLAG_SYNC        = 0x4 ; Forces synchronous operations.
Global Const $WININET_API_FLAG_USE_CONTEXT = 0x8 ; Forces the API to use the context value, even if it is set to zero.

; Cache Group Constants
Global Const $CACHEGROUP_ATTRIBUTE_BASIC        = 0x00000001 ; Retrieves the flags, type, and disk quota attributes of the cache group. This is used by the GetUrlCacheGroupAttribute function.
Global Const $CACHEGROUP_ATTRIBUTE_FLAG         = 0x00000002 ; Sets or retrieves the flags associated with the cache group. This is used by the GetUrlCacheGroupAttribute and SetUrlCacheGroupAttribute functions.
Global Const $CACHEGROUP_ATTRIBUTE_GET_ALL      = 0xFFFFFFFF ; Retrieves all the attributes of the cache group. This is used by the GetUrlCacheGroupAttribute function.
Global Const $CACHEGROUP_ATTRIBUTE_GROUPNAME    = 0x00000010 ; Sets or retrieves the group name of the cache group. This is used by the GetUrlCacheGroupAttribute and SetUrlCacheGroupAttribute functions.
Global Const $CACHEGROUP_ATTRIBUTE_QUOTA        = 0x00000008 ; Sets or retrieves the disk quota associated with the cache group. This is used by the GetUrlCacheGroupAttribute and SetUrlCacheGroupAttribute functions.
Global Const $CACHEGROUP_ATTRIBUTE_STORAGE      = 0x00000020 ; Sets or retrieves the group owner storage associated with the cache group. This is used by the GetUrlCacheGroupAttribute and SetUrlCacheGroupAttribute functions.
Global Const $CACHEGROUP_ATTRIBUTE_TYPE         = 0x00000004 ; Sets or retrieves the cache group type. This is used by the GetUrlCacheGroupAttribute and SetUrlCacheGroupAttribute functions.
Global Const $CACHEGROUP_FLAG_FLUSHURL_ONDELETE = 0x00000002 ; Indicates that all the cache entries associated with the cache group should be deleted, unless the entry belongs to another cache group.
Global Const $CACHEGROUP_FLAG_GIDONLY           = 0x00000004 ; Indicates that the function should only create a unique GROUPID for the cache group and not create the actual group.
Global Const $CACHEGROUP_FLAG_NONPURGEABLE      = 0x00000001 ; Indicates that the cache group cannot be purged.
Global Const $CACHEGROUP_READWRITE_MASK         = 0x0000003C ; Sets the type, disk quota, group name, and owner storage attributes of the cache group. This is used by the SetUrlCacheGroupAttribute function.
Global Const $CACHEGROUP_SEARCH_ALL             = 0x00000000 ; Indicates that all of the cache groups in the user's system should be enumerated.
Global Const $CACHEGROUP_SEARCH_BYURL           = 0x00000001 ; Not currently implemented.
Global Const $CACHEGROUP_TYPE_INVALID           = 0x00000001 ; Indicates that the cache group type is invalid.
Global Const $GROUP_OWNER_STORAGE_SIZE          = 0x00000004 ; Length of the group owner storage array.
Global Const $GROUPNAME_MAX_LENGTH              = 0x00000078 ; Maximum number of characters allowed for a cache group name.

; Error Messages
Global Const $ERROR_FTP_DROPPED              = 12111 ; The FTP operation was not completed because the session was aborted.
Global Const $ERROR_FTP_NO_PASSIVE_MODE      = 12112 ; Passive mode is not available on the server.
Global Const $ERROR_FTP_TRANSFER_IN_PROGRESS = 12110 ; The requested operation cannot be made on the FTP session handle because an operation is already in progress.

Global Const $ERROR_GOPHER_ATTRIBUTE_NOT_FOUND    = 12137 ; The requested attribute could not be located.
Global Const $ERROR_GOPHER_DATA_ERROR             = 12132 ; An error was detected while receiving data from the Gopher server.
Global Const $ERROR_GOPHER_END_OF_DATA            = 12133 ; The end of the data has been reached.
Global Const $ERROR_GOPHER_INCORRECT_LOCATOR_TYPE = 12135 ; The type of the locator is not correct for this operation.
Global Const $ERROR_GOPHER_INVALID_LOCATOR        = 12134 ; The supplied locator is not valid.
Global Const $ERROR_GOPHER_NOT_FILE               = 12131 ; The request must be made for a file locator.
Global Const $ERROR_GOPHER_NOT_GOPHER_PLUS        = 12136 ; The requested operation can be made only against a Gopher+ server, or with a locator that specifies a Gopher+ operation.
Global Const $ERROR_GOPHER_PROTOCOL_ERROR         = 12130 ; An error was detected while parsing data returned from the Gopher server.
Global Const $ERROR_GOPHER_UNKNOWN_LOCATOR        = 12138 ; The locator type is unknown.

Global Const $ERROR_HTTP_COOKIE_DECLINED             = 12162 ; The HTTP cookie was declined by the server.
Global Const $ERROR_HTTP_COOKIE_NEEDS_CONFIRMATION   = 12161 ; The HTTP cookie requires confirmation.
Global Const $ERROR_HTTP_DOWNLEVEL_SERVER            = 12151 ; The server did not return any headers.
Global Const $ERROR_HTTP_HEADER_ALREADY_EXISTS       = 12155 ; The header could not be added because it already exists.
Global Const $ERROR_HTTP_HEADER_NOT_FOUND            = 12150 ; The requested header could not be located.
Global Const $ERROR_HTTP_INVALID_HEADER              = 12153 ; The supplied header is invalid.
Global Const $ERROR_HTTP_INVALID_QUERY_REQUEST       = 12154 ; The request made to HttpQueryInfo is invalid.
Global Const $ERROR_HTTP_INVALID_SERVER_RESPONSE     = 12152 ; The server response could not be parsed.
Global Const $ERROR_HTTP_NOT_REDIRECTED              = 12160 ; The HTTP request was not redirected.
Global Const $ERROR_HTTP_REDIRECT_FAILED             = 12156 ; The redirection failed because either the scheme changed (for example, HTTP to FTP) or all attempts made to redirect failed (default is five attempts).
Global Const $ERROR_HTTP_REDIRECT_NEEDS_CONFIRMATION = 12168 ; The redirection requires user confirmation.

Global Const $ERROR_INTERNET_ASYNC_THREAD_FAILED               = 12047 ; The application could not start an asynchronous thread.
Global Const $ERROR_INTERNET_BAD_AUTO_PROXY_SCRIPT             = 12166 ; There was an error in the automatic proxy configuration script.
Global Const $ERROR_INTERNET_BAD_OPTION_LENGTH                 = 12010 ; The length of an option supplied to InternetQueryOption or InternetSetOption is incorrect for the type of option specified.
Global Const $ERROR_INTERNET_BAD_REGISTRY_PARAMETER            = 12022 ; A required registry value was located but is an incorrect type or has an invalid value.
Global Const $ERROR_INTERNET_CANNOT_CONNECT                    = 12029 ; The attempt to connect to the server failed.
Global Const $ERROR_INTERNET_CHG_POST_IS_NON_SECURE            = 12042 ; The application is posting and attempting to change multiple lines of text on a server that is not secure.
Global Const $ERROR_INTERNET_CLIENT_AUTH_CERT_NEEDED           = 12044 ; The server is requesting client authentication.
Global Const $ERROR_INTERNET_CLIENT_AUTH_NOT_SETUP             = 12046 ; Client authorization is not set up on this computer.
Global Const $ERROR_INTERNET_CONNECTION_ABORTED                = 12030 ; The connection with the server has been terminated.
Global Const $ERROR_INTERNET_CONNECTION_RESET                  = 12031 ; The connection with the server has been reset.
Global Const $ERROR_INTERNET_DECODING_FAILED                   = 12175 ; WinINet failed to perform content decoding on the response. For more information, see the Content Encoding topic.
Global Const $ERROR_INTERNET_DIALOG_PENDING                    = 12049 ; Another thread has a password dialog box in progress.
Global Const $ERROR_INTERNET_DISCONNECTED                      = 12163 ; The Internet connection has been lost.
Global Const $ERROR_INTERNET_EXTENDED_ERROR                    = 12003 ; An extended error was returned from the server. This is typically a string or buffer containing a verbose error message. Call InternetGetLastResponseInfo to retrieve the error text.
Global Const $ERROR_INTERNET_FAILED_DUETOSECURITYCHECK         = 12171 ; The function failed due to a security check.
Global Const $ERROR_INTERNET_FORCE_RETRY                       = 12032 ; The function needs to redo the request.
Global Const $ERROR_INTERNET_FORTEZZA_LOGIN_NEEDED             = 12054 ; The requested resource requires Fortezza authentication.
Global Const $ERROR_INTERNET_HANDLE_EXISTS                     = 12036 ; The request failed because the handle already exists.
Global Const $ERROR_INTERNET_HTTP_TO_HTTPS_ON_REDIR            = 12039 ; The application is moving from a non-SSL to an SSL connection because of a redirect.
Global Const $ERROR_INTERNET_HTTPS_HTTP_SUBMIT_REDIR           = 12052 ; The data being submitted to an SSL connection is being redirected to a non-SSL connection.
Global Const $ERROR_INTERNET_HTTPS_TO_HTTP_ON_REDIR            = 12040 ; The application is moving from an SSL to an non-SSL connection because of a redirect.
Global Const $ERROR_INTERNET_INCORRECT_FORMAT                  = 12027 ; The format of the request is invalid.
Global Const $ERROR_INTERNET_INCORRECT_HANDLE_STATE            = 12019 ; The requested operation cannot be carried out because the handle supplied is not in the correct state.
Global Const $ERROR_INTERNET_INCORRECT_HANDLE_TYPE             = 12018 ; The type of handle supplied is incorrect for this operation.
Global Const $ERROR_INTERNET_INCORRECT_PASSWORD                = 12014 ; The request to connect and log on to an FTP server could not be completed because the supplied password is incorrect.
Global Const $ERROR_INTERNET_INCORRECT_USER_NAME               = 12013 ; The request to connect and log on to an FTP server could not be completed because the supplied user name is incorrect.
Global Const $ERROR_INTERNET_INSERT_CDROM                      = 12053 ; The request requires a CD-ROM to be inserted in the CD-ROM drive to locate the resource requested.
Global Const $ERROR_INTERNET_INTERNAL_ERROR                    = 12004 ; An internal error has occurred.
Global Const $ERROR_INTERNET_INVALID_CA                        = 12045 ; The function is unfamiliar with the Certificate Authority that generated the server's certificate.
Global Const $ERROR_INTERNET_INVALID_OPERATION                 = 12016 ; The requested operation is invalid.
Global Const $ERROR_INTERNET_INVALID_OPTION                    = 12009 ; A request to InternetQueryOption or InternetSetOption specified an invalid option value.
Global Const $ERROR_INTERNET_INVALID_PROXY_REQUEST             = 12033 ; The request to the proxy was invalid.
Global Const $ERROR_INTERNET_INVALID_URL                       = 12005 ; The URL is invalid.
Global Const $ERROR_INTERNET_ITEM_NOT_FOUND                    = 12028 ; The requested item could not be located.
Global Const $ERROR_INTERNET_LOGIN_FAILURE                     = 12015 ; The request to connect and log on to an FTP server failed.
Global Const $ERROR_INTERNET_LOGIN_FAILURE_DISPLAY_ENTITY_BODY = 12174 ; The MS-Logoff digest header has been returned from the Web site. This header specifically instructs the digest package to purge credentials for the associated realm. This error will only be returned if INTERNET_ERROR_MASK_LOGIN_FAILURE_DISPLAY_ENTITY_BODY has been set.
Global Const $ERROR_INTERNET_MIXED_SECURITY                    = 12041 ; The content is not entirely secure. Some of the content being viewed may have come from unsecured servers.
Global Const $ERROR_INTERNET_NAME_NOT_RESOLVED                 = 12007 ; The server name could not be resolved.
Global Const $ERROR_INTERNET_NEED_MSN_SSPI_PKG                 = 12173 ; Not currently implemented.
Global Const $ERROR_INTERNET_NEED_UI                           = 12034 ; A user interface or other blocking operation has been requested.
Global Const $ERROR_INTERNET_NO_CALLBACK                       = 12025 ; An asynchronous request could not be made because a callback function has not been set.
Global Const $ERROR_INTERNET_NO_CONTEXT                        = 12024 ; An asynchronous request could not be made because a zero context value was supplied.
Global Const $ERROR_INTERNET_NO_DIRECT_ACCESS                  = 12023 ; Direct network access cannot be made at this time.
Global Const $ERROR_INTERNET_NOT_INITIALIZED                   = 12172 ; Initialization of the WinINet API has not occurred. Indicates that a higher-level function, such as InternetOpen, has not been called yet.
Global Const $ERROR_INTERNET_NOT_PROXY_REQUEST                 = 12020 ; The request cannot be made via a proxy.
Global Const $ERROR_INTERNET_OPERATION_CANCELLED               = 12017 ; The operation was canceled, usually because the handle on which the request was operating was closed before the operation completed.
Global Const $ERROR_INTERNET_OPTION_NOT_SETTABLE               = 12011 ; The requested option cannot be set, only queried.
Global Const $ERROR_INTERNET_OUT_OF_HANDLES                    = 12001 ; No more handles could be generated at this time.
Global Const $ERROR_INTERNET_POST_IS_NON_SECURE                = 12043 ; The application is posting data to a server that is not secure.
Global Const $ERROR_INTERNET_PROTOCOL_NOT_FOUND                = 12008 ; The requested protocol could not be located.
Global Const $ERROR_INTERNET_PROXY_SERVER_UNREACHABLE          = 12165 ; The designated proxy server cannot be reached.
Global Const $ERROR_INTERNET_REDIRECT_SCHEME_CHANGE            = 12048 ; The function could not handle the redirection, because the scheme changed (for example, HTTP to FTP).
Global Const $ERROR_INTERNET_REGISTRY_VALUE_NOT_FOUND          = 12021 ; A required registry value could not be located.
Global Const $ERROR_INTERNET_REQUEST_PENDING                   = 12026 ; The required operation could not be completed because one or more requests are pending.
Global Const $ERROR_INTERNET_RETRY_DIALOG                      = 12050 ; The dialog box should be retried.
Global Const $ERROR_INTERNET_SEC_CERT_CN_INVALID               = 12038 ; SSL certificate common name (host name field) is incorrect—for example, if you entered www.server.com and the common name on the certificate says www.different.com.
Global Const $ERROR_INTERNET_SEC_CERT_DATE_INVALID             = 12037 ; SSL certificate date that was received from the server is bad. The certificate is expired.
Global Const $ERROR_INTERNET_SEC_CERT_ERRORS                   = 12055 ; The SSL certificate contains errors.
Global Const $ERROR_INTERNET_SEC_CERT_NO_REV                   = 12056 ; The SSL certificate was not revoked.
Global Const $ERROR_INTERNET_SEC_CERT_REV_FAILED               = 12057 ; Revocation of the SSL certificate failed.
Global Const $ERROR_INTERNET_SEC_CERT_REVOKED                  = 12170 ; SSL certificate was revoked.
Global Const $ERROR_INTERNET_SEC_INVALID_CERT                  = 12169 ; SSL certificate is invalid.
Global Const $ERROR_INTERNET_SECURITY_CHANNEL_ERROR            = 12157 ; The application experienced an internal error loading the SSL libraries.
Global Const $ERROR_INTERNET_SERVER_UNREACHABLE                = 12164 ; The Web site or server indicated is unreachable.
Global Const $ERROR_INTERNET_SHUTDOWN                          = 12012 ; WinINet support is being shut down or unloaded.
Global Const $ERROR_INTERNET_TCPIP_NOT_INSTALLED               = 12159 ; The required protocol stack is not loaded and the application cannot start WinSock.
Global Const $ERROR_INTERNET_TIMEOUT                           = 12002 ; The request has timed out.
Global Const $ERROR_INTERNET_UNABLE_TO_CACHE_FILE              = 12158 ; The function was unable to cache the file.
Global Const $ERROR_INTERNET_UNABLE_TO_DOWNLOAD_SCRIPT         = 12167 ; The automatic proxy configuration script could not be downloaded. The INTERNET_FLAG_MUST_CACHE_REQUEST flag was set.
Global Const $ERROR_INTERNET_UNRECOGNIZED_SCHEME               = 12006 ; The URL scheme could not be recognized, or is not supported.

Global Const $ERROR_INVALID_HANDLE = 6   ; The handle that was passed to the API has been either invalidated or closed.
Global Const $ERROR_MORE_DATA      = 234 ; More data is available.
Global Const $ERROR_NO_MORE_FILES  = 18  ; No more files have been found.
Global Const $ERROR_NO_MORE_ITEMS  = 259 ; No more items have been found.

; Gopher Type Values
Global Const $GOPHER_TYPE_ASK            = 0x40000000 ; Ask+ item.
Global Const $GOPHER_TYPE_BINARY         = 0x00000200 ; Binary file.
Global Const $GOPHER_TYPE_BITMAP         = 0x00004000 ; Bitmap file.
Global Const $GOPHER_TYPE_CALENDAR       = 0x00080000 ; Calendar file.
Global Const $GOPHER_TYPE_CSO            = 0x00000004 ; CSO telephone book server.
Global Const $GOPHER_TYPE_DIRECTORY      = 0x00000002 ; Directory of additional Gopher items.
Global Const $GOPHER_TYPE_DOS_ARCHIVE    = 0x00000020 ; MS-DOS archive file.
Global Const $GOPHER_TYPE_ERROR          = 0x00000008 ; Indicator of an error condition.
Global Const $GOPHER_TYPE_GIF            = 0x00001000 ; GIF graphics file.
Global Const $GOPHER_TYPE_GOPHER_PLUS    = 0x80000000 ; Gopher+ item.
Global Const $GOPHER_TYPE_HTML           = 0x00020000 ; HTML document.
Global Const $GOPHER_TYPE_IMAGE          = 0x00002000 ; Image file.
Global Const $GOPHER_TYPE_INDEX_SERVER   = 0x00000080 ; Index server.
Global Const $GOPHER_TYPE_INLINE         = 0x00100000 ; Inline file.
Global Const $GOPHER_TYPE_MAC_BINHEX     = 0x00000010 ; Macintosh file in BINHEX format.
Global Const $GOPHER_TYPE_MOVIE          = 0x00008000 ; Movie file.
Global Const $GOPHER_TYPE_PDF            = 0x00040000 ; PDF file.
Global Const $GOPHER_TYPE_REDUNDANT      = 0x00000400 ; Indicator of a duplicated server. The information contained within is a duplicate of the primary server. The primary server is defined as the last directory entry that did not have a GOPHER_TYPE_REDUNDANT type.
Global Const $GOPHER_TYPE_SOUND          = 0x00010000 ; Sound file.
Global Const $GOPHER_TYPE_TELNET         = 0x00000100 ; Telnet server.
Global Const $GOPHER_TYPE_TEXT_FILE      = 0x00000001 ; ASCII text file.
Global Const $GOPHER_TYPE_TN3270         = 0x00000800 ; TN3270 server.
Global Const $GOPHER_TYPE_UNIX_UUENCODED = 0x00000040 ; UUENCODED file.
Global Const $GOPHER_TYPE_UNKNOWN        = 0x20000000 ; Item type is unknown.

; HTTP Status Codes
Global Const $HTTP_STATUS_CONTINUE           = 100 ; The request can be continued.
Global Const $HTTP_STATUS_SWITCH_PROTOCOLS   = 101 ; The server has switched protocols in an upgrade header.
Global Const $HTTP_STATUS_OK                 = 200 ; The request completed successfully.
Global Const $HTTP_STATUS_CREATED            = 201 ; The request has been fulfilled and resulted in the creation of a new resource.
Global Const $HTTP_STATUS_ACCEPTED           = 202 ; The request has been accepted for processing, but the processing has not been completed.
Global Const $HTTP_STATUS_PARTIAL            = 203 ; The returned meta information in the entity-header is not the definitive set available from the origin server.
Global Const $HTTP_STATUS_NO_CONTENT         = 204 ; The server has fulfilled the request, but there is no new information to send back.
Global Const $HTTP_STATUS_RESET_CONTENT      = 205 ; The request has been completed, and the client program should reset the document view that caused the request to be sent to allow the user to easily initiate another input action.
Global Const $HTTP_STATUS_PARTIAL_CONTENT    = 206 ; The server has fulfilled the partial GET request for the resource.
Global Const $HTTP_STATUS_AMBIGUOUS          = 300 ; The server couldn't decide what to return.
Global Const $HTTP_STATUS_MOVED              = 301 ; The requested resource has been assigned to a new permanent URI (Uniform Resource Identifier), and any future references to this resource should be done using one of the returned URIs.
Global Const $HTTP_STATUS_REDIRECT           = 302 ; The requested resource resides temporarily under a different URI (Uniform Resource Identifier).
Global Const $HTTP_STATUS_REDIRECT_METHOD    = 303 ; The response to the request can be found under a different URI (Uniform Resource Identifier) and should be retrieved using a GET HTTP verb on that resource.
Global Const $HTTP_STATUS_NOT_MODIFIED       = 304 ; The requested resource has not been modified.
Global Const $HTTP_STATUS_USE_PROXY          = 305 ; The requested resource must be accessed through the proxy given by the location field.
Global Const $HTTP_STATUS_REDIRECT_KEEP_VERB = 307 ; The redirected request keeps the same HTTP verb. HTTP/1.1 behavior.
Global Const $HTTP_STATUS_BAD_REQUEST        = 400 ; The request could not be processed by the server due to invalid syntax.
Global Const $HTTP_STATUS_DENIED             = 401 ; The requested resource requires user authentication.
Global Const $HTTP_STATUS_PAYMENT_REQ        = 402 ; Not currently implemented in the HTTP protocol.
Global Const $HTTP_STATUS_FORBIDDEN          = 403 ; The server understood the request, but is refusing to fulfill it.
Global Const $HTTP_STATUS_NOT_FOUND          = 404 ; The server has not found anything matching the requested URI (Uniform Resource Identifier).
Global Const $HTTP_STATUS_BAD_METHOD         = 405 ; The HTTP verb used is not allowed.
Global Const $HTTP_STATUS_NONE_ACCEPTABLE    = 406 ; No responses acceptable to the client were found.
Global Const $HTTP_STATUS_PROXY_AUTH_REQ     = 407 ; Proxy authentication required.
Global Const $HTTP_STATUS_REQUEST_TIMEOUT    = 408 ; The server timed out waiting for the request.
Global Const $HTTP_STATUS_CONFLICT           = 409 ; The request could not be completed due to a conflict with the current state of the resource. The user should resubmit with more information.
Global Const $HTTP_STATUS_GONE               = 410 ; The requested resource is no longer available at the server, and no forwarding address is known.
Global Const $HTTP_STATUS_LENGTH_REQUIRED    = 411 ; The server refuses to accept the request without a defined content length.
Global Const $HTTP_STATUS_PRECOND_FAILED     = 412 ; The precondition given in one or more of the request header fields evaluated to false when it was tested on the server.
Global Const $HTTP_STATUS_REQUEST_TOO_LARGE  = 413 ; The server is refusing to process a request because the request entity is larger than the server is willing or able to process.
Global Const $HTTP_STATUS_URI_TOO_LONG       = 414 ; The server is refusing to service the request because the request URI (Uniform Resource Identifier) is longer than the server is willing to interpret.
Global Const $HTTP_STATUS_UNSUPPORTED_MEDIA  = 415 ; The server is refusing to service the request because the entity of the request is in a format not supported by the requested resource for the requested method.
Global Const $HTTP_STATUS_RETRY_WITH         = 449 ; The request should be retried after doing the appropriate action.
Global Const $HTTP_STATUS_SERVER_ERROR       = 500 ; The server encountered an unexpected condition that prevented it from fulfilling the request.
Global Const $HTTP_STATUS_NOT_SUPPORTED      = 501 ; The server does not support the functionality required to fulfill the request.
Global Const $HTTP_STATUS_BAD_GATEWAY        = 502 ; The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request.
Global Const $HTTP_STATUS_SERVICE_UNAVAIL    = 503 ; The service is temporarily overloaded.
Global Const $HTTP_STATUS_GATEWAY_TIMEOUT    = 504 ; The request was timed out waiting for a gateway.
Global Const $HTTP_STATUS_VERSION_NOT_SUP    = 505 ; The server does not support, or refuses to support, the HTTP protocol version that was used in the request message.

; Option Flags
Global Const $INTERNET_OPTION_ALTER_IDENTITY          = 80  ; Not implemented.
Global Const $INTERNET_OPTION_ASYNC                   = 30  ; Not implemented.
Global Const $INTERNET_OPTION_ASYNC_ID                = 15  ; Not implemented.
Global Const $INTERNET_OPTION_ASYNC_PRIORITY          = 16  ; Not implemented.
Global Const $INTERNET_OPTION_BYPASS_EDITED_ENTRY     = 64  ; Sets or retrieves the Boolean value that determines if the system should check the network for newer content and overwrite edited cache entries if a newer version is found. If set to True, the system checks the network for newer content and overwrites the edited cache entry with the newer version. The default is False, which indicates that the edited cache entry should be used without checking the network. This is used by InternetQueryOption and InternetSetOption. It is valid only in Microsoft Internet Explorer 5 and later.
Global Const $INTERNET_OPTION_CACHE_STREAM_HANDLE     = 27  ; No longer supported.
Global Const $INTERNET_OPTION_CACHE_TIMESTAMPS        = 69  ; Retrieves an INTERNET_CACHE_TIMESTAMPS structure that contains the LastModified time and Expires time from the resource stored in the Internet cache. This value is used by InternetQueryOption.
Global Const $INTERNET_OPTION_CALLBACK                = 1   ; Sets or retrieves the address of the callback function defined for this handle. This option can be used on all HINTERNET handles. Used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_CALLBACK_FILTER         = 54  ; Not implemented.
Global Const $INTERNET_OPTION_CLIENT_CERT_CONTEXT     = 84  ; This flag is not supported by InternetQueryOption. The lpBuffer parameter must be a pointer to a CERT_CONTEXT structure and not a pointer to a CERT_CONTEXT pointer. If an application receives ERROR_INTERNET_CLIENT_AUTH_CERT_NEEDED, it must call InternetErrorDlg or use InternetSetOption to supply a certificate before retrying the request. CertDuplicateCertificateContext is then called so that the certificate context passed can be independently released by the application.
Global Const $INTERNET_OPTION_CODEPAGE                = 68  ; [ Requires: Windows Vista, Internet Explorer v7.0 ] By default, the host or authority portion of the Unicode URL is encoded according to the IDN specification. Setting this option on the request, or connection handle, when IDN is disabled, specifies a code page encoding scheme for the host portion of the URL. The lpBuffer parameter in the call to InternetSetOption contains the desired DBCS code page. If no code page is specified in lpBuffer, WinINet uses the default system code page (CP_ACP). Note: This option is ignored if IDN is not disabled. For more information about how to disable IDN, see the INTERNET_OPTION_IDN option.
Global Const $INTERNET_OPTION_CODEPAGE_PATH           = 100 ; [ Requires: Windows Vista, Internet Explorer v7.0 ] By default, the path portion of the URL is UTF8 encoded. The WinINet API performs escape character (%) encoding on the high-bit characters. Setting this option on the request, or connection handle, disables the UTF8 encoding and sets a specific code page. The lpBuffer parameter in the call to InternetSetOption contains the desired DBCS codepage for the path. If no code page is specified in lpBuffer, WinINet uses the default CP_UTF8.
Global Const $INTERNET_OPTION_CODEPAGE_EXTRA          = 101 ; [ Requires: Windows Vista, Internet Explorer v7.0 ] By default, the path portion of the URL is the default system code page (CP_ACP). The escape character (%) conversions are not performed on the extra portion. Setting this option on the request, or connection handle disables the CP_ACP encoding. The lpBuffer parameter in the call to InternetSetOption contains the desired DBCS codepage for the extra portion of the URL. If no code page is specified in lpBuffer, WinINet uses the default system code page (CP_ACP).
Global Const $INTERNET_OPTION_CONNECT_BACKOFF         = 4   ; Not implemented.
Global Const $INTERNET_OPTION_CONNECT_RETRIES         = 3   ; Sets or retrieves an unsigned long integer value that contains the number of times WinINet attempts to resolve and connect to a host. It only attempts once per IP address. For example, if you attempt to connect to a multihome host that has ten IP addresses and INTERNET_OPTION_CONNECT_RETRIES is set to seven, WinINet only attempts to resolve and connect to the first seven IP addresses. Conversely, given the same set of ten IP addresses, if INTERNET_OPTION_CONNECT_RETRIES is set to 20, WinINet attempts each of the ten only once. If a host has only one IP address and the first connection attempt fails, there are no further attempts. If a connection attempt still fails after the specified number of attempts, the request is canceled. The default value for INTERNET_OPTION_CONNECT_RETRIES is five attempts. This option can be used on any HINTERNET handle, including a NULL handle. It is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_CONNECT_TIME            = 55  ; Not implemented.
Global Const $INTERNET_OPTION_CONNECT_TIMEOUT         = 2   ; Sets or retrieves an unsigned long integer value that contains the time-out value, in milliseconds, to use for Internet connection requests. Setting this option to infinite (0xFFFFFFFF) will disable this timer. If a connection request takes longer than this time-out value, the request is canceled. When attempting to connect to multiple IP addresses for a single host (a multihome host), the timeout limit is cumulative for all of the IP addresses. This option can be used on any HINTERNET handle, including a NULL handle. It is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_CONNECTED_STATE         = 50  ; Sets or retrieves an unsigned long integer value that contains the connected state. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_CONTEXT_VALUE           = 45  ; Sets or retrieves a DWORD_PTR that contains the address of the context value associated with this HINTERNET handle. This option can be used on any HINTERNET handle. This is used by InternetQueryOption and InternetSetOption. Previously, this set the context value to the address stored in the lpBuffer pointer. This has been corrected so that the value stored in the buffer is used and the INTERNET_OPTION_CONTEXT_VALUE flag is assigned a new value. The old value, 10, has been preserved so that applications written for the old behavior are still supported.
Global Const $INTERNET_OPTION_CONTROL_RECEIVE_TIMEOUT = 6   ; Identical to INTERNET_OPTION_RECEIVE_TIMEOUT. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_CONTROL_SEND_TIMEOUT    = 5   ; Identical to INTERNET_OPTION_SEND_TIMEOUT. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_DATA_RECEIVE_TIMEOUT    = 8   ; Not implemented.
Global Const $INTERNET_OPTION_DATA_SEND_TIMEOUT       = 7   ; Not implemented.
Global Const $INTERNET_OPTION_DATAFILE_NAME           = 33  ; Retrieves a string value that contains the name of the file backing a downloaded entity. This flag is valid after InternetOpenUrl, FtpOpenFile, GopherOpenFile, or HttpOpenRequest has completed. This option can only be queried by InternetQueryOption.
Global Const $INTERNET_OPTION_DATAFILE_EXT            = 96  ; Sets a string value that contains the extension of the file backing a downloaded entity. This flag should be set before calling InternetOpenUrl, FtpOpenFile, GopherOpenFile, or HttpOpenRequest. This option can only be set by InternetSetOption.
Global Const $INTERNET_OPTION_DIAGNOSTIC_SOCKET_INFO  = 67  ; Retrieves an INTERNET_DIAGNOSTIC_SOCKET_INFO structure that contains data about a specified HTTP Request. This flag is used by InternetQueryOption.
Global Const $INTERNET_OPTION_DIGEST_AUTH_UNLOAD      = 76  ; Causes the system to log off the Digest authentication SSPI package, purging all of the credentials created for the process. No buffer is required for this option. It is used by InternetSetOption.
Global Const $INTERNET_OPTION_DISABLE_AUTODIAL        = 70  ; Not implemented.
Global Const $INTERNET_OPTION_DISCONNECTED_TIMEOUT    = 49  ; Not implemented.
Global Const $INTERNET_OPTION_END_BROWSER_SESSION     = 42  ; Flushes entries not in use from the password cache on the hard disk drive. Also resets the cache time used when the synchronization mode is once-per-session. No buffer is required for this option. This is used by InternetSetOption.
Global Const $INTERNET_OPTION_ERROR_MASK              = 62  ; Sets an unsigned long integer value that contains the error masks that can be handled by the client application. This can be a combination of the following values:
	Global Const $INTERNET_ERROR_MASK_COMBINED_SEC_CERT                 = 0x2 ; Indicates that all certificate errors are to be reported using the same error return, namely ERROR_INTERNET_SEC_CERT_ERRORS. If this flag is set, call InternetErrorDlg upon receiving the ERROR_INTERNET_SEC_CERT_ERRORS error, so that the user can respond to a familiar dialog describing the problem.  Caution: Failing to inform the user of this error exposes the user to potential spoofing attacks.
	Global Const $INTERNET_ERROR_MASK_INSERT_CDROM                      = 0x1 ; Indicates that the client application can handle the ERROR_INTERNET_INSERT_CDROM error code.
	Global Const $INTERNET_ERROR_MASK_LOGIN_FAILURE_DISPLAY_ENTITY_BODY = 0x8 ; Indicates that the client application can handle the ERROR_INTERNET_LOGIN_FAILURE_DISPLAY_ENTITY_BODY error code.
	Global Const $INTERNET_ERROR_MASK_NEED_MSN_SSPI_PKG                 = 0x4 ; Not implemented.
Global Const $INTERNET_OPTION_EXTENDED_ERROR     = 24 ; Retrieves an unsigned long integer value that contains a Winsock error code mapped to the ERROR_INTERNET_ error messages last returned in this thread context. This option is used on a NULLHINTERNET handle by InternetQueryOption.
Global Const $INTERNET_OPTION_FROM_CACHE_TIMEOUT = 63 ; Sets or retrieves an unsigned long integer value that contains the amount of time the system should wait for a response to a network request before checking the cache for a copy of the resource. If a network request takes longer than the time specified and the requested resource is available in the cache, the resource is retrieved from the cache. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_HANDLE_TYPE        = 9  ; Retrieves an unsigned long integer value that contains the type of the HINTERNET handles passed in. This is used by InternetQueryOption on any HINTERNET handle. Possible return values include the following:
	Global Const $INTERNET_HANDLE_TYPE_CONNECT_FTP      = 2
	Global Const $INTERNET_HANDLE_TYPE_CONNECT_GOPHER   = 3
	Global Const $INTERNET_HANDLE_TYPE_CONNECT_HTTP     = 4
	Global Const $INTERNET_HANDLE_TYPE_FILE_REQUEST     = 14
	Global Const $INTERNET_HANDLE_TYPE_FTP_FILE         = 7
	Global Const $INTERNET_HANDLE_TYPE_FTP_FILE_HTML    = 8
	Global Const $INTERNET_HANDLE_TYPE_FTP_FIND         = 5
	Global Const $INTERNET_HANDLE_TYPE_FTP_FIND_HTML    = 6
	Global Const $INTERNET_HANDLE_TYPE_GOPHER_FILE      = 11
	Global Const $INTERNET_HANDLE_TYPE_GOPHER_FILE_HTML = 12
	Global Const $INTERNET_HANDLE_TYPE_GOPHER_FIND      = 9
	Global Const $INTERNET_HANDLE_TYPE_GOPHER_FIND_HTML = 10
	Global Const $INTERNET_HANDLE_TYPE_HTTP_REQUEST     = 13
	Global Const $INTERNET_HANDLE_TYPE_INTERNET         = 1
Global Const $INTERNET_OPTION_HTTP_DECODING            = 65  ; Enables WinINet to perform decoding for the gzip and deflate encoding schemes. For more information, see Content Encoding.
Global Const $INTERNET_OPTION_HTTP_VERSION             = 59  ; Sets or retrieves an HTTP_VERSION_INFO structure that contains the supported HTTP version. This must be used on a NULL handle. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_IDENTITY                 = 78  ; Not implemented.
Global Const $INTERNET_OPTION_IDLE_STATE               = 51  ; Not implemented.
Global Const $INTERNET_OPTION_IDN                      = 102 ; [ Requires: Windows Vista, Internet Explorer v7.0 ] By default, the host or authority portion of the URL is encoded according to the IDN specification for both direct and proxy connections. This option can be used on the request, or connection handle to enable or disable IDN. When IDN is disabled, WinINet uses the system codepage to encode the host or authority portion of the URL. To disable IDN host conversion, set the lpBuffer parameter in the call to InternetSetOption to zero. To enable IDN conversion on only the direct connection, specify INTERNET_FLAG_IDN_DIRECT in the lpBuffer parameter in the call to InternetSetOption. To enable IDN conversion on only the proxy connection, specify INTERNET_FLAG_IDN_PROXY in the lpBuffer parameter in the call to InternetSetOption.
Global Const $INTERNET_OPTION_IGNORE_OFFLINE           = 77  ; Sets or retrieves whether the global offline flag should be ignored for the specified request handle. No buffer is required for this option. This is used by InternetQueryOption and InternetSetOption with a request handle. This option is only valid in Internet Explorer 5 and later.
Global Const $INTERNET_OPTION_KEEP_CONNECTION          = 22  ; Not implemented.
Global Const $INTERNET_OPTION_LISTEN_TIMEOUT           = 11  ; Not implemented.
Global Const $INTERNET_OPTION_MAX_CONNS_PER_1_0_SERVER = 74  ; Sets or retrieves an unsigned long integer value that contains the maximum number of connections allowed per HTTP/1.0 server. This is used by InternetQueryOption and InternetSetOption. This option is only valid in Internet Explorer 5 and later.
Global Const $INTERNET_OPTION_MAX_CONNS_PER_SERVER     = 73  ; Sets or retrieves an unsigned long integer value that contains the maximum number of connections allowed per server. This is used by InternetQueryOption and InternetSetOption. This option is only valid in Internet Explorer 5 and later.
Global Const $INTERNET_OPTION_OFFLINE_MODE             = 26  ; Not implemented.
Global Const $INTERNET_OPTION_OFFLINE_SEMANTICS        = 52  ; Not implemented.
Global Const $INTERNET_OPTION_PARENT_HANDLE            = 21  ; Retrieves the parent handle to this handle. This option can be used on any HINTERNET handle by InternetQueryOption.
Global Const $INTERNET_OPTION_PASSWORD                 = 29  ; Sets or retrieves a string value that contains the password associated with a handle returned by InternetConnect. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_PER_CONNECTION_OPTION    = 75  ; Sets or retrieves an INTERNET_PER_CONN_OPTION_LIST structure that specifies a list of options for a particular connection. This is used by InternetQueryOption and InternetSetOption. This option is only valid in Internet Explorer 5 and later. Note: INTERNET_OPTION_PER_CONNECTION_OPTION causes the settings to be changed on a system-wide basis when a NULL handle is used in the call to InternetSetOption. To refresh the global proxy settings, you must call InternetSetOption with the INTERNET_OPTION_REFRESH option flag. Note: To change proxy information for the entire process without affecting the global settings in Internet Explorer 5 and later, use this option on the handle that is returned from InternetOpen. The following code example changes the proxy for the whole process even though the HINTERNET handle is closed and is not used by any requests. For more information and code examples, see KB article 226473.
Global Const $INTERNET_OPTION_POLICY                   = 48  ; Not implemented.
Global Const $INTERNET_OPTION_PROXY                    = 38  ; Sets or retrieves an INTERNET_PROXY_INFO structure that contains the proxy data for an existing InternetOpen handle when the HINTERNET handle is not NULL. If the HINTERNET handle is NULL, the function sets or queries the global proxy data. This option can be used on the handle returned by InternetOpen. It is used by InternetQueryOption and InternetSetOption. Note: It is recommended that INTERNET_OPTION_PER_CONNECTION_OPTION be used instead of INTERNET_OPTION_PROXY. For more information, see KB article 226473.
Global Const $INTERNET_OPTION_PROXY_PASSWORD           = 44  ; Sets or retrieves a string value that contains the password used to access the proxy. This is used by InternetQueryOption and InternetSetOption. This option can be set on the handle returned by InternetConnect or HttpOpenRequest.
Global Const $INTERNET_OPTION_PROXY_USERNAME           = 43  ; Sets or retrieves a string value that contains the user name used to access the proxy. This is used by InternetQueryOption and InternetSetOption. This option can be set on the handle returned by InternetConnect or HttpOpenRequest.
Global Const $INTERNET_OPTION_READ_BUFFER_SIZE         = 12  ; Sets or retrieves an unsigned long integer value that contains the size of the read buffer. This option can be used on HINTERNET handles returned by FtpOpenFile, FtpFindFirstFile, and InternetConnect (FTP session only). This option is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_RECEIVE_THROUGHPUT       = 57  ; Not implemented.
Global Const $INTERNET_OPTION_RECEIVE_TIMEOUT          = 6   ; Sets or retrieves an unsigned long integer value that contains the time-out value, in milliseconds, to receive a response to a request. If the response takes longer than this time-out value, the request is canceled. This option can be used on any HINTERNET handle, including a NULL handle. It is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_REFRESH                  = 37  ; Causes the proxy data to be reread from the registry for a handle. No buffer is required. This option can be used on the HINTERNET handle returned by InternetOpen. It is used by InternetSetOption.
Global Const $INTERNET_OPTION_REMOVE_IDENTITY          = 79  ; Not implemented.
Global Const $INTERNET_OPTION_REQUEST_FLAGS            = 23  ; Retrieves an unsigned long integer value that contains the special status flags that indicate the status of the download in progress. This is used by InternetQueryOption. The INTERNET_OPTION_REQUEST_FLAGS option can be one of the following values:
	Global Const $INTERNET_REQFLAG_ASYNC                = 0x02 ; Not implemented.
	Global Const $INTERNET_REQFLAG_CACHE_WRITE_DISABLED = 0x40 ; Internet request cannot be cached (an HTTPS request, for example).
	Global Const $INTERNET_REQFLAG_FROM_CACHE           = 0x01 ; Response came from the cache.
	Global Const $INTERNET_REQFLAG_NET_TIMEOUT          = 0x80 ; Internet request timed out.
	Global Const $INTERNET_REQFLAG_NO_HEADERS           = 0x08 ; Original response contained no headers.
	Global Const $INTERNET_REQFLAG_PASSIVE              = 0x10 ; Not implemented.
	Global Const $INTERNET_REQFLAG_VIA_PROXY            = 0x04 ; Request was made through a proxy.
Global Const $INTERNET_OPTION_REQUEST_PRIORITY            = 58 ; Sets or retrieves an unsigned long integer value that contains the priority of requests that compete for a connection on an HTTP handle. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_RESET_URLCACHE_SESSION      = 60 ; Starts a new cache session for the process. No buffer is required. This is used by InternetSetOption.
Global Const $INTERNET_OPTION_SECONDARY_CACHE_KEY         = 53 ; Sets or retrieves a string value that contains the secondary cache key. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_SECURITY_CERTIFICATE        = 35 ; Retrieves the certificate for an SSL/PCT (Secure Sockets Layer/Private Communications Technology) server into a formatted string. This is used by InternetQueryOption.
Global Const $INTERNET_OPTION_SECURITY_CERTIFICATE_STRUCT = 32 ; Retrieves the certificate for an SSL/PCT server into the INTERNET_CERTIFICATE_INFO structure. This is used by InternetQueryOption.
Global Const $INTERNET_OPTION_SECURITY_FLAGS              = 31 ; Retrieves an unsigned long integer value that contains the security flags for a handle. This option is used by InternetQueryOption. It can be a combination of these values:
	Global Const $SECURITY_FLAG_128BIT                   = 0x40000000 ; Identical to the preferred value SECURITY_FLAG_STRENGTH_STRONG. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_40BIT                    = 0x10000000 ; Identical to the preferred value SECURITY_FLAG_STRENGTH_WEAK. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_56BIT                    = 0x20000000 ; Identical to the preferred value SECURITY_FLAG_STRENGTH_MEDIUM. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_FORTEZZA                 = 0x08000000 ; Indicates Fortezza has been used to provide secrecy, authentication, and/or integrity for the specified connection.
	Global Const $SECURITY_FLAG_IETFSSL4                 = 0x00000020 ; Not implemented.
	Global Const $SECURITY_FLAG_IGNORE_CERT_CN_INVALID   = 0x00001000 ; Ignores the ERROR_INTERNET_SEC_CERT_CN_INVALID error message.
	Global Const $SECURITY_FLAG_IGNORE_CERT_DATE_INVALID = 0x00002000 ; Ignores the ERROR_INTERNET_SEC_CERT_DATE_INVALID error message.
	Global Const $SECURITY_FLAG_IGNORE_REDIRECT_TO_HTTP  = 0x00008000 ; Ignores the ERROR_INTERNET_HTTPS_TO_HTTP_ON_REDIR error message.
	Global Const $SECURITY_FLAG_IGNORE_REDIRECT_TO_HTTPS = 0x00004000 ; Ignores the ERROR_INTERNET_HTTP_TO_HTTPS_ON_REDIR error message.
	Global Const $SECURITY_FLAG_IGNORE_REVOCATION        = 0x00000080 ; Ignores certificate revocation problems.
	Global Const $SECURITY_FLAG_IGNORE_UNKNOWN_CA        = 0x00000100 ; Ignores unknown certificate authority problems.
	Global Const $SECURITY_FLAG_IGNORE_WRONG_USAGE       = 0x00000200 ; Ignores incorrect usage problems.
	Global Const $SECURITY_FLAG_NORMALBITNESS            = 0x10000000 ; Identical to the value SECURITY_FLAG_STRENGTH_WEAK. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_PCT                      = 0x00000008 ; Not implemented.
	Global Const $SECURITY_FLAG_PCT4                     = 0x00000010 ; Not implemented.
	Global Const $SECURITY_FLAG_SECURE                   = 0x00000001 ; Uses secure transfers. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_SSL                      = 0x00000002 ; Not implemented.
	Global Const $SECURITY_FLAG_SSL3                     = 0x00000004 ; Not implemented.
	Global Const $SECURITY_FLAG_STRENGTH_MEDIUM          = 0x40000000 ; Uses medium (56-bit) encryption. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_STRENGTH_STRONG          = 0x20000000 ; Uses strong (128-bit) encryption. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_STRENGTH_WEAK            = 0x10000000 ; Uses weak (40-bit) encryption. This is only returned in a call to InternetQueryOption.
	Global Const $SECURITY_FLAG_UNKNOWNBIT               = 0x80000000 ; The bit size used in the encryption is unknown. This is only returned in a call to InternetQueryOption. Be aware that the data retrieved this way relates to a transaction that has occurred, whose security level can no longer be changed.
Global Const $INTERNET_OPTION_SECURITY_KEY_BITNESS = 36 ; Retrieves an unsigned long integer value that contains the bit size of the encryption key. The larger the number, the greater the encryption strength used. This is used by InternetQueryOption. Be aware that the data retrieved this way relates to a transaction that has already occurred, whose security level can no longer be changed.
Global Const $INTERNET_OPTION_SEND_THROUGHPUT      = 56 ; Not implemented.
Global Const $INTERNET_OPTION_SEND_TIMEOUT         = 5  ; Sets or retrieves an unsigned long integer value, in milliseconds, that contains the time-out value to send a request. If the send takes longer than this time-out value, the send is canceled. This option can be used on any HINTERNET handle, including a NULL handle. It is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_SETTINGS_CHANGED     = 39 ; Notifies the system that the registry settings have been changed so that it verifies the settings on the next call to InternetConnect. This is used by InternetSetOption.
Global Const $INTERNET_OPTION_URL                  = 34 ; Retrieves a string value that contains the full URL of a downloaded resource. If the original URL contained any extra data, such as search strings or anchors, or if the call was redirected, the URL returned differs from the original. This option is valid on HINTERNET handles returned by InternetOpenUrl, FtpOpenFile, GopherOpenFile, or HttpOpenRequest. It is used by InternetQueryOption.
Global Const $INTERNET_OPTION_USER_AGENT           = 41 ; Sets or retrieves the user agent string on handles supplied by InternetOpen and used in subsequent HttpSendRequest functions, as long as it is not overridden by a header added by HttpAddRequestHeaders or HttpSendRequest. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_USERNAME             = 28 ; Sets or retrieves a string that contains the user name associated with a handle returned by InternetConnect. This is used by InternetQueryOption and InternetSetOption.
Global Const $INTERNET_OPTION_VERSION              = 40 ; Retrieves an INTERNET_VERSION_INFO structure that contains the version number of Wininet.dll. This option can be used on a NULLHINTERNET handle by InternetQueryOption.
Global Const $INTERNET_OPTION_WRITE_BUFFER_SIZE    = 13 ; Sets or retrieves an unsigned long integer value that contains the size, in bytes, of the write buffer. This option can be used on HINTERNET handles returned by FtpOpenFile and InternetConnect (FTP session only). It is used by InternetQueryOption and InternetSetOption.

; Query Info Flags
Global Const $HTTP_QUERY_ACCEPT                    = 24    ; Retrieves the acceptable media types for the response.
Global Const $HTTP_QUERY_ACCEPT_CHARSET            = 25    ; Retrieves the acceptable character sets for the response.
Global Const $HTTP_QUERY_ACCEPT_ENCODING           = 26    ; Retrieves the acceptable content-coding values for the response.
Global Const $HTTP_QUERY_ACCEPT_LANGUAGE           = 27    ; Retrieves the acceptable natural languages for the response.
Global Const $HTTP_QUERY_ACCEPT_RANGES             = 42    ; Retrieves the types of range requests that are accepted for a resource.
Global Const $HTTP_QUERY_AGE                       = 48    ; Retrieves the Age response-header field, which contains the sender's estimate of the amount of time since the response was generated at the origin server.
Global Const $HTTP_QUERY_ALLOW                     = 7     ; Receives the HTTP verbs supported by the server.
Global Const $HTTP_QUERY_AUTHORIZATION             = 28    ; Retrieves the authorization credentials used for a request.
Global Const $HTTP_QUERY_CACHE_CONTROL             = 49    ; Retrieves the cache control directives.
Global Const $HTTP_QUERY_CONNECTION                = 23    ; Retrieves any options that are specified for a particular connection and must not be communicated by proxies over further connections.
Global Const $HTTP_QUERY_CONTENT_BASE              = 50    ; Retrieves the base URI (Uniform Resource Identifier) for resolving relative URLs within the entity.
Global Const $HTTP_QUERY_CONTENT_DESCRIPTION       = 4     ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_CONTENT_DISPOSITION       = 47    ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_CONTENT_ENCODING          = 29    ; Retrieves any additional content codings that have been applied to the entire resource.
Global Const $HTTP_QUERY_CONTENT_ID                = 3     ; Retrieves the content identification.
Global Const $HTTP_QUERY_CONTENT_LANGUAGE          = 6     ; Retrieves the language that the content is in.
Global Const $HTTP_QUERY_CONTENT_LENGTH            = 5     ; Retrieves the size of the resource, in bytes.
Global Const $HTTP_QUERY_CONTENT_LOCATION          = 51    ; Retrieves the resource location for the entity enclosed in the message.
Global Const $HTTP_QUERY_CONTENT_MD5               = 52    ; Retrieves an MD5 digest of the entity-body for the purpose of providing an end-to-end message integrity check (MIC) for the entity-body. For more information, see RFC1864, The Content-MD5 Header Field, at http://ftp.isi.edu/in-notes/rfc1864.txt.
Global Const $HTTP_QUERY_CONTENT_RANGE             = 53    ; Retrieves the location in the full entity-body where the partial entity-body should be inserted and the total size of the full entity-body.
Global Const $HTTP_QUERY_CONTENT_TRANSFER_ENCODING = 2     ; Receives the additional content coding that has been applied to the resource.
Global Const $HTTP_QUERY_CONTENT_TYPE              = 1     ; Receives the content type of the resource (such as text/html).
Global Const $HTTP_QUERY_COOKIE                    = 44    ; Retrieves any cookies associated with the request.
Global Const $HTTP_QUERY_COST                      = 15    ; No longer supported.
Global Const $HTTP_QUERY_CUSTOM                    = 65535 ; Causes HttpQueryInfo to search for the header name specified in lpvBuffer and store the header data in lpvBuffer.
Global Const $HTTP_QUERY_DATE                      = 9     ; Receives the date and time at which the message was originated.
Global Const $HTTP_QUERY_DERIVED_FROM              = 14    ; No longer supported.
Global Const $HTTP_QUERY_ECHO_HEADERS              = 73    ; Not currently implemented.
Global Const $HTTP_QUERY_ECHO_HEADERS_CRLF         = 74    ; Not currently implemented.
Global Const $HTTP_QUERY_ECHO_REPLY                = 72    ; Not currently implemented.
Global Const $HTTP_QUERY_ECHO_REQUEST              = 71    ; Not currently implemented.
Global Const $HTTP_QUERY_ETAG                      = 54    ; Retrieves the entity tag for the associated entity.
Global Const $HTTP_QUERY_EXPECT                    = 68    ; Retrieves the Expect header, which indicates whether the client application should expect 100 series responses.
Global Const $HTTP_QUERY_EXPIRES                   = 10    ; Receives the date and time after which the resource should be considered outdated.
Global Const $HTTP_QUERY_FORWARDED                 = 30    ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_FROM                      = 31    ; Retrieves the e-mail address for the human user who controls the requesting user agent if the From header is given.
Global Const $HTTP_QUERY_HOST                      = 55    ; Retrieves the Internet host and port number of the resource being requested.
Global Const $HTTP_QUERY_IF_MATCH                  = 56    ; Retrieves the contents of the If-Match request-header field.
Global Const $HTTP_QUERY_IF_MODIFIED_SINCE         = 32    ; Retrieves the contents of the If-Modified-Since header.
Global Const $HTTP_QUERY_IF_NONE_MATCH             = 57    ; Retrieves the contents of the If-None-Match request-header field.
Global Const $HTTP_QUERY_IF_RANGE                  = 58    ; Retrieves the contents of the If-Range request-header field. This header enables the client application to verify that the entity related to a partial copy of the entity in the client application cache has not been updated. If the entity has not been updated, send the parts that the client application is missing. If the entity has been updated, send the entire updated entity.
Global Const $HTTP_QUERY_IF_UNMODIFIED_SINCE       = 59    ; Retrieves the contents of the If-Unmodified-Since request-header field.
Global Const $HTTP_QUERY_LAST_MODIFIED             = 11    ; Receives the date and time at which the server believes the resource was last modified.
Global Const $HTTP_QUERY_LINK                      = 16    ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_LOCATION                  = 33    ; Retrieves the absolute Uniform Resource Identifier (URI) used in a Location response-header.
Global Const $HTTP_QUERY_MAX                       = 78    ; Not a query flag. Indicates the maximum value of an HTTP_QUERY_* value.
Global Const $HTTP_QUERY_MAX_FORWARDS              = 60    ; Retrieves the number of proxies or gateways that can forward the request to the next inbound server.
Global Const $HTTP_QUERY_MESSAGE_ID                = 12    ; No longer supported.
Global Const $HTTP_QUERY_MIME_VERSION              = 0     ; Receives the version of the MIME protocol that was used to construct the message.
Global Const $HTTP_QUERY_ORIG_URI                  = 34    ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_PRAGMA                    = 17    ; Receives the implementation-specific directives that might apply to any recipient along the request/response chain.
Global Const $HTTP_QUERY_PROXY_AUTHENTICATE        = 41    ; Retrieves the authentication scheme and realm returned by the proxy.
Global Const $HTTP_QUERY_PROXY_AUTHORIZATION       = 61    ; Retrieves the header that is used to identify the user to a proxy that requires authentication. This header can only be retrieved before the request is sent to the server.
Global Const $HTTP_QUERY_PROXY_CONNECTION          = 69    ; Retrieves the Proxy-Connection header.
Global Const $HTTP_QUERY_PUBLIC                    = 8     ; Receives methods available at this server.
Global Const $HTTP_QUERY_RANGE                     = 62    ; Retrieves the byte range of an entity.
Global Const $HTTP_QUERY_RAW_HEADERS               = 21    ; Receives all the headers returned by the server. Each header is terminated by "\0". An additional "\0" terminates the list of headers.
Global Const $HTTP_QUERY_RAW_HEADERS_CRLF          = 22    ; Receives all the headers returned by the server. Each header is separated by a carriage return/line feed (CR/LF) sequence.
Global Const $HTTP_QUERY_REFERER                   = 35    ; Receives the Uniform Resource Identifier (URI) of the resource where the requested URI was obtained.
Global Const $HTTP_QUERY_REFRESH                   = 46    ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_REQUEST_METHOD            = 45    ; Receives the HTTP verb that is being used in the request, typically GET or POST.
Global Const $HTTP_QUERY_RETRY_AFTER               = 36    ; Retrieves the amount of time the service is expected to be unavailable.
Global Const $HTTP_QUERY_SERVER                    = 37    ; Retrieves data about the software used by the origin server to handle the request.
Global Const $HTTP_QUERY_SET_COOKIE                = 43    ; Receives the value of the cookie set for the request.
Global Const $HTTP_QUERY_STATUS_CODE               = 19    ; Receives the status code returned by the server. For more information and a list of possible values, see HTTP Status Codes.
Global Const $HTTP_QUERY_STATUS_TEXT               = 20    ; Receives any additional text returned by the server on the response line.
Global Const $HTTP_QUERY_TITLE                     = 38    ; Obsolete. Maintained for legacy application compatibility only.
Global Const $HTTP_QUERY_TRANSFER_ENCODING         = 63    ; Retrieves the type of transformation that has been applied to the message body so it can be safely transferred between the sender and recipient.
Global Const $HTTP_QUERY_UNLESS_MODIFIED_SINCE     = 70    ; Retrieves the Unless-Modified-Since header.
Global Const $HTTP_QUERY_UPGRADE                   = 64    ; Retrieves the additional communication protocols that are supported by the server.
Global Const $HTTP_QUERY_URI                       = 13    ; Receives some or all of the Uniform Resource Identifiers (URIs) by which the Request-URI resource can be identified.
Global Const $HTTP_QUERY_USER_AGENT                = 39    ; Retrieves data about the user agent that made the request.
Global Const $HTTP_QUERY_VARY                      = 65    ; Retrieves the header that indicates that the entity was selected from a number of available representations of the response using server-driven negotiation.
Global Const $HTTP_QUERY_VERSION                   = 18    ; Receives the last response code returned by the server.
Global Const $HTTP_QUERY_VIA                       = 66    ; Retrieves the intermediate protocols and recipients between the user agent and the server on requests, and between the origin server and the client on responses.
Global Const $HTTP_QUERY_WARNING                   = 67    ; Retrieves additional data about the status of a response that might not be reflected by the response status code.
Global Const $HTTP_QUERY_WWW_AUTHENTICATE          = 40    ; Retrieves the authentication scheme and realm returned by the server.

Global Const $HTTP_QUERY_FLAG_COALESCE = 0x10000000 ; Not implemented.
Global Const $HTTP_QUERY_FLAG_NUMBER = 0x20000000 ; Returns the data as a 32-bit number for headers whose value is a number, such as the status code.
Global Const $HTTP_QUERY_FLAG_REQUEST_HEADERS = 0x80000000 ; Queries request headers only.
Global Const $HTTP_QUERY_FLAG_SYSTEMTIME = 0x40000000 ; Returns the header value as a SYSTEMTIME structure, which does not require the application to parse the data. Use for headers whose value is a date/time string, such as "Last-Modified-Time".

; Default Ports
Global Const $INTERNET_DEFAULT_FTP_PORT	   = 21   ; Uses the default port for FTP servers (port 21).
Global Const $INTERNET_DEFAULT_GOPHER_PORT = 70   ; Uses the default port for Gopher servers (port 70).
Global Const $INTERNET_DEFAULT_HTTP_PORT   = 80   ; Uses the default port for HTTP servers (port 80).
Global Const $INTERNET_DEFAULT_HTTPS_PORT  = 443  ; Uses the default port for Secure Hypertext Transfer Protocol (HTTPS) servers (port 443).
Global Const $INTERNET_DEFAULT_SOCKS_PORT  = 1080 ; Uses the default port for SOCKS firewall servers (port 1080).
Global Const $INTERNET_INVALID_PORT_NUMBER = 0    ; Uses the default port for the service specified by dwService.

; Structure Constants
Global Const $tagAutoProxyHelperFunctions = ""
Global Const $tagAutoProxyHelperVtbl = ""
Global Const $tagAUTO_PROXY_SCRIPT_BUFFER = "dword StructSize; ptr ScriptBuffer; dword ScriptBufferSize"
Global Const $tagGOPHER_ATTRIBUTE_TYPE = ""
Global Const $tagGOPHER_FIND_DATA = $WIN32_TCHAR & " DisplayString[" & ($MAX_GOPHER_DISPLAY_TEXT+1) & "]; dword GopherType; dword Size[2]; dword LastModificationTime[2]; " & $WIN32_TCHAR & " Locator[" & ($MAX_GOPHER_DISPLAY_TEXT+1) & "]"
Global Const $tagHTTP_VERSION_INFO = "dword MajorVersion; dword MinorVersion"
Global Const $tagINTERNET_ASYNC_RESULT = ""
Global Const $tagINTERNET_AUTH_NOTIFY_DATA = ""
Global Const $tagINTERNET_BUFFERS = "dword StructSize; ptr Next; ptr Header; dword HeadersLength; dword HeadersTotal; ptr Buffer; dword BufferLength; dword BufferTotal; dword Offset[2]"
Global Const $tagINTERNET_CACHE_ENTRY_INFO = "dword StructSize; ptr SourceUrlName; ptr LocalFileName; dword CacheEntryType; dword UseCount; dword HitRate; dword Size[2]; dword LastModifiedTime[2]; dword ExpireTime[2]; dword LastAccessTime[2]; dword LastSyncTime[2]; ptr HeaderInfo; dword HeaderInfoSize; ptr FileExtension; dword ReservedExemptDelta"
Global Const $tagINTERNET_CACHE_GROUP_INFO = "dword GroupSize; dword GroupFlags; dword GroupType; dword DiskUsage; dword DiskQuota; dword OwnerStorage[" & $GROUP_OWNER_STORAGE_SIZE & "]; " & $WIN32_TCHAR & " GroupName[" & $GROUPNAME_MAX_LENGTH & "]"
Global Const $tagINTERNET_CACHE_TIMESTAMPS = "dword Expires[2]; dword LastModified[2]"
Global Const $tagINTERNET_CERTIFICATE_INFO = "dword ExpiryTime[2]; dword StartTime[2]; ptr SubjectInfo; ptr IssuerInfo; ptr ProtocolName; ptr SignatureAlgName; ptr EncryptionAlgName; dword KeySize"
Global Const $tagINTERNET_CONNECTED_INFO = "dword ConnectedState; dword Flags"
Global Const $tagINTERNET_PER_CONN_OPTION = "dword dwValue; ptr pszValue; dword ftValue[2]"
Global Const $tagINTERNET_PER_CONN_OPTION_LIST = "dword Size; ptr Connection; dword OptionCount; dword OptionError; ptr Options"
Global Const $tagINTERNET_PROXY_INFO = "dword AccessType; ptr Proxy; ptr ProxyBypass"
Global Const $tagINTERNET_VERSION_INFO = "dword MajorVersion; dword MinorVersion"
Global Const $tagInternetCookieHistory = "int Accepted; int Leashed; int Downgraded; int Rejected"
Global Const $tagURL_COMPONENTS = "dword StructSize; ptr SchemeName; dword SchemeNameLength; int Scheme; ptr HostName; dword HostNameLength; ushort Port; ptr UserName; dword UserNameLength; ptr Password; dword PasswordLength; ptr UrlPath; dword UrlPathLength; ptr ExtraInfo; dword ExtraInfoLength"
