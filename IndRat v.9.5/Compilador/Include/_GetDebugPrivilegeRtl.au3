#include-once
#include "[CommonDLL]\_NTDLLCommonHandle.au3"
; ===============================================================================================================================
; <_GetDebugPrivilegeRtl.au3>
;
; Function to get 'SEDEBUG' Debug Privilege.  (Based on Manko's _GetPrivilege_SeDebug())
;
; Functions:
;	_GetDebugPrivilegeRtl()
;
; Reference:
;	Manko's '_GetPrivilege_SeDebug()' UDF in the thread 'Get SeDebug privilege' @
;		http://www.autoitscript.com/forum/index.php?showtopic=1110
;	See "Tip:Easy way to enable privileges" - Sysinternals Forum @
;		http://forum.sysinternals.com/topic15745.html
;	NTSTATUS.H online:
;		http://source.winehq.org/source/include/ntstatus.h
;
; Author: Ascend4nt (DLLCall info from Manko's _GetPrivilege_SeDebug function)
; ===============================================================================================================================

; ====================================================================================================
; Func _GetDebugPrivilegeRtl()
;
; Performs the same function as _GetPrivilege_SEDEBUG() [Obtains SE_DEBUG privilege for the running process]
;	The function (without my changes) was originally posted by 61
;
; Returns:
; 	Success: True
; 	Failure: False, with @error set:
;		@error = 2 = DLLCall error, @extended= DLLCall error, see AutoIT help
;		@error = 3 = API call returned something other that STATUS_SUCCESS. @extended = NTSTATUS code (ntstatus.h)
;			(A typical message is 'STATUS_ACCESS_DENIED' [0xC0000022])
;
; Author: Ascend4nt (DLLCall info from Manko's _GetPrivilege_SeDebug function)
; ====================================================================================================

Func _GetDebugPrivilegeRtl()
    Local $aRet=DllCall($_COMMON_NTDLL,"long","RtlAdjustPrivilege","ulong",20,"bool",True,"bool",False,"bool*",0) ; 20 is SeDebug privilege...
    If @error Then Return SetError(2,@error,False)
    If $aRet[0] Then Return SetError(3,$aRet[0],False)
	Return True
EndFunc
