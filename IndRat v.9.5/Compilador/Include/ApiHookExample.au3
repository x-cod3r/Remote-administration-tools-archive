#NoTrayIcon
#AutoIt3Wrapper_Change2CUI=y
#include <_WinApiHook.au3>
#include <_MemoryDll.au3>

Local $MyMsgBox = DllCallbackRegister("_MyMsgBox", "none", "hwnd;wstr;wstr;uint")
Local $pMyMsgBox = DllCallbackGetPtr($MyMsgBox)

Local $targetmodule = "user32.dll"
Local $targetfunction = "MessageBoxW"

$DISTORM_DEBUG = True

MsgBox(0 + 64, "Local Hook Test", "Press OK to start the local hook test.")

; local hook test
$MyHook = _HookApi_Get($targetmodule, $targetfunction)
ConsoleWrite("-------------" & @CRLF)
ConsoleWrite("HookAddress: " & DllStructGetData($MyHook, "HookAddress") & @CRLF)
ConsoleWrite("HookBak: " & DllStructGetData($MyHook, "HookBak") & @CRLF)
ConsoleWrite("Bridge: " & DllStructGetData($MyHook, "Bridge") & @CRLF)
ConsoleWrite("BridgePtr: " & DllStructGetData($MyHook, "BridgePtr") & @CRLF)
ConsoleWrite("Status after get: " & DllStructGetData($MyHook, "Status") & @CRLF)
ConsoleWrite("Process: " & DllStructGetData($MyHook, "Process") & @CRLF)

If IsDllStruct($MyHook) Then
	_HookApi_Set($MyHook, $pMyMsgBox)
	ConsoleWrite("Status after set: " & DllStructGetData($MyHook, "Status") & @CRLF)
	MsgBox(0 + 64, "Unhooked MessageBox", "We unset the hook before this call.")
	_HookApi_UnSet($MyHook)
	ConsoleWrite("Status after unset: " & DllStructGetData($MyHook, "Status") & @CRLF)
	MsgBox(0 + 64, "Unhooked MessageBox", "We unset the hook before this call.")
EndIf

MsgBox(0 + 64, "Remote Hook Test", "Press OK to start the remote hook test.")

;; remote hook test
MsgBox(0 + 64, "Info", "Press OK.  You then have 10 seconds to test the Message button.")
$pid = Run("testapp.exe")
ProcessWait($pid)
Sleep(500)

; for remote processes, the Bridge element will be NULL
; the BridgePtr will be a pointer in the remote process to the memory allocated
$MyHook = _HookApi_Get($targetmodule, $targetfunction, $pid)
ConsoleWrite("-------------" & @CRLF)
ConsoleWrite("HookAddress: " & DllStructGetData($MyHook, "HookAddress") & @CRLF)
ConsoleWrite("HookBak: " & DllStructGetData($MyHook, "HookBak") & @CRLF)
ConsoleWrite("Bridge: " & DllStructGetData($MyHook, "Bridge") & @CRLF)
ConsoleWrite("BridgePtr: " & DllStructGetData($MyHook, "BridgePtr") & @CRLF)
ConsoleWrite("Status after get: " & DllStructGetData($MyHook, "Status") & @CRLF)
ConsoleWrite("Process: " & DllStructGetData($MyHook, "Process") & @CRLF)

; verify bridge
$hProcess = _GetProcHandle($pid)
$s = DllStructCreate("byte[64]")
DllCall("kernel32.dll", "int", "ReadProcessMemory", "ptr", $hProcess, "ptr", DllStructGetData($MyHook, "BridgePtr"), "ptr", DllStructGetPtr($s), "uint", 64, "uint*", 0)
ConsoleWrite("-------------------" & @CRLF)
ConsoleWrite("remote bridge: " & DllStructGetData($s, 1) & @CRLF)

; inject dll
$hModule = _InjectDll(@ScriptDir & "\msgdll.dll", $pid)
;; set hook
; call the remote function to set the bridge address
; if you know the offset, then add it to $hModule
; if not, load the dll locally to get hMod and use GetProcAddress to get the funcaddres
; then the offset = funcaddress - hMod

; get the bridge setting function offset
$hMod = _WinAPI_LoadLibrary("msgdll.dll")
$fnAddress = _GetProcAddress($hMod, "_GetMessageBoxW@4")
$offset = $fnAddress - $hMod
; set the bridge
$ret = DllCall("kernel32.dll", "ptr", "CreateRemoteThread", "ptr", $hProcess, "ptr", 0, "uint", 0, "ptr", $hModule + $offset, "ptr", DllStructGetData($MyHook, "BridgePtr"), "dword", 0, "ptr", 0)
_WinAPI_WaitForSingleObject($ret[0])
_WinAPI_CloseHandle($ret[0])

; get hook function offset
$fnAddress = _GetProcAddress($hMod, "_MyMsgBox@16")
$offset = $fnAddress - $hMod
; free the locally loaded library
_WinAPI_FreeLibrary($hMod)

_HookApi_Set($MyHook, $hModule + $offset)
$s = 0
$s = DllStructCreate("byte[10]")
DllCall("kernel32.dll", "int", "ReadProcessMemory", "ptr", $hProcess, "ptr", DllStructGetData($MyHook, "HookAddress"), "ptr", DllStructGetPtr($s), "uint", 10, "uint*", 0)
ConsoleWrite("remote hook: " & DllStructGetData($s, 1) & @CRLF)

_WinAPI_CloseHandle($hProcess)

; test out the hooked function
Sleep(10000)
MsgBox(0 + 64, "Info", "Time is up.  Please close any testapp message boxes, or it may crash.")

; unset the hook
_HookApi_UnSet($MyHook)
; optionally free the injected library
; if the remote hooked message box is open when we do this, the remote app will crash
; leaving the injected library loaded will prevent the crash, and won't do any harm
_FreeRemoteDll($hModule, $pid)
MsgBox(0 + 64, "Unhooked", "MessageBoxW is now unhooked, and the dll has been unloaded.")

DllCallbackFree($MyMsgBox)

Func _MyMsgBox($hwnd, $text, $caption, $flags)
	MemoryFuncCall("int", DllStructGetData($MyHook, "BridgePtr"), "hwnd", 0, _
								"wstr", "This is the hook intercepting the MessageBoxW call, then calling the bridge to the real function." & @CRLF & _
								"Here's what we got:" & @CRLF & @CRLF & _
								"Hwnd: " & $hwnd & @CRLF & _
								"Text: " & $text & @CRLF & _
								"Caption: " & $caption & @CRLF & _
								"Flags: " & $flags, _
								"wstr", "Hooked Message Box", _
								"uint", 48)
EndFunc