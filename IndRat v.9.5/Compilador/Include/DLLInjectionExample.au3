#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_outfile=DLLInjectionExample.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Run_After=del DLLInjectionExample_Obfuscated.au3
#AutoIt3Wrapper_Run_Obfuscator=y
#Obfuscator_Parameters=/om /cn=0 /cs=0 /sf=1 /sv=1
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include "[Includes]\_DLLInjection.au3"
#include "[Includes]\_GetDebugPrivilegeRtl.au3"
; ===============================================================================================================================
; <DLLInjectionExample.au3>
;
; Example of DLL Injection/UnInjection
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
;	--------------------	MAIN CODE	--------------------
; ===================================================================================================================

_GetDebugPrivilegeRtl()
Local $sProcess,$iProcessID,$sDLLToInject,$hInjectedDLL,$bLoadedProc=False
$sProcess='mspaint.exe'
$sDLLToInject='pdh.dll'		; not typically a part of most processes (and won't really affect functionality)
$iProcessID=ProcessExists($sProcess)
If $iProcessID Then
	$bLoadedProc=True
Else
	$iProcessID=Run($sProcess)
	If $iProcessID=0 Then Exit
	Local $hProcess=_ProcessOpen($iProcessID,$PROCESS_QUERY_LIMITED_INFO)
	; Wait for the process to 'settle'
	_ProcessWaitForInputIdle($hProcess,3000)
	_ProcessCloseHandle($hProcess)
EndIf
MsgBox(0,"Ready!","Ready to inject! ('"&$sDLLToInject&"')")
$hInjectedDLL=_DLLInject($iProcessID,$sDLLToInject)
If @error Then Exit MsgBox(0,"DLL Injection Failed","Injection failed, Return: "&$hInjectedDLL&"@error="&@error&", @extended="&@extended)
If Not @AutoItX64 Then ConsoleWrite("Injected DLL address (x86 only)="&$hInjectedDLL&@LF)
MsgBox(0,"DLL Injected!", "DLL '"&$sDLLToInject&"' Injected successfully into '"&$sProcess&"'"&@CRLF&@CRLF&"Ready to UNInject!")
$hInjectedDLL=_ProcessGetModuleBaseAddress($iProcessID,$sDLLToInject)
If @error Then Exit MsgBox(0,"DLL Locate Failed","_ProcessGetModuleBaseAddress() for '"&$sDLLToInject&"' returned: "&$hInjectedDLL&", @error="&@error&", @extended="&@extended)
_DLLUnInject($iProcessID,$hInjectedDLL)
If @error Then Exit MsgBox(0,"DLL UnInject Failed","UnInject failed, Return: False, @error="&@error&", @extended="&@extended)
MsgBox(0,"PDH UnInjected","UnInjection a success")
If Not $bLoadedProc Then ProcessClose($iProcessID)
