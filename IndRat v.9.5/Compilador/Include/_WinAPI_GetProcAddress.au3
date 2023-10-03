#include <WinAPI.au3>

; Get handle of the loaded module
Local $hModule = _WinAPI_GetModuleHandle("kernel32.dll")

If $hModule Then
	Local $pFunction = _WinAPI_GetProcAddress($hModule, "CreateFiber")
	ConsoleWrite("The address of the function is " & $pFunction & @CRLF)

	; Do whatever here

EndIf
