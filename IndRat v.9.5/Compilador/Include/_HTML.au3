#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.8.1
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

#include-once

Global $_HTML_SEARCHMODE = 1 ; (0 = Compare / 1 = Substring / RegExp) (2 = Compare / 3 = Substring / String-compare)

#Region #current#
; _HTML_ExtractURLVar
; _HTML_Get
; _HTML_GetAllLinks
; _HTML_GetImageSrc
; _HTML_GetLink
; _HTML_GetSource
; _HTML_GetTable
; _HTML_GetText
; _HTML_GetURLVar
; _HTML_ImageSave
; _HTML_Search
#EndRegion #current#

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetSource
; Description ...:
; AutoIt Version : V3.3.2.0
; Syntax ........: _HTML_GetSource($sURL)
; Parameter(s): .: $sURL        -
; Return Value ..: Success      - string
;                  Failure      - empty string
;                  @ERROR       -
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 27 23:12:10 CET 2010
; Link ..........:
; Related .......:
; Example .......: No
; ==============================================================================
Func _HTML_GetSource($sURL)
	Local $sHTML = InetRead($sURL, 1)
	If @error Then Return SetError(@error, @extended, "")
	$sHTML = BinaryToString($sHTML)
	$sHTML = StringRegExpReplace($sHTML, '[\r\n\t]', " ")
	$sHTML = StringRegExpReplace($sHTML, '(?i)<script.*?>.*?</script>', "")
	Return $sHTML
EndFunc   ;==>_HTML_GetSource

; #FUNCTION# ===================================================================
; Name ..........: _HTML_ExtractURLVar
; Description ...: Extracts an URL variable from an URL
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_ExtractURLVar($sURL, $sVar)
; Parameter(s): .: $sURL        - URL
;                  $sVar        - variable-name
; Return Value ..: Success      - string
;                  Failure      - empty string
;                  @ERROR       - (see help-file: StringRegExp)
; Author(s) .....: Thorsten Willert
; Date ..........: Thu Dec 24 13:28:27 CET 2009
; ==============================================================================
Func _HTML_ExtractURLVar($sURL, $sVar)
	Local $a = StringRegExp($sURL, '\?.*?' & $sVar & '=([\w%]+)(?:&amp;|&)?', 3)
	If UBound($a) = 0 Then Return SetError(@error, @extended, "")
	Return $a[0]
EndFunc   ;==>_HTML_ExtractURLVar

; #FUNCTION# ===================================================================
; Name ..........: _HTML_Get
; Description ...:
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_Get($sHTML, $sTag, $sAttributeGet, $sValue[, $sAttribute = "id"[, $iIndex = 0]])
; Parameter(s): .: $sHTML       - HTML-Source
;                  $sTag        - HTML-tag
;                  $sAttributeGet - attribute to get the value from
;                  $sValue      - value of the attribute to search
;                  $sAttribute  - Optional: (Default = "id") : attribute to search
;                  $iIndex      - Optional: (Default = 0) :
; Return Value ..: Success      - string
;                  Failure      - empty string
;                  @ERROR       - 1
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 27 22:12:38 CET 2010
; ==============================================================================
Func _HTML_Get($sHTML, $sTag, $sAttributeGet, $sValue, $sAttribute = "id", $iIndex = 0)

	Local Const $sE1 = '(?i)<' & $sTag & '(.*?)>'
	Local Const $sE2 = '(?i)' & $sAttribute & '\s*=\s*("|''|)' & __HTML_Search($sValue) & '\1'
	Local Const $sE3 = '(?i)' & $sAttributeGet & '\s*=\s*("|''|)(.*?)\1'

	ConsoleWrite("_HTML_Get: " & @CRLF & $sE1 & @CRLF & $sE2 & @CRLF & $sE3 & @CRLF)

	Local $a = StringRegExp($sHTML, $sE1, 3)
	If @error = 2 Then
		ConsoleWriteError("_HTML_Get: Error in expression: " & $sE1 & @CRLF)
		Return SetError(1, 0, "")
	EndIf

	Local $c = 0, $r
	For $i = 0 To UBound($a) - 1
		ConsoleWrite($a[$i] & @CRLF)
		If StringRegExp($a[$i], $sE2) Then
			If @error = 2 Then
				ConsoleWriteError("_HTML_Get: Error in expression: " & $sE2 & @CRLF)
				Return SetError(1, 0, "")
			EndIf
			$r = StringRegExp($a[$i], $sE3, 3)
			If @error = 2 Then
				ConsoleWriteError("_HTML_Get: Error in expression: " & $sE3 & @CRLF)
				Return SetError(1, 0, "")
			EndIf
			If $c = $iIndex Then ExitLoop
			$c += 1
		EndIf
	Next

	If UBound($r) = 0 Then Return SetError(1, 0, "")
	Return $r[1]
EndFunc   ;==>_HTML_Get

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetAllImageSrc
; Description ...: Returns an array with all image-srcs of the source-code
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_GetAllImageSrc($sHTML[, $sFilter = '.*?'])
; Parameter(s): .: $sHTML       - HTML-Source
;                  $sFilter     - Optional: (Default = '.*?') : RegEx-filter for the src
; Return Value ..: Success      - Array
;                  Failure      -
;                  @ERROR       - (see help-file: StringRegExp)
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 27 22:12:54 CET 2010
; ==============================================================================
Func _HTML_GetAllImageSrc($sHTML, $sFilter = '.*?')
	$sFilter = __HTML_Search($sFilter)
	Local $sE1 = '(?i)<img.*?src\s*=\s*(?:"(' & $sFilter & ')"|''(' & $sFilter & ')'').*?>'
	ConsoleWrite("_HTML_GetAllImageSrc:" & @CRLF & $sE1 & @CRLF)
	Local $r = StringRegExp($sHTML, $sE1, 3)
	Return SetError(@error, @extended, $r)
EndFunc   ;==>_HTML_GetAllImageSrc

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetAllLinks
; Description ...: Returns an array with all links of the source-code
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_GetAllLinks($sHTML[, $sFilter = '.*?'])
; Parameter(s): .: $sHTML       - HTML-Source
;                  $sFilter     - Optional: (Default = '.*?') : RegEx-filter for the href
; Return Value ..: Success      - Array
;                  Failure      -
;                  @ERROR       - (see help-file: StringRegExp)
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 27 22:13:08 CET 2010
; ==============================================================================
Func _HTML_GetAllLinks($sHTML, $sFilter = '.*?')
	$sFilter = __HTML_Search($sFilter)
	Local $sE1 = '(?i)<a.*?href\s*=\s*(?:"(' & $sFilter & ')"|''(' & $sFilter & ')'').*?>'
	ConsoleWrite("_HTML_GetAllLinks:" & @CRLF & $sE1 & @CRLF)
	Local $r = StringRegExp($sHTML, $sE1, 3)
	Return SetError(@error, @extended, $r)
EndFunc   ;==>_HTML_GetAllLinks

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetImageSrc
; Description ...: Returns the img-src of the specified image
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_GetImageSrc($sHTML, $sValue[, $sAttribute = "id"[, $iIndex = 0]])
; Parameter(s): .: $sHTML       - HTML-Source
;                  $sValue      - The value of the attribute
;                  $sAttribute  - Optional: (Default = "id") : The attribute of the image
;                  $iIndex      - Optional: (Default = 0) :
; Return Value ..: Success      - img-src
;                  Failure      - empty string
;                  @ERROR       - 1
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 06 20:52:52 CET 2010
; ==============================================================================
Func _HTML_GetImageSrc($sHTML, $sValue, $sAttribute = "id", $iIndex = 0)
	Local $r = _HTML_Get($sHTML, "img", "src", $sValue, $sAttribute, $iIndex)
	Return SetError(@error, 0, $r)
EndFunc   ;==>_HTML_GetImageSrc

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetLink
; Description ...: Returns the href of the specified link
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_GetLink($sHTML, $sValue[, $sAttribute = "id"[, $iIndex = 0]])
; Parameter(s): .: $sHTML       - HTML-Source
;                  $sValue      - The value of the attribute
;                  $sAttribute  - Optional: (Default = "id") : Attribute of the link
;                  $iIndex      - Optional: (Default = 0) :
; Return Value ..: Success      - href
;                  Failure      - empty string
;                  @ERROR       - 1
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 06 20:52:56 CET 2010
; ==============================================================================
Func _HTML_GetLink($sHTML, $sValue, $sAttribute = "id", $iIndex = 0)
	Local $r = _HTML_Get($sHTML, "a", "href", $sValue, $sAttribute, $iIndex)
	Return SetError(@error, 0, $r)
EndFunc   ;==>_HTML_GetLink

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetTable
; Description ...: Returns a HTML-table as 2-dim array.
; AutoIt Version : V3.3.2.0
; Syntax ........: _HTML_GetTable($sHTML[, $sValue = ""[, $sAttribute = "id"[, $iIndex = 0[, $iFilter = 30]]]])
; Parameter(s): .: $sHTML       - HTML-source
;                  $sValue      - Optional: (Default = "") :
;                  $sAttribute  - Optional: (Default = "id") :
;                  $iIndex      - Optional: (Default = 0) :
;                  $iFilter     - Optional: (Default = 30) :
;                               - 0 = no filter
;                               - 1 = removes non ascii characters
;                               - 2 = removes all double whitespaces
;                               - 4 = removes all double linefeeds
;                               - 8 = removes all html-tags
;                               - 16 = simple html-tag / entities convertor
; Return Value ..: Success      - array
;                  Failure      - array
;                  @ERROR       -
; Author(s) .....: Thorsten Willert
; Date ..........: Thu Feb 24 22:51:43 CET 2010
; Link ..........:
; Related .......:
; Example .......: No
; ==============================================================================
Func _HTML_GetTable($sHTML, $sValue = "", $sAttribute = "id", $iIndex = 0, $iFilter = 30)

	Local $aRet[1][1]

	$sHTML = _HTML_GetText($sHTML, "table", $sValue, $sAttribute, $iIndex, 0)
	If @error Then Return SetError(1, 0, $aRet)

	Local $aR = StringRegExp($sHTML, '(?i)<tr.*?>(.*?)</tr>', 3)
	If @error Then Return SetError(1, 0, $aRet)

	Local $iR = UBound($aR), $aC, $iC
	For $j = 0 To $iR - 1
		$aC = StringRegExp($aR[$j], '(?i)<(?:td|th).*?>(.*?)</(?:td|th)>', 3)
		If @error Then Return SetError(1, 0, $aRet)

		$iC = UBound($aC)
		ReDim $aRet[$iR][$iC]
		For $k = 0 To $iC - 1
			$aRet[$j][$k] = StringStripWS(__HTML_Filter($aC[$k], $iFilter), 3)
		Next
	Next

	Return $aRet
EndFunc   ;==>_HTML_GetTable

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetText
; Description ...:
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_GetText($sHTML, $sTag, $sValue[, $sAttribute = "id"[, $iIndex = 0[, $iFilter = 30]]])
; Parameter(s): .: $sHTML       - HTML-Source
;                  $sTag        - HTML-tag
;                  $sValue      - Optional: (Default = "") : value of this attribute ($_HTML_SEARCHMODE)
;                  $sAttribute  - Optional: (Default = "id") : attribute in this tag
;                  $iIndex      - Optional: (Default = 0) : index of the tag
;                  $iFilter     - Optional: (Default = 30) : String filter (you can add them)
;                               - 0 = no filter
;                               - 1 = removes non ascii characters
;                               - 2 = removes all double whitespaces
;                               - 4 = removes all double linefeeds
;                               - 8 = removes all html-tags
;                               - 16 = simple html-tag / entities convertor
; Return Value ..: Success      - string
;                  Failure      - empty string
;                  @ERROR       - 1
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 27 20:26:32 CET 2010
; ==============================================================================
Func _HTML_GetText($sHTML, $sTag, $sValue = "", $sAttribute = "id", $iIndex = 0, $iFilter = 30)

	Local $sE1

	If $sValue And $sAttribute Then
		$iIndex = $iIndex * 2 + 1
		$sE1 = '(?i)<' & $sTag & '\s+.*?' & $sAttribute & '\s*=\s*("|''|)' & __HTML_Search($sValue) & '\1.*?>(.*?)</' & $sTag & '>'
	Else
		$sE1 = '(?i)<' & $sTag & '.*?>(.*?)</' & $sTag & '>'
	EndIf

	ConsoleWrite("_HTML_GetText: " & $sE1 & @CRLF)

	Local $r = StringRegExp($sHTML, $sE1, 3)
	If @error = 2 Then
		ConsoleWriteError("_HTML_GetText: Error in expression: " & $sE1 & @CRLF)
		Return SetError(1, 0, "")
	EndIf

	Local $iE = UBound($r)
	If $iE = 0 Or $iIndex >= $iE Then Return SetError(1, 0, "")
	If $iFilter Then __HTML_Filter($r[$iIndex], $iFilter)
	Return $r[$iIndex]
EndFunc   ;==>_HTML_GetText

; #FUNCTION# ===================================================================
; Name ..........: _HTML_GetURLVar
; Description ...:
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_GetURLVar($sHTML, $sVar, $sValue[, $sAttribute = "id"[, $iIndex = 0]])
; Parameter(s): .: $sHTML       - HTML-source
;                  $sVar        - the variable in the URL
;                  $sValue      - the value of the attribute in $sMode
;                  $sAttribute  - Optional: (Default = "id") : attribute of the link
;                  $iIndex      - Optional: (Default = 0) : index for the attribute
; Return Value ..: Success      - string
;                  Failure      - empty string
;                  @ERROR       - (see help-file: StringRegExp)
; Author(s) .....: Thorsten Willert
; Date ..........: Fri Dec 25 10:26:26 CET 2009
; ==============================================================================
Func _HTML_GetURLVar($sHTML, $sVar, $sValue, $sAttribute = "id", $iIndex = 0)
	Local $sURL = _HTML_Get($sHTML, "a", "href", $sValue, $sAttribute, $iIndex)
	If @error Then Return SetError(@error, @extended, "")
	Local $s = _HTML_ExtractURLVar($sURL, $sVar)
	Return SetError(@error, @extended, $s)
EndFunc   ;==>_HTML_GetURLVar

; #FUNCTION# ===================================================================
; Name ..........: _HTML_ImageSave
; Description ...:
; AutoIt Version : V3.3.2.0
; Syntax ........: _HTML_ImageSave($sHTML, $sValue[, $sAttribute = "id"[, $iIndex = 0[, $sBaseURL = ""[, $sDestDir = @SCRIPTDIR[, $sDestFile = ""]]]]])
; Parameter(s): .: $sHTML       - HTML-source
;                  $sValue      - value of $sAttribute
;                  $sAttribute  - Optional: (Default = "id") : attribute of the image
;                  $iIndex      - Optional: (Default = 0) : index of the attribute
;                  $sBaseURL    - Optional: (Default = "") : base url of the image (if there is no full path in the src)
;                  $sDestDir    - Optional: (Default = @SCRIPTDIR) : directory where the image is saved
;                  $sDestFile   - Optional: (Default = "") : file name (default is the orignal-name)
; Return Value ..: Success      - 1
;                  Failure      - 0
;                  @ERROR       -
; Author(s) .....: Thorsten Willert
; Date ..........: Fri Jan 22 10:58:46 CET 2010
; Link ..........:
; Related .......:
; Remarks .......: You can not use it, if relative paths are used in the image-src
; Example .......: Yes
#cs
	#include <_html.au3>
	#include <inet.au3>

	$HTML = _INetGetSource("http://autoit.de/index.php?page=Portal")
	_HTML_ImageSave($HTML, "registerS.png", "src", 0, "www.autoit.de", "c:\\")
#ce
; ==============================================================================
Func _HTML_ImageSave($sHTML, $sValue, $sAttribute = "id", $iIndex = 0, $sBaseURL = "", $sDestDir = @ScriptDir, $sDestFile = "")

	Local $src = _HTML_GetImageSrc($sHTML, $sValue, $sAttribute, $iIndex)
	If Not $sBaseURL Then $sBaseURL = _HTML_Get($sHTML, "base", "", "", "href")
	If Not StringRegExp($sBaseURL, '^(?:http|ftp)s?://') Then $sBaseURL = "http://" & $sBaseURL
	If Not FileExists($sDestDir) Then $sDestDir = @ScriptDir
	If Not $sDestFile Then $sDestFile = $sDestDir & StringMid($src, StringInStr($src, "/", 2, -1))
	If StringRight($sBaseURL, 1) <> "/" And StringLeft($src, 1) <> "/" Then $sBaseURL &= "/"
	If $sBaseURL Then $src = $sBaseURL & $src

	If InetGet($src, $sDestFile, 1) Then
		ConsoleWrite("_HTML_ImageSave:" & @CRLF & "from:" & @TAB & $src & @CRLF & "to:" & @TAB & $sDestFile & @CRLF)
		Return FileExists($sDestFile)
	Else
		Return SetError(@error, 0, 0)
	EndIf
EndFunc   ;==>_HTML_ImageSave

; #FUNCTION# ===================================================================
; Name ..........: _HTML_Search
; Description ...: Searches only in the text of the HTML-source
; AutoIt Version : V3.3.0.0
; Syntax ........: _HTML_Search($sHTML, $sSearch)
; Parameter(s): .: $sHTML       - HTML-source
;                  $sSearch     - the string to search ($_HTML_SEARCHMODE)
; Return Value ..: Success      - 1
;                  Failure      - 0
; Author(s) .....: Thorsten Willert
; Date ..........: Wed Jan 06 21:19:29 CET 2010
; ==============================================================================
Func _HTML_Search($sHTML, $sSearch)
	Return StringRegExp(StringRegExpReplace($sHTML, '<[^>]*>', ""), __HTML_Search($sSearch))
EndFunc   ;==>_HTML_Search

;===============================================================================
Func __HTML_RegExMask($s)
	Return StringRegExpReplace($s, '(\$|\\|\+|\-|\.|\*|\(|\)|\[|\]|\{|\})+', '\\$1')
EndFunc   ;==>__HTML_RegExMask
;===============================================================================
Func __HTML_Search($s)
	If $s = '.*?' Then Return $s
	Switch $_HTML_SEARCHMODE
		Case 0
			Return $s
		Case 1
			Return '.*?' & $s & '.*?'
		Case 2
			Return __HTML_RegExMask($s)
		Case 3
			Return '.*?' & __HTML_RegExMask($s) & '.*?'
		Case Else
			Return $s
	EndSwitch
EndFunc   ;==>__HTML_Search

; #INTERNAL_USE_ONLY# ==========================================================
; Name ..........: __HTML_Filter
; Description ...: Filter for strings
; AutoIt Version : V3.3.0.0
; Syntax ........: __HTML_Filter(ByRef $sString[, $iMode = 0])
; Parameter(s): .: $sString     - String to filter
;                  $iMode       - Optional: (Default = 0) : removes nothing
;                               - 0 = no filter
;                               - 1 = removes non ascii characters
;                               - 2 = removes all double whitespaces
;                               - 4 = removes all double linefeeds
;                               - 8 = removes all html-tags
;                               - 16 = simple html-tag / entities convertor
; Return Value ..: Success      - Filterd String
;                  Failure      - Input String
; Author(s) .....: Thorsten Willert, Stephen Podhajecki {gehossafats at netmdc. com} _ConvertEntities
; Date ..........: Wed Jan 27 20:49:59 CET 2010
; ==============================================================================
Func __HTML_Filter(ByRef $sString, $iMode = 0)
	If $iMode = 0 Then Return $sString
	;16 simple HTML tag / entities converter
	If $iMode >= 16 And $iMode < 32 Then
		Local $aEntities[96][2] = [["&quot;", 34],["&amp;", 38],["&lt;", 60],["&gt;", 62],["&nbsp;", 3],["&nbsp;", 32] _
				,["&iexcl;", 161],["&cent;", 162],["&pound;", 163],["&curren;", 164],["&yen;", 165],["&brvbar;", 166] _
				,["&sect;", 167],["&uml;", 168],["&copy;", 169],["&ordf;", 170],["&not;", 172],["&shy;", 173] _
				,["&reg;", 174],["&macr;", 175],["&deg;", 176],["&plusmn;", 177],["&sup2;", 178],["&sup3;", 179] _
				,["&acute;", 180],["&micro;", 181],["&para;", 182],["&middot;", 183],["&cedil;", 184],["&sup1;", 185] _
				,["&ordm;", 186],["&raquo;", 187],["&frac14;", 188],["&frac12;", 189],["&frac34;", 190],["&iquest;", 191] _
				,["&Agrave;", 192],["&Aacute;", 193],["&Atilde;", 195],["&Auml;", 196],["&Aring;", 197],["&AElig;", 198] _
				,["&Ccedil;", 199],["&Egrave;", 200],["&Eacute;", 201],["&Ecirc;", 202],["&Igrave;", 204],["&Iacute;", 205] _
				,["&Icirc;", 206],["&Iuml;", 207],["&ETH;", 208],["&Ntilde;", 209],["&Ograve;", 210],["&Oacute;", 211] _
				,["&Ocirc;", 212],["&Otilde;", 213],["&Ouml;", 214],["&times;", 215],["&Oslash;", 216],["&Ugrave;", 217] _
				,["&Uacute;", 218],["&Ucirc;", 219],["&Uuml;", 220],["&Yacute;", 221],["&THORN;", 222],["&szlig;", 223] _
				,["&agrave;", 224],["&aacute;", 225],["&acirc;", 226],["&atilde;", 227],["&auml;", 228],["&aring;", 229] _
				,["&aelig;", 230],["&ccedil;", 231],["&egrave;", 232],["&eacute;", 233],["&ecirc;", 234],["&euml;", 235] _
				,["&igrave;", 236],["&iacute;", 237],["&icirc;", 238],["&iuml;", 239],["&eth;", 240],["&ntilde;", 241] _
				,["&ograve;", 242],["&oacute;", 243],["&ocirc;", 244],["&otilde;", 245],["&ouml;", 246],["&divide;", 247] _
				,["&oslash;", 248],["&ugrave;", 249],["&uacute;", 250],["&ucirc;", 251],["&uuml;", 252],["&thorn;", 254]]
		$sString = StringRegExpReplace($sString, '(?i)<p.*?>', @CRLF & @CRLF)
		$sString = StringRegExpReplace($sString, '(?i)<br>', @CRLF)
		Local $iE = UBound($aEntities) - 1
		For $x = 0 To $iE
			$sString = StringReplace($sString, $aEntities[$x][0], Chr($aEntities[$x][1]), 0, 2)
		Next
		For $x = 32 To 255
			$sString = StringReplace($sString, "&#" & $x & ";", Chr($x))
		Next
		$iMode -= 16
	EndIf
	;8 Tag filter
	If $iMode >= 8 And $iMode < 16 Then
		;$sString = StringRegExpReplace($sString, '<script.*?>.*?</script>', "")
		$sString = StringRegExpReplace($sString, "<[^>]*>", "")
		$iMode -= 8
	EndIf
	; 4 remove all double cr, lf
	If $iMode >= 4 And $iMode < 8 Then
		$sString = StringRegExpReplace($sString, "([ \t]*[\n\r]+[ \t]*)", @CRLF)
		$sString = StringRegExpReplace($sString, "[\n\r]+", @CRLF)
		$iMode -= 4
	EndIf
	; 2 remove all double withespaces
	If $iMode = 2 Or $iMode = 3 Then
		$sString = StringRegExpReplace($sString, "[[:blank:]]+", " ")
		$sString = StringRegExpReplace($sString, "\n[[:blank:]]+", @CRLF)
		$sString = StringRegExpReplace($sString, "[[:blank:]]+\n", "")
		$iMode -= 2
	EndIf
	; 1 remove all non ASCII
	If $iMode = 1 Then
		$sString = StringRegExpReplace($sString, "[^\x00-\x7F]", " ")
	EndIf

	Return $sString
EndFunc   ;==>__HTML_Filter