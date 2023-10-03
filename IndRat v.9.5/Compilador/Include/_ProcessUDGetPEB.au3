#include-once
#include <_ProcessUndocumented.au3>
; ===============================================================================================================================
; <_ProcessUDGetPEB.au3>
;
; Function to get 'undocumented' PEB structure from a Process.
;	Includes full PEB structure definition.
;
; Functions:
;	_ProcessUDGetPEB()	; Reads the PEB for the Process and returns a structure filled with its contents
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
; Special credit goes to VmWare's x64-compatible <NTDLL.H> header which has an accurate PEB structure definition:
;	'NTDLL.H - dynamorio - Project Hosting on Google Code':
;		http://code.google.com/p/dynamorio/source/browse/trunk/core/win32/ntdll.h?r=245
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
;   --------------  PEB (Process Environment Block) Structure Definition  --------------------------
; ===================================================================================================================


Dim $tagPEB="byte InheritedAddressSpace;byte ReadImageFileExecOptions;byte BeingDebugged;byte Bitfield;" & _
	"handle Mutant;ptr ImageBaseAddress;ptr LdrData;ptr ProcessParameters;" & _
	"ulong_ptr SubSystemData;ptr ProcessHeap;ptr FastPEBLock;ptr FastPEBLockRoutine;ptr FastPEBUnlockRoutine;dword EnvironmentUpdateCount;ptr pKernelCallbackTable;dword EventLogSection;" & _
	"dword EventLog;ptr FreeList;dword TlsExpansionCounter;ptr TlsBitMap;dword TlsBitmapBits[2];ptr ReadOnlySharedMemBase;ptr ReadOnlySharedMemHeap;ptr pReadOnlyStaticServerData;" & _
	"ptr ANSICodePageData;ptr OEMCodePageData;ptr UnicodeCaseTableData;dword NumProcessors;dword NtGlobalFlag;uint64 CriticalSectionTimeOut;ulong_ptr HeapSegmentReserve;" & _
	"ulong_ptr HeapSegmentCommit;ulong_ptr HeapDeCommitTotalFreeThreshold;ulong_ptr HeapDeCommitFreeBlockThreshold;dword NumHeaps;dword MaxNumHeaps;ptr pProcessHeaps;ptr GdiSharedHandleTable;ptr ProcessStarterHelper;" & _
	"dword GdiDCAttributeList;ptr LoaderLock;dword OSMajorVersion;dword OSMinorVersion;ushort OSBuildNum;ushort OSCSDVersion;dword OSPlatformID;dword ImageSubSystem;dword ImageSubSystemMajorVersion;" & _
	"dword ImageSubSystemMinorVersion;ulong_ptr ImageProcessAffinityMask;"
	; Immediately after ImageProcessAffinityMask is where x86 and x64 have a variation that needs this:
	If @AutoItX64 Then
		$tagPEB&="dword GdiHandleBuffer[60];"
	Else
		$tagPEB&="dword GdiHandleBuffer[34];"
	EndIf
	$tagPEB&="ptr PostProcessInitRoutine;ptr TlsExpansionBitmap;dword TlsExpansionBitmapBits[32];dword SessionID;" & _
	"uint64 AppCompatFlags;uint64 AppCompatFlagsUser;ptr pShimData;ptr AppCompatInfo;ushort CSDVersionLen;ushort CSDVersionMaxLen;ptr CSDVersion;" & _
	"ptr ActivationContextData;ptr ProcessAssemblyStorageMap;ptr SystemDefaultActivationContextData;ptr SystemAssemblyStorageMap;ulong_ptr MinStackCommit;" & _
	"ptr pFlsCallback;ptr FlsListHeadNext;ptr FlsListHeadPrev;ptr FlsBitmap;dword FlsBitmapBits[4];dword FlsHighIndex"


; ===================================================================================================================
;	--------------------	MAIN FUNCTIONS	--------------------
; ===================================================================================================================


; ===================================================================================================================
; Func _ProcessUDGetPEB($hProcess)
;
; Function to read the PEB (Process Environment Block) and return it as a structure.
;	Full PEB structure definition is included in this UDF.
;
; $hProcess = handle to opened process where memory will be read from
;	Process should have been opened with PROCESS_VM_READ (0x10) and either
;	  PROCESS_QUERY_INFORMATION or PROCESS_QUERY_LIMITED_INFORMATION (Vista+) access
;
; Returns:
;	Success: DLLStruct, with @extended = PEB address (re-cast as Ptr if needed)
;	Failure: 0, with @error set:
;		@error = 1 = invalid params
;		@error = 2 = DLLCall error (@extended contains actual @error from DLLCall() - see AutoIT Help for info)
;		@error = 3 = API call returned 'Failure'.  This possibly means that the memory read crossed over into
;					territory that it can't read from.  Use GetLastError to get more info.
;		@error = 6 = Undocumented API call reported failure (not 'STATUS_SUCCESS'). NTSTATUS code will be returned in @extended
;		@error = 7 = NtQueryInformationProcess Size mismatch ($aRet[5]<>$iProcInfoSz)
;		@error = 8 = NULL ptr returned from __PUDGetBasic()
;
; Author: Ascend4nt
; ===================================================================================================================

Func _ProcessUDGetPEB($hProcess)
	Local $stPEB=DllStructCreate($tagPEB),$pPeb=__PUDGetBasic($hProcess,2)
	If @error Then Return SetError(@error,@extended,0)
	If $pPeb=0 Then Return SetError(8,0,0)
	_ProcessMemoryRead($hProcess,$pPeb,DllStructGetPtr($stPEB),DllStructGetSize($stPEB))
	If @error Then Return SetError(@error,@extended,0)
	Return SetExtended($pPeb,$stPEB)
EndFunc
