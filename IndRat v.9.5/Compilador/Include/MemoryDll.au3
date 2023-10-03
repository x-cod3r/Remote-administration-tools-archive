; ============================================================================================================================
;  File     : MemoryDll.au3 X64 Supported Version (2011.4.3)
;  Purpose  : Embedding DLL In Scripts And Calling Memory Functions
;  Author   : Ward
; ============================================================================================================================

; ============================================================================================================================
;  Functions Lists:
;  Peek($Type, $Ptr)
;  Poke($Type, $Ptr, $Value)
;  MemLib_LoadLibrary($DllBinary)
;  MemLib_FreeLibrary($Module)
;  MemLib_GetProcAddress($Module, $FuncName)
;  MemoryFuncInit()
;  MemoryFuncCall($RetType, $Address, $Type1, $Param1, ...)
;  MemoryFuncExit()
;  MemoryDllOpen($DllBinary)
;  MemoryDllClose($Module)
;  MemoryDllCall($ModuleOrDllBinary, $RetType, $FuncName, $Type1, $Param1, ...)
; ============================================================================================================================

#Include-once
#Include <Memory.au3>

; ============================================================================================================================
;  Global Structure Constants Definition
; ============================================================================================================================

Global Const $tagIMAGE_DOS_HEADER =  "WORD e_magic;WORD e_cblp;WORD e_cp;WORD e_crlc;WORD e_cparhdr;WORD e_minalloc;WORD e_maxalloc;WORD e_ss;WORD e_sp;WORD e_csum;WORD e_ip;WORD e_cs;WORD e_lfarlc;WORD e_ovno;WORD e_res[4];WORD e_oemid;WORD e_oeminfo;WORD e_res2[10];LONG e_lfanew;"
Global Const $tagIMAGE_FILE_HEADER = "WORD Machine;WORD NumberOfSections;DWORD TimeDateStamp;DWORD PointerToSymbolTable;DWORD NumberOfSymbols;WORD SizeOfOptionalHeader;WORD Characteristics;"
Global $tagIMAGE_OPTIONAL_HEADER = "WORD Magic;BYTE MajorLinkerVersion;BYTE MinorLinkerVersion;DWORD SizeOfCode;DWORD SizeOfInitializedData;DWORD SizeOfUninitializedData;DWORD AddressOfEntryPoint;DWORD BaseOfCode;DWORD BaseOfData;PTR ImageBase;DWORD SectionAlignment;DWORD FileAlignment;WORD MajorOperatingSystemVersion;WORD MinorOperatingSystemVersion;WORD MajorImageVersion;WORD MinorImageVersion;WORD MajorSubsystemVersion;WORD MinorSubsystemVersion;DWORD Win32VersionValue;DWORD SizeOfImage;DWORD SizeOfHeaders;DWORD CheckSum;WORD Subsystem;WORD DllCharacteristics;PTR SizeOfStackReserve;PTR SizeOfStackCommit;PTR SizeOfHeapReserve;PTR SizeOfHeapCommit;DWORD LoaderFlags;DWORD NumberOfRvaAndSizes;"
If @AutoItX64 Then $tagIMAGE_OPTIONAL_HEADER = "WORD Magic;BYTE MajorLinkerVersion;BYTE MinorLinkerVersion;DWORD SizeOfCode;DWORD SizeOfInitializedData;DWORD SizeOfUninitializedData;DWORD AddressOfEntryPoint;DWORD BaseOfCode;PTR ImageBase;DWORD SectionAlignment;DWORD FileAlignment;WORD MajorOperatingSystemVersion;WORD MinorOperatingSystemVersion;WORD MajorImageVersion;WORD MinorImageVersion;WORD MajorSubsystemVersion;WORD MinorSubsystemVersion;DWORD Win32VersionValue;DWORD SizeOfImage;DWORD SizeOfHeaders;DWORD CheckSum;WORD Subsystem;WORD DllCharacteristics;PTR SizeOfStackReserve;PTR SizeOfStackCommit;PTR SizeOfHeapReserve;PTR SizeOfHeapCommit;DWORD LoaderFlags;DWORD NumberOfRvaAndSizes;"
Global Const $tagIMAGE_NT_HEADER = "DWORD Signature;" & $tagIMAGE_FILE_HEADER & $tagIMAGE_OPTIONAL_HEADER
Global Const $tagIMAGE_SECTION_HEADER = "CHAR Name[8];DWORD VirtualSize;DWORD VirtualAddress;DWORD SizeOfRawData;DWORD PointerToRawData;DWORD PointerToRelocations;DWORD PointerToLinenumbers;WORD NumberOfRelocations;WORD NumberOfLinenumbers;DWORD Characteristics;"
Global Const $tagIMAGE_DATA_DIRECTORY = "DWORD VirtualAddress;DWORD Size;"
Global Const $tagIMAGE_BASE_RELOCATION = "DWORD VirtualAddress;DWORD SizeOfBlock;"
Global Const $tagIMAGE_IMPORT_DESCRIPTOR = "DWORD OriginalFirstThunk;DWORD TimeDateStamp;DWORD ForwarderChain;DWORD Name;DWORD FirstThunk;"
Global Const $tagIMAGE_IMPORT_BY_NAME = "WORD Hint;char Name[1];"
Global Const $tagIMAGE_EXPORT_DIRECTORY = "DWORD Characteristics;DWORD TimeDateStamp;WORD MajorVersion;WORD MinorVersion;DWORD Name;DWORD Base;DWORD NumberOfFunctions;DWORD NumberOfNames;DWORD AddressOfFunctions;DWORD AddressOfNames;DWORD AddressOfNameOrdinals;"

; ============================================================================================================================
;  Windows API Definition (To avoid overhead of WinAPI UDF)
; ============================================================================================================================

If Not IsDeclared("_KERNEL32DLL") Then Global $_KERNEL32DLL = DllOpen("kernel32.dll")

Func _API_LoadLibrary($Filename)
	Local $Ret = DllCall($_KERNEL32DLL, "handle", "LoadLibraryW", "wstr", $Filename)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_FreeLibrary($Module)
	Local $Ret = DllCall($_KERNEL32DLL, "bool", "FreeLibrary", "handle", $Module)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_GetProcAddress($Module, $Procname)
	If IsNumber($Procname) Then
		Local $Ret = DllCall($_KERNEL32DLL, "ptr", "GetProcAddress", "handle", $Module, "int", $Procname)
	Else
		Local $Ret = DllCall($_KERNEL32DLL, "ptr", "GetProcAddress", "handle", $Module, "str", $Procname)
	EndIf
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_VirtualProtect($Address, $Size, $Protection)
	Local $Ret = DllCall($_KERNEL32DLL, "bool", "VirtualProtect", "ptr", $Address, "dword_ptr", $Size, "dword", $Protection, "dword*", 0)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_IsBadReadPtr($Ptr, $Len)
	Local $Ret = DllCall($_KERNEL32DLL, "int", "IsBadReadPtr", "ptr", $Ptr, "UINT_PTR", $Len)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_ZeroMemory($Address, $Size)
	Local $Ret = DllCall($_KERNEL32DLL, "none", "RtlZeroMemory", "ptr", $Address, "dword_ptr", $Size)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_GlobalReAlloc($Address, $Size, $Flags)
	Local $Ret = DllCall($_KERNEL32DLL, "ptr", "GlobalReAlloc", "ptr", $Address, "dword_ptr", $Size, "dword", $Flags)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_lstrlenA($Address)
	Local $Ret = DllCall($_KERNEL32DLL, "int", "lstrlenA", "ptr", $Address)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

Func _API_lstrlenW($Address)
	Local $Ret = DllCall($_KERNEL32DLL, "int", "lstrlenW", "ptr", $Address)
	If @Error Then Return SetError(@Error, @Extended, 0)
	Return $Ret[0]
EndFunc

; ============================================================================================================================
;  Classic Basic Keyword "Peek and Poke" For Memory Access
; ============================================================================================================================

Func Peek($Type, $Ptr)
	If $Type = "str" Then
		$Type = "char[" & _API_lstrlenA($Ptr) & "]"
	ElseIf $Type = "wstr" Then
		$Type = "wchar[" & _API_lstrlenW($Ptr) & "]"
	EndIf
	Return DllStructGetData(DllStructCreate($Type, $Ptr), 1)
EndFunc

Func Poke($Type, $Ptr, $Value)
	If $Type = "str" Then
		$Type = "char[" & (StringLen($Value) + 1) & "]"
	ElseIf $Type = "wstr" Then
		$Type = "wchar[" & (StringLen($Value) + 1) & "]"
	EndIf
	DllStructSetData(DllStructCreate($Type, $Ptr), 1, $Value)
EndFunc

; ============================================================================================================================
;  MemoryLibrary Functions
; ============================================================================================================================

Global Const $tagModule = "PTR ExportList;PTR CodeBase;PTR ImportList;PTR DllEntry;DWORD Initialized;"

#cs
	@Error
	1	Not a valid DLL file
	2	Incompatible versions
	3	Can't alloc memory
	4	Can't attach library
#ce
Func MemLib_LoadLibrary($DllBinary)
	$DllBinary = Binary($DllBinary)

	Local $DllData = DllStructCreate("byte[" & BinaryLen($DllBinary) & "]")
	Local $DllDataPtr = DllStructGetPtr($DllData)
	DllStructSetData($DllData, 1, $DllBinary)

	Local $IMAGE_DOS_HEADER = DllStructCreate($tagIMAGE_DOS_HEADER, $DllDataPtr)
	If DllStructGetData($IMAGE_DOS_HEADER, "e_magic") <> 0x5A4D Then
		Return SetError(1, 0, 0)
	EndIf

	Local $PEHeader = $DllDataPtr + DllStructGetData($IMAGE_DOS_HEADER, "e_lfanew")
	Local $IMAGE_NT_HEADER = DllStructCreate($tagIMAGE_NT_HEADER, $PEHeader)
	If DllStructGetData($IMAGE_NT_HEADER, "Signature") <> 0x4550 Then
		Return SetError(1, 0, 0)
	EndIf

	Switch DllStructGetData($IMAGE_NT_HEADER, "Magic")
	Case 0x10B ; IMAGE_NT_OPTIONAL_HDR32_MAGIC
		If @AutoItX64 Then Return SetError(2, 0, 0)
	Case 0x20B ; IMAGE_NT_OPTIONAL_HDR64_MAGIC
		If Not @AutoItX64 Then Return SetError(2, 0, 0)
	EndSwitch

	Local $ImageBase = DllStructGetData($IMAGE_NT_HEADER, "ImageBase")
	Local $SizeOfImage = DllStructGetData($IMAGE_NT_HEADER, "SizeOfImage")
	Local $SizeOfHeaders = DllStructGetData($IMAGE_NT_HEADER, "SizeOfHeaders")
	Local $AddressOfEntryPoint = DllStructGetData($IMAGE_NT_HEADER, "AddressOfEntryPoint")

	Local $ModulePtr = _MemGlobalAlloc(DllStructGetSize(DllStructCreate($tagModule)), $GPTR)
	If $ModulePtr = 0 Then Return SetError(3, 0, 0)
	Local $Module = DllStructCreate($tagModule, $ModulePtr)

	Local $CodeBase = _MemVirtualAlloc($ImageBase, $SizeOfImage, $MEM_RESERVE, $PAGE_READWRITE)
	If $CodeBase = 0 Then $CodeBase = _MemVirtualAlloc(0, $SizeOfImage, $MEM_RESERVE, $PAGE_READWRITE)
	If $CodeBase = 0 Then Return SetError(3, 0, 0)
	DllStructSetData($Module, "CodeBase", $CodeBase)

	_MemVirtualAlloc($CodeBase, $SizeOfImage, $MEM_COMMIT, $PAGE_READWRITE)
	Local $Base = _MemVirtualAlloc($CodeBase, $SizeOfHeaders, $MEM_COMMIT, $PAGE_READWRITE)
	_MemMoveMemory($DllDataPtr, $Base, $SizeOfHeaders)

	MemLib_CopySections($CodeBase, $PEHeader, $DllDataPtr)

	Local $LocationDelta = $CodeBase - $ImageBase
	If $LocationDelta <> 0 Then MemLib_PerformBaseRelocation($CodeBase, $PEHeader, $LocationDelta)

	Local $ImportList = MemLib_BuildImportTable($CodeBase, $PEHeader)
	If @Error Then
		MemLib_FreeLibrary($ModulePtr)
		Return SetError(2, 0, 0)
	EndIf

	Local $ExportList = MemLib_GetExportList($CodeBase, $PEHeader)
	Local $ImportListPtr = _MemGlobalAlloc(StringLen($ImportList) + 2, $GPTR)
	Local $ExportListPtr = _MemGlobalAlloc(StringLen($ExportList) + 2, $GPTR)
	DllStructSetData($Module, "ImportList", $ImportListPtr)
	DllStructSetData($Module, "ExportList", $ExportListPtr)
	If $ImportListPtr = 0 Or $ExportListPtr = 0 Then
		MemLib_FreeLibrary($ModulePtr)
		Return SetError(3, 0, 0)
	EndIf
	Poke("str", $ImportListPtr, $ImportList)
	Poke("str", $ExportListPtr, $ExportList)

	MemLib_FinalizeSections($CodeBase, $PEHeader)

	Local $DllEntry = $CodeBase + $AddressOfEntryPoint
	DllStructSetData($Module, "DllEntry", $DllEntry)

	DllStructSetData($Module, "Initialized", 0)
	If $AddressOfEntryPoint Then
		Local $Success = MemoryFuncCall("bool", $DllEntry, "ptr", $CodeBase, "dword", 1, "ptr", 0) ; DLL_PROCESS_ATTACH
		If Not $Success[0] Then
			MemLib_FreeLibrary($ModulePtr)
			Return SetError(4, 0, 0)
		EndIf

		DllStructSetData($Module, "Initialized", 1)
	EndIf

	Return $ModulePtr
EndFunc

Func MemLib_Vaild($ModulePtr)
	Local $ModuleSize = DllStructGetSize(DllStructCreate($tagModule))
	If _API_IsBadReadPtr($ModulePtr, $ModuleSize) Then Return False
	Local $Module = DllStructCreate($tagModule, $ModulePtr)
	Local $CodeBase = DllStructGetData($Module, "CodeBase")
	If Not $CodeBase Then Return False
	Return True
EndFunc

Func MemLib_FreeLibrary($ModulePtr)
	If Not MemLib_Vaild($ModulePtr) Then Return 0

	Local $Module = DllStructCreate($tagModule, $ModulePtr)
	Local $CodeBase = DllStructGetData($Module, "CodeBase")
	Local $DllEntry = DllStructGetData($Module, "DllEntry")
	Local $Initialized = DllStructGetData($Module, "Initialized")
	Local $ImportListPtr = DllStructGetData($Module, "ImportList")
	Local $ExportListPtr = DllStructGetData($Module, "ExportList")

	If $Initialized And $DllEntry Then
		Local $Success = MemoryFuncCall("bool", $DllEntry, "ptr", $CodeBase, "dword", 0, "ptr", 0) ; DLL_PROCESS_DETACH
		DllStructSetData($Module, "Initialized", 0)
	EndIf

	If $ExportListPtr Then _MemGlobalFree($ExportListPtr)
	If $ImportListPtr Then
		Local $ImportList = StringSplit(Peek("str", $ImportListPtr), ",")
		For $i = 1 To $ImportList[0]
			If $ImportList[$i] Then _API_FreeLibrary($ImportList[$i])
		Next
		_MemGlobalFree($ImportListPtr)
	EndIf

	If $CodeBase Then _MemVirtualFree($CodeBase, 0, $MEM_RELEASE)

	DllStructSetData($Module, "CodeBase", 0)
	DllStructSetData($Module, "ExportList", 0)
	_MemGlobalFree($ModulePtr)
	Return 1
EndFunc

Func MemLib_GetProcAddress($ModulePtr, $FuncName)
	Local $ExportPtr = Peek("ptr", $ModulePtr)
	If Not $ExportPtr Then Return 0
	Local $ExportList = Peek("str", $ExportPtr)
	Local $Match = StringRegExp($ExportList, "(?i)" & $FuncName & "\001([^\001]*)\001", 3)
	If Not @Error Then Return Ptr($Match[0])
	Return 0
EndFunc

Func MemLib_CopySections($CodeBase, $PEHeader, $DllDataPtr)
	Local $IMAGE_NT_HEADER = DllStructCreate($tagIMAGE_NT_HEADER, $PEHeader)
	Local $SizeOfFileHeader = DllStructGetPtr($IMAGE_NT_HEADER, "Magic") - $PEHeader
	Local $SizeOfOptionalHeader = DllStructGetData($IMAGE_NT_HEADER, "SizeOfOptionalHeader")
	Local $NumberOfSections = DllStructGetData($IMAGE_NT_HEADER, "NumberOfSections")
	Local $SectionAlignment = DllStructGetData($IMAGE_NT_HEADER, "SectionAlignment")

	Local $SectionPtr = $PEHeader + $SizeOfFileHeader + $SizeOfOptionalHeader
	For $i = 1 To $NumberOfSections
		Local $Section = DllStructCreate($tagIMAGE_SECTION_HEADER, $SectionPtr)
		Local $VirtualAddress = DllStructGetData($Section, "VirtualAddress")
		Local $SizeOfRawData = DllStructGetData($Section, "SizeOfRawData")
		Local $PointerToRawData = DllStructGetData($Section, "PointerToRawData")

		If $SizeOfRawData = 0 Then
			Local $Dest = _MemVirtualAlloc($CodeBase + $VirtualAddress, $SectionAlignment, $MEM_COMMIT, $PAGE_READWRITE)
			_API_ZeroMemory($Dest, $SectionAlignment)
		Else
			Local $Dest = _MemVirtualAlloc($CodeBase + $VirtualAddress, $SizeOfRawData, $MEM_COMMIT, $PAGE_READWRITE)
			_MemMoveMemory($DllDataPtr + $PointerToRawData, $Dest, $SizeOfRawData)
		EndIf
		DllStructSetData($Section, "VirtualSize", $Dest - $CodeBase)

		$SectionPtr += DllStructGetSize($Section)
	Next
EndFunc

Func MemLib_FinalizeSections($CodeBase, $PEHeader)
	Local Const $IMAGE_SCN_MEM_EXECUTE = 0x20000000
	Local Const $IMAGE_SCN_MEM_READ = 0x40000000
	Local Const $IMAGE_SCN_MEM_WRITE = 0x80000000
	Local Const $IMAGE_SCN_MEM_NOT_CACHED = 0x4000000
	Local Const $IMAGE_SCN_CNT_INITIALIZED_DATA = 64
	Local Const $IMAGE_SCN_CNT_UNINITIALIZED_DATA = 128

	; Missing in MemoryConstants.au3
	Local Const $PAGE_WRITECOPY = 0x0008
	Local Const $PAGE_EXECUTE_WRITECOPY = 0x0080

	Local $IMAGE_NT_HEADER = DllStructCreate($tagIMAGE_NT_HEADER, $PEHeader)
	Local $SizeOfFileHeader = DllStructGetPtr($IMAGE_NT_HEADER, "Magic") - $PEHeader
	Local $SizeOfOptionalHeader = DllStructGetData($IMAGE_NT_HEADER, "SizeOfOptionalHeader")
	Local $NumberOfSections = DllStructGetData($IMAGE_NT_HEADER, "NumberOfSections")
	Local $SectionAlignment = DllStructGetData($IMAGE_NT_HEADER, "SectionAlignment")

	Local $SectionPtr = $PEHeader + $SizeOfFileHeader + $SizeOfOptionalHeader
	For $i = 1 To $NumberOfSections
		Local $Section = DllStructCreate($tagIMAGE_SECTION_HEADER, $SectionPtr)
		Local $Characteristics = DllStructGetData($Section, "Characteristics")
		Local $SizeOfRawData = DllStructGetData($Section, "SizeOfRawData")

		Local $Executable = (BitAND($Characteristics, $IMAGE_SCN_MEM_EXECUTE) <> 0)
		Local $Readable = (BitAND($Characteristics, $IMAGE_SCN_MEM_READ) <> 0)
		Local $Writeable = (BitAND($Characteristics, $IMAGE_SCN_MEM_WRITE) <> 0)

		Local $ProtectList[8] = [$PAGE_NOACCESS, $PAGE_EXECUTE, $PAGE_READONLY, $PAGE_EXECUTE_READ, $PAGE_WRITECOPY, $PAGE_EXECUTE_WRITECOPY, $PAGE_READWRITE, $PAGE_EXECUTE_READWRITE]
		Local $Protect = $ProtectList[$Executable + $Readable * 2 + $Writeable * 4]
		If BitAND($Characteristics, $IMAGE_SCN_MEM_NOT_CACHED) Then $Protect = BitOR($Protect, $PAGE_NOCACHE)

		Local $Size = $SizeOfRawData
		If $Size = 0 Then
			If BitAND($Characteristics, $IMAGE_SCN_CNT_INITIALIZED_DATA) Then
				$Size = DllStructGetData($IMAGE_NT_HEADER, "SizeOfInitializedData")
			ElseIf BitAND($Characteristics, $IMAGE_SCN_CNT_UNINITIALIZED_DATA) Then
				$Size = DllStructGetData($IMAGE_NT_HEADER, "SizeOfUninitializedData")
			EndIf
		EndIf

		If $Size > 0 Then
			Local $PhysicalAddress = $CodeBase + DllStructGetData($Section, "VirtualSize")
			_API_VirtualProtect($PhysicalAddress, $Size, $Protect)
		EndIf

		$SectionPtr += DllStructGetSize($Section)
	Next
EndFunc

Func MemLib_PerformBaseRelocation($CodeBase, $PEHeader, $LocationDelta)
	Local Const $IMAGE_DIRECTORY_ENTRY_BASERELOC = 5
	Local Const $IMAGE_REL_BASED_HIGHLOW = 3
	Local Const $IMAGE_REL_BASED_DIR64 = 10

	Local $IMAGE_NT_HEADER = DllStructCreate($tagIMAGE_NT_HEADER, $PEHeader)
	Local $SizeOfDataDirectory = DllStructGetSize(DllStructCreate($tagIMAGE_DATA_DIRECTORY))
	Local $RelocDirectoryPtr = $PEHeader + DllStructGetSize($IMAGE_NT_HEADER) + $IMAGE_DIRECTORY_ENTRY_BASERELOC * $SizeOfDataDirectory
	Local $RelocDirectory = DllStructCreate($tagIMAGE_DATA_DIRECTORY, $RelocDirectoryPtr)
	Local $RelocSize = DllStructGetData($RelocDirectory, "Size")
	Local $RelocVirtualAddress = DllStructGetData($RelocDirectory, "VirtualAddress")

	If $RelocSize > 0 Then
		Local $Relocation = $CodeBase + $RelocVirtualAddress

		While 1
			Local $IMAGE_BASE_RELOCATION = DllStructCreate($tagIMAGE_BASE_RELOCATION, $Relocation)
			Local $VirtualAddress = DllStructGetData($IMAGE_BASE_RELOCATION, "VirtualAddress")
			Local $SizeOfBlock = DllStructGetData($IMAGE_BASE_RELOCATION, "SizeOfBlock")

			If $VirtualAddress = 0 Then ExitLoop

			Local $Dest = $CodeBase + $VirtualAddress
			Local $Entries = ($SizeOfBlock - 8) / 2
			Local $RelInfo = DllStructCreate("word[" & $Entries & "]", $Relocation + 8)
			For $i = 1 To $Entries
				Local $Info = DllStructGetData($RelInfo, 1, $i)
				Local $Type = BitShift($Info, 12)

				If $Type = $IMAGE_REL_BASED_HIGHLOW Or $Type = $IMAGE_REL_BASED_DIR64 Then
					Local $Addr = DllStructCreate("ptr", $Dest + BitAND($Info, 0xFFF))
					DllStructSetData($Addr, 1, DllStructGetData($Addr, 1) + $LocationDelta)
				EndIf
			Next

			$Relocation += $SizeOfBlock
		WEnd
	EndIf
EndFunc

Func MemLib_BuildImportTable($CodeBase, $PEHeader)
	Local Const $IMAGE_DIRECTORY_ENTRY_IMPORT = 1
	Local Const $SizeOfPtr = DllStructGetSize(DllStructCreate('ptr', 1))

	Local $IMAGE_NT_HEADER = DllStructCreate($tagIMAGE_NT_HEADER, $PEHeader)
	Local $SizeOfDataDirectory = DllStructGetSize(DllStructCreate($tagIMAGE_DATA_DIRECTORY))
	Local $ImportDirectoryPtr = $PEHeader + DllStructGetSize($IMAGE_NT_HEADER) + $IMAGE_DIRECTORY_ENTRY_IMPORT * $SizeOfDataDirectory
	Local $ImportDirectory = DllStructCreate($tagIMAGE_DATA_DIRECTORY, $ImportDirectoryPtr)
	Local $ImportSize = DllStructGetData($ImportDirectory, "Size")
	Local $ImportVirtualAddress = DllStructGetData($ImportDirectory, "VirtualAddress")
	Local $SizeOfImportDir = DllStructGetSize(DllStructCreate($tagIMAGE_IMPORT_DESCRIPTOR))

	Local $ImportList = ""
	If $ImportSize > 0 Then
		Local $ImportDescPtr = $CodeBase + $ImportVirtualAddress
		While 1
			If _API_IsBadReadPtr($ImportDescPtr, $SizeOfImportDir) Then ExitLoop
			Local $ImportDesc = DllStructCreate($tagIMAGE_IMPORT_DESCRIPTOR, $ImportDescPtr)

			Local $NameOffset =  DllStructGetData($ImportDesc, "Name")
			If $NameOffset = 0 Then ExitLoop
			Local $Name = Peek("str", $CodeBase + $NameOffset)

			Local $OriginalFirstThunk = DllStructGetData($ImportDesc, "OriginalFirstThunk")
			Local $FirstThunk = DllStructGetData($ImportDesc, "FirstThunk")

			Local $Handle = _API_LoadLibrary($Name)
			If $Handle Then
				$ImportList &= $Handle & ","

				Local $FuncRef = $CodeBase + $FirstThunk
				Local $ThunkRef = $CodeBase + $OriginalFirstThunk
				If $OriginalFirstThunk = 0 Then $ThunkRef = $FuncRef

				While 1
					Local $Ref = Peek("ptr", $ThunkRef)
					If $Ref = 0 Then ExitLoop

					If BitAND(Peek("byte", $ThunkRef + $SizeOfPtr - 1), 0x80) Then
						Local $Ptr = _API_GetProcAddress($Handle, BitAND($Ref, 0xffff))

					Else
						Local $IMAGE_IMPORT_BY_NAME = DllStructCreate($tagIMAGE_IMPORT_BY_NAME, $CodeBase + $Ref)
						Local $NamePtr = DllStructGetPtr($IMAGE_IMPORT_BY_NAME, 2)
						Local $FuncName = Peek("str", $NamePtr)

						Local $Ptr = _API_GetProcAddress($Handle, $FuncName)
					EndIf
					If $Ptr = 0 Then Return SetError(1, 0, False)
					Poke("ptr", $FuncRef, $Ptr)

					$ThunkRef += $SizeOfPtr
					$FuncRef += $SizeOfPtr
				WEnd
			Else
				Return SetError(1, 0, False)
			EndIf

			$ImportDescPtr += $SizeOfImportDir
		WEnd
	EndIf
	Return $ImportList
EndFunc

Func MemLib_GetExportList($CodeBase, $PEHeader)
	Local Const $IMAGE_DIRECTORY_ENTRY_EXPORT = 0

	Local $IMAGE_NT_HEADER = DllStructCreate($tagIMAGE_NT_HEADER, $PEHeader)
	Local $SizeOfDataDirectory = DllStructGetSize(DllStructCreate($tagIMAGE_DATA_DIRECTORY))
	Local $ExportDirectoryPtr = $PEHeader + DllStructGetSize($IMAGE_NT_HEADER) + $IMAGE_DIRECTORY_ENTRY_EXPORT * $SizeOfDataDirectory
	Local $ExportDirectory = DllStructCreate($tagIMAGE_DATA_DIRECTORY, $ExportDirectoryPtr)
	Local $ExportSize = DllStructGetData($ExportDirectory, "Size")
	Local $ExportVirtualAddress = DllStructGetData($ExportDirectory, "VirtualAddress")

	Local $ExportList = ""
	If $ExportSize > 0 Then
		Local $IMAGE_EXPORT_DIRECTORY = DllStructCreate($tagIMAGE_EXPORT_DIRECTORY, $CodeBase + $ExportVirtualAddress)
		Local $NumberOfNames = DllStructGetData($IMAGE_EXPORT_DIRECTORY, "NumberOfNames")
		Local $NumberOfFunctions = DllStructGetData($IMAGE_EXPORT_DIRECTORY, "NumberOfFunctions")
		Local $AddressOfFunctions = DllStructGetData($IMAGE_EXPORT_DIRECTORY, "AddressOfFunctions")
		If $NumberOfNames = 0 Or $NumberOfFunctions = 0 Then Return ""

		Local $NameRef = $CodeBase + DllStructGetData($IMAGE_EXPORT_DIRECTORY, "AddressOfNames")
		Local $Ordinal = $CodeBase + DllStructGetData($IMAGE_EXPORT_DIRECTORY, "AddressOfNameOrdinals")

		For $i = 1 To $NumberOfNames
			Local $Ref = Peek("dword", $NameRef)
			Local $Idx = Peek("word", $Ordinal)
			Local $FuncName = Peek("str", $CodeBase + $Ref)
			If $Idx <= $NumberOfFunctions Then
				Local $Addr = $CodeBase + Peek("dword", $CodeBase + $AddressOfFunctions + $Idx * 4)
				$ExportList &= $FuncName & Chr(1) & $Addr & Chr(1)
			EndIf

			$NameRef += 4 ; DWORD
			$Ordinal += 2 ; WORD
		Next
	EndIf
	Return $ExportList
EndFunc

; ============================================================================================================================
;  MemoryFunc Functions
; ============================================================================================================================

Global $_MFHookPtr, $_MFHookBak, $_MFHookApi = "LocalCompact"

Func MemoryFuncInit()
	Local $KernelHandle = _API_LoadLibrary("kernel32.dll")
	_API_FreeLibrary($KernelHandle)

	Local $HookPtr = _API_GetProcAddress($KernelHandle, $_MFHookApi)
	Local $HookSize = 7 + @AutoItX64 * 5

	$_MFHookPtr = $HookPtr
	$_MFHookBak = DllStructCreate("byte[" & $HookSize & "]")

	If Not _API_VirtualProtect($_MFHookPtr, $HookSize, $PAGE_EXECUTE_READWRITE) Then Return False

	DllStructSetData($_MFHookBak, 1, Peek("byte[" & $HookSize & "]", $_MFHookPtr))
	If @AutoItX64 Then
		Poke("word", $_MFHookPtr, 0xB848)
		Poke("word", $_MFHookPtr + 10, 0xE0FF)
	Else
		Poke("byte", $_MFHookPtr, 0xB8)
		Poke("word", $_MFHookPtr + 5, 0xE0FF)
	EndIf

	Return True
EndFunc

Func MemoryFuncCall($RetType, $Address, $Type1 = "", $Param1 = 0, $Type2 = "", $Param2 = 0, $Type3 = "", $Param3 = 0, $Type4 = "", $Param4 = 0, $Type5 = "", $Param5 = 0, $Type6 = "", $Param6 = 0, $Type7 = "", $Param7 = 0, $Type8 = "", $Param8 = 0, $Type9 = "", $Param9 = 0, $Type10 = "", $Param10 = 0, $Type11 = "", $Param11 = 0, $Type12 = "", $Param12 = 0, $Type13 = "", $Param13 = 0, $Type14 = "", $Param14 = 0, $Type15 = "", $Param15 = 0, $Type16 = "", $Param16 = 0, $Type17 = "", $Param17 = 0, $Type18 = "", $Param18 = 0, $Type19 = "", $Param19 = 0, $Type20 = "", $Param20 = 0)
	If Not IsDllStruct($_MFHookBak) Then MemoryFuncInit()
	Poke("ptr", $_MFHookPtr + 1 + @AutoItX64, $Address)
	Local $Ret
	Switch @NumParams
	Case 2
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi)
	Case 4
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1)
	Case 6
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2)
	Case 8
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2, $Type3, $Param3)
	Case 10
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2, $Type3, $Param3, $Type4, $Param4)
	Case 12
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2, $Type3, $Param3, $Type4, $Param4, $Type5, $Param5)
	Case Else
		Local $DllCallStr = 'DllCall($_KERNEL32DLL, $RetType, $_MFHookApi', $n = 1
		For $i = 4 To @NumParams Step 2
			$DllCallStr &= ', $Type' & $n & ', $Param' & $n
			$n += 1
		Next
		$DllCallStr &= ')'
		$Ret = Execute($DllCallStr)
	EndSwitch
	Return SetError(@Error, 0, $Ret)
EndFunc

Func MemoryFuncExit()
	Local $HookSize = DllStructGetSize($_MFHookBak)
	Poke("byte[" & $HookSize & "]", $_MFHookPtr, DllStructGetData($_MFHookBak, 1))
	$_MFHookBak = 0
EndFunc


; ============================================================================================================================
;  MemoryDll Functions
; ============================================================================================================================

Func MemoryDllOpen($DllBinary)
	If Not IsDllStruct($_MFHookBak) Then MemoryFuncInit()
	Local $Module = MemLib_LoadLibrary($DllBinary)

	If @Error Then Return SetError(@Error, 0, -1)
	Return $Module
EndFunc

Func MemoryDllClose($Module)
	MemLib_FreeLibrary($Module)
EndFunc

Func MemoryDllCall($Module, $RetType, $FuncName, $Type1 = "", $Param1 = 0, $Type2 = "", $Param2 = 0, $Type3 = "", $Param3 = 0, $Type4 = "", $Param4 = 0, $Type5 = "", $Param5 = 0, $Type6 = "", $Param6 = 0, $Type7 = "", $Param7 = 0, $Type8 = "", $Param8 = 0, $Type9 = "", $Param9 = 0, $Type10 = "", $Param10 = 0, $Type11 = "", $Param11 = 0, $Type12 = "", $Param12 = 0, $Type13 = "", $Param13 = 0, $Type14 = "", $Param14 = 0, $Type15 = "", $Param15 = 0, $Type16 = "", $Param16 = 0, $Type17 = "", $Param17 = 0, $Type18 = "", $Param18 = 0, $Type19 = "", $Param19 = 0, $Type20 = "", $Param20 = 0)
	Local $Ret, $OpenFlag = False
	Local Const $MaxParams = 20
	If (@NumParams < 3) Or (@NumParams > $MaxParams * 2 + 3) Or (Mod(@NumParams, 2) = 0) Then Return SetError(4, 0, 0)

	If Not IsPtr($Module) Then
		$OpenFlag = True
		$Module = MemoryDllOpen($Module)
		If @Error Then Return SetError(1, 0, 0)
	EndIf

	Local $Addr = MemLib_GetProcAddress($Module, $FuncName)
	If Not $Addr Then Return SetError(3, 0, 0)

	Poke("ptr", $_MFHookPtr + 1 + @AutoItX64, $Addr)
	Switch @NumParams
	Case 3
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi)
	Case 5
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1)
	Case 7
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2)
	Case 9
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2, $Type3, $Param3)
	Case 11
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2, $Type3, $Param3, $Type4, $Param4)
	Case 13
		$Ret = DllCall($_KERNEL32DLL, $RetType, $_MFHookApi, $Type1, $Param1, $Type2, $Param2, $Type3, $Param3, $Type4, $Param4, $Type5, $Param5)
	Case Else
		Local $DllCallStr = 'DllCall($_KERNEL32DLL, $RetType, $_MFHookApi', $n = 1
		For $i = 5 To @NumParams Step 2
			$DllCallStr &= ', $Type' & $n & ', $Param' & $n
			$n += 1
		Next
		$DllCallStr &= ')'
		$Ret = Execute($DllCallStr)
	EndSwitch

	Local $Err = @Error
	If $OpenFlag Then MemoryDllClose($Module)
	Return SetError($Err, 0, $Ret)
EndFunc
