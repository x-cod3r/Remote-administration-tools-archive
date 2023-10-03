#include-once
#include <Array.au3>
#include <NomadMemory.au3>
#include <WinAPI.au3>
#include <Memory.au3>


#cs
Author: @night@ (ATnightAT)
This UDF provides functions for Hooking procedures in other processes. You need a modified NomadMemory for starting this script. Otherwise 2 constants get redeclared and 
the script does not start. IT'S EXTREMLEY BUGGY!!!
So please report any bugs you find.
Have fun! ;-)

PS: Please ignore the german descriptions. They are completely useless for everybody having not my brain. I will write a description of these functions in the thread.
#ce

Func _DelString($pString, $iLen, $hProcess)
	_MemVirtualFreeEx($hProcess[1], $pString, $iLen+1, $MEM_DECOMMIT) ;+1 because of the NULL in the ending
EndFunc

Func _CreateNewString($sText, $hProcess)
	$pString = _MemVirtualAllocEx($hProcess[1], 0, StringLen($sText) + 1, $MEM_COMMIT, $PAGE_EXECUTE_READWRITE)
	_MemoryWrite($pString, $hProcess, $sText, "char[" & StringLen($sText) & "]")
	_MemoryWrite($pString + Stringlen($sText), $hProcess, chr(0), "char")
	Local $aReturn[2] = [$pString, StringLen($sText)]
	return $aReturn
EndFunc

Func _ReadString($pAddress, $hProcess)
	$sString = ""
	$Char = 0
	Do
		$Char = _MemoryRead($pAddress, $hProcess, "char")
		$sString &= $Char
		$pAddress = number($pAddress) + 1
	until Asc($Char) = 0
	return $sString
EndFunc

Func _OpenProcess($sName)
	$hProcess = _MemoryOpen(ProcessExists($sName))
	If @error Then return SetError(1, 0, -1)
	return $hProcess
EndFunc

Func _UninstallHook($hHook, $hProcess)
	WriteSavedBytes($hHook[6], $hHook[3], $hHook[4], $hProcess) ;die gesicherten bytes wieder zurücksetzen
	_MemVirtualFreeEx($hProcess[1], number($hHook[0]), number($hHook[1]), $MEM_DECOMMIT)
	_FreeOpenProcessHandle($hProcess, $hHook[2])
EndFunc

#cs
lpAddresse: the address of the function
ibyteToSave: the number of the bytes the function should save. The Number has to be greater than 4 because a Jump needs 5 bytes. 
lpFuncion: the pointer to our Callback-Function 
sParams: the Parameter of the Function (MessageBoxA: int;int;int;int;) ;) (The names of the types are equal to DllStructCreate
hProcess: The hProcess-handle returned by _OpenProcess

This function returns an Array of Informations for the hook. It's important that you are able to access it in the Function for the hook. 
#ce
Func _SetHook($lpAddresse, $iBytesToSave, $lpFunction, $sParams, $hProcess)
	$iBytePointer = 0 ;funktioniert so ähnlich wie der eip
	$SavedBytes = _MemoryRead($lpAddresse, $hProcess, "char[" & $iBytesToSave & "]") 
	;~ConsoleWrite(Binary($SavedBytes) & @crlf) ;Opcodes zum Speichern anzeigen
	$pAllocAddresse = _MemVirtualAllocEx($hProcess[1], 0, 50, $MEM_COMMIT, $PAGE_EXECUTE_READWRITE) ;der codecave ist 50 bytes groß
	$pStartOfCode = $pAllocAddresse 
	;~ConsoleWrite("Adresse des CodeCaves: " & Hex($pAllocAddresse) & @crlf)
	;==============================================>Openprocess callen
	$hOpenProcessFunc = _CreateOpenProcessFunc($hProcess) ;Openprocess-Func erstellen
	_StartOpenProcessFunc($hProcess, $hOpenProcessFunc) ;
	$lpOpenProcHandle = _FreeOpenProcessFunc($hProcess, $hOpenProcessFunc) ;handle behalten
	;~ConsoleWrite("Handle extrahiert..." & @crlf)
	;=============================================>CreateRemoteThread callen
	$iLength = _WriteCreateRemoteCall($hProcess, $pAllocAddresse, $lpOpenProcHandle, $lpFunction) ;ich addiere die Länge des Bytecodes zu meinem Code
	;~ConsoleWrite("Länge: " & hex($iLength) & @crlf)
	$pAllocAddresse = Number($pAllocAddresse) + number($iLength)
	;~ConsoleWrite("neue adresse: " & Hex($pAllocAddresse) & @crlf)
	;=====================================>Code in allokiierten Speicher schreiben
	WriteSavedBytes($pAllocAddresse, $SavedBytes, $iBytesToSave, $hProcess)
	$pAllocAddresse = number($pAllocAddresse) + number($iBytesToSave)
	;~ConsoleWrite("Beim Sprung: " & hex($pAllocAddresse) & @crlf)
	WriteJmpToOriginal(number($lpAddresse) + number($iBytesToSave), number($pAllocAddresse), $hProcess)
	$pAllocAddresse += 5 ;wegen dem Sprung
	;===================================>Sprung zur Fake-Funktion schreiben
	WriteJmpToFakeFunc($lpAddresse, $pStartOfCode, $hProcess)
	;=======================>Ende vorbereiten
	$paramStruct = DllStructCreate("dword;" & $sParams) ;wir erstellen die Struct für die Parameter
	;==============>
	Local $aReturn[7] = [$pStartOfCode, number($pAllocAddresse) - number($pStartOfCode), $lpOpenProcHandle, $SavedBytes, $iBytesToSave, $paramStruct, $lpAddresse]
	return $aReturn
EndFunc

Func _GetParameter($iEsp, $hHook, $hProcess)
	$iEsp += 8;Parameter werden rückwärts gelesen + die pushs vor 'push esp'
	$myStruct = DllStructCreate("byte[" & DllStructGetSize($hHook[5]) & "]", number(DllStructGetPtr($hHook[5])))
	$Params = _MemoryRead($iEsp, $hProcess, "byte[" & DllStructGetSize($hHook[5]) & "]")
	DllStructSetData($myStruct, 1, $Params) ;wir füllen unsere Parameter in die Struct
EndFunc

Func _SetParameter($iEsp, $hHook, $hProcess) ;die Struct wird jetzt geschrieben
	$iEsp += 8 ;den ort der rücksprungaddresse ermitteln
	$myStruct = DllStructCreate("byte[" & DllStructGetSize($hHook[5]) & "]", DllStructGetPtr($hHook[5]))
	_MemoryWrite($iEsp, $hProcess, DllStructGetData($myStruct, 1), "byte[" & DllStructGetSize($myStruct) & "]")
EndFunc

Func _WriteCreateRemoteCall($hProcess, $lpAllocAdresse, $lpOpenProcessHandle, $lpFunction)
	$OriginalAlloc = $lpAllocAdresse
	$lpAddresseRemoteThr = _WinAPI_GetProcAddress(_WinAPI_GetModuleHandle("kernel32.dll"), "CreateRemoteThread") ;adresse von CreateRemoteThread holen
	$lpCloseHandleThr = _WinAPI_GetProcAddress(_WinAPI_GetModuleHandle("kernel32.dll"), "CloseHandle") ;adresse von CreateRemoteThread holen
	$lpWaitForSingle = _WinAPI_GetProcAddress(_WinAPI_GetModuleHandle("kernel32.dll"), "WaitForSingleObject") ;adresse von CreateRemoteThread holen
	;===============================================================>
	_MemoryWrite($lpAllocAdresse, $hProcess, 0x006A006A, "dword") ;wir scheiben 2mal 'push 0'
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	_MemoryWrite($lpAllocAdresse, $hProcess, 0x6854, "short") ;opcode für 'Push ESP' und 'Push + INT'
	$lpAllocAdresse = number($lpAllocAdresse) + 2
	_MemoryWrite($lpAllocAdresse, $hProcess, number($lpFunction), "dword")
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	_MemoryWrite($lpAllocAdresse, $hProcess, 0x006A006A, "dword") ;wir scheiben 2mal 'push 0'
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	_MemoryWrite($lpAllocAdresse, $hProcess, 0x35FF, "short")
	$lpAllocAdresse = number($lpAllocAdresse) + 2
	_MemoryWrite($lpAllocAdresse, $hProcess, $lpOpenProcessHandle, "dword") ;das Handle auch pushen
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	_MemoryWrite($lpAllocAdresse, $hProcess, 0xE8, "char")
	;=================================================>
	$iCreateThrOffset = _sprungoffset(number($lpAllocAdresse), number($lpAddresseRemoteThr))
	;====================================================>
	$lpAllocAdresse = number($lpAllocAdresse) + 1
	_MemoryWrite($lpAllocAdresse, $hProcess, $iCreateThrOffset, "dword")
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	_MemoryWrite($lpAllocAdresse, $hProcess, 0x50, "char") ;das Handle pushen um es später weiterzuverwenden
	$lpAllocAdresse = number($lpAllocAdresse) + 1
	;=======================================================>WaitForSingleObject wird geschrieben
	_MemoryWrite($lpAllocAdresse, $hProcess, 0xFF6A, "short") ;push -1 (INFINITE)
	$lpAllocAdresse = number($lpAllocAdresse) + 2
	_MemoryWrite($lpAllocAdresse, $hProcess, 0x50, "char") ;das Handle pushen
	$lpAllocAdresse = number($lpAllocAdresse) + 1
	_MemoryWrite($lpAllocAdresse, $hProcess, 0xE8, "char") ;das Handle pushen
	;=================>
	$iWaitForOffset = _sprungoffset(number($lpAllocAdresse), number($lpWaitForSingle))
	$lpAllocAdresse = number($lpAllocAdresse) + 1
	_MemoryWrite($lpAllocAdresse, $hProcess, $iWaitForOffset, "dword")
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	;===============================================================>CloseHandle wird jetzt geschrieben
	_MemoryWrite($lpAllocAdresse, $hProcess, 0xE8, "char") ;opcode für PUSH EAX und CALL + INT
	$lpAllocAdresse = number($lpAllocAdresse) + 1
	;============>
	$iCloseHandleOffset = _sprungoffset(number($lpAllocAdresse-1), number($lpCloseHandleThr)) ;-1, weil wir wegen dem short noch einen abziehen müssen
	;===>
	_MemoryWrite($lpAllocAdresse, $hProcess, $iCloseHandleOffset, "dword") ;den offset schreiben
	$lpAllocAdresse = number($lpAllocAdresse) + 4
	;=================================================>Länge des Bytecodes zurückgeben
	return number($lpAllocAdresse) - number($OriginalAlloc)
EndFunc


Func _FreeOpenProcessHandle($hProcess, $lpHandle)
	_MemVirtualFreeEx($hProcess[1], $lpHandle, 4, $MEM_DECOMMIT)
	if @error Then return SetError(1, 0, -1)
EndFunc

Func _FreeOpenProcessFunc($hProcess, $hOpenProcessFunc)
	_MemVirtualFreeEx($hProcess[1], $hOpenProcessFunc[1], $hOpenProcessFunc[2], $MEM_DECOMMIT)
	if @error Then return SetError(1, 0, -1)
	return $hOpenProcessFunc[0] ;Adresse des handles zurückgeben
EndFunc

Func _StartOpenProcessFunc($hProcess, $hOpenProcessFunc) 
	;~ConsoleWrite("ich call jetzt adresse: " & Hex($hOpenProcessFunc[1]))
	$hRemote=DllCall("kernel32.dll", "HANDLE", "CreateRemoteThread", "HANDLE", $hProcess[1], "int", 0, "int", 0, "DWORD", $hOpenProcessFunc[1], "ptr", 0xEFBEADDE, "DWORD", 0, "DWORD*", 0) ;by deathly assasin from his inject-udf
	_WinAPI_WaitForSingleObject($hRemote[0]) 
EndFunc

Func _CreateOpenProcessFunc($hProcess)
	$lpAddresseOfOpenProc = _WinAPI_GetProcAddress(_WinAPI_GetModuleHandle("kernel32.dll"), "OpenProcess") ;adresse von OpenProcess holen
	$iPid = @AutoItPID
	$lpMyProcessHandle = _MemVirtualAllocEx($hProcess[1], 0, 4, $MEM_COMMIT, $PAGE_EXECUTE_READWRITE) ;4 bytes für das Handle reservieren
	;~ConsoleWrite("Adresse vom Handle ist " & Hex(number($lpMyProcessHandle)) & @crlf) 
	$lpOpenProcess = _MemVirtualAllocEx($hProcess[1], 0, 100, $MEM_COMMIT, $PAGE_EXECUTE_READWRITE) ;ich denke mal ich brauche 29. Aber das kontrolliere ich später
	$lpOpenProcessOriginal = number($lpOpenProcess)
	;~ConsoleWrite("Adresse vom OpenProcess-Code ist " & Hex(number($lpOpenProcess)) & @crlf)
	;================================================>Stackframe schreiben
	_MemoryWrite($lpOpenProcess, $hProcess, 0x55, "char") ;den Opcode für 'push ebp' schreiben
	$lpOpenProcess = number($lpOpenProcess) +1
	_MemoryWrite($lpOpenProcess, $hProcess, 0xEC8B, "short")
	$lpOpenProcess = number($lpOpenProcess) +2
	;===========================================>Opcodes schreiben
	_MemoryWrite($lpOpenProcess, $hProcess, 0x68, "char") ;den opcode für 'push' schreiben
	$lpOpenProcess = number($lpOpenProcess) +1
	_MemoryWrite($lpOpenProcess, $hProcess, $iPid, "dword") ;wir pushen unsere eigene PID
	$lpOpenProcess = number($lpOpenProcess) +4
	_MemoryWrite($lpOpenProcess, $hProcess, 0x006A, "short") ;wir pushen 0
	$lpOpenProcess = number($lpOpenProcess) +2
	_MemoryWrite($lpOpenProcess, $hProcess, 0x68, "char") ;den opcode für 'push' schreiben
	$lpOpenProcess = number($lpOpenProcess) +1
	_MemoryWrite($lpOpenProcess, $hProcess, 0x1F0FFF, "dword") ;den Wert für PROCESS_ALL_ACCESS pushen
	$lpOpenProcess = number($lpOpenProcess) +4
	_MemoryWrite($lpOpenProcess, $hProcess, 0xE8, "char") ;opcode zum callen schreiben
	;================>
	$iOpenProcOffset = _sprungoffset(number($lpOpenProcess), number($lpAddresseOfOpenProc)) ;13, weil 13 Bytes davor kommen
	;~ConsoleWrite("Sprungoffset von " & Hex($lpOpenProcess) & " nach " & Hex($lpAddresseOfOpenProc) & " ist " & Hex($iOpenProcOffset) & @CRLF) 
	;==================>
	$lpOpenProcess = number($lpOpenProcess) +1
	_MemoryWrite($lpOpenProcess, $hProcess, $iOpenProcOffset, "dword") ;offset für call schreiben
	$lpOpenProcess = number($lpOpenProcess) + 4
	_MemoryWrite($lpOpenProcess, $hProcess, 0xA3, "char") ;opcode für mov schreiben
	$lpOpenProcess = number($lpOpenProcess) + 1
	_MemoryWrite($lpOpenProcess, $hProcess, $lpMyProcessHandle, "dword") ;das Handle im allokiierten Speicher ablegen
	$lpOpenProcess = number($lpOpenProcess) + 4
	;===================================>
	_MemoryWrite($lpOpenProcess, $hProcess, 0xC9, "char") ;LEAVE
	$lpOpenProcess = number($lpOpenProcess) + 1
	_MemoryWrite($lpOpenProcess, $hProcess, 0xC2, "char") ;RETN 4 (CreateRemoteThread übergibt immer einen 4-byte Parameter)
	$lpOpenProcess = number($lpOpenProcess) + 1
	_MemoryWrite($lpOpenProcess, $hProcess, 4, "short") ;4 Bytes vom Stack räumen
	$lpOpenProcess = number($lpOpenProcess) + 2
	;==================>Ende
	Local $aReturn[3] = [$lpMyProcessHandle, $lpOpenProcessOriginal, number($lpOpenProcess) - number($lpOpenprocessOriginal)] ;der 3. ist die grösse
	return $aReturn
EndFunc ;===>returns the addresse of the handle and of the code

Func WriteJmpToFakeFunc($lpAddresse, $pAllocAddresse, $hProcess)
	$iSprungoffsetToFunc = _sprungoffset($lpAddresse, $pAllocAddresse)
	;~ConsoleWrite("Sprungoffset zur Funktion: " & $iSprungoffsetToFunc & @crlf)
	_MemoryWrite($lpAddresse, $hProcess, 0xE9, "char") ;opcode zum springen schreiben
	_MemoryWrite($lpAddresse +1 , $hProcess, $iSprungOffsetToFunc, "dword") ;sprungoffset zur Funktion schreiben
EndFunc

Func WriteSavedBytes($pAllocAddresse, $SavedBytes, $iBytesToSave, $hProcess)
	_MemoryWrite($pAllocAddresse, $hProcess, $SavedBytes, "char[" & $iBytesToSave & "]") ;die gepseicherten Bytes in den Speicehr schreiben
EndFunc

Func WriteJmpToOriginal($lpOriginalBegin, $lpJmpStart, $hProcess) ;denk an + iBytesToSave!
	$lpOriginalBegin = number($lpOriginalbegin)
	$lpJmpStart = number($lpJmpStart) ;nur zur Fehlerbehebung
	$iSprungoffsetFromFunc = _sprungoffset($lpJmpStart, $lpOriginalBegin)
	;~ConsoleWrite("Sprungoffset zur Originalfunktion: " & Hex($iSprungoffsetFromFunc) & @crlf)
	_MemoryWrite($lpJmpStart, $hProcess, 0xE9, "char") ;sprungbefehl schreiben
	$lpJmpStart += 1 ;um ein byte erhögen wegen dem Opcode, um den Sprungoffset zu schreiben
	_MemoryWrite($lpJmpStart, $hProcess, $iSprungOffsetFromFunc, "dword") ;Sprungoffset von der Funktion schreiben
EndFunc


Func _VirtualProtect($lpAddress, $dwSize)
	$myStruct = DllStructCreate("int")
	$pDword = DllStructGetPtr($myStruct)
	$myAddressStruct = DllStructCreate("uint")
	DllStructSetData($myAddressStruct, 1, $lpAddress)
	$pAddress = DllStructGetPtr($myAddressStruct)
	$back = DllCall("kernel32.dll", "BOOLEAN", "VirtualProtect", "ptr", $pAddress, "ULONG_PTR", $dwSize, "int", 0x40, "ptr", $pDword)
	;~_ArrayDisplay($back)
EndFunc

Func _sprungoffset($iStart, $iZiel, $iBytesToAdd = 5)
	return $iZiel - $iStart - $iBytesToAdd 
EndFunc ;==>modified by @night@ original from Habo: http://wiki.hackerboard.de/index.php/Windows_API

Func _WinAPI_GetProcAddress($hModule, $sProcess)
    Local $aReturn
    $aReturn = DllCall('kernel32.dll', 'ptr', 'GetProcAddress', 'ptr', $hModule, 'str', $sProcess)
    If @error Then Return SetError(@error, 0, 0)
    Return SetError(0, 0, $aReturn[0])
EndFunc   ;==>_WinAPI_GetProcAddress by smashly of http://www.autoitscript.com/forum/topic/130157-solved-winapi-getprocaddress-and-call-function/