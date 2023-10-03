#include-once
#include <_Distorm.au3>
#include <WinAPI.au3>
#include <Memory.au3>
#include <_GetPrivilege_SEDEBUG.au3>
#include <_OsVersionInfo.au3>

#cs
	Error codes:
	1 = hook address not found
	2 = WriteProcessMemory failed
	3 = hook is not a DllStruct
	4 = newaddress is invalid
	5 = hook is already set
	6 = hook not set
	7 = OpenProcess failed
	8 = EnumProcessModules failed
	9 = VirtualAllocEx failed
	10 = _CreateBridge failed
	11 = LoadLibrary failed
	12 = CreateRemoteThread failed
#ce

Global $tagHOOK = "ptr HookAddress;byte HookBak[10];byte Bridge[64];ptr BridgePtr;int Status;int Process" ; 64 bytes should be more than enough for the bridge
Global $IsVistaOrBetter = _OsVersionTest($VER_GREATER_EQUAL, 6)

_GetPrivilege_SEDEBUG() ; get SEDEBUG privilege

; #FUNCTION# ;===============================================================================
;
; Name...........: _HookApi_Get
; Description ...: Gets hook information and returns the structure
; Syntax.........: _HookApi_Get($module, $function, $process = -1)
; Parameters ....: $module - module name containing the function, ie kernel32.dll
;                  $function - function name to find in the module
;                  $process - optional remote process PID, -1 for current process
; Return values .: Success - Hook structure
;                  Failure - Returns 0 and Sets @Error:
;                  (See above error codes.)
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......: _HookApi_Set, _HookApi_UnSet
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _HookApi_Get($module, $function, $process = -1)
	Local $ret, $err = 0, $hook = DllStructCreate($tagHOOK)
	; initialise struct
	DllStructSetData($hook, "HookAddress", 0)
	DllStructSetData($hook, "Process", $process) ; store process
	DllStructSetData($hook, "Status", 0) ; set hook status

	Switch $process
		Case -1
			; get local hook address
			Local $HookAddress = _GetProcAddress(_WinAPI_GetModuleHandle($module), $function)
			If Not $HookAddress Then
				$err = 1 ; GetProcAddress failed
			Else
				DllStructSetData($hook, "HookAddress", $HookAddress) ; store hook address
				; create bridge
				DllStructSetData($hook, "BridgePtr", DllStructGetPtr($hook, "Bridge"))
				If Not _CreateBridge($HookAddress, DllStructGetData($hook, "BridgePtr")) Then
					$err = 10 ; create bridge failed
				Else
					; backup hook data
					$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", -1, "ptr", DllStructGetPtr($hook, "HookBak"), "ptr", DllStructGetData($hook, "HookAddress"), "uint", 10, "uint*", 0)
					If (@error Or ($ret[5] <> 10)) Then
						$err = 2 ; WriteProcessMemory failed
					EndIf
				EndIf
				_Distorm64_Close()
			EndIf
		Case Else
			; get remote hook address
			Local $hProcess = _GetProcHandle($process)
			If Not $hProcess Then
				$err = 7 ; cannot open process
			Else
				DllStructSetData($hook, "hProcess", $process) ; we just store the PID, we will open / close a handle each time it is needed
				;; find function address in remote process
				; load library locally and get function address to determine function offset from module base address
				Local $hModule = _WinAPI_LoadLibrary($module)
				If Not $hModule Then
					$err = 11 ; LoadLibrary failed
				Else
					Local $fnAddress = _GetProcAddress($hModule, $function)
					If Not $fnAddress Then
						$err = 1 ; hook address not found
					Else
						Local $HookOffset = $fnAddress - $hModule ; calculate function offset ($hModule = module base address)
;~ 						Local $hMod = _GetModuleAddress($hProcess, $module) ; get base address of target module
						Local $hMod = __GetModuleAddress($process, $module) ; get base address of target module
						If Not $hMod Then
							$err = 8 ; EnumProcessModules failed
						Else
							DllStructSetData($hook, "HookAddress", $hMod + $HookOffset) ; store remote hook address
							; allocate memory in remote process to store bridge
							Local $pBridge = _MemVirtualAllocEx($hProcess, 0, 64, $MEM_COMMIT, $PAGE_EXECUTE_READWRITE)
							If Not $pBridge Then
								$err = 9
							Else
								DllStructSetData($hook, "BridgePtr", $pBridge)
								; create bridge, local code will be the same as remote, so we need to pass the local func address for distorm_decode
								If Not _CreateRemoteBridge(DllStructGetData($hook, "HookAddress"), $pBridge, $hProcess) Then
									$err = 10 ; create bridge failed
								Else
									; backup hook data
									$ret = DllCall("kernel32.dll", "int", "ReadProcessMemory", "ptr", $hProcess, "ptr", $fnAddress, "ptr", DllStructGetPtr($hook, "HookBak"), "uint", 10, "uint*", 0)
									If (@error Or ($ret[5] <> 10)) Then
										$err = 2 ; ReadProcessMemory failed
									EndIf
								EndIf
								_Distorm64_Close()
							EndIf
						EndIf
					EndIf
					_WinAPI_FreeLibrary($hModule)
				EndIf
				_WinAPI_CloseHandle($hProcess) ; close process handle
			EndIf
	EndSwitch

	If $err Then $hook = 0 ; if any errors, delete hook struct
	Return SetError($err, 0, $hook)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _HookApi_Set
; Description ...: Sets the hook
; Syntax.........: _HookApi_Set($hook, $newaddress)
; Parameters ....: $hook - hook structure return by _HookApi_Get
;                  $newaddress - pointer to the new function
; Return values .: Success - Returns 1
;                  Failure - Returns 0 and Sets @Error:
;                  (See above error codes.)
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......: _HookApi_Get, _HookApi_UnSet
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _HookApi_Set(ByRef $hook, $newaddress)
	Local $err = 0, $ret
	Local $funchook = DllStructCreate("byte[10]")

	If Not IsDllStruct($hook) Then
		$err = 3
	Else
		If (Not IsPtr($newaddress)) And (Not IsInt($newaddress)) Then
			$err = 4
		Else
			If DllStructGetData($hook, "Status") = 1 Then
				$err = 5 ; hook already set
			Else
				; create hook struct
				DllStructSetData($funchook, 1, Binary("0xFF25") + Binary(DllStructGetData($hook, "HookAddress") + 6) + Binary($newaddress))
				; get Process info from struct
				Local $process = DllStructGetData($hook, "Process")

				Switch $process
					Case -1
						; set local hook
						$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $process, "ptr", DllStructGetData($hook, "HookAddress"), "ptr", DllStructGetPtr($funchook), "uint", 10, "uint*", 0)
						If (@error Or ($ret[5] <> 10)) Then
							$err = 2
						EndIf
					Case Else
						; set remote hook
						Local $hProcess = _GetProcHandle($process)
						If Not $hProcess Then
							$err = 7 ; cannot open process
						Else
							; set remote hook
							$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $hProcess, "ptr", DllStructGetData($hook, "HookAddress"), "ptr", DllStructGetPtr($funchook), "uint", 10, "uint*", 0)
							If (@error Or ($ret[5] <> 10)) Then
								$err = 2
							EndIf
							_WinAPI_CloseHandle($hProcess)
						EndIf
				EndSwitch
			EndIf
		EndIf
	EndIf

	If Not $err Then DllStructSetData($hook, "Status", 1) ; set hook status
	Return SetError($err, 0, Number($err = 0))
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _HookApi_UnSet
; Description ...: Unsets the hook
; Syntax.........: _HookApi_UnSet($hook)
; Parameters ....: $hook - hook structure return by _HookApi_Get
; Return values .: Success - Returns 1
;                  Failure - Returns 0 and Sets @Error:
;                  (See above error codes.)
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......: _HookApi_Get, _HookApi_Set
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _HookApi_UnSet(ByRef $hook)
	Local $err = 0, $ret

	If Not IsDllStruct($hook) Then
		$err = 3
	Else
		If DllStructGetData($hook, "Status") = 0 Then
			$err = 6 ; hook not set
		Else
			Local $process = DllStructGetData($hook, "Process")

			Switch $process
				Case -1
					; unset local hook
					$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $process, "ptr", DllStructGetData($hook, "HookAddress"), "ptr", DllStructGetPtr($hook, "HookBak"), "uint", 10, "uint*", 0)
					If (@error Or ($ret[5] <> 10)) Then
						$err = 2
					Else
						DllStructSetData($hook, "Status", 0) ; set hook status
					EndIf
				Case Else
					; unset remote hook
					Local $hProcess = _GetProcHandle($process)
					If Not $hProcess Then
						$err = 7 ; cannot open process
					Else
						$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $hProcess, "ptr", DllStructGetData($hook, "HookAddress"), "ptr", DllStructGetPtr($hook, "HookBak"), "uint", 10, "uint*", 0)
						If (@error Or ($ret[5] <> 10)) Then
							$err = 2
						Else
							DllStructSetData($hook, "Status", 0) ; set hook status
						EndIf
						_WinAPI_CloseHandle($hProcess)
					EndIf
			EndSwitch
		EndIf
	EndIf

	Return SetError($err, 0, Number($err = 0))
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _InjectDll
; Description ...: Injects a Dll into a remote process
; Syntax.........: _InjectDll($dllpath, $process)
; Parameters ....: $dllpath - absolute path to the Dll to be injected
;                  $process - PID of the remote process
; Return values .: Success - Returns a handle to the remote module
;                  Failure - Returns 0 and Sets @Error:
;                  (See above error codes.)
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......: _FreeRemoteDll
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _InjectDll($dllpath, $process, $SkipRemoteSearch = 0)
	Local $ret, $err = 0, $hModule = 0
	Local $hProcess = _GetProcHandle($process)
	If Not $hProcess Then
		$err = 7
	Else
		; allocate memory in remote process for dll path
		Local $pMem = _MemVirtualAllocEx($hProcess, 0, 260, $MEM_COMMIT, $PAGE_READWRITE)
		If Not $pMem Then
			$err = 9
		Else
			; write dll path to remote process
			$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $hProcess, "ptr", $pMem, "str", $dllpath, "uint", 260, "uint*", 0)
			If (@error Or ($ret[5] <> 260)) Then
				$err = 2
			Else
				; get LoadLibraryA address and call the remote thread with a pointer to the dll path
				Local $hKernel32Remote, $hKernel32 = _WinAPI_GetModuleHandle("kernel32.dll") ; use local kernel32.dll to get LoadLibraryA offset
				Local $LoadLibraryAOffset = _GetProcAddress($hKernel32, "LoadLibraryA") - $hKernel32
				If $SkipRemoteSearch Then
					; dangerous shortcut, but maybe required for some processes.  USE AT YOUR OWN RISK!!!
					$hKernel32Remote = $hKernel32
				Else
;~ 					$hKernel32Remote = _GetModuleAddress($hProcess, "kernel32.dll") ; get remote kernel32.dll base address
					$hKernel32Remote = __GetModuleAddress($process, "kernel32.dll") ; get remote kernel32.dll base address
				EndIf
				If Not $hKernel32Remote Then
					$err = 8
				Else
					Local $LoadLibraryA = $hKernel32Remote + $LoadLibraryAOffset
					$ret = _CreateThread($hProcess, $LoadLibraryA, $pMem)
					If Not $ret Then
						$err = 12 ; create remote thread failed
					Else
						Local $hThread = $ret
						_WinAPI_WaitForSingleObject($hThread) ; wait for thread to finish
						; get thread return value, which is the HMODULE (base address) of the injected dll
						$ret = DllCall("kernel32.dll", "int", "GetExitCodeThread", "ptr", $hThread, "dword*", 0)
						If ((Not @error) And $ret[0]) Then $hModule = Ptr($ret[2])
						_WinAPI_CloseHandle($hThread) ; close thread handle
					EndIf
				EndIf
			EndIf
			_MemVirtualFreeEx($hProcess, $pMem, 0, $MEM_RELEASE) ; release memory for dll path
		EndIf
		_WinAPI_CloseHandle($hProcess)
	EndIf
	Return SetError($err, 0, $hModule)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _FreeRemoteDll
; Description ...: Frees a remotely injected Dll
; Syntax.........: _FreeRemoteDll($hModule, $process)
; Parameters ....: $hModule - handle to the remote module to be freed
;                  $process - PID of the remote process containing the module
; Return values .: Success - Returns 1
;                  Failure - Returns 0 and Sets @Error:
;                  (See above error codes.)
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......: _InjectDll
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _FreeRemoteDll($hModule, $process, $SkipRemoteSearch = 0)
	Local $ret, $err = 0, $return = 0
	Local $hProcess = _GetProcHandle($process)
	If Not $hProcess Then
		$err = 7
	Else
		; get FreeLibrary address and call the remote thread with a pointer to hModule
		Local $hKernel32Remote, $hKernel32 = _WinAPI_GetModuleHandle("kernel32.dll") ; use local kernel32.dll to get FreeLibrary offset
		Local $FreeLibraryOffset = _GetProcAddress($hKernel32, "FreeLibrary") - $hKernel32
		If $SkipRemoteSearch Then
			; dangerous shortcut, but maybe required for some processes.  USE AT YOUR OWN RISK!!!
			$hKernel32Remote = $hKernel32
		Else
;~ 			$hKernel32Remote = _GetModuleAddress($hProcess, "kernel32.dll") ; get remote kernel32.dll base address
			$hKernel32Remote = __GetModuleAddress($process, "kernel32.dll") ; get remote kernel32.dll base address
		EndIf
		If Not $hKernel32Remote Then
			$err = 8
		Else
			Local $FreeLibrary = $hKernel32Remote + $FreeLibraryOffset
			$ret = _CreateThread($hProcess, $FreeLibrary, $hModule)
			If Not $ret Then
				$err = 12 ; create remote thread failed
			Else
				_WinAPI_WaitForSingleObject($ret) ; wait for thread to finish
				_WinAPI_CloseHandle($ret) ; close thread handle
			EndIf
		EndIf
		_WinAPI_CloseHandle($hProcess)
	EndIf
	If $err Then $return = 1
	Return SetError($err, 0, Number($err = 0))
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _GetProcHandle
; Description ...: Opens a process with specific rights
; Syntax.........: _GetProcHandle($process)
; Parameters ....: $process - PID of the remote process
; Return values .: Success - Returns a handle to the remote process
;                  Failure - Returns 0 and Sets @Error
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _GetProcHandle($process)
	Local $hProcess = 0
	Local $PERMISSION = BitOR(0x0002, 0x0400, 0x0008, 0x0010, 0x0020) ; CREATE_THREAD, QUERY_INFORMATION, VM_OPERATION, VM_READ, VM_WRITE

	If IsInt($process) Then
		If $process > 0 Then
			Local $ret = DllCall("kernel32.dll", "ptr", "OpenProcess", "dword", $PERMISSION, "int", 0, "dword", $process)
			If ((Not @error) And $ret[0]) Then
				$hProcess = $ret[0]
			EndIf
		EndIf
	EndIf
	Return SetError(Number($hProcess = 0), 0, $hProcess)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _GetProcAddress
; Description ...: Get the address of the function in the module
; Syntax.........: _GetProcAddress($module, $function)
; Parameters ....: $module - HANDLE to the module containing the function
;				   $function - name of the function in the module
; Return values .: Success - Returns the address of the function
;                  Failure - Returns 0 and Sets @Error
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _GetProcAddress($module, $function)
	Local $return = 0
	Local $ret = DllCall("kernel32.dll", "ptr", "GetProcAddress", "ptr", $module, "str", $function)
	If ((Not @error) And $ret[0]) Then $return = $ret[0]
	Return SetError(Number($return = 0), 0, $return)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _GetModuleAddress
; Description ...: Get the address of the module in the process
; Syntax.........: _GetModuleAddress($hProcess, $sModule)
; Parameters ....: $hProcess - open HANDLE to the process containing the module
;				   $sModule - name of the module in the process
; Return values .: Success - Returns the address of the module
;                  Failure - Returns 0 and Sets @Error
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _GetModuleAddress($hProcess, $sModule)
	Local $hModule = 0
	Local $hModArray = DllStructCreate("ptr[1024]")
	Local $NameBuffer = DllStructCreate("wchar[256]")
	Local $pNameBuffer = DllStructGetPtr($NameBuffer)
	Local $hPSAPI = DllOpen("psapi.dll")
	Local $ret = DllCall($hPSAPI, "int", "EnumProcessModules", "ptr", $hProcess, "ptr", DllStructGetPtr($hModArray), "dword", DllStructGetSize($hModArray), "dword*", 0)

	If ((Not @error) And $ret[0]) Then
		For $i = 1 To $ret[4] / 4 ; bytes returned / sizeof(HMODULE) = num modules
			Local $hMod = DllStructGetData($hModArray, 1, $i)
			DllCall($hPSAPI, "dword", "GetModuleBaseNameW", "ptr", $hProcess, "ptr", $hMod, "ptr", $pNameBuffer, "dword", 256)
			If ((Not @error) And (DllStructGetData($NameBuffer, 1) = $sModule)) Then
				$hModule = $hMod
				ExitLoop
			EndIf
		Next
	EndIf
	DllClose($hPSAPI)
	Return SetError(Number($hModule = 0), 0, $hModule)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: __GetModuleAddress
; Description ...: Get the address of the module in the process
; Syntax.........: __GetModuleAddress($PID, $sModule)
; Parameters ....: $PID - PID of the process containing the module
;				   $sModule - name of the module in the process
; Return values .: Success - Returns the address of the module
;                  Failure - Returns 0 and Sets @Error to 1
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func __GetModuleAddress($PID, $sModule)
	Local $ret, $hModule = 0
	Local Const $TH32CS_SNAPMODULE = 0x00000008
	Local Const $INVALID_HANDLE = Ptr(0xFFFFFFFF)
	Local Const $tagMODULEENTRY32W = "dword dwSize;dword th32ModuleID;dword th32ProcessID;dword GlblcntUsage;dword ProccntUsage;ptr modBaseAddr;" & _
									"dword modBaseSize;ptr hModule;wchar szModule[256];wchar szExePath[260]"
	Local $MOD32 = DllStructCreate($tagMODULEENTRY32W)
	DllStructSetData($MOD32, "dwSize", DllStructGetSize($MOD32))

	$ret = DllCall("kernel32.dll", "ptr", "CreateToolhelp32Snapshot", "dword", $TH32CS_SNAPMODULE, "dword", $PID)
	If ((Not @error) And ($ret[0] <> $INVALID_HANDLE)) Then
		; valid snapshot
		Local $hSnapshot = $ret[0]
		$ret = DllCall("kernel32.dll", "int", "Module32FirstW", "ptr", $hSnapshot, "ptr", DllStructGetPtr($MOD32))
		If ((Not @error) And $ret[0]) Then
			; valid module entry
			Do
				If DllStructGetData($MOD32, "szModule") = $sModule Then
					$hModule = DllStructGetData($MOD32, "hModule")
					ExitLoop
				EndIf
				$ret = DllCall("kernel32.dll", "int", "Module32NextW", "ptr", $hSnapshot, "ptr", DllStructGetPtr($MOD32))
			Until (@error Or (Not $ret[0]))
		EndIf
		DllCall("kernel32.dll", "int", "CloseHandle", "ptr", $hSnapshot)
	EndIf
	Return SetError(Number($hModule = 0), 0, $hModule)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _CreateThread
; Description ...: Create a thread in a remote process, using correct function based on OS
; Syntax.........: _CreateThread($hProcess, $pCode, $pParameter)
; Parameters ....: $hProcess - open HANDLE to the process containing the module
;				   $pCode - pointer to code in the remote process to run
;				   $pParameter - pointer to a parameter to pass to the thread
; Return values .: Success - Returns a handle to the new thread
;                  Failure - Returns 0 and Sets @Error to 1
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _CreateThread($hProcess, $pCode, $pParameter)
	Local $return
	If $IsVistaOrBetter Then
		$return =  _RtlCreateUserThread($hProcess, $pCode, $pParameter)
	Else
		$return =  _CreateRemoteThread($hProcess, $pCode, $pParameter)
	EndIf
	Return SetError(@error, 0, $return)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _CreateRemoteThread
; Description ...: Create a thread in a remote process.
; Syntax.........: _CreateRemoteThread($hProcess, $pCode, $pParameter)
; Parameters ....: $hProcess - open HANDLE to the process containing the module
;				   $pCode - pointer to code in the remote process to run
;				   $pParameter - pointer to a parameter to pass to the thread
; Return values .: Success - Returns a handle to the new thread
;                  Failure - Returns 0 and Sets @Error to 1
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _CreateRemoteThread($hProcess, $pCode, $pParameter)
	Local $return = 0
	Local $ret = DllCall("kernel32.dll", "ptr", "CreateRemoteThread", "ptr", $hProcess, "ptr", 0, "uint", 0, "ptr", $pCode, "ptr", $pParameter, "dword", 0, "ptr", 0)
	If ((Not @error) And $ret[0]) Then $return = $ret[0]
	Return SetError(Number($return = 0), 0, $return)
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........: _RtlCreateUserThread
; Description ...: Create a thread in a remote process.
; Syntax.........: _RtlCreateUserThread($hProcess, $pCode, $pParameter)
; Parameters ....: $hProcess - open HANDLE to the process containing the module
;				   $pCode - pointer to code in the remote process to run
;				   $pParameter - pointer to a parameter to pass to the thread
; Return values .: Success - Returns a handle to the new thread
;                  Failure - Returns 0 and Sets @Error to 1
; Author ........: Erik Pilsits
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================
Func _RtlCreateUserThread($hProcess, $pCode, $pParameter)
	Local $return = 0
;~ 	Local $hKernel32 = _WinAPI_GetModuleHandle("kernel32.dll")
;~ 	Local $ExitThreadOffset = _GetProcAddress($hKernel32, "ExitThread") - $hKernel32
;~ 	Local $hKernel32Remote = _GetModuleAddress($hProcess, "kernel32.dll")
;~ 	Local $pExitThread = $hKernel32Remote + $ExitThreadOffset
;~ 	; create a suspended thread at kernel32!ExitThread
;~ 	Local $ret = DllCall("ntdll.dll", "dword", "RtlCreateUserThread", "ptr", $hProcess, "ptr", 0, "int", 1, "ulong", 0, "ulong*", 0, "ulong*", 0, _
;~ 										"ptr", $pExitThread, "dword*", 0, "ptr*", 0, "ptr*", 0)
;~ 	If $ret[9] Then
;~ 		; schedule an asynchronous procedure call (APC) at the code to be executed
;~ 		DllCall("ntdll.dll", "dword", "NtQueueApcThread", "ptr", $ret[9], "ptr", $pCode, "ptr", $pParameter, "ptr", 0, "ulong", 0)
;~ 		; resume the thread, executing the APC
;~ 		DllCall("kernel32.dll", "dword", "ResumeThread", "ptr", $ret[9])
;~ 		$return = $ret[9]
;~ 	EndIf
;~ 	; NOTE: the return value of the APC is lost
	Local $ret = DllCall("ntdll.dll", "dword", "RtlCreateUserThread", "ptr", $hProcess, "ptr", 0, "int", 0, "ulong", 0, "ulong*", 0, "ulong*", 0, _
										"ptr", $pCode, "ptr", $pParameter, "ptr*", 0, "ptr*", 0)
	If ((Not @error) And $ret[9]) Then $return = $ret[9]
	Return SetError(Number($return = 0), 0, $return)
EndFunc