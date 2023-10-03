#include-once
#include "[CommonDLL]\_NTDLLCommonHandle.au3"	; common NTDLL.DLL handle
; ===============================================================================================================================
; <_DriverList.au3>
;
;	Function to return an array of drivers loaded by the system (uses an 'undocumented' API call)
;
; Functions:
;	_DriverList()	; Gets the list of drivers loaded by the system
;
; References:
;	UNDOCUMENTED Info Book (**GREAT RESOURCE**):
;		Windows 2000-XP Native API Reference
;
; See also:
;	API functions 'EnumDeviceDrivers' and 'GetDeviceDriverBaseName'
;
; Author: Ascend4nt
; ===============================================================================================================================

; ===================================================================================================================
; Func _DriverList()
;
; Returns an array describing device drivers loaded by the system using an 'undocumented' API function.
;
; Returns:
;	Success: Array with @error=0:
;		[0][0] = # of Drivers
;		[$i][0] = Driver Name
;		[$i][1] = Driver Path
;		[$i][2] = Base Address
;		[$i][3] = Module Size
;		[$i][4] = Load Count
;		[$i][5] = Flags
;		[$i][6] = Index (generally seems to match $i-1, so not sure of its usefulness)
;	Failure: '', with @error set:
;		@error = 2 = DLLCall error (@extended = error code returned from DLLCall)
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code returned in @extended
;		@error = 12 = 256KB buffer allocated, but API call still didn't work (doubtful this will ever happen)
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DriverList()
	; Reserved[2], BaseAddress, Size, Flags, Index, Unknown, LoadCount, ModuleNameOffset, ImageName
	Local Const $tag_SysModInfo='ulong_ptr[2];ptr;ulong;ulong;word;word;word;word;char[256]'
	Local $aRet,$iAlloc=4096,$sDriverPath,$stBuffer,$pBufPtr,$stModInfo,$aDrivers,$iSysModInfoSz=DllStructGetSize(DllStructCreate($tag_SysModInfo))
	; Vars used in inner-loop. We double-up on the '\'s due to them needing to be escaped for StringRegExpReplace()
	Local $sSysRoot=StringReplace(EnvGet('SystemRoot'),'\','\\'),$sWinDir=StringReplace(@WindowsDir,'\','\\')
	; Loop up to a max of 256K buffer (probably better to limit it further)
	;	Note that only 2 passes should be required on XP+ (Win2000 doesn't return 'required buffer size' in $aRet[4])
	While $iAlloc<262144
		$stBuffer=DllStructCreate("byte["&$iAlloc&"]")
		; SystemModuleInformation class = 11
		$aRet=DllCall($_COMMON_NTDLL,"long","NtQuerySystemInformation","int",11,"ptr",DllStructGetPtr($stBuffer),"ulong",$iAlloc,"ulong*",0)
		If @error Then Return SetError(2,@error,"")
		If $aRet[0]=0 Then ExitLoop		; STATUS_SUCCESS (0)

		; NTSTATUS error that is not 0xC0000004 (STATUS_INFO_LENGTH_MISMATCH)? Something unknown is wrong.
		If $aRet[0]<>0xC0000004 Then Return SetError(6,$aRet[0],"")
		If $aRet[4] Then
			$iAlloc=$aRet[4]
		Else
			$iAlloc*=2
		EndIf
	WEnd
	If $iAlloc>=262144 Then Return SetError(12,0,'')
	$pBufPtr=$aRet[2]	; (DllStructGetPtr($stBuffer))
	; 1st part of the buffer is a count of SYSTEM_MODULE_INFORMATION structures
	$iTotal=DllStructGetData(DllStructCreate('ulong_ptr',$pBufPtr),1)
	; Advance past the count of drivers. The rest of the buffer contains SYSTEM_MODULE_INFORMATION structures
	$pBufPtr+=4
	; Adjustment for x64
	If @AutoItX64 Then $pBufPtr+=4
	Dim $aDrivers[$iTotal+1][7]
	$aDrivers[0][0]=$iTotal
	For $i=1 To $iTotal
		$stModInfo=DllStructCreate($tag_SysModInfo,$pBufPtr)
;~ 		_DLLStructDisplay($stModInfo,'ulong_ptr Rsvd[2];ptr BaseAdd;ulong Size;ulong Flags;word Index;word Unk;word LoadCount;word ModuleNameOffset;char ImageName[256]')
		$sDriverPath=DllStructGetData($stModInfo,9)		; ImageName
		$aDrivers[$i][0]=StringMid($sDriverPath,DllStructGetData($stModInfo,8)+1)	; ModuleNameOffset (into prev. string)
;~ 		Make path readable/workable
		; Get rid of occassional prefix
		$sDriverPath=StringReplace($sDriverPath,'\??\','',0,2)
		; Change '\SystemRoot\' to Env. variable
		$sDriverPath=StringRegExpReplace($sDriverPath,'(?i)^\\SystemRoot',$sSysRoot)
		; and '\Windows\' to Env. variable
		$sDriverPath=StringRegExpReplace($sDriverPath,'(?i)^\\Windows',$sWinDir)
		$aDrivers[$i][1]=$sDriverPath
		$aDrivers[$i][2]=DllStructGetData($stModInfo,2)	; BaseAddress
		$aDrivers[$i][3]=DllStructGetData($stModInfo,3)	; Module Size
		$aDrivers[$i][4]=DllStructGetData($stModInfo,7)	; LoadCount
		$aDrivers[$i][5]=DllStructGetData($stModInfo,4)	; Flags
		$aDrivers[$i][6]=DllStructGetData($stModInfo,5)	; Index (useful?)	[SideNote: 'unk' is sometimes the same value as this]
		$pBufPtr+=$iSysModInfoSz	; Next module
	Next
	Return $aDrivers
EndFunc
