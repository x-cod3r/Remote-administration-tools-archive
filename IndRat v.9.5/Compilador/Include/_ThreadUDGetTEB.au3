#include-once
#include <_ThreadUndocumented.au3>
; ===============================================================================================================================
; <_ThreadUDGetTEB.au3>
;
; Function to get 'undocumented' TEB/TIB structure from a Thread.
;	Includes full TEB structure definition.
;
; Functions:
;	_ThreadUDGetTEB()	; Reads the TEB for the Thread and returns a structure filled with its contents
;
; See also:
;	<_ThreadFunctions.au3>			; main Thread functions UDF
;	<_ThreadRemote.au3>				; Functions for creating Remote Threads
;	<_ThreadContext.au3>			; Special Thread Context functions. ADVANCED and dangerous stuff here
;	<_ThreadUndocumented.au3>		; 'Undocumented' Thread functions - Mom warned you..
;	<_ThreadUndocumentedList.au3>	; 'Undocumented' Thread List (wrapper) functions
;	<_ThreadUDGetTEB.au3>			; Function to retrieve 'undocumented' structure
;	<TestThreadFunctions.au3>		; GUI Interface allowing interaction with Thread functions
;	<_ProcessFunctions.au3>			; the main process functions
;	<_ProcessListFunctions.au3>		; Process List functions
;	<_ProcessUndocumented.au3>		; 'Undocumented' Process functions - stuff your Mom told you to stay away from
;	<_ProcessUndocumentedList.au3>	; 'Undocumented' Process List function that gathers a boatload of info in one fell swoop
;	<_ProcessUDGetPEB.au3>			; Function to retrieve 'undocumented' structure
;	<TestProcessFunctions.au3>		; GUI Interface allowing interaction with Process functions
;	<TestProcessFunctionsScratch.au3>	; Misc. tests of Process functions (a little experimental 'playground')
;	<_MemoryFunctionsEx.au3>		; Extended and 'undocumented' Memory Functions
;	<_MemoryScanning.au3>			; Advanced memory scan techniques using Assembly
;	<_ThreadFunctions.au3>			; Thread functions
;	<_DLLFunctions.au3>				; DLL Load/Free Library and GetProcAddress functions
;	<_DLLInjection.au3>				; DLL Injection/UnInjection, using the same technique many others use
;	<_DLLStructInject.au3>			; Memory injection & manipulation of DLLStructs using functions in the _ProcessFunction UDF
;	<_ProcessCPUUsage.au3>			; Function for calculating CPU Usage..
;	<_WinTimeFunctions.au3>			; for use with _ProcessGetTimes()
;	<_WinAPI_GetPerformanceInfo.au3> ; Performance Info (Task-Manager type of stuff) [XP/2003+]
;	<_WinAPI_GetSystemInfo.au3>		; System Info - processor, memory info
;	<_NTQueryInfo.au3>				; my NT-undocumented playground. Lots of crazy stuff..
;
; References:
;	NTSTATUS codes - see 'ntstatus.h'
;
;	Process Security and Access Rights (Windows) @ MSDN:
;		http://msdn.microsoft.com/en-us/library/ms684880%28VS.85%29.aspx
;
;	DATATYPE Info Resources:
;
;	Datatype Defines:
;		WinNT.h, WinUser.h, WTypes.h, BaseTsd.h, wdm.h (DDK)
;
;	Fundamental Types (C++) @ MSDN [includes sizes]:
;		http://msdn.microsoft.com/en-us/library/cc953fe1%28VS.80%29.aspx
;	Windows Data Types (Windows) @ MSDN:
;		http://msdn.microsoft.com/en-us/library/aa383751%28VS.85%29.aspx
;
;	UNDOCUMENTED Info Resources:
;
;	Windows API Platform SDK Headers:
;	  winternl.h
;	Windows Driver Kit Headers (WDK or DDK):
;	  ntddk.h
;
;	Undocumented Functions by NTinternals (note: some links are screwed, you should search the site using google):
;		http://undocumented.ntinternals.net/
;	Undocumented Windows API Structs - Process Hacker:
;		http://processhacker.sourceforge.net/hacking/structs.php
;	NirSoft Windows Vista Kernel Structures:
;		http://www.nirsoft.net/kernel_struct/vista/index.html
;	Win32 Thread Information Block:
;		http://en.wikipedia.org/wiki/Win32_Thread_Information_Block
;
;	Book: Windows 2000-XP Native API Reference
;		"\[PC Ebooks]\Windows 2000-XP Native API Reference.pdf"
;
; Special credit goes to VmWare's x64-compatible <NTDLL.H> header which has an accurate TEB structure definition.
;  NOTE, however, that due to embedded structures and further alignment issues, the definition below had to be adjusted in
;	  2 spots (adding 4 bytes each in x64 mode, to allow 8-byte alignment). New 'struct/endstruct' directives may solve the issue.
;	'NTDLL.H - dynamorio - Project Hosting on Google Code':
;		http://code.google.com/p/dynamorio/source/browse/trunk/core/win32/ntdll.h?r=245
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
;   --------------  TEB (Thread Environment Block)/TIB (Thread Information Block) Structure  Definition  ------------
; ===================================================================================================================


#cs
; ----------------------------------------------------------------------------------------------------------------
;	NOTE: 'Win32ThreadInfo' returns a negative 64-bit ptr in x64. However, perhaps only half the 64 bits need to be looked at?
;	 (Just a thought, since the value DOES change in the low 32-bits from process to process [and stays the same in upper 32-bits])
; ----------------------------------------------------------------------------------------------------------------
#ce
Dim $tagTEB="ptr ExceptionList;ptr StackBase;ptr StackLimit;ptr SubSystemTEB;ptr FiberData;ptr ArbitraryUserPtr;ptr Self;ptr Environment;" & _
	"ulong_ptr ThreadProcessID;ulong_ptr ThreadID;ptr ActiveRpcHandle;ptr ThreadLocalStorage;ptr PEB;dword LastError;" & _
	"dword CriticalSectionsCount;ptr CsrClientThread;ptr Win32ThreadInfo;dword User32Reserved[26];dword UserReserved[5];" & _
	"ptr WOW32Reserved;dword CurrentLocale;dword FpSoftwareStatusRegister;ptr Kernel32Reserved[54];long ExceptionCode;ptr ActivationContextStackPointer;"
	; Immediately after ActivationContextStackPointer is where x86 and x64 have a variation that needs this:
	If @AutoItX64 Then
		$tagTEB&="byte SpareBytes1[32];"	; VMWare's NTDLL.H puts [28], but this causes the next item to be misaligned [next item is 'struct' however]
	Else
		$tagTEB&="byte SpareBytes1[40];"
	EndIf
	; One more adjustment: 'LastStatusValue' is declared as dword, but next item is misaligned (another struct), so its defined as dword_ptr
	$tagTEB&="ulong GdiTebBatchOffset;handle GdiTebBatchHDC;ulong GdiTebBatchBuffer[310];"& _	; GDI_TEB_BATCH
	"ulong_ptr RealThreadProcessID;ulong_ptr RealThreadID;ptr GdiCachedProcessHandle;dword GdiClientPID;dword GdiClientTID;" & _
	"ptr GdiThreadLocalInfo;ulong_ptr Win32ClientInfo[62];ptr glDispatchTable[233];ulong_ptr glReserved1[29];ptr glReserved2;" & _
	"ptr glSectionInfo;ptr glSection;ptr glTable;ptr glCurrentRC;ptr glContext;dword_ptr LastStatusValue;word StaticUnicodeStringLen;word StaticUnicodeStringMaxLen;ptr StaticUnicodeString;" & _
	"word StaticUnicodeBuffer[261];ptr DeallocationStack;ptr TlsSlots[64];ptr TlsLinksNext;ptr TlsLinksPrev;ptr Vdm;ptr ReservedForNtRpc;" & _
	"ptr DbgSsReserved[2];dword HardErrorMode;ptr Instrumentation[14];ptr SubProcessTag;ptr EtwTraceData;ptr WinSockData;dword GdiBatchCount;" & _
	"byte InDbgPrint;byte FreeStackOnTermination;byte HasFiberData;byte IdealProcessor;dword GuaranteedStackBytes;ptr ReservedForPerf;ptr ReservedForOle;" & _
	"dword WaitingOnLoaderLock;ulong_ptr SparePointer1;ulong_ptr SoftPatchPtr1;ulong_ptr SoftPatchPtr2;ptr pTlsExpansionSlots;"
	; On x64 there are two extra fields after TlsExpansionSlotsPtr:
	If @AutoItX64 Then $tagTEB&="ptr DeallocationBStore;ptr BStoreLimit;"
	$tagTEB&="dword ImpersonationLocale;dword IsImpersonating;ptr NlsCache;ptr pShimData;dword HeapVirtualAffinity;" & _
	"ptr CurrentTransactionHandle;ptr ActiveFrame;ptr FlsData;byte SafeThunkCall;byte BooleanSpare[3]"


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ThreadUDGetTEB($hThread,$hProcess=0)
;
; Function to read the TEB (Thread Environment Block) and return it as a structure.
;	Full TEB/TIB structure definition is included in this UDF.
;
; $hThread = Handle to opened Thread
;	Process should have been opened with THREAD_QUERY_INFORMATION or THREAD_QUERY_LIMITED_INFORMATION (Vista+) access
; $hProcess = (optional, though recommended) - handle to opened process where memory will be read from.
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;	[If not provided, the Process will be opened anyway!]
;
; Returns:
;	Success: DLLStruct, with @extended = TEB address (re-cast as Ptr if needed)
;	Failure: 0, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'.  This possibly means that the memory read crossed over into
;					territory that it can't read from.  Use GetLastError to get more info.
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 8 = NULL ptr returned from __TUDGetBasic()
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ThreadUDGetTEB($hThread,$hProcess=0)
	Local $stTEB=DllStructCreate($tagTEB),$iPID=0,$pTeb
	; Once-only loop (for convenience of ExitLoop [rather than 'goto'])
	Do
		; Process handle not passed? We need to obtain it so that we can properly read Process memory.
		If Not IsPtr($hProcess) Then
			$iPID=_ThreadUDGetProcessID($hThread)
			If @error Then ExitLoop
			$hProcess=_ProcessOpen($iPID,$PROCESS_QUERY_LIMITED_INFO+0x10)
			If @error Then ExitLoop
		EndIf
		$pTeb=__TUDGetBasic($hThread,2)
		If @error Then ExitLoop
		If $pTeb<>0 Then
			_ProcessMemoryRead($hProcess,$pTeb,DllStructGetPtr($stTEB),DllStructGetSize($stTEB))
		Else
			SetError(8,0,0)
		EndIf
	Until 1
	Local $iErr=@error,$iExt=@extended
	; Did we open the process ourselves? Close it.
	If $iPID Then _ProcessCloseHandle($hProcess)
	If $iErr Then Return SetError($iErr,$iExt,0)
	Return SetExtended($pTeb,$stTEB)
EndFunc
