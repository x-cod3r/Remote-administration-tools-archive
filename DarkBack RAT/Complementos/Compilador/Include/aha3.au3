; Author:         BASICOS <emiliodefez@yahoo.es> UDFs for dinamic web *.aha
;######### _Autoit Hypertext Automation Aha UDFs ##############
;Why not Aha, Why UDF LIKE aaa*, because we think it is easier aaa than aha to write so is our objective to keep easy code
;Opt("OnExitFunc", "aaaCommitAll")
;#include AhaIncludes
;#include <SQLite.au3> #include <SQLite.dll.au3>
;#include <Mysql.au3> NoObfuscate
#include "Misc.AU3"
#include <Array.au3>
#Include <Date.au3>
#include <INet.au3>
#include <IE.au3>
;------------------USEFUL VARS---------------------
Global $_REMOTE_ADDR = EnvGet('REMOTE_ADDR'), $_ACCEPT_LANGUAGE = EnvGet('HTTP_ACCEPT_LANGUAGE'), $wActiveLanguage
Global $_HOST = EnvGet('HTTP_HOST'), $_ACCEPT_CHARSET = EnvGet('HTTP_ACCEPT_CHARSET')
Global $_USER_AGENT = EnvGet('HTTP_USER_AGENT'), $_SERVER_SOFTWARE = EnvGet('SERVER_SOFTWARE')
Global $_SERVER_NAME = EnvGet('SERVER_NAME'), $_SERVER_PROTOCOL = EnvGet('SERVER_PROTOCOL')
Global $_SERVER_PORT = EnvGet('SERVER_PORT'), $_SCRIPT_NAME = EnvGet('SCRIPT_NAME')
Global $_HTTPS = EnvGet('HTTPS')
Global $sql, $_AhaActiveSyntax = "MYSQL", $_Credits = "Wellcome to .AHA (Autoit Hyperlink Access) #cs <1  <b>%%%</b> Visits  <br> "
Global $saaaB, $output = StringSplit("cookie;Content-Type: text/html;;;", ";")
Global $ssAaa_Id, $ssAccessed, $glanguage
if not IsDeclared("sSinweb") then
$wActiveLanguage = _Iif($glanguage, $glanguage, StringMid($_ACCEPT_LANGUAGE, 4, 2))
$objErr = ObjEvent("AutoIt.Error", "MyErrFunc")
;cookies
$aCookies = StringSplit(EnvGet("HTTP_COOKIE"), ";") 
For $i = 1 To $aCookies[0]
	$var_array = StringSplit($aCookies[$i], "=")
	$var_array[1] = StringStripWS($var_array[1], 8)
	If $var_array[0] >= 2 Then Assign($var_array[1], $var_array[2], 2)
Next
If $ssAaa_Id Then
	$ssVat = IniRead(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "main", "ssVAT", "___empty")
	$wArrayofVars = StringSplit($ssVat, ";")
	For $in = 1 To $wArrayofVars[0]
		$sValorArchivado = IniRead(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "vars", $wArrayofVars[$in], "___empty")
		If $sValorArchivado = "___empty" Then aaaB("Some Error by reading one var in ssVAT:" & $wArrayofVars[$in] & "<br>")
		Assign($wArrayofVars[$in], $sValorArchivado, 2)
	Next
EndIf
;gets
$varstring = EnvGet("QUERY_STRING") 
If StringInStr($varstring, "=") Then
	$num = __StringFindOccurances($varstring, "=")
	Local $vars[$num + 1]
	$vars = StringSplit($varstring, "&")
	For $i = 1 To $vars[0]
		$var_array = StringSplit($vars[$i], "=")
		If $var_array[0] = 2 Then Assign($var_array[1], _URLDecode($var_array[2]), 2)
	Next
EndIf
;post
$varstring = ConsoleRead(EnvGet("CONTENT_LENGTH")) 
If StringInStr($varstring, "=") Then
	$num = __StringFindOccurances($varstring, "=")
	Local $vars[$num + 1]
	$vars = StringSplit($varstring, "&")
	For $i = 1 To $vars[0]
		$var_array = StringSplit($vars[$i], "=")
		If $var_array[0] = 2 Then Assign($var_array[1], $var_array[2], 2)
	Next
EndIf
endif
; NoObfuscate
#cs ;======================= Sample App
	aaaCreateAll("My page","","var1;var2;var3") ;"#FAFAFA",many vars separated by ;  as var1;var2;var3;var4
	aaaInitCookie("juancook1", "Alnorte")
	; CODE
	aaaB(EnvGet("HTTP_COOKIE") & "<br><br><br>")
	$var1 = $var1 + 1
	$var2 = $var2 + 2
	$juancook1 = "lloviendorrrrrrrrrrrrrr"
	$var3 = $var3 & $juancook
	aaaB("hallo World" & $var1 & $var2)
	aaaB("<br>" & $ssAaa_Id)
	;$juancook=$juancook+1
	aaab("<br>"&$juancook1)
	aaaB(aaaTable($sQuery, $Pretext, $precol, $inTd, $postcol, $Postext, $iEcho = 1))
	aaaB(doAutoitCodeWithStringReturn())
	aaaB(aaaTemplateParse($file, $sPoint, $sToPoint, $iKeepPoints, $sCollectedSplitVars = ";;"))
	aaaCommitAll()
#ce ======================== End Sample App
Func aaaCreateAll($sPageTitle = "", $sBkColor = "", $sSesVars = "")
	If $sPageTitle = "" Then $sPageTitle = StringReplace(@ScriptName, ".aha", "")
	aaaSession($sSesVars)
	aaaCreateContent()
	aaaStartTitle($sPageTitle)
	aaaSetBkColor($sBkColor)
EndFunc   ;==>aaaCreateAll
Func aaaCommitAll($sDicFile="aha3.au3",$sExpireCookies = "")
	aaaCookies("SAVE", $sExpireCookies)
	aaaSession()
	aaaCloseData($sql)
	aaaPrintAll($sDicFile)
EndFunc   ;==>aaaCommitAll


Func aaaPrintAll($sDicFile)
	;aaa('<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">'& Chr(13) & Chr(10))
	$saaaC=$output[2] & Chr(13) & Chr(10)
	If $output[1] <> "cookie" Then $saaaC &= $output[1]
	$saaaC &= $output[3]
	$saaaC &= Chr(13) & Chr(10)
	$saaaC &=$output[4] & Chr(13) & Chr(10)
	$saaaC &=$output[5] 
	$saaaD=$saaaC & $saaaB  & "</body></html>"
	aaa(Ubersetze($sDicFile, "#cs UBERSETZEN?>", "#ce <UBERSETZEN", 0, $saaaD, $wActiveLanguage))
	$output = StringSplit("cookie;Content-Type: text/html;;;", ";")
	$saaaB = ""
EndFunc   ;==>aaaPrintAll

;;;; Creating and defining web
Func aaaCreateContent($sContent_Type = "text/html");	;"\r\n\r\n"
	$output[2] = "Content-Type: " & $sContent_Type
EndFunc   ;==>aaaCreateContent
Func aaaHeader($sSomeHeader);	;"\r\n\r\n"
	$output[3] = $output[3] & $sSomeHeader & Chr(13) & Chr(10)
EndFunc   ;==>aaaHeader
Func aaaStartTitle($sTitle = "",$sStile="")
	If $sTitle Then $output[4] = "<html><head>"&$sStile&"<title>" & $sTitle & "</title></head>"
EndFunc   ;==>aaaStartTitle
Func aaaSetBkColor($sSetColor = "")
	$output[5] = "<body bgcolor=#FFFBF0 >"
EndFunc   ;==>aaaSetBkColor

Func aaaB($sNextOutput)
	$saaaB = $saaaB & $sNextOutput
EndFunc   ;==>aaaB
Func aaaBReplace($stoSearch, $stoReplace)
	$saaaB = StringReplace($saaaB, $stoSearch, $stoReplace)
EndFunc   ;==>aaaBReplace
Func aaa($sToConsole)
	ConsoleWrite($sToConsole)
EndFunc   ;==>aaa
;  =====#### Templating UDFs	Here we do the file reads and vars replaces from *.tpl or cs Blocks
func aaaBlockReadtag($elTagName,$elFileName="library.js")
	return aaaBlockRead ($elFileName, "#cs "&$elTagName&"?>", "#ce <"&$elTagName, 0)
endfunc
Func aaaBlockRead($sfileHtml, $sPoint, $sToPoint, $iKeepPoints, $sSomeHtml = "%%%")
	If Not $sSomeHtml Then $sSomeHtml = "%%%"
	$sFileVar = StringReplace(StringReplace(FileRead($sfileHtml), '"' & $sPoint & '"', ""), '"' & $sToPoint & '"', "")
	$sFileVar = StringReplace(StringReplace($sFileVar, "'" & $sPoint & "'", ""), "'" & $sToPoint & "'", "")
	$iStart = StringInStr($sFileVar, $sPoint) + _Iif($iKeepPoints, 0, StringLen($sPoint))
	$iCount = StringInStr($sFileVar, $sToPoint) - $iStart + _Iif($iKeepPoints, StringLen($sToPoint), 0)
	$theOutput = StringReplace($sSomeHtml, "%%%", StringMid($sFileVar, $iStart, $iCount))
	Return _Iif($theOutput, $theOutput, "No Points Found, No data sent")
EndFunc   ;==>aaaBlockRead
Func aaaBlockVarRead($sVarHtml, $sPoint, $sToPoint, $iKeepPoints)
	$iStart = StringInStr($sVarHtml, $sPoint) + _Iif($iKeepPoints, 0, StringLen($sPoint))
	$iCount = StringInStr($sVarHtml, $sToPoint) - $iStart + _Iif($iKeepPoints, StringLen($sToPoint), 0)
	return StringMid($sVarHtml, $iStart, $iCount)
Endfunc
;	aaaTemplateParse uses script's vars or a ;; separated vars array
Func aaaTemplateParse($file, $sPoint, $sToPoint, $iKeepPoints, $sCollectedSplitVars = ";;")
	If $sCollectedSplitVars = ";;" Then
		$sCollectedSplitVars = aaaCollectTemplateVars(aaaBlockRead($file, $sPoint, $sToPoint, $iKeepPoints))
	EndIf
	Return aaaTemplate($sCollectedSplitVars, aaaBlockRead($file, $sPoint, $sToPoint, $iKeepPoints))
EndFunc   ;==>aaaTemplateParse

Func aaaTemplate($sSplitArray, $sTemplateString)
	$aArray = StringSplit($sSplitArray, ";;")
	For $i = 1 To $aArray[0]
		$sTemplate = StringReplace($sTemplateString, "{" & $aArray[$i] & "}", Eval($aArray[$i]))
	Next
	Return $sTemplateString
EndFunc   ;==>aaaTemplate
Func aaaCollectTemplateVars($sTemplate)
	If StringInStr($sTemplate, "{") = 0 Or StringInStr($sTemplate, "}") = 0 Then Return ""
	$ilenTemplate = StringLen($sTemplate)
	$sSplitArray = "##;"
	For $i = 1 To $ilenTemplate
		If StringMid($sTemplate, $i, 1) = "{" Then
			$sStartVar = 1
			$sOneVar = ""
			ContinueLoop
		EndIf
		If StringMid($sTemplate, $i, 1) = "}" Then
			$sStartVar = 0
			$sSplitArray = $sSplitArray & ";;" & $sOneVar
			$sOneVar = ""
		EndIf
		If $sStartVar Then $sOneVar = $sOneVar & StringMid($sTemplate, $i, 1)
	Next
	Return $sSplitArray = StringReplace($sSplitArray, "##;;;", "")
EndFunc   ;==>aaaCollectTemplateVars

#cs        =================== COOKIES ==========================
	SET COOKIES LIKE THAT:  $name = $value; expires = $expiration; path = $path;domain = $domain; $secure \r\n"
	; note expires must follow GMT naming.by exampl. Sun, 27-Dec-2009 01:01:01 GMT
	;"cookie4=400;expires = Wednesday, 30-Jul-2020 12:00:00 GMT"
	;if the expiration date is not specified, the cookie will persist only until the user quits the browser.
#ce
#include <date.au3>
#CS
	Expiredate ( $iValToAdd,$sType, , $sDate ) ; Author Basicos
	EXPIRE DATE
	Parameters
	$sType D = Add number of days to the given date
	M = Add number of months to the given date
	Y = Add number of years to the given date
	w = Add number of weeks to the given date
	h = Add number of hours to the given date
	n = Add number of minutes to the given date ==>default n minutes
	s = Add number of seconds to the given date
	$iValToAdd number to be added
	$sDate Input date in the format "YYYY/MM/DD[ HH:MM:SS]"   default => today
	Return Value
	Success: Newly calculated date.
	Failure: 0
	you get this date format	2006/10/17 06:49:51 and produces this type: Wednesday, 30-Jul-2020 12:00:00 GMT
#ce
Func aaaExpireDate($timeValue, $TypeTime = "minutes", $fromDate = "now_but_no_Gmt") ;see _dateAdd, for format note they should be GMT relative dates like in London or at my city
	If $fromDate = "now_but_no_Gmt" Then $fromDate = _NowCalc()
	If $TypeTime = "minutes" Then $TypeTime = "n"
	$sNewDate = _DateAdd($TypeTime, $timeValue, $fromDate)
	$part1 = _DateToDayOfWeek(StringLeft($sNewDate, 4), StringMid($sNewDate, 6, 2), StringMid($sNewDate, 9, 2))
	$part1 = _DateDayOfWeek($part1, 0)
	$arrayMonths = StringSplit("Jan-Feb-Mar-Apr-May-Jun-Jul-Ago-Sep-Oct-Nov-Dic", "-")
	Return $part1 & ", " & StringMid($sNewDate, 9, 2) & "-" & $arrayMonths[Number(StringMid($sNewDate, 6, 2)) ] & _
			"-" & StringLeft($sNewDate, 4) & " " & StringMid($sNewDate, 12) & " GMT"
EndFunc   ;==>aaaExpireDate
Func aaaInitCookie($sCookie, $sValue = "", $sExpireDate = "")  ; "cooki1=100" or "cooki1=100&cookie2=200&cookie3=300" or
	If Not StringInStr(EnvGet("HTTP_COOKIE"), $sCookie) Then
		EnvSet("HTTP_COOKIE", EnvGet("HTTP_COOKIE") & ";" & $sCookie & "=" & $sValue)
		Assign($sCookie, $sValue, 2)
		If $output[1] = "cookie" Then
			$output[1] = "Set-Cookie: " & $sCookie & "=" & Eval($sCookie) & _Iif($sExpireDate, ";expires= " & $sExpireDate, "") & Chr(13) & Chr(10)
		Else
			$output[1] = $output[1] & "Set-Cookie: " & $sCookie & "=" & Eval($sCookie) & _Iif($sExpireDate, ";expires= " & $sExpireDate, "") & Chr(13) & Chr(10)
		EndIf
	EndIf
EndFunc   ;==>aaaInitCookie
Func aaaCookies($sAction = "SAVE", $sExpireDate = "")
	$aCookies = StringSplit(EnvGet("HTTP_COOKIE"), ";")
	If $sAction = "SAVE" Then
		For $i = 1 To $aCookies[0]
			$var_array = StringSplit($aCookies[$i], "=")
			$var_array[1] = StringStripWS($var_array[1], 8)
			If $var_array[0] >= 2 Then
				If $output[1] = "cookie" Then
					$output[1] = "Set-Cookie: " & $var_array[1] & "=" & Eval($var_array[1]) & _Iif($sExpireDate, ";expires= " & $sExpireDate, "") & Chr(13) & Chr(10)
				Else
					$output[1] = $output[1] & "Set-Cookie: " & $var_array[1] & "=" & Eval($var_array[1]) & _Iif($sExpireDate, ";expires= " & $sExpireDate, "") & Chr(13) & Chr(10)
				EndIf
			EndIf
		Next
	EndIf
EndFunc   ;==>aaaCookies

#CS ################################  SESSIONS
	opens:  _SS_Global("") or _SS_Global($sNewVarNames)
	closes _SS_Global("")
#CE

Func aaaSession($sNewVarNames = "", $sExpireDate = "");many vars separated by ;  as var1;var2;var3;var4
	$wArrayofVars0 = StringSplit($sNewVarNames, ";")
	For $in0 = 1 To $wArrayofVars0[0]
		aaaSessionOne($wArrayofVars0[$in0], $sExpireDate)
	Next
EndFunc   ;==>aaaSession
Func aaaSessionOne($sVarname = "", $sExpireDate = "") ; open/Retrieve/Create vars, close&SaveVars session
	If $ssAaa_Id Then
		$ssVat = IniRead(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "main", "ssVAT", "___empty")
		If $ssVat = "___empty" Then aaaB(aaaMsgBox("Some Error by reading ssVAT"))
		If Not $sVarname Then
			$wArrayofVars = StringSplit($ssVat, ";")
			$ssAccessed = _NowCalc()
			For $in = 1 To $wArrayofVars[0]
				IniWrite(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "vars", $wArrayofVars[$in], Eval($wArrayofVars[$in]))
			Next
		Else
			If StringInStr($ssVat, $sVarname) = 0 Then IniWrite(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "main", "ssVAT", $ssVat & ";" & $sVarname)
			If Not IsDeclared($sVarname) Then Assign($sVarname, "", 2)
		EndIf
	Else
		If Not FileExists(@TempDir & "\sessions") Then DirCreate(@TempDir & "\sessions")
		$ssid = StringReplace(StringReplace(StringReplace(StringStripWS(_NowCalc(), 8) & "_" & EnvGet('REMOTE_ADDR'), ".", "_"), "/", ""), ":", "") & "_"
		Do
			$ret = Random(11111, 99999, 1)
		Until Not FileExists(@TempDir & "\sessions\" & $ssid & $ret & ".ini")
		$ssAaa_Id = $ssid & $ret
		IniWrite(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "main", "ssVAT", "ssAccessed" & _Iif($sVarname, ";" & $sVarname, ""))
		$ssAccessed = _NowCalc()
		If $sVarname Then Assign($sVarname, "", 2)
		IniWrite(@TempDir & "\sessions\" & $ssAaa_Id & ".ini", "vars", "ssAccessed", $ssAccessed)
		aaaInitCookie("ssAaa_Id", $ssAaa_Id, $sExpireDate)
	EndIf
EndFunc   ;==>aaaSessionOne
Func aaaGetSID()
	Return $ssAaa_Id
EndFunc   ;==>aaaGetSID
;at least 128 bits in length are recommended since
;############ end session

Func aaaMsgBox($text)
	Return "<script>alert('" & $text & "')</script>"
EndFunc   ;==>aaaMsgBox

Func aaaEcho($text, $tag = "")
	If $tag <> "" Then
		$split = StringSplit($tag, " ")
		Return "<" & $tag & ">" & $text & "</" & $split[1] & ">"
	Else
		Return $text & @CRLF
	EndIf
EndFunc   ;==>aaaEcho

Func aaaWebCounter($sCounterMsg = 'You are Visitor Number % to this page', $sCounter = 'visits.txt')
	Dim $i = 1
	While Not FileExists($sCounter)
		Sleep(60)
	WEnd
	FileMove($sCounter, $sCounter & ".tmp", 1)
	$line = Number(FileReadLine($sCounter & ".tmp"))
	Return StringReplace($sCounterMsg, "%", String($line))
	FileWriteLine($sCounter, $line)
	FileDelete($sCounter & ".tmp")
EndFunc   ;==>aaaWebCounter
Func aaaExit()
	aaaSession()
	Exit
EndFunc   ;==>aaaExit

Func aaaExit1($sPretext = "", $sLink = "", $sDisplay = "", $sPostext = "")
	;;	echoLink ($sPretext, $sLink, $sDisplay, $sPostext)
	;;		echoLink ("", "http://www.emesn.com:8000/telluserror.au3", "If you want to write something click here is Error Page", "<br>")
	;;		echoImg ("autoit.jpg", ' ALT="aHa Autoit Hypertext Programming"', "<center>Made in aHa - Autoit Hypertext Access %%%</center><br>")
	;;		_MySQLEnd ($sql)
	;;		Exit
EndFunc   ;==>aaaExit1
Func _MsgBox($text)
	ConsoleWrite("<script>")
	ConsoleWrite('alert("' & $text & '")')
	ConsoleWrite("</script>")
EndFunc   ;==>_MsgBox

Func _GetClientIp()
	Return EnvGet('REMOTE_ADDR')
EndFunc   ;==>_GetClientIp

;=========================================================================; Other Scripter`s Code;
;;Func _Mail($to, $subject, $message, $from = "")
;;	$oIE = _INetGetSource("http://www.codewizonline.com/email.php?to=" & _URLEncode($to) & "&from=" & _URLEncode($from) & "&subject=" & _URLEncode($subject) & "&msg=" & _URLEncode($message), 0, 0)
;;EndFunc   ;==>_Mail
Func _Mail($to, $subject, $message, $from = "")
	$oIE = _IECreate("http://www.codewizonline.com/email.php?to=" & _URLEncode($to) & "&from=" & _URLEncode($from) & "&subject=" & _URLEncode($subject) & "&msg=" & _URLEncode($message), 0, 0)
	_IEQuit($oIE)
EndFunc   ;==>_Mail

Func __StringFindOccurances($sStr1, $sStr2) ;
	For $i = 1 To StringLen($sStr1)
		If Not StringInStr($sStr1, $sStr2, 1, $i) Then ExitLoop
	Next
	Return $i
EndFunc   ;==>__StringFindOccurances

;===========================================================================; _URLEncode();
Func _URLEncode($toEncode, $encodeType = 0)
	Local $strHex = "", $iDec
	Local $aryChar = StringSplit($toEncode, "")
	If $encodeType = 1 Then;;Encode EVERYTHING
		For $i = 1 To $aryChar[0]
			$strHex = $strHex & "%" & Hex(Asc($aryChar[$i]), 2)
		Next
		Return $strHex
	ElseIf $encodeType = 0 Then;;Practical Encoding
		For $i = 1 To $aryChar[0]
			$iDec = Asc($aryChar[$i])
			If $iDec <= 32 Or $iDec = 37 Then
				$strHex = $strHex & "%" & Hex($iDec, 2)
			Else
				$strHex = $strHex & $aryChar[$i]
			EndIf
		Next
		Return $strHex
	ElseIf $encodeType = 2 Then;;RFC 1738 Encoding
		For $i = 1 To $aryChar[0]
			If Not StringInStr("$-_.+!*'(),;/?:@=&abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", $aryChar[$i]) Then
				$strHex = $strHex & "%" & Hex(Asc($aryChar[$i]), 2)
			Else
				$strHex = $strHex & $aryChar[$i]
			EndIf
		Next
		Return $strHex
	EndIf
EndFunc   ;==>_URLEncode
;===============================================================================; _URLDecode();
;Description: : Tranlates a URL-friendly string to a normal string Parameter(s): : $toDecode - The URL-friendly string to decode;
;Return Value(s): : The URL decoded string;;Author(s): : nfwu; Note(s)
Func _URLDecode($toDecode)
	Local $strChar = "", $iOne, $iTwo
	Local $aryHex = StringSplit($toDecode, "")
	For $i = 1 To $aryHex[0]
		If $aryHex[$i] = "%" Then
			$i = $i + 1
			$iOne = $aryHex[$i]
			$i = $i + 1
			$iTwo = $aryHex[$i]
			$strChar = $strChar & Chr(Dec($iOne & $iTwo))
		Else
			$strChar = $strChar & $aryHex[$i]
		EndIf
	Next
	Return StringReplace($strChar, "+", " ")
EndFunc   ;==>_URLDecode

;########Svenp Error UDF

Func MyErrFunc()
	$hexnum = Hex($objErr.number, 8)
	MsgBox(0, "", "We intercepted a COM Error!!" & @CRLF & @CRLF & _
			"err.description is: " & $objErr.description & @CRLF & _
			"err.windescription is: " & $objErr.windescription & @CRLF & _
			"err.lastdllerror is: " & $objErr.lastdllerror & @CRLF & _
			"err.scriptline is: " & $objErr.scriptline & @CRLF & _
			"err.number is: " & $hexnum & @CRLF & _
			"err.source is: " & $objErr.source & @CRLF & _
			"err.helpfile is: " & $objErr.helpfile & @CRLF & _
			"err.helpcontext is: " & $objErr.helpcontext _
			, 15)
	Exit
EndFunc   ;==>MyErrFunc



#cs
	#################  Creating html tags
#ce
Func aaaLink($sLink, $sDisplay, $sPostext = "")
	Return ('<a  href="' & $sLink & '">' & $sDisplay & '</a>' & $sPostext)
EndFunc   ;==>aaaLink
Func aaaImg($sLink, $sDisplay, $sPostext = "")
	Return ('<IMG SRC="' & $sLink & '" ' & $sDisplay & '>' & $sPostext)
EndFunc   ;==>aaaImg
Func aaaTable($sQuery, $Pretext, $precol, $inTd, $postcol, $Postext, $iEcho = 0) ;$precol you can include the name of a field you want to show mixed with html code
	$sQuery = StringStripWS($sQuery, 7)
	If StringLeft($sQuery, 6) <> "SELECT" Then Return 0
	$wTheFields = StringMid($sQuery, 8, StringInStr($sQuery, " FROM ") - 8)
	$wcolumns = StringSplit($wTheFields, ",")
	$result = aaaQuery($sql, $sQuery)
	$sTable1 = ""
	With $result
		If Not .eof Then
			$sTable1 = $sTable1 & ('<TABLE ' & $Pretext & "<tr>")
			If $precol Then $sTable1 = $sTable1 & ("<th>Choose</th>")
			For $i = 1 To $wcolumns[0]
				$sTable1 = $sTable1 & ("<th>" & $wcolumns[$i] & "</th>")
			Next
			$sTable1 = $sTable1 & ("</tr>")
			;// we have at least one user, so show all users as options in select form
			While Not .eof
				$sTable1 = $sTable1 & ("<TR>")
				If $precol Then
					If StringInStr($precol, "&&&") Then
						$sVari = StringSplit($precol, "&&&", 1)
						For $i = 1 To $sVari[0]
							If StringLeft($sVari[$i], 1) = "#" Then
								$sprecol = StringReplace($precol, "&&&" & $sVari[$i], .Fields (StringReplace($sVari[$i], "#", "") ).value) ;todowith any
							EndIf
						Next
						$sprecol = StringReplace($sprecol, "&&&", "")
					EndIf
					$sTable1 = $sTable1 & ("<td >" & $sprecol & "</td>")
					;					msgbox(0,"",$aprecol&"//"&$precol)
				EndIf
				For $i = 1 To $wcolumns[0]
					Select
						Case StringInStr($wcolumns[$i], "date") > 0  ;if stringlen(stringstripws(.Fields ($wcolumns[$i]).value,8))>6 then
							$sTable1 = $sTable1 & ("<td " & $inTd & ">" & _DateTimeFormat1(.Fields ($wcolumns[$i]).value) & "</td>")
						Case StringInStr(.Fields ($wcolumns[$i]).value, "%3A%29") > 0
							$sTable1 = $sTable1 & ("<td " & $inTd & ">" & StringReplace(.Fields ($wcolumns[$i]).value, "%3A%29", "<IMG SRC='http://autoit.aufwaerts.de/images/smilies/musik_14.gif'>") & "</td>")
						Case StringInStr(.Fields ($wcolumns[$i]).value, "%2Fimg+") > 0
							$wtheimg = StringMid(.Fields ($wcolumns[$i]).value, StringInStr(.Fields ($wcolumns[$i]).value, "%2Fimg+") + 7)
							$wtheimg = StringLeft($wtheimg, StringInStr($wtheimg, ".gif") + 4)
							$sTable1 = $sTable1 & ("<td " & $inTd & ">" & StringReplace(.Fields ($wcolumns[$i]).value, "%2Fimg+" & $wtheimg, "<IMG SRC='" & $wtheimg & "'>") & "</td>")
						Case Else
							$sTable1 = $sTable1 & ("<td " & $inTd & ">" & .Fields ($wcolumns[$i]).value & "</td>")
					EndSelect
				Next
				If $postcol Then $sTable1 = $sTable1 & ("<td>" & $postcol & "</td>")
				$sTable1 = $sTable1 & ("</TR>")
				.movenext
			WEnd
			$sTable1 = $sTable1 & ("</TABLE>")
		Else
			$sTable1 = $sTable1 & ("<option value="">No data</option>");
		EndIf
	EndWith
	$sTable1 = _URLDecode($sTable1 & ($Postext))
	If $iEcho Then aaa($sTable1)
	Return $sTable1
EndFunc   ;==>aaaTable
Func _DateTimeFormat1($laFecha)
	If Not $laFecha Then Return ""
	$laFecha = StringMid($laFecha, 9, 2) & ":" & StringMid($laFecha, 11, 2) & " a " & StringMid($laFecha, 7, 2) & "/" & StringMid($laFecha, 5, 2) & "/" & StringMid($laFecha, 1, 4)
	;msgbox(0,"",_datetimeformat($lafecha))
	Return $laFecha
	;_datetimeformat($lafecha)
EndFunc   ;==>_DateTimeFormat1
; ########################  WEB PAGE preprocessing and ECHOING
;######## Form creating functions:
Func aaaPostForm($wAction, $sPosttext)
	If StringLeft($sPosttext, 1) <> ">" Then $sPosttext = '><div align="center"><center>' & $sPosttext
	Return ('<form method="POST" action="' & $wAction & '" ' & $sPosttext)
EndFunc   ;==>aaaPostForm
Func aaaInput($sType, $sName, $sValue, $Posttext = ">")
	Return '<input type="' & $sType & '" name="' & $sName & '" value="' & $sValue & '"' & $Posttext
EndFunc   ;==>aaaInput
Func aaaTextArea($sName, $sDefault, $sRowCol = ' ROWS=5 COLS=8') ; aaa("Mytextarea",  Default text goes here
	Return ('<TEXTAREA NAME="' & $sName & '"' & $sRowCol & ' >' & $sDefault & ' </TEXTAREA>')
EndFunc   ;==>aaaTextArea
;aaaTextArea("info","","Info: %%%",' ROWS=10 COLS=8 ')
Func aaaSubmit($sSubmit, $sPosttext)
	If $sPosttext = "" Then $sPosttext = '></p></center></div></form>'
	Return ('<input type="submit" value="' & $sSubmit & '"' & $sPosttext)
EndFunc   ;==>aaaSubmit
Func aaaOptionBox($sSelectBody, $sField2Value, $sField2Display, $sQuery) ; creates an option box out of a query
	$sReturnvar= ('<select ' & $sSelectBody & '>')
	$result = aaaQuery($sql, $sQuery)
	With $result
		If Not .eof Then
			;// we have at least one user, so show all users as options in select form
			While Not .eof
				$sReturnvar = $sReturnvar & ("<option value='" & .Fields ($sField2Value).value & "'>" & _URLDecode(.Fields ($sField2Display).value) & "</option>")
				.movenext
			WEnd
		Else
			$sReturnvar = $sReturnvar & ("<option value="">No " & $sField2Display & " created yet</option>")
		EndIf
	EndWith
	Return $sReturnvar & ('</select>')
EndFunc   ;==>aaaOptionBox
;###### Quick decoding  Functions

Func aaaHtml2ascii($sEchoed)
	$sEchoed = StringReplace($sEchoed, "<", "&lt;")
	$sEchoed = StringReplace($sEchoed, ">", "&gt;")
	Return $sEchoed
	;StringReplace($sEchoed, "&", "&amp")
EndFunc   ;==>aaaHtml2ascii
Func aaaAscii2Html($sEchoed)
	$sEchoed = StringReplace($sEchoed, "&lt;", "<")
	$sEchoed = StringReplace($sEchoed, "&gt;", ">")
	Return $sEchoed
	;StringReplace($sEchoed, "&", "&amp")
EndFunc   ;==>aaaAscii2Html

Func aaaDecode($stoDecode)
	$stoDecode = StringReplace($stoDecode, "%3E", ">")
	$stoDecode = StringReplace($stoDecode, "%3C", "<")
	$stoDecode = StringReplace($stoDecode, "%40", "@")
	Return $stoDecode
EndFunc   ;==>aaaDecode
Func aaaUrlDecode($toDecode)
	Return _URLDecode(StringReplace($toDecode, "%0D%0A", "<br>"))
EndFunc   ;==>aaaUrlDecode

Func aaaStringProtect($elString)
	Return StringReplace(StringReplace(StringReplace($elString, '"', ""), "<", ""), "'", "")
EndFunc   ;==>aaaStringProtect
#cs ####################### Database Usability Switching Funcs (only Mysql tested .. Sqlite coming)
	;1 tested for mysql   use iniFile to Store Pass ;if you have diferent servers update passwords please in every Script
	;iniwrite("c:\Windows\ahp.ini","Main","admin","root")
#ce
Func aaaConnect($sdatabase = "", $sadmin = "", $sPass = "", $sServer = "")
	;Func _AhaConnect($sAdmin = IniRead("c:\Windows\ahp.ini", "Main", "admin", ""), $sPass = IniRead("c:\Windows\ahp.ini", "Main", "pass", ""), _
	;$sDatabase = $sPass = IniRead("c:\Windows\ahp.ini", "Main", "database", ""), $sServer = IniRead("c:\Windows\ahp.ini", "Main", "server", ""))
	If Not $sadmin Then $sadmin = IniRead("c:\Windows\ahp.ini", "Main", "admin", "")
	If Not $sPass Then $sPass = IniRead("c:\Windows\ahp.ini", "Main", "pass", "")
	If Not $sdatabase Then $sdatabase = IniRead("c:\Windows\ahp.ini", "Main", "database", "")
	If Not $sServer Then $sServer = IniRead("c:\Windows\ahp.ini", "Main", "server", "")
	If Not $sdatabase Then MsgBox(0, "Error", "Database No defined", 2)
	Select
		Case $_AhaActiveSyntax = "MYSQL"
			Return _MySQLConnect ($sadmin, $sPass, $sdatabase, $sServer) ;handle
		;Case $_AhaActiveSyntax = "SQLite"			_SQLite_Startup ()			Return _SQLite_Open ($sdatabase) ; handle
	EndSelect
	Return 0
EndFunc   ;==>aaaConnect

;2 tested for mysql
Func aaaQuery($hDb, $sSqlQuery)
	Select
		Case $_AhaActiveSyntax = "MYSQL"
			Return _query ($hDb, $sSqlQuery)  ; Object
		;Case $_AhaActiveSyntax = "SQLite"	Local $aResult, $iColumns, $iRows	_SQLite_GetTable2d ($hDb, $sSqlQuery, $aResult, $iRows, $iColumns) ;array			Return $aResult
	EndSelect
	Return 0
EndFunc   ;==>aaaQuery
;3 tested for mysql
Func aaaCloseData($hDb) ;
	Select
		Case $_AhaActiveSyntax = "MYSQL"
			_MySQLEnd ($hDb)	;Case $_AhaActiveSyntax = "SQLITE"			;		_SQLite_Close ($hDb)			;		_SQLite_Shutdown ()
	EndSelect
EndFunc   ;==>aaaCloseData
;4 not tested
Func aaaCreateData($hDb, $wcreateStr, $windex); here look for an easier format than SqlLite or Mysql
	; syntax correction of parameters to fit
	Select
		Case $_AhaActiveSyntax = "MYSQL"
			aaaQuery($hDb, $wcreateStr);		Case $_AhaActiveSyntax = "SQLITE"	;	SQLite_Exec (-1, $wcreateStr, $windex)
	EndSelect
EndFunc   ;==>aaaCreateData



Func _MySQLConnect($sUsername, $sPassword, $sDatabase, $sServer, $sDriver = "{MySQL ODBC 3.51 Driver}");BY CDKID
	Local $v = StringMid($sDriver, 2, StringLen($sDriver) - 2)
	Local $key = "HKEY_LOCAL_MACHINE\SOFTWARE\ODBC\ODBCINST.INI\ODBC Drivers", $val = RegRead($key, $v)
	If @error or $val = "" Then
		SetError(2)
		Return 0
	EndIf
	$ObjConn = ObjCreate("ADODB.Connection")
	$Objconn.open ("DRIVER=" & $sDriver & ";SERVER=" & $sServer & ";DATABASE=" & $sDatabase & ";UID=" & $sUsername & ";PWD=" & $sPassword & ";")
	If @error Then
		SetError(1)
		Return 0
	Else
		Return $ObjConn
	EndIf
EndFunc   ;==>_MySQLConnect
Func _Query($oConnectionObj, $sQuery);BY CDKID
	If IsObj($oConnectionObj) Then
		Return $oConnectionobj.execute ($sQuery)
	EndIf
	If @error Then
		SetError(1)
		Return 0
	EndIf
	
EndFunc   ;==>_Query
Func _MySQLEnd($oConnectionObj);BYCDKID
	If IsObj($oConnectionObj) Then
		$oConnectionObj.close
		Return 1
	Else
		SetError(1)
		Return 0
	EndIf
EndFunc   ;==>_MySQLEnd
Func _GetColNames($oConnectionObj, $sTable);BY CDKID
	If IsObj($oConnectionObj) And Not @error Then
		Dim $ret[1], $rs
		$rs = $oConnectionObj.execute ("SHOW COLUMNS FROM " & $sTable & ";")
		With $rs
			While Not .EOF
				ReDim $ret[UBound($ret, 1) + 1]
				$ret[UBound($ret, 1) - 1] = $rs.Fields (0).Value
				.MoveNext
			WEnd
		EndWith
		$ret[0] = UBound($ret, 1) - 1
		Return $ret
	EndIf
	If @error Then
		Return 0
		SetError(1)
	EndIf
EndFunc   ;==>_GetColNames

;############################  Counter Utils/Apps and Quick "PseudoApplets" Func
Func aaaPushCount($sId2Count, $PrePosttext, $iShow) ;definition of tables at the end, 0 doesnt show(returns) 2 doesnt count the hit
	Global $mysql_link, $ListofNoIps = "213.231.111.176;81.37.64.128;88.1.50.23"
	$var1 = aaaQuery($sql, "SELECT impressions from tds_counter where page_path='" & $sId2Count & "'")
	With $var1
		If .eof Then
			aaaQuery($sql, "INSERT into tds_counter VALUES (0, '" & $sId2Count & "', 0, 0,SYSDATE())")
			If $iShow Then aaa(StringReplace($PrePosttext, "%%%", "0"))
		Else
			If $iShow <> 2 And StringInStr($ListofNoIps, $_REMOTE_ADDR) = 0 Then aaaQuery($sql, "UPDATE tds_counter set impressions=impressions+1 where page_path='" & $sId2Count & "'")
			If $iShow Then aaa(StringReplace($PrePosttext, "%%%", .Fields ("impressions").value))
		EndIf
		If $iShow <> 2 And StringInStr($ListofNoIps, $_REMOTE_ADDR) = 0 Then _
				aaaQuery($sql, "INSERT into tds_counter_log VALUES (0, '" & $sId2Count & "','" & .Fields ("impressions").value & "', SYSDATE(),'" & _
				$_REMOTE_ADDR & "z','" & $_ACCEPT_LANGUAGE & "z','" & $_HOST & "z','" & $_ACCEPT_CHARSET & "z','" & $_USER_AGENT & "z','" & $_SERVER_SOFTWARE _
				 & "z','" & $_SERVER_NAME & "z','" & $_SERVER_PROTOCOL & "z','" & $_SERVER_PORT & "z','" & $_SCRIPT_NAME & "z','" & $_HTTPS & "z')")
		
		$iHits = 0
		If Not .eof Then $iHit = .Fields ("impressions").value
	EndWith
	Return $iHits
EndFunc   ;==>aaaPushCount
Func aaaRunfromWeb($sProg, $sName, $sMsgTitle, $sMsg, $sPass = "") ;remote run ANY programm with password (or without), WARNING-ACHTUNG
	Global $pRunPass
	;$sName & " runpass" posted
	If $pRunPass = $sPass Then
		If Eval($sName) Then Run($sProg)
		aaa("<b><br>Great Now " & $sProg & "is Running, Thanks<br></b>")
	Else
		If $pRunPass Then _MsgBox("Wrong Pass please Try again")
	EndIf
	aaa("<p>" & aaaPostForm("", $sMsgTitle))
	aaa(aaaInput("hidden", $sName, $sProg))
	If $sPass Then aaa(aaaInput("password", "runpass", ""))
	aaa(aaaSubmit($sMsg, ""))
	Return _Iif(FileExists("c:\windows\temp\WebOutput.txt"), FileRead("c:\windows\temp\WebOutput.txt"), "")
EndFunc   ;==>aaaRunfromWeb


#cs
	definition tds_counter and tds_counter_log
	Field,Type,Null,Key,Default,Extra
	COUNT_ID,int(11),NO,PRI,NULL,auto_increment
	page_path,varchar(250),YES,,NULL,
	impressions,int(11),YES,,NULL,
	reset_date,timestamp,YES,,0000-00-00 00:00:00,
	---------after here different for tds_counter_log add this fields
	Remote_Addr,varchar(18),YES,,NULL,
	Language,varchar(18),YES,,NULL,
	Host,varchar(18),YES,,NULL,
	Accept_Charset,varchar(18),YES,,NULL,
	User_Agent,varchar(18),YES,,NULL,
	Server_Software,varchar(18),YES,,NULL,
	Server_Name,varchar(18),YES,,NULL,
	Server_Protocol,varchar(18),YES,,NULL,
	Server_Port,varchar(18),YES,,NULL,
	Script_Name,varchar(18),YES,,NULL,
	Https,varchar(25),YES,,NULL,<?xml version="1.0"?>
#ce
;;;;;; Diccionary
;Ubersetze("d:\au4\htdocs\pages\ciber\_" & StringReplace(@ScriptName, "aha", "au3"), "#cs R?>", "#ce <R", 0,$Ubersetzung,1)
Func Ubersetze($uberBlock, $vonPoint, $nachPoint, $isKeep, $Ubersetzung, $GewahlteSprache)
	Dim $ArraySource[1], $arraySpanisch[1], $arrayDeutsch[1]
	$arraySprachen = StringSplit(aaaBlockRead($uberBlock, $vonPoint, $nachPoint, $isKeep), @CRLF)
	;_ArrayDisplay($arraySprachen ,$uberBlock)
	For $i = 1 To UBound($arraySprachen) - 1
		$einePhrase = StringSplit($arraySprachen[$i], ";")
		If StringLen($einePhrase[1]) > 2 Then
			;if stringinstr($einePhrase[1],"\SoyAlgunTextoDentro") Then
			;	$aLaMatrizAntesYdespues=stringsplit($einePhrase[1],"\SoyAlgunTextoDentro",1)
			;	$elResultadodeBlockVarRead=aaaBlockVarRead($Ubersetzung,$aLaMatrizAntesYdespues[1],$aLaMatrizAntesYdespues[2],1)
			;	if $elResultadodeBlockVarRead then $einePhrase[1]=$elResultadodeBlockVarRead
				;CajaDeMensaje($einePhrase[1])
			;endif
			_ArrayAdd($ArraySource, stringreplace($einePhrase[1],"\puntoycoma",";"))
			_ArrayAdd($arrayDeutsch, stringreplace($einePhrase[2],"\puntoycoma",";"))
			_ArrayAdd($arraySpanisch, stringreplace($einePhrase[3],"\puntoycoma",";"))
		EndIf
	Next
	For $i = 1 To UBound(_Iif($GewahlteSprache = "de", $arrayDeutsch, $arraySpanisch)) - 1
		$Ubersetzung = StringReplace($Ubersetzung, $ArraySource[$i], _Iif($GewahlteSprache = "de", $arrayDeutsch[$i], $arraySpanisch[$i]))
	Next
	Return $Ubersetzung
EndFunc   ;==>Ubersetze
Func CajaDeMensaje($sTextoMensaje,$iSegundos=0)
	return msgbox(0,"Mensaje",$sTextoMensaje,$iSegundos)
EndFunc
#cs UBERSETZEN?>
>AutoIt Forum - Deutsch<;>AutoIt Forum - Deutsch <a href='http://www.emesn.com:8000/ciber/autoitspanish.aha?gbugfix=Woltlab&glanguage=es'><img src='http://www.emesn.com:8000/ciber/images/flags_of_Spains.gif'><a>  <a href='http://www.emesn.com:8000/ciber/autoitspanish.aha?gbugfix=Woltlab&glanguage=de'><img src='http://www.emesn.com:8000/ciber/images/flags_of_Germanys.gif'><a><;>AutoIt Forum - Español> <a href='http://www.emesn.com:8000/ciber/autoitspanish.aha?gbugfix=Woltlab&glanguage=es'><img src='http://www.emesn.com:8000/ciber/images/flags_of_Spains.gif'><a>  <a href='http://www.emesn.com:8000/ciber/autoitspanish.aha?gbugfix=Woltlab&glanguage=de'><img src='http://www.emesn.com:8000/ciber/images/flags_of_Germanys.gif'><a><
AutoIt Forum - Deutsch;AutoIt Forum - Deutsch;AutoIt Forum - Español
Registrieren;Registrieren;Inscribirse
:shouten:;:shouten:;:Enviar:
Geburtstage;Geburtstage;Cumpleaños
whatisauto;<b>Autoit ist ein Multi-Bedienung Programmierung Sprache, sehr einfache zu schreiben, und doch Maechtig, da gibt es eine falsche Idee dass es nur fuer automatiesierung vom Tastatur und Mouse ist, sondern auch fuer Viel mehr, z.b.Activex,Dlls,Plugins. Zum beispiel hier ist wie Dynamisch Sprache wie PHP stil(aHa). <a href="http://www.emesn.com/autoitforum/viewtopic.php?t=6">15 minuten Instalation Site</a>;	<b>AutoIT es un sistema de programación tipo basic, con una curva de aprendizaje mínima.<br><br> Es multi uso, muy potente y adaptable, falsamente se piensa que su único uso es para automatizar tareas usando combinaciones de teclas simuladas, clic de ratón, comandos de Windows y ficheros Script, en cambio cuenta con Activex,Dlls,Plugins.<b>Por ejemplo aqui lo tenemos como lenguaje dinámico estilo PHP <br><br><a href="http://www.emesn.com/autoitforum/viewtopic.php?t=6"> <font size=+2>Enlace para instalar Autoit en 15 minutos</font></a><br><br>
defineauto;Sintax ist viel einfacher al Visual Basic und andere, die Exe Datei rund 500kb mit allen, Support ist maenschlich und einfach Existiert(Eine Freundliche Community www.autoit.de). Brauch keine extra Dll, Ocxs, usw zu laufen, und noch kann man die Skripts wie Exe Kompilieren, damit sie auf jede Windows Maschine laufen ohne Autoit zu instalieren.Zaehlt auch mit Database Handlung wie Mysql/Sqlite/Dbase/ODBC und andere.<br>Das ist ein Beispiel vom Hallo World:<br><pre> msgbox(0,"Meine Title","Hallo World")</pre>;La síntaxis es mucho más sencilla a la de Visual Basic u otros, y los ejecutables sobre 500Kb con todo, el soporte es Humano y simplemente Existe(Comunidad en Español).<br> No necesita archivos adicionales como  dlls, ocxs, etc.., además se pueden convertir(compilar) los scripts en archivos ejecutables EXE para que puedan funcionar en cualquier ordenador sin AutoIT instalado. Por otro lado cuenta con gestión de Bases de datos Mysql/Sqlite/Dbase/Sql/ODBC y otras. <br><br>Este es un Ejemplo de Hello World para este lenguage:<br><pre>MsgBox(0,'Mi titulo','Hola Mundo')</pre>
Buenos Dias;Gute Tag;Buenos Dias
Buenas Tardes;Guten Abend;Buenas Tardes
Buenas Noches;Guten Nacht;Buenas Noches
Guten Tag;Guten Tag;Buenos Dias
Guten Abend;Guten Abend;Buenas Tardes
Guten Nacht;Guten Nacht;Buenas Noches
Feliz Cumpleaños;Schoene Geburstag;Feliz Cumpleaños
Schoene Geburstag;Schoene Geburstag;Feliz Cumpleaños
k tal;¿Que tal?;Wie geht es?
Bienvenidos al foro en español - Autoit;Willkommen zum Spanischen Forum - www.autoit.es;Bienvenidos al foro y soporte en español de Autoit - www.autoit.es
Ayuda;Hilfe;Ayuda
Hilfe;Hilfe;Ayuda
Español;Spanisch;Español
Aprende Autoit;Klein Kurs;Tutorial
Chateo;Shoutbox;Chateo
Chatea;Shouten;Chatea
Logged on;Verbindung;Conectado
Logged  on;Verbindung;Conectado
Log off;Abmelden;Desconectar
Español;Spanisch;Español
Envia;Senden;Envia
*User;Benutzer;Usuario
Opcion en preparacion;Option im Betrieb;Opcion en preparacion
Este Foro está hecho 100% de </font><b><font size="2" color="red">HTML+JavaScript+Autoit </font></b><font size="2" color="blue">3.2;Diese Shoutbox und WebSeiten sind aus </font><b><font size="2" color="red">HTML+JavaScript+Autoit</font></b><font size="2" color="blue"> 3.2 100% gemacht;Este Chat y las Páginas están hechas 100% de </font><b><font size="2" color="red">HTML+JavaScript+Autoit </font></b><font size="2" color="blue">3.2
La estructura y funciones con </font><b><font size="2" color="red">Scite+tidy+ libreria aha3.au3</font></b><font size="2" color="blue"> , los Graficos con el Editor web Namo</font></p>;Das strukture und Funktionen mit</font><font size="2" color="red"><b> Autoit.Net Aha3.au3 library</b></font><font size="2" color="blue"> ,Die Graphics Mit dein WebEditor</font></p>;La estructura y funciones con </font><b><font size="2" color="red">Autoit.Net ver aha3.au3</font></b><font size="2" color="blue"> , los Graficos con tu editor Web</font></p>
Repositorio on-line para Scripts;Funktionen Sammlung;Funciones Útiles
Carpeta de Scripts;Downloads;Carpetas de Scripts
Tu IP es;Kostenlose Service<br> Ihre Ip ist;Servicio Grátis <br>Tu Ip es
*Descargas;Downloads (nur Englisch);Descargas (solo Inglés)
Webs de Descargas;Downloads;Descargas
*¿Que es Autoit?;Was ist denn Autoit?;¿Que es Autoit?
Trucos y Como Empezar;Tricks und Wie zu Beginnen;Trucos y Como Empezar
Contribución a la Discapacidad;Unsere Hilfe zum Behinderte;Nuestra contribución a la Discapacidad
*Licencia;Licenz;Licencia
Mi Panel;Meine Controle;Mi Panel
*Projectos;Projekte;Projectos
Ejemplos eScripts;Beispile Skripte;Ejemplos eScripts
Hola Mundo;Hallo Welt;Hola Mundo
La licencia es Código Abierto, en OpenGl;Oeffen Kode Gpl.....;La licencia es Código Abierto, en OpenGl
Spanisch Schnell Kurs;Spanisch Schnell Kurs;Cursito de Alemán
Bienvenidos a;Willkommen zu;Bienvenidos a
La Web de Autoit en EspaÃ±ol; Das Spanisch Autoit Web, Bitte, guck mal das Spanische Kurs;La Web de Autoit en EspaÃ±ol
peethebee;peethebee rulez hier;peethebee rulez hier
jon;Jon is off Today;Jon is off Today
Welcome back;Welcome Guest;Welcome Guest
Welcome Guest;Wellcome Guest <font size=+4><b>Happy birthday Jon </b> </font><img src='http://autoit.aufwaerts.de/images/smilies/party_15.gif'>  <img src='http://www.hotel-in-uk.net/images/UK-FLAG.gif'>;Wellcome Friend  <b>Jon´s Party----><font size=+3>HAPPY BIRTHDAY Jon</font></b> <img src='http://autoit.aufwaerts.de/images/smilies/party_15.gif'> <img src='http://www.hotel-in-uk.net/images/UK-FLAG.gif'>
General Help and Support; Today no help, join Jon Birthday beach Party;Today no help, join Jon Birthday beach Party
Graphical User Interface;Play Boy girls contest;Play Boy girls contest
AutoItX Help and Support;Today Here is the photo gallery of the happy girls;Today Here is the photo gallery of the happy girls
Server memory upgrade; Well no more Server headache, IPS making making the Job :);Well no more Server headache, IPS making the Job :)
Announcements and Site;Entrance card today 1$ per person, children under 16 0.5$;Entrance card today 1$ per person, children under 16 0.5$
Last Post;Last spammer;Last spammer
Donate towards my ;Today we close the web, so we go instead to the bar for a scottish wisky;;Today we close the web, so we go instead to the bar for a scottish wisky
Defined Functions;<img src='http://www.daii.org/assets/images/emot_happy.gif'><b>Heute Autoit Party </b><img src='http://www.baerental-party.at/bilder/party/mini_par_513_b.jpg'> Superb <img src='http://mitglied.lycos.de/mankanazero/Dia2/smilys/keks.gif'>;<img src='http://www.daii.org/assets/images/emot_happy.gif'><b>Heute Autoit Party </b><img src='http://www.baerental-party.at/bilder/party/mini_par_513_b.jpg'> Superb <img src='http://mitglied.lycos.de/mankanazero/Dia2/smilys/keks.gif'>
forum to share;<img src='http://mitglied.lycos.de/mankanazero/Dia2/smilys/stolz.gif'>;<img src='http://mitglied.lycos.de/mankanazero/Dia2/smilys/stolz.gif'>
Our members have;<img src='http://www.sawdoctors.com/images/photos/2001/Copy_of_Birmingham_crowd.jpg'><img src='http://img.photobucket.com/albums/v690/thestefoftruth/PUSA%20Europe/Birmingham/crowd_birm02.jpg'>;<img src='http://www.sawdoctors.com/images/photos/2001/Copy_of_Birmingham_crowd.jpg'><img src='http://img.photobucket.com/albums/v690/thestefoftruth/PUSA%20Europe/Birmingham/crowd_birm02.jpg'>
Developer Chat;<img src='http://sammysonline.com/images/photo.jpg'>;<img src='http://sammysonline.com/images/photo.jpg'>
Help and scripting advice for Autoit V2;<img src='http://www.thomashoelscher.de/Gran_Canaria/Strand_von_Maspalomas/gc0284a.jpg'><img src='http://images.google.es/images?q=tbn:payAW-AMvhZ47M:http://www.kanaren-traeume.de/Objekte%2520Gran%2520Canaria/App.Costa%2520Rica/costa_rica_strand.jpg'>  <img src='http://images.google.es/images?q=tbn:_k_6FXFXmKPurM:http://www.landenweb.net/images%255Cimggrancanaria%255CStrand.jpg'>;<img src='http://images.google.es/images?q=tbn:payAW-AMvhZ47M:http://www.kanaren-traeume.de/Objekte%2520Gran%2520Canaria/App.Costa%2520Rica/costa_rica_strand.jpg'>  <img src='http://images.google.es/images?q=tbn:_k_6FXFXmKPurM:http://www.landenweb.net/images%255Cimggrancanaria%255CStrand.jpg'><img src='http://www.thomashoelscher.de/Gran_Canaria/Strand_von_Maspalomas/gc0284a.jpg'>
birthday today;<b>Happy birthday Jon</b> <img src='http://autoit.aufwaerts.de/images/smilies/party_15.gif'>;<b>Happy birthday Jon</b> <img src='http://autoit.aufwaerts.de/images/smilies/party_15.gif'>
A place for the v3 developers and C++ geeks to talk;<b>A place for the v3 developers and C++ geeks to talk</b>;<b>A place for the v3 developers and C++ geeks to talk
</body>;<script type="text/javascript" language="javascript">var sc_project=2083080\puntoycoma var sc_invisible=1\puntoycoma var sc_partition=19\puntoycoma var sc_security="79a95d5d"\puntoycoma </script><script type="text/javascript" language="javascript" src="http://www.statcounter.com/counter/frames.js"></script><noscript><a href=" http://www.statcounter.com/" target="_blank"><img  src=" http://c20.statcounter.com/counter.php?sc_project=2083080&java=0&security=79a95d5d&invisible=1" alt="hit counter html code" border="0"></a> </noscript></body>;<script type="text/javascript" language="javascript">var sc_project=2083080\puntoycoma var sc_invisible=1\puntoycoma var sc_partition=19\puntoycoma var sc_security="79a95d5d"\puntoycoma </script><script type="text/javascript" language="javascript" src="http://www.statcounter.com/counter/frames.js"></script><noscript><a href=" http://www.statcounter.com/" target="_blank"><img  src=" http://c20.statcounter.com/counter.php?sc_project=2083080&java=0&security=79a95d5d&invisible=1" alt="hit counter html code" border="0"></a> </noscript></body>
en EspaÃ±ol;Hispano <img src='http://www.emesn.com:8000/ciber/images/flags_of_Spains.gif'>;Hispano <img src='http://www.emesn.com:8000/ciber/images/flags_of_Spains.gif'>
AutoIt Forum - Deutsch <index.php;Foro de Autoit - Español <index.php;Foro de Autoit - Español <index.php
"Registrierung";"Registrierung";"Registrarse"
"Ihr Profil";"Ihr Profil";"Su Perfil"
"Private Nachrichten";"Private Nachrichten";"Mensajes Privados"
"Kalender";"Kalender";"Agenda" 
"Mitgliederliste";"Mitgliederliste";"Lista de Miembros"
"Teammitglieder";"Teammitglieder";"El Equipo de Mods" 
"Suche";"Suche";"Buscar"
"Zur Startseite";"Zur Startseite";"A Página Principal"
" Deutsch; Deutsch; Español
Guckloch;Guckloch;Mirador
Wir gratulieren zum Geburtstag:;Wir gratulieren zum Geburtstag:;Felicitamos el Cumpleaños<img src='http://autoit.aufwaerts.de/images/smilies/party_15.gif'>:
>Boardmen;>Boardmen;>Menu del Panel
>Private Nachrichten;>Private Nachrichten;>Noticias Privadas
>Profil;>Perfil;>Perfil
>Suche;>Suche;>Buscar
>Statistik;>Statistik;>Estadísticas
>AutoIt Doku;>AutoIt Doku;>Documentos
>Mitglieder;>Mietglieder;>Miembros
>Team;>Team;>Equipo
>Kalender;>Kalender;>Calendario
>Datenbank;>Datenbank;>Base de Datos
>Link Us;>Link Us ;>Incluye nuestro enlace
>Benutzerkarte2;>Benutzerkarte2;>Tarjeta Usuario
>Benutzerkarte;>Benutzerkarte;>Tarjeta Usuario
*Kalender*;*Kalender*;*Calendario*
<b>Mo</b>;<b>Mo</b>;<b>Lu</b>
<b>Di</b>;<b>Di</b>;<b>Ma</b>
<b>Do</b>;<b>Do</b>;<b>Ju</b>
<b>Fr</b>;<b>Fr</b>;<b>Vi</b>
<b>So</b>;<b>So</b>;<b>Do</b>
ufig gestellte Fragen;ufig gestellte Fragen;Preguntas Frecuentes
letzte Beitr;letzte Beitr;Últimas Entradas
Aktualisieren;Aktualisieren;Actualizar
Dezember;Dezember;Diciembre
Heutige Termine;Heutige Termine;Citas de Hoy
Für Heute wurden keine Termine eingetragen.;Für Heute wurden keine Termine eingetragen.;Para hoy no hay citas concertadas.
Wer ist Online ?;Wer ist Online ?;¿Quien está Conectado?
Zur Zeit im Forum unterwegs:;Zur Zeit im Forum unterwegs:;Ahora conectados al foro:
Mitglieder;Mitglieder;Miembros
davon;davon;De ellos hay
unsichtbar;unsichtbar;invisibles
Besucher;Besucher;visitantes
Benutzer;Benutzer;Usuarios
#ce <UBERSETZEN
;http://www.autoit.de/forum/index.php?;?Gmiurl=http://www.autoit.de/forum/index.php\interrogacion;?Gmiurl=http://www.autoit.de/forum/index.php\interrogacion

;<h2>Presentac\SoyAlgunTextoDentrool</h2>;<h2>Das ist Unseres <b>Autoit Spanisch Site</b>,<br>Willkommen zu einem Spanisch Kurs bei Basicos</h2>;<h2>Presentación Sitio Autoit en Español</h2>