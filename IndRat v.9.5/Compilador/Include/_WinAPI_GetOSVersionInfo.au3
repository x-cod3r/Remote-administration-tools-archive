#include-once
#include "[CommonDLL]\_KERNEL32DLLCommonHandle.au3"
; ===============================================================================================================================
; <_WinAPI_GetOSVersionInfo.au3>
;
; Function to get Operating System Version Information.
;
; Functions:
;	_WinAPI_GetOSVersionInfo()
;
; Reference:
;	See OSVERSIONINFOEX Structure (Windows) @ MSDN:
;	  http://msdn.microsoft.com/en-us/library/ms724833%28v=VS.85%29.aspx
;
; See also:
;	<_WinAPI_GetSystemInfo.au3>
;	<OSVersionInfo.au3>			; Simple test & report
;
;	WMI version info technique by SmOke_N in thread 'How to detect XP Home vs. XP Pro, etc.':
;	 http://www.autoitscript.com/forum/topic/21222-how-to-detect-xp-home-vs-xp-pro-etc/page__view__findpost__p__146664
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
; Func _WinAPI_GetOSVersionInfo($iInfo=-1)
;
; Function to return O/S Information.
;	Note: To detect if XP Home Edition vs. XP Pro is installed, test 'Suite Mask' against 0x0200
;	 (If that bit is set, O/S is Home - otherwise Pro)
;
; $iInfo = O/S Info to Get. Possible values are:
;	-1 = get ALL O/S info, returns an array
;	 0 = Major Version (5-6 for O/S's from Win2000 -> Win7)
;	 1 = Minor Version (0-2 as of Win7) (Major.Minor)
;	 2 = Build Number (build # of O/S)
;	 3 = Platform ID (per MSDN, this will be 2 [VER_PLATFORM_WIN32_NT])
;	 4 = Service Pack Info (empty string if no service packs are installed)
;	 5 = Service Pack Major (service pack #)
;	 6 = Service Pack Minor (service pack minor #)  (Major.Minor)
;	 7 = Suite Mask (Installed Suites info)
;	 8 = Product Type (1 = VER_NT_WORKSTATION, 2 = VER_NT_DOMAIN_CONTROLLER, 3 = VER_NT_SERVER)
;
; Returns:
;	Success: A single value (values are interpreted based on data (see descriptions)), or an array if $iInfo=-1:
;		[0] = Major Version (5-6 for O/S's from Win2000 -> Win7)
;		[1] = Minor Version (0-2 as of Win7) (Major.Minor)
;		[2] = Build Number (build # of O/S) - combined looks like: Major.Minor.Build [ex: XP SP3: 5.1.2600]
;		[3] = Platform ID (per MSDN, this will be 2 [VER_PLATFORM_WIN32_NT])
;		[4] = Service Pack Info (empty string if no service packs are installed)
;		[5] = Service Pack Major (service pack #)
;		[6] = Service Pack Minor (service pack minor #)  (Major.Minor)
;		[7] = Suite Mask (Installed Suites info)
;		[8] = Product Type (1 = VER_NT_WORKSTATION, 2 = VER_NT_DOMAIN_CONTROLLER, 3 = VER_NT_SERVER)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL call error, @extended contains DLLCall()'s error code
;		@error = 3 = Function returned False (failure) - check GetLastError code
;
; Author: Ascend4nt
; ===================================================================================================================

Func _WinAPI_GetOSVersionInfo($iInfo=-1)
	If $iInfo>8 Then Return SetError(1,0,-1)
;~ 	OSVERSIONINFOEX structure: size, Major Version, Minor Version, Build Number, PlatformID, CSDVersion (ServicePack string),
;~ 	ServicePack Major, ServicePack Minor, Suite Mask (installed suites), Product Type (Workstation/Server/Domain Controller), Reserved
	Local $stVersionInfoEx=DllStructCreate("dword;dword;dword;dword;dword;wchar[128];ushort;ushort;ushort;ubyte;ubyte")
	; Set the size of the structure
	DllStructSetData($stVersionInfoEx,1,DllStructGetSize($stVersionInfoEx))
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetVersionExW","ptr",DllStructGetPtr($stVersionInfoEx))
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	; Return ALL?
	If $iInfo<0 Then
		Dim $aVersionInfo[9]
		For $i=0 To 8
			$aVersionInfo[$i]=DllStructGetData($stVersionInfoEx,$i+2)
		Next
		Return $aVersionInfo
	EndIf
	Return DllStructGetData($stVersionInfoEx,$iInfo+2)
EndFunc