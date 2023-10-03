#include-once
#include <_ThreadFunctions.au3>		; reliant on Thread_Suspend/Resume() functions
#include <_ThreadUndocumented.au3>	; need to check Wow64 via Process ID (using an old reliable undocumented function)
; ===============================================================================================================================
; <_ThreadContext.au3>
;
;	Functions for working with the Thread CONTEXT structure.  This has limited usefulness, although there are
;	 certain occasions when code needs to be set into another Process, or the flow of execution needs to be changed,
;	 or simply information about segments and debug information needs to be obtained.
;
;	** BE FOREWARNED that the 'Set*Context' functions are VERY dangerous and you should read the headers, 3 times! **
;	AND read the MSDN information!  AND then think 3x before doing it!  Okay, I think that's enough warnings..
;	Oh, and don't blame ME for anything you screw up with this code.  I'm just putting it out there (with ample warnings!)
;
; Functions:
;	_ThreadGetContext()		; suspends and gets the context of the given Process (before resuming again)
;	_ThreadGetWow64Context() ; suspends and gets the context of the given Wow64 Process (32-bit Process on x64 O/S)
;	_ThreadSetContext()		; suspends and sets the context of the given Process (before resuming again)
;	_ThreadSetWow64Context() ; suspends and sets the context of the given Wow64 Process (32-bit Process on x64 O/S)
;
; Dependencies:
;	<_ThreadFunctions.au3>
;	<_ThreadUndocumented.au3>
;
; See also:
;	<_DLLFunctions.au3>
;
; References:
;	CONTEXT structure: <ntddk.h>
;	MSDN - Get/Set Context functions
;	CodeProject: Walking the callstack (for those that want to find where the code was before it was 'parked')
;		http://www.codeproject.com/KB/threads/StackWalker.aspx?fid=202364&df=90&mpp=25&noise=3&sort=Position&view=Quick&fr=226&select=1178280
;
; Author: Ascend4nt
; ===============================================================================================================================



; ===================================================================================================================
;	--------------------	CONTEXT STRUCTURES AND BIT-MODE SPECIFIC DATA	--------------------
; ===================================================================================================================


; - 32-bit and Wow64 version of CONTEXT structure (the same) -

Global Const $tagWOW64CONTEXT_STRUCT="dword ContextFlags;" & _
	"dword Dr0;dword Dr1;dword Dr2;dword Dr3;dword Dr6;dword Dr7;" & _
	"dword ControlWord;dword StatusWord;dword TagWord;dword ErrorOffset;dword ErrorSelector;" & _
	"dword DataOffset;dword DataSelector;byte RegisterArea[80];dword Cr0NpxState;" & _
	"dword SegGs;dword SegFs;dword SegEs;dword SegDs;" & _
	"dword Edi;dword Esi;dword Ebx;dword Edx;dword Ecx;dword Eax;dword Ebp;" & _
	"dword Eip;dword SegCs;" & _
	"dword EFlags;" & _
	"dword Esp;dword SegSS;" & _
	"byte ExtRegisters[512]"

; - WOW64/x64 Constants

Global Const $CONTEXT_WOW64_BASE=0x010000, $CONTEXT_TEB_SEGX64='SegGs', $CONTEXT_TEB_SEGX86='SegFs'

; - Bit Mode Dependent 'Constants'

Global $tagCONTEXT_STRUCT
Global $CONTEXT_BASE

If @AutoItX64 Then
	;	@OSArch="X64" (AMD64 or x86-64 [x64 for short] version)
	$tagCONTEXT_STRUCT="align 16;uint64 P1Home;uint64 P2Home;uint64 P3Home;uint64 P4Home;uint64 P5Home;uint64 P6Home;" & _
		"ulong ContextFlags;ulong MxCsr;" & _
		"ushort SegCS;ushort SegDs;ushort SegEs;ushort SegFs;ushort SegGs;ushort SegSs;ulong EFlags;" & _
		"uint64 Dr0;uint64 Dr1;uint64 Dr2;uint64 Dr3;uint64 Dr6;uint64 Dr7;" & _
		"uint64 Rax;uint64 Rcx;uint64 Rdx;uint64 Rbx;uint64 Rsp;uint64 Rbp;uint64 Rsi;uint64 Rdi;uint64 R8;uint64 R9;uint64 R10;uint64 R11;uint64 R12;uint64 R13;uint64 R14;uint64 R15;" & _
		"uint64 Rip;" & _
		"ushort ControlWord;ushort StatusWord;byte TagWord;byte Reserved1;ushort ErrorOpcode;ulong ErrorOffset;ushort ErrorSelector;ushort Reserved2;ulong DataOffset;ushort DataSelector;ushort Reserved3;ulong MxCsr;ulong MxCsr_Mask;" & _
		"uint64 FloatRegisters[16];uint64 Xmm0[2];uint64 Xmm1[2];uint64 Xmm2[2];uint64 Xmm3[2];uint64 Xmm4[2];" & _
		"uint64 Xmm5[2];uint64 Xmm6[2];uint64 Xmm7[2];uint64 Xmm8[2];uint64 Xmm9[2];uint64 Xmm10[2];uint64 Xmm11[2];uint64 Xmm12[2];uint64 Xmm13[2];uint64 Xmm14[2];uint64 Xmm15[2];" & _
		"byte Reserved4[96];uint64 VectorRegister[52];uint64 VectorControl;" & _
		"uint64 DebugControl;uint64 LastBranchToRip;uint64 LastBranchFromRip;uint64 LastExceptionToRip;uint64 LastExceptionFromRip"
	$CONTEXT_BASE=0x100000
Else
#cs
	; ----------------------------------------------------------------------------------------------------------------
	; We check only for the Itanium architecture in non-@AutoItX64 (x86 mode) because there's no native 64-bit version of AutoIt
	;  for Itanium IA-64 (IA-64). IA-64 would *have* to be run in x64 mode, but there's only a 32-bit version of AutoIt
	;  for IA-64, hence this structure is useless (can't work with 64-bit pointers from a 32-bit environment)
	; ----------------------------------------------------------------------------------------------------------------
#ce
	If @OSArch='IA64' Then
		$tagCONTEXT_STRUCT=""
		$CONTEXT_BASE=0
#cs
	; ----------------------------------------------------------------------------------------------------------------
	; INTEL IA-64 version	[NOTE: stIIP = RIP (per CodeProject info)]
	Dim $tagCONTEXT_STRUCT="ulong ContextFlags;ulong FillAlign[3];uint64 DbI0;uint64 DbI1;uint64 DbI2;uint64 DbI3;uint64 DbI4;" & _
		"uint64 DbI5;uint64 DbI6;uint64 DbI7;uint64 DbD0;uint64 DbD1;uint64 DbD2;uint64 DbD3;uint64 DbD4;uint64 DbD5;uint64 DbD6;uint64 DbD7;" & _
		"uint64 FltsLower[28];uint64 FltsHigher[224];" & _
		"uint64 StFPSR;uint64 IntGp;uint64 IntT0;uint64 IntT1;uint64 IntS0;uint64 IntS1;uint64 IntS2;uint64 IntS3;uint64 IntV0;" & _
		"uint64 IntT2;uint64 IntT3;uint64 IntT4;uint64 IntSP;uint64 IntTEB;uint64 IntT5;uint64 IntT6;uint64 IntT7;uint64 IntT8;" & _
		"uint64 IntT9;uint64 IntT10;uint64 IntT11;uint64 IntT12;uint64 IntT13;uint64 IntT14;uint64 IntT15;uint64 IntT16;uint64 IntT17;uint64 IntT18;uint64 IntT19;uint64 IntT20;uint64 IntT21;uint64 IntT22;" & _
		"uint64 IntNats;uint64 Preds;uint64 BrRp;uint64 BrS0;uint64 BrS1;uint64 BrS2;uint64 BrS3;uint64 BrS4;uint64 BrT0;uint64 BrT1;" & _
		"uint64 ApUNAT;uint64 ApLC;uint64 ApEC;uint64 ApCCV;uint64 ApDCR;uint64 RsPFS;uint64 RsBSP;uint64 RsBSPSTORE;uint64 RsRSC;uint64 RsRNAT;" & _
		"uint64 StIPSR;uint64 StIIP;uint64 StIFS;uint64 StFCR;uint64 StFCR;uint64 Eflag;uint64 SegCSD;uint64 SegSSD;uint64 Cflag;uint64 StFSR;uint64 StFIR;uint64 stFDR;uint64 UNUSEDPACK"
	; ----------------------------------------------------------------------------------------------------------------
#ce
	Else
		; x86 version (same as Wow64 under x64 working mode)
		$tagCONTEXT_STRUCT=$tagWOW64CONTEXT_STRUCT
		$CONTEXT_BASE=$CONTEXT_WOW64_BASE
	EndIf
EndIf


; ===================================================================================================================
;	--------------------	CONTEXT FLAG VALUES	--------------------
; ===================================================================================================================

#cs
; ----------------------------------------------------------------------------------------------------------------
;	These flags represent architecture-independent values.
;	For more architecture-specific flags see 'CONTEXT_FLAGS_REFERENCE.txt'
;	** BitOR() these Constants together!! **
; ----------------------------------------------------------------------------------------------------------------
#ce

Global Const $CONTEXT_CONTROL=$CONTEXT_BASE+1		; CONTROL = SS:(E/R)SP, CS:(E/R)IP, FLAGS, (E/R)BP
Global Const $CONTEXT_INTEGER=$CONTEXT_BASE+2		; INTEGER = (E/R)AX, (E/R)BX, (E/R)CX, (E/R)DX, (E/R)SI, (E/R)DI,
													;           and R8 -> R15 (on x64). IA-64 probably has others.
Global Const $CONTEXT_SEGMENTS=$CONTEXT_BASE+4		; SEGMENTS = DS, ES, FS, GS [note: SS is part of CONTROL]
Global Const $CONTEXT_FLOATING_POINT=$CONTEXT_BASE+8	; FLOATING POINT = 387 state, and on x64 - XMM0-XMM15
Global Const $CONTEXT_DEBUG_REGISTERS=$CONTEXT_BASE+16	; DEBUG REGISTERS = 'DB 0-3,6,7' (Dr#?) + other registers

#cs
; ----------------------------------------------------------------------------------------------------------------
;	Not available on x64:
;~ Global Const $CONTEXT_EXTENDED_REGISTERS=$CONTEXT_BASE+32	; EXTENDED = CPU-specific extensions (x86) or IA32_CONTROL (IA-64)
; ----------------------------------------------------------------------------------------------------------------
#ce

;  - Generally architecture-specific: -
Global Const $CONTEXT_ALL=$CONTEXT_CONTROL+31		; All of the above with the exception of EXTENDED/IA32_CONTROL (not avail. on x64)

; - WOW64-specific (will be the same under x86 mode - with the exception of $CONTEXT_ALL_WOW64) -
Global Const $CONTEXT_CONTROL_WOW64=$CONTEXT_WOW64_BASE+1
Global Const $CONTEXT_INTEGER_WOW64=$CONTEXT_WOW64_BASE+2
Global Const $CONTEXT_SEGMENTS_WOW64=$CONTEXT_WOW64_BASE+4
Global Const $CONTEXT_FLOATING_POINT_WOW64=$CONTEXT_WOW64_BASE+8
Global Const $CONTEXT_DEBUG_REGISTERS_WOW64=$CONTEXT_WOW64_BASE+16
Global Const $CONTEXT_EXTENDED_REGISTERS_WOW64=$CONTEXT_WOW64_BASE+32
Global Const $CONTEXT_ALL_WOW64=$CONTEXT_WOW64_BASE+63


; ===================================================================================================================
;	--------------------	CONTEXT FUNCTIONS	--------------------
; ===================================================================================================================


; ==========================================================================================================================
; Func _ThreadGetContext($hThread,$iContextFlags,$bSuspend=False) &
;	Func _ThreadGetWow64Context($hThread,$iContextFlags,$bSuspend=False)
;
; Gets the Context structure for a Thread.  This structure is filled with information on the state of registers and misc.
;	debug information for the given Thread, which can include Stack and Code pointers.
;  IMPORTANT NOTES:
;	- the Wow64() version is for 32-bit applications running on a 64-bit O/S (Vista/2008+ only).
;	  To determine which function to call, first determine if the *Process* is Wow64 (_ProcessIsWow64()).
;	  * Use the appropriate version of _ThreadSetContext() also!
;	- If $bSuspend is set, note that a suspended thread's registers and Instruction Pointer do not reflect the program's
;	  last point of execution, but instead a 'parked' location within NTDLL.DLL
;	  (some and/or all the registers may be altered too)
;	- If a regular 64-bit Context 'get' call is made to a 32-bit Process, the function WILL succeed.
;	  What's returned, however, is the 'secondary' Context - that of the Wow64 wrapper.
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Handle must have been opened with THREAD_GET_CONTEXT (0x0008), and
;	 THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
;
;	*Additionally, if the thread is to be suspended/resumed, THREAD_SUSPEND_RESUME (0x02) access must be retrieved.
;	 MSDN suggests Suspending a thread before getting its context, due to some obvious reasons:
;	1. All registers are considered volatile while a Thread continues to run, save for a few (Segment registers for example)
;	2. Given #1, attempting to Set a context without knowing the continually moving/changing state of the Thread may
;	   cause a crash.. (or worse?)
;	 However, keep in mind also that a Suspended thread's registers don't necessarily reflect what the last state of the
;	  Thread was.  This is due to the way the O/S 'parks' a Thread in NTDLL.DLL.  Segments will be the same, but most
;	  everything else may be different.  To track where the last point a Thread was running at, the Stack would have to be
;	  examined, as would the instructions it returns to, & the module within which the code pointer was operating in, & so on.
;	 In short - this is $h*t you really don't want to mess around with on a whim.
;
; $iContextFlags = Flags determining exactly what information to get from the Thread and place into the Context structure
;	See Context Flag Values above, which should be BitOR'd together!
; $bSuspend = If False/zero (default), the function will not Suspend/Resume thread during Context retrieval
;			  If True, the Thread is suspended briefly before getting the Context, then resumed again.
;
; Returns:
;	Success: Context Structure, @error = 0
;	Failure: "", with @error set:
;		@error =  1 = invalid parameter(s)
;		@error =  2 = DLLCall() error, @extended contains error returned from DLLCall() (see AutoIT help)
;		@error =  3 = False return from GetThreadContext API call - check GetLastError*
;		  * A 'The parameter is incorrect' error results when a 32-bit process tries to obtain a 64-bit Thread's Context
;		@error =  4 = unable to Suspend thread (check your access rights!), @extended = error from _ThreadSuspend()
;		@error = -1 = Thread is operating in Wow64 mode, and this process is 64-bit. Must use _ThreadGetWow64Context()
;
; Author: Ascend4nt
; ==========================================================================================================================

Func _ThreadGetContext($hThread,$iContextFlags,$bSuspend=False)
	If Not IsPtr($hThread) Or Int($iContextFlags)=0 Then Return SetError(1,0,"")
#cs
	; NOTE: We don't check bit-modes for a few reasons:
	;	1. 32-bit processes running in Wow64 actually have a secondary 64-bit Context (for the Wow64 wrapper)
	;	2. The API call will fail and an error will return if there is a 32-to-64-bit Context 'get' attempt
#ce
	; Variables, create Context structure, and set Context Flags to receive requested info
	Local $aRet,$iErr,$stContext=DllStructCreate($tagCONTEXT_STRUCT)
	DllStructSetData($stContext,"ContextFlags",$iContextFlags)

	; Add 1 to the 'suspend count' (or suspend thread if 0)
	If $bSuspend And Not _ThreadSuspend($hThread) Then Return SetError(4,@error,"")
	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","GetThreadContext","handle",$hThread,"ptr",DllStructGetPtr($stContext))
	$iErr=@error
	; Subtract 1 from the 'suspend count' (or simply resume thread if 0)
	If $bSuspend Then _ThreadResume($hThread)
	If $iErr Then Return SetError(2,$iErr,"")
	If Not $aRet[0] Then Return SetError(3,0,"")
	Return $stContext
EndFunc

;	- Wow64 version (for a 32-bit process running on x64 O/S) -

Func _ThreadGetWow64Context($hThread,$iContextFlags,$bSuspend=False)
	If Not IsPtr($hThread) Or Int($iContextFlags)=0 Then Return SetError(1,0,"")
	; No bit-mode checks here. The API call will simply fail if the destination process is 64-bit, or succeed from 64/32-to-32-bit

	; Variables, create Context structure, and set Context Flags to receive requested info
	Local $aRet,$iErr,$stWow64Context=DllStructCreate($tagWOW64CONTEXT_STRUCT)
	DllStructSetData($stWow64Context,"ContextFlags",$iContextFlags)
	; Add 1 to the 'suspend count' (or suspend thread if 0)
	If $bSuspend And Not _ThreadWow64Suspend($hThread) Then Return SetError(4,@error,"")
	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Wow64GetThreadContext","handle",$hThread,"ptr",DllStructGetPtr($stWow64Context))
	$iErr=@error
	; Subtract 1 from the 'suspend count' (or simply resume thread if 0)
	If $bSuspend Then _ThreadResume($hThread)
	If $iErr Then Return SetError(2,$iErr,"")
	If Not $aRet[0] Then Return SetError(3,0,"")
	Return $stWow64Context
EndFunc


; ==========================================================================================================================
; Func _ThreadSetContext($hThread,Const ByRef $stContext,$bSuspend=True,$bSafetyChecks=True) &
;	Func _ThreadSetWow64Context($hThread,Const ByRef $stWow64Context,$bSuspend=True,$bSafetyChecks=True)
;
; Sets the Context for a Thread, via the passed (by reference) structure, typically obtained from _ThreadGet*Context()
;	Note that the Wow64() version is for 32-bit applications running on a 64-bit O/S (Vista/2008+ only).
;	To determine which function to call, first determine if the *Process* is Wow64 (_ProcessIsWow64()).
;
; WARNING: Do NOT set $bSafetyChecks to False AND use the non-Wow64 function to set the Context of a lower bit-mode Thread!!
;	That would result in setting the Wow64 'wrapper' Context, not the Context of the 32-bit code!
;	You'll notice there's a lot of warnings in these headers.  Heed these words well!  This is dangerous territory!
;
; $hThread = Thread Handle as returned from _ThreadCreate*() or _ThreadOpen()
;	Handle must have been opened with THREAD_SET_CONTEXT (0x0010) and THREAD_SUSPEND_RESUME (0x02) access
;	 NOTE: While THREAD_SUSPEND_RESUME (0x02) isn't necessary to call the Context* API functions, Suspending a Thread
;	  temporarily (as the functions does) is the only way to set the context properly! However, it is provided as an
;	  option ($bSuspend parameter) if the caller chooses to suspend/resume the Thread themselves.
; $stContext/$stWow64Context = CONTEXT structure (of the appropriate type).
;	NOTE that the 'ContextFlags' member *MUST* be set prior to this call!!  This means that whatever registers & debug
;	 information you plan on targeting MUST be set in that field, otherwise, be prepared for chaos.
; $bSuspend = If True (default), the Thread is suspended temporarily before the Context is altered, and then Resumed.
;	Note that setting this to False is only recommended if you Suspend prior to the call and Resume AFTER the call
; $bSafetyChecks = If True (default), the function determines first if the right Context structure is being used
;	The code determines the target Thread's bit-mode, as well as the Structure type before making the changes.
;
; Returns:
;	Success: True, @error = 0
;	Failure: False, with @error set:
;		@error = -1 = Wrong Structure for the given Thread's bit-mode has been passed.
;		@error =  1 = invalid parameter(s)
;		@error =  2 = DLLCall() error, @extended contains error returned from DLLCall() (see AutoIT help)
;		@error =  3 = False return from SetThreadContext API call - check GetLastError
;		@error =  4 = unable to Suspend thread (check your access rights!), @extended = error from _ThreadSuspend()
;
; Author: Ascend4nt
; ==========================================================================================================================

Func _ThreadSetContext($hThread,Const ByRef $stContext,$bSuspend=True,$bSafetyChecks=True)
	If Not IsPtr($hThread) Or Not IsDllStruct($stContext) Then Return SetError(1,0,False)
	; Safety Checks take a little more time. In some cases faster execution is needed..
	If $bSafetyChecks Then
		; Safety check - we won't send the wrong bit-mode-dependent Context structure to a thread running in a different bit mode
		If _ThreadUDIs32Bit($hThread) Then
			DllStructGetData($stContext,'Eax')
			If @error Then Return SetError(-1,0,False)
		Else
			DllStructGetData($stContext,'Rax')
			If @error Then Return SetError(-1,0,False)
		EndIf
	EndIf
	; Add 1 to the 'suspend count' (or suspend thread if 0)
	If $bSuspend And Not _ThreadSuspend($hThread) Then Return SetError(4,@error,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","SetThreadContext","handle",$hThread,"ptr",DllStructGetPtr($stContext))
	Local $iErr=@error
	; Subtract 1 from the 'suspend count' (or simply resume thread if 0)
	If $bSuspend Then _ThreadResume($hThread)
	If $iErr Then Return SetError(2,$iErr,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
	Return True
EndFunc

;	- Wow64 version (for a 32-bit process running on x64 O/S) -

Func _ThreadSetWow64Context($hThread,Const ByRef $stWow64Context,$bSuspend=True,$bSafetyChecks=True)
	If Not IsPtr($hThread) Or Not IsDllStruct($stWow64Context) Then Return SetError(1,0,False)
	; Safety Checks take a little more time. In some cases faster execution is needed..
	If $bSafetyChecks Then
		; Safety check - we can't set a Wow64 context for a 64-bit process, and we must have the right structure if its 32-bit
		If _ThreadUDIs64Bit($hThread) Then
			Return SetError(-1,0,False)
		Else
			; Thread is 32-bit. We need to verify that we have the right bit-mode Context structure.
			DllStructGetData($stWow64Context,'Eax')
			If @error Then Return SetError(-1,0,False)
		EndIf
	EndIf
	; Add 1 to the 'suspend count' (or suspend thread if 0)
	If $bSuspend And Not _ThreadWow64Suspend($hThread) Then Return SetError(4,@error,False)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","Wow64SetThreadContext","handle",$hThread,"ptr",DllStructGetPtr($stWow64Context))
	Local $iErr=@error
	; Subtract 1 from the 'suspend count' (or simply resume thread if 0)
	If $bSuspend Then _ThreadResume($hThread)
	If $iErr Then Return SetError(2,$iErr,False)
	If Not $aRet[0] Then Return SetError(3,0,False)
	Return True
EndFunc
