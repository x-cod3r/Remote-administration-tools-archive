#include-once
#Include <Array.au3>
#Region Header
#cs
	Title:   		Chrome Automation UDF Library for AutoIt3
	Filename:  		Chrome.au3
	Description: 	A collection of functions for automating Chrome
	Author:   		seangriffin
	Version:  		V0.5
	Last Update: 	29/09/13
	Requirements: 	AutoIt3 3.2 or higher,
					Chrome v29 (earlier versions untested)
					AutoIT for Google Chrome (Chrome extension)
	Changelog:		---------29/09/13---------- v0.5
					Changed _ChromeStartup() to exit search if chrome.exe is found.

					---------12/09/13---------- v0.4
					Changed _ChromeStartup() to search various folders for chrome.exe.

					---------11/09/13---------- v0.3
					Changed $chrome_native_messaging_host_dir to %APPDATA%.
					Changed _ChromeShutdown() to kill all process instances.

					---------10/09/13---------- v0.2
					Added _ChromeInputClickByName().
					Added _ChromeObjGetHTMLById().
					Added _ChromeObjGetHTMLByName().
					Added _ChromeObjGetValueByName().
					Added _ChromeObjGetPropertyByName().

					---------09/09/13---------- v0.1
					Initial release.

#ce
#EndRegion Header
#Region Global Variables and Constants
Const $chrome_native_messaging_host_dir = @AppDataDir & "\AutoIt3\Chrome Native Messaging Host"
Const $CSIDL_LOCAL_APPDATA = 28
#EndRegion Global Variables and Constants
#Region Core functions
; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeStartup()
; Description ...:	Starts the Chrome browser, with optional URL.
; Syntax.........:	_ChromeStartup($chrome_path = "C:\Program Files\Google\Chrome\Application\chrome.exe", $url = "about:blank")
; Parameters ....:	$url						- Optional: a URL to visit on startup.
;					$chrome_path				- The path to "chrome.exe".
; Return values .: 	On Success					- Returns nothing.
;                 	On Failure					- Returns @ERROR = 1.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeStartup($url = "about:blank", $chrome_path = "")

	if StringLen($chrome_path) = 0 Then

		; program files check

		if FileExists(@ProgramFilesDir & "\Google\Chrome\Application\chrome.exe") Then

			$chrome_path = @ProgramFilesDir & "\Google\Chrome\Application\chrome.exe"
		Else

			if FileExists(@ProgramFilesDir & "\Google\Chrome\chrome.exe") Then

				$chrome_path = @ProgramFilesDir & "\Google\Chrome\chrome.exe"
			Else

				; roaming application data check

				if FileExists(@AppDataDir & "\Google\Chrome\Application\chrome.exe") Then

					$chrome_path = @AppDataDir & "\Google\Chrome\Application\chrome.exe"
				Else

					if FileExists(@AppDataDir & "\Google\Chrome\chrome.exe") Then

						$chrome_path = @AppDataDir & "\Google\Chrome\chrome.exe"
					Else

						; local application data check

						$localappdata = LOCAL_APPDATA()

						if FileExists($localappdata & "\Google\Chrome\Application\chrome.exe") Then

							$chrome_path = $localappdata & "\Google\Chrome\Application\chrome.exe"
						Else

							if FileExists($localappdata & "\Google\Chrome\chrome.exe") Then

								$chrome_path = $localappdata & "\Google\Chrome\Application\chrome.exe"
							EndIf
						EndIf
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf

	if StringLen($chrome_path) > 0 Then

		ShellExecute($chrome_path, $url)
	Else

		SetError(1)
	EndIf
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeShutdown()
; Description ...:	Closes the Chrome browser, and the native messaging host.
; Syntax.........:	_ChromeShutdown()
; Parameters ....:	$url						- Optional: a URL to visit on startup.
;					$chrome_path				- The path to "chrome.exe".
; Return values .: 	On Success					- Returns nothing.
;                 	On Failure					- Returns nothing.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeShutdown()

	; Close Chrome if it is currently open
	WinClose("[REGEXPTITLE:.*- Google Chrome]")

	; Close the native messaging host (it consumes CPU if left running)
	while ProcessExists("autoit-chrome-native-messaging-host.exe")

		ProcessClose("autoit-chrome-native-messaging-host.exe")
	WEnd
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeEval()
; Description ...:	Executes a JavaScript "eval" function against the document loaded in Chrome.
; Syntax.........:	_ChromeEval($javascript_expression, $timeout = 5)
; Parameters ....:	$javascript_expression		- A JavaScript expression to execute.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns the result of the "eval" function as a String.
;                 	On Failure					- Returns "", and:
;													sets @ERROR = 2 if there was no response from Chrome.
;													sets @ERROR = 1 if Chrome was unavailable.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeEval($javascript_expression, $timeout = 5)

	Dim $response = ""

	if WinExists("[REGEXPTITLE:.*- Google Chrome]") Then

		FileDelete($chrome_native_messaging_host_dir & "\input.txt")
		FileWrite($chrome_native_messaging_host_dir & "\input.txt", $javascript_expression)

		$begin = TimerInit()

		While TimerDiff($begin) < ($timeout * 1000)

			 If FileExists($chrome_native_messaging_host_dir & "\output.txt") then ExitLoop
			 sleep(100)
		WEnd

		If FileExists($chrome_native_messaging_host_dir & "\output.txt") then

			$response = FileRead($chrome_native_messaging_host_dir & "\output.txt")
			FileDelete($chrome_native_messaging_host_dir & "\output.txt")
		Else

			SetError(2)
		EndIf
	Else

		SetError(1)
	EndIf

	Return $response

EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeDocWaitForReadyStateCompleted()
; Description ...:	Waits for the "readyState" of the document loaded in Chrome to be "complete".
; Syntax.........:	_ChromeDocWaitForReadyStateCompleted($timeout = 5)
; Parameters ....:	$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns True.
;                 	On Failure					- Returns False, and sets @ERROR = 1.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeDocWaitForReadyStateCompleted($timeout = 5)

	Dim $result = True

	Do

		$response = _ChromeEval("document.readyState;", $timeout)
	Until @error > 0 Or StringLen($response) = 0 or StringCompare($response, "complete") = 0

	if @error > 0 Or StringLen($response) = 0 Then

		$result = False
		SetError(1)
	EndIf

	Return $result

EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeInputClickByName()
; Description ...:	Clicks an <input> element based on it's "name" attribute.
; Syntax.........:	_ChromeInputClickByType($type, $timeout = 5)
; Parameters ....:	$objname					- the value of the "name" attribute
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns "".
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeInputClickByName($objname, $index = 0, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[" & $index & "].click();", $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeInputClickByType()
; Description ...:	Clicks an <input> element based on it's "type" attribute.
; Syntax.........:	_ChromeInputClickByType($type, $timeout = 5)
; Parameters ....:	$type						- the value of the "type" attribute
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns "".
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeInputClickByType($type, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("_ChromeInputClickByType=" & $type, $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeDocGetTitle()
; Description ...:	Gets the <title> element of the document loaded in Chrome.
; Syntax.........:	_ChromeDocGetTitle($timeout = 5)
; Parameters ....:	$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns the value of the <title> element.
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeDocGetTitle($timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.title;", $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeDocWaitForExistenceByTitle()
; Description ...:	Waits until the <title> element is a specific value.
; Syntax.........:	_ChromeDocWaitForExistenceByTitle($type, $timeout = 5)
; Parameters ....:	$title						- the value of the <title> element
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns "".
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeDocWaitForExistenceByTitle($title, $timeout = 5)

	dim $error = 2, $response = "", $begin, $title_from_chrome

	$begin = TimerInit()

	While TimerDiff($begin) < ($timeout * 1000)

		$title_from_chrome = _ChromeDocGetTitle()

		if StringCompare($title_from_chrome, $title) = 0 Then

			$error = 0
			ExitLoop
		EndIf

		sleep(100)
	WEnd

	SetError($error)

	Return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeObjGetHTMLById()
; Description ...:	Get the "innerHTML" attribute value of a element based on it's "name" property.
; Syntax.........:	_ChromeObjGetHTMLById($objid, $index = 0, $timeout = 5)
; Parameters ....:	$objid						- the value of the "id" property
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns the "innerHTML" attribute value.
;                 	On Failure					- Returns "".
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeObjGetHTMLById($objid, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementById('" & $objid & "').innerHTML;", $timeout)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeObjGetHTMLByName()
; Description ...:	Get the "innerHTML" attribute value of a element based on it's "name" property.
; Syntax.........:	_ChromeObjGetHTMLByName($objname, $index = 0, $timeout = 5)
; Parameters ....:	$objname					- the value of the "name" property
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns the "innerHTML" attribute value.
;                 	On Failure					- Returns "".
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeObjGetHTMLByName($objname, $index = 0, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[" & $index & "].innerHTML;", $timeout)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeObjGetHTMLByTagName()
; Description ...:	Get the "innerHTML" attribute value of a element based on it's "tagName" property.
; Syntax.........:	_ChromeObjGetHTMLByTagName($tagname, $index = 0, $timeout = 5)
; Parameters ....:	$tagname					- the value of the "tagName" property (i.e. "h1", "p")
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns the "innerHTML" attribute value.
;                 	On Failure					- Returns "".
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeObjGetHTMLByTagName($tagname, $index = 0, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByTagName('" & $tagname & "')[" & $index & "].innerHTML;", $timeout)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeObjGetValueByName()
; Description ...:	Gets the value of an element based on it's "name" attribute.
; Syntax.........:	_ChromeObjGetValueByName($objname, $index = 0, $timeout = 5)
; Parameters ....:	$objname					- the value of the "name" attribute
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns $value.
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeObjGetValueByName($objname, $index = 0, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[" & $index & "].value;", $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeObjSetValueByName()
; Description ...:	Sets the "value" attribute of a element based on it's "name" attribute.
; Syntax.........:	_ChromeObjSetValueByName($objname, $value, $index = 0, $timeout = 5)
; Parameters ....:	$objname					- the value of the "name" attribute
;					$value						- The text to set the "value" attribute to
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns $value.
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeObjSetValueByName($objname, $value, $index = 0, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[" & $index & "].value = '" & $value & "';", $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeInputSetCheckedByName()
; Description ...:	Sets the "checked" attribute of an <input> element based on it's "name" attribute.
; Syntax.........:	_ChromeInputSetCheckedByName($objname, $value, $index = 0, $timeout = 5)
; Parameters ....:	$objname					- the value of the "name" attribute
;					$value						- The boolean to set the "checked" attribute to
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns $value.
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeInputSetCheckedByName($objname, $value, $index = 0, $timeout = 5)

	dim $response = ""

	if $value = true Then

		$value = "true";
	EndIf

	if $value = false Then

		$value = "false";
	EndIf

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[" & $index & "].checked = " & $value & ";", $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeOptionSelectWithTextByObjName()
; Description ...:	Selects an <option> element with a specific "text" based on it's <select> element "name" attribute.
; Syntax.........:	_ChromeOptionSelectWithTextByObjName($option_text, $objname, $timeout = 5)
; Parameters ....:	$option_text				- the text of the <option> element
;					$objname					- the value of the <select> element's "name" attribute
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns "".
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeOptionSelectWithTextByObjName($option_text, $objname, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("_ChromeOptionSelectWithTextByObjName=" & $option_text & "|" & $objname, $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeOptionSelectWithValueByObjName()
; Description ...:	Selects an <option> element with a specific "value" based on it's <select> element "name" attribute.
; Syntax.........:	_ChromeOptionSelectWithValueByObjName($option_value, $objname, $timeout = 5)
; Parameters ....:	$option_value				- the value of the <option> element
;					$objname					- the value of the <select> element's "name" attribute
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns $option_value.
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeOptionSelectWithValueByObjName($option_value, $objname, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[0].value = '" & $option_value & "';", $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeInputSetCheckedWithValueByName()
; Description ...:	Sets the "checked" attribute of an element with a specific "value" based on it's "name" attribute.
; Syntax.........:	_ChromeInputSetCheckedWithValueByName($input_value, $objname, $checked, $timeout = 5)
; Parameters ....:	$input_value				- the value of the element
;					$objname					- the value of the element's "name" attribute
;					$checked					- the boolean value of the "checked" attribute
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns "".
;                 	On Failure					- Returns "", and sets @ERROR = 2.
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
func _ChromeInputSetCheckedWithValueByName($input_value, $objname, $checked, $timeout = 5)

	dim $response = ""

	if $checked = true Then

		$checked = "true";
	EndIf

	if $checked = false Then

		$checked = "false";
	EndIf

	$response = _ChromeEval("_ChromeInputSetCheckedWithValueByName=" & $input_value & "|" & $objname & "|" & $checked, $timeout)

	SetError(@error)

	return $response
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_ChromeObjGetPropertyByName()
; Description ...:	Get the value of a specific property of a element based on it's "name" property.
; Syntax.........:	_ChromeObjGetPropertyByName($objname, $propertyname, $index = 0, $timeout = 5)
; Parameters ....:	$objname					- the value of the "name" property
;					$propertyname				- the name of the property
;					$index						- Optional: the index of the element if many are found.
;					$timeout					- Optional: a number of minutes before exiting the function.
; Return values .: 	On Success					- Returns the "innerHTML" attribute value.
;                 	On Failure					- Returns "".
; Author ........:	seangriffin
; Modified.......:
; Remarks .......:	A prerequisite is that the Chrome browser is open
;					(Window title = "[REGEXPTITLE:.*- Google Chrome]").
;
; Related .......:
; Link ..........:
; Example .......:	Yes
;
; ;==========================================================================================
Func _ChromeObjGetPropertyByName($objname, $propertyname, $index = 0, $timeout = 5)

	dim $response = ""

	$response = _ChromeEval("document.getElementsByName('" & $objname & "')[" & $index & "]." & $propertyname & ";", $timeout)

	return $response
EndFunc

Func LOCAL_APPDATA()

	Return SHGetSpecialFolderPath($CSIDL_LOCAL_APPDATA)
EndFunc

Func SHGetSpecialFolderPath($csidl)

	Local $hwndOwner = 0 , $lpszPath = "" , $fCreate = False , $MAX_PATH = 260
	$lpszPath = DllStructCreate("char[" & $MAX_PATH & "]")

	$BOOL = DllCall("shell32.dll","int","SHGetSpecialFolderPath","int",$hwndOwner,"ptr", DllStructGetPtr($lpszPath),"int",$csidl,"int",$fCreate)

	if Not @error Then

		Return SetError($BOOL[0],0,DllStructGetData($lpszPath,1))
	Else

		Return SetError(@error,0,3)
	EndIf
EndFunc
