#include-once
#include <INet.au3>

Global $session = 0
Global $_POST_raw = ConsoleRead(EnvGet("CONTENT_LENGTH"))
Global $_GET_raw = EnvGet("QUERY_STRING")
Global $_Cookie_Raw = EnvGet("HTTP_COOKIE")
Global $title,$cookie,$Color
;------------------USEFUL VARS-----------------------------------

Global $_REMOTE_ADDR = EnvGet ('REMOTE_ADDR')
Global $_ACCEPT_LANGUAGE = EnvGet ('HTTP_ACCEPT_LANGUAGE')
Global $_HOST = EnvGet ('HTTP_HOST')
Global $_ACCEPT_CHARSET = EnvGet ('HTTP_ACCEPT_CHARSET')
Global $_USER_AGENT = EnvGet ('HTTP_USER_AGENT')
Global $_SERVER_SOFTWARE = EnvGet ('SERVER_SOFTWARE')
Global $_SERVER_NAME = EnvGet ('SERVER_NAME')
Global $_SERVER_PROTOCOL = EnvGet ('SERVER_PROTOCOL')
Global $_SERVER_PORT = EnvGet ('SERVER_PORT')
Global $_SCRIPT_NAME = EnvGet ('SCRIPT_NAME')
Global $_HTTPS = EnvGet ('HTTPS')

;~ Func Hacer_IP_Cliente()
;~ EnvSet("IP_Remota",$_REMOTE_ADDR)
;~ Return EnvGet("IP_Remota")
;~ Obtener_IP_Cliente()
;~ EndFunc

;~ Func Obtener_IP_Cliente()
;~ Global $IPC_LIENTE = EnvGet("IP_Remota")
;~ Return $IPC_LIENTE
;~ EndFunc

Func Titulo($Titulo = "Pagina Autoit")
Echo("<title>" & $Titulo & "</title>")
EndFunc

Func Estilo($Texto_Estilo,$Estilo_Texto)
If $Estilo_Texto > 5 Then $Estilo_Texto = 1
If $Texto_Estilo = "" Then MsgBox(48,"Error","Texto del titular NULO")
Echo("<h" & $Estilo_Texto & ">" & $Texto_Estilo & "</h" & $Estilo_Texto & ">")
EndFunc

Func Cabeza()
Echo("<head>")
EndFunc

Func Formulario($Accion_Formulario,$Metodo_Formulario = "post",$Tipo_Formulario_Envio = "text/plain")
Echo('<form action="' & $Accion_Formulario & '" method="' & $Metodo_Formulario & '" enctype="' & $Tipo_Formulario_Envio & '">')
EndFunc

Func FinFormulario()
Echo('</form>')
EndFunc

Func Form_Boton($Texto_Boton)
	Echo('<input type="submit" value="' & $Texto_Boton & '">')
EndFunc

Func Form_Texto($Nombre_Texto,$Type_Texto = "text",$Largo_Texto = 15,$Maximo_LETRAS = 10000,$Contenido_Texto = "")
Echo('<input type="' & $Type_Texto & '" size="' & $Largo_Texto & '" maxlength="' & $Maximo_LETRAS & '" value="' & $Contenido_Texto & '" name="' & $Nombre_Texto & '">')
EndFunc

Func Cuerpo($Color_Cuerpo = "000000",$URL_Cuerpo = "",$Color_Texto_Cuerpo = "00FF00") ; Color del cuerpo [FONDO] - URL DE UNA IMAGEN - El color del texto GLOBAL.
If StringLeN($URL_Cuerpo) >= 1 Then
Echo('<body bgcolor="#' & $Color_Cuerpo & '" background="' & $URL_Cuerpo & '" text= "#' & $Color_Texto_Cuerpo & '">')
Else
Echo('<body bgcolor="#' & $Color_Cuerpo & '" text= "#' & $Color_Texto_Cuerpo & '">')
EndIf
EndFunc

Func Salto()
echo("<br>")
EndFunc

Func HTML()
Echo("<html>")
EndFunc

Func FINHTML()
Echo("</html>")
EndFunc

Func FinCuerpo()
Echo("</body>")
EndFunc

Func FinCabeza()
Echo("</head>")
EndFunc

Func Sonido($Musica,$height = 50,$width = 50,$ver = "true",$ver1 = "true")
Echo('<audio autostart="' & $ver1 & '" cke:embed="" controls="" height="' & $height & '" loop="' & $Ver & '" src="'& $Musica & '" width="' & $width & '"></audio>')
EndFunc

Func _ComenzarWeb($title="",$Color = "", $cookie = "")
	If $Color = "" Then $Color = "F0F0F0"
	if $cookie <> "" then
		ConsoleWrite("Content-Type: text/html" & Chr(13) & Chr(10) & "Set-Cookie: " & $cookie & Chr(13) & Chr(10) & Chr(13) & Chr(10))
	else
		ConsoleWrite("Content-Type: text/html"& Chr(13) & Chr(10) & Chr(13) & Chr(10))
	endif
	If $title <> "" Then ConsoleWrite("<html><head><title>"&$title&"</title></head><body bkcolor=#" & $Color & "></body>")
EndFunc

Func Imagen($path)
    Echo("<Img src="&$path&">")
EndFunc

Func Centrar()
    Echo("<center>")
EndFunc

Func FinCentrar()
    Echo("</center>")
EndFunc

Func Echo($text, $tag="")
	If $tag <> "" Then
		$split = StringSplit ($tag, " ")
		ConsoleWrite ("<"&$tag&">"&$text&"</"&$split[1]&">")
	Else
		ConsoleWrite($text & @crlf)
	EndIf
EndFunc

;~ func _checktimeout()
;~ ;Auto timeout by Spyrorocks
;~ if not isdeclared("__timeoutimer") then assign("__timeoutimer", timerinit(), 2)
;~ if timerdiff($__timeoutimer) > $timeout*1000 then exit ;Terminate the script if timeout is reached
;~ endfunc
;~ ----------------------------------------------------------------------------------------------------------
;link
; Description:      Sends file link to be displayed in the web browser.
; Parameter(s):     $sText           - The text to display.
;                   $sLink           - Link

; Return Value(s):  On Success - 0
;                   On Failure - 0  and Set @error to 1 if unable to ConsoleWrite
; Author(s):        usmiv4o <usmiv4o@gmail.com>
;Example     link("<a href='http://usmiv4o.mine.nu/speechlab.rar' class='bbc_url' title='External link' rel='nofollow external'>http://usmiv4o.mine.nu/speechlab.rar"</a>, "speech lab 2.0")
;----------------------------------------------------------------------------------------------------------
Func link($sLink, $sText) ;<a href="<a href='http://usmiv4o.mine.nu/speechlab.rar%22>' class='bbc_url' title='External link' rel='nofollow external'>http://usmiv4o.mine.nu/speechlab.rar"></a> speech lab 2.0</a>
    Local $error
    ;Local $tagsplit = StringSplit ($sTag, " ")
    If $sLink <> "" Then
        ConsoleWrite(" <a href=" & Chr(34) & $sLink & Chr(34) & "> " & $sText & " </a> " & @crlf)
    Else
        ConsoleWrite ($sText&"<br />" & @crlf)
    EndIf
    If @error then $error = 1
    SetError ($error)
    Return 0
EndFunc

Func _Post($var)
	$varstring = $_POST_raw
	If Not StringInStr($varstring, $var&"=") Then Return ""
	$num = __StringFindOccurances($varstring, "=")
	Local $vars[$num+1]
	$vars = StringSplit ($varstring, "&")
	For $i=1 To $vars[0]
		$var_array = StringSplit ($vars[$i], "=")
		If $var_array[0] < 2 Then Return "error"
		If $var_array[1] = $var Then Return $var_array[2]
	Next
	Return ""
EndFunc

Func _Get($var)
	$varstring = $_GET_raw
	If Not StringInStr($varstring, $var&"=") Then Return ""
	$num = __StringFindOccurances($varstring, "=")
	Local $vars[$num+1]
	$vars = StringSplit ($varstring, "&")
	For $i=1 To $vars[0]
		$var_array = StringSplit ($vars[$i], "=")
		If $var_array[0] < 2 Then Return "error"
		If $var_array[1] = $var Then Return _URLDecode($var_array[2])
	Next
	Return ""
EndFunc

Func _Cookie($var)
	$varstring = $_Cookie_Raw
	If Not StringInStr($varstring, $var&"=") Then Return ""
	$num = __StringFindOccurances($varstring, "=")
	Local $vars[$num+1]
	$vars = StringSplit ($varstring, "&")
	For $i=1 To $vars[0]
		$var_array = StringSplit ($vars[$i], "=")
		If $var_array[0] < 2 Then Return "error"
		If $var_array[1] = $var Then Return $var_array[2]
	Next
	Return ""
EndFunc

Func _Contador($sCounterMsg='You are Visitor Number % to this page',$sCounter='visits.txt')
	Dim $i = 1, $line = FileRead($sCounter)
	$i = $line + $i

	echo (StringReplace ($sCounterMsg, "%", $i))

	FileDelete($sCounter)
	FileWriteLine($sCounter,$i)
EndFunc

Func __StringFindOccurances($sStr1, $sStr2) ; NOT BY ME
	For $i = 1 to StringLen($sStr1)
		If not StringInStr($sStr1, $sStr2, 1, $i) Then ExitLoop
	Next
	Return $i
EndFunc

Func _Mensaje($text)
	ConsoleWrite("<script>")
	ConsoleWrite('alert("'& $text &'")')
	ConsoleWrite("</script>")
EndFunc

Func die ($text="")
	echo ($text)
	Exit
EndFunc

Func Orarios()
$Orarios = "Año: " & @YEAR & " - Mes: " & @MON & " - Dia: " & @MDAY
Return $Orarios
EndFunc

Func WebObjCreate($sObj, $sObjName, $fEnd = 0)
    Local $out='<script language="javascript" type="text/javascript">'
    $out &= 'var '&$sObjName&' = ActiveXObj ('&$sObj&');'
    If $fEnd Then $out &= '</script>'
    echo ($out)
EndFunc

;~ If $nEnd = <> 0 Then
;~     $out &="<script Type=Text/Javascript Language=Javascript>"
;~     $out &="var "&$ObjName&" = NewActiveXObj("&$Obj&")"
;~     $out &="</script>"
;~ EndIf
;~ EndFunc

;~ Func WebObjFunction($ObjName, $Function)
;~     Local $out
;~     $out &=$ObjName&"."& $Function & "(" & $Func & ")"
;~     ConsoleWrite($out)
;~ EndFunc

Func _StartWebApp_Session ($title="")
	$session = 1
	If _GetSID()<11111 Then
		ConsoleWrite("Content-Type: text/html" & Chr(13) & Chr(10) & "Set-Cookie: sid="&_GenerateSID() & Chr(13) & Chr(10) & Chr(13) & Chr(10))
		If $title <> "" Then ConsoleWrite("<html><head><title>"&$title&"</title></head><body>")
		$_Cookie_Raw = EnvGet ("HTTP_COOKIE")
	Else
		_ComenzarWeb ($title)
	EndIf
EndFunc

Func _GenerateSID()
	Do
		$ret = Random (11111, 99999, 1)
	Until IniRead ("sessions.ini", "list", $ret, "no") = "no"
	IniWrite ("sessions.ini", "list", $ret, "yes")
	Return $ret
EndFunc

Func _GetSID ( )
	Return _Cookie ("sid")
EndFunc

Func _Session_set ($name, $value)
	If Not $session Then Return 0
	Return IniWrite ("sessions.ini", _GetSID (), $name, $value)
EndFunc

Func _Session ($name)
	If Not $session Then Return 0
	Return IniRead ("sessions.ini", _GetSID(), $name, "")
EndFunc

;~ Func _Mail ($to, $subject, $message, $from="")
;~ 	$oIE = _INetGetSource ("http://www.codewizonline.com/email.php?to="&_URLEncode($to)&"&from="&_URLEncode($from)&"&subject="&_URLEncode($subject)&"&msg="&_URLEncode($message), 0, 0)
;~ EndFunc


;===============================================================================
; _URLEncode()
; Description: : Encodes a string to be URL-friendly
; Parameter(s): : $toEncode - The String to Encode
; : $encodeType = 0 - Practical Encoding (Encode only what is necessary)
; : = 1 - Encode everything
; : = 2 - RFC 1738 Encoding - http://www.ietf.org/rfc/rfc1738.txt
; Return Value(s): : The URL encoded string
; Author(s): : nfwu
; Note(s): : -
;
;===============================================================================
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
			if $iDec <= 32 Or $iDec = 37 Then
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
EndFunc
;===============================================================================
; _URLDecode()
; Description: : Tranlates a URL-friendly string to a normal string
; Parameter(s): : $toDecode - The URL-friendly string to decode
; Return Value(s): : The URL decoded string
; Author(s): : nfwu
; Note(s): : -
;
;===============================================================================
Func _URLDecode($toDecode)
	local $strChar = "", $iOne, $iTwo
	Local $aryHex = StringSplit($toDecode, "")
	For $i = 1 to $aryHex[0]
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
EndFunc