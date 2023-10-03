#include-once
#include "[Includes]\_ProcessFunctions.au3"
#region _Memory
;============================================================================================================
; AutoIt Version:  (3.3.6.0+)
;
; - SPECIAL ProcessFunctions VERSION: Ascend4nt (2011-09-27) -
;
; Language:   English
; Platform:   Windows
; Author:         Nomad, ProcessFunctions version: Ascend4nt
; Requirements:  3.3.6.0+, Ascend4nt's ProcessFunctions UDF
;============================================================================================================
; Credits:  Nomad, wOuter - These functions are based (in name) on the Nomad UDF.
;	The UDF was made for those who want x64 compatibility and look for Nomad
;	functionality in the ProcessFunctions UDF.
;	I kept the error returns and DLLStructure handling the same.
;
;	Differences:
;	- All functions now work with a handle, not an array (no need for DLL handle)
;	- REMOVED FUNCTIONS AND THEIR REPLACEMENTS:
;		- SetPrivilege()
;		  Replacement: _GetDebugPrivilegeRtl() - in <_GetDebugPrivilegeRtl.au3>
;		  or alternatively _GetPrivilege_SEDEBUG() by wraithdu at:
;			http://www.autoitscript.com/forum/topic/111061-get-sedebug-privilege/page__p__779764#entry779764
;		- _MemoryGetBaseAddress(), _MemoryModuleGetBaseAddress()
;		  Replacement: _ProcessGetModuleBaseAddress() - in <_ProcessListFunctions.au3>
;============================================================================================================
;
; Functions:
;
;==============================================================================================
; Function:   _MemoryOpen($iv_Pid[, $iv_DesiredAccess[, $iv_InheritHandle]])
; Description:    Opens a process and enables all possible access rights to the
;               process.  The Process ID of the process is used to specify which
;               process to open.  You must call this function before calling
;               _MemoryClose(), _MemoryRead(), or _MemoryWrite().
; Parameter(s):  $iv_Pid - The Process ID of the program you want to open.
;               $iv_DesiredAccess - (optional) Set to 0x1F0FFF by default, which
;                              enables all possible access rights to the
;                              process specified by the Process ID.
;               $iv_InheritHandle - (optional) If this value is TRUE, all processes
;                              created by this process will inherit the access
;                              handle.  Set to 1 (TRUE) by default.  Set to 0
;                              if you want it FALSE.
; Requirement(s):   None.
; Return Value(s):  On Success - Returns an array containing the Dll handle and an
;                         open handle to the specified process.
;               On Failure - Returns 0
;               @Error - 0 = No error.
;					   1 = invalid $iv_Pid
;					   2 = DLLCall error, @extended contains the actuall DLLCall @error result (see AutoIT help)
;					   3 = OpenProcess returned a 0 result (possibly a process that requires higher privilege levels)
;					   16 = Process passed wasn't a number, and does not exist (process ended or is invalid)
; Author(s):        Nomad, ProcessFunctions version: Ascend4nt
; Note(s):
;==============================================================================================
Func _MemoryOpen($iv_Pid, $iv_DesiredAccess = 0x1F0FFF, $iv_InheritHandle = 1)
	Local $h_Handle=_ProcessOpen($iv_Pid,$iv_DesiredAccess,($iv_InheritHandle=1))
	Return SetError(@error,@extended,$h_Handle)
EndFunc

;==============================================================================================
; Function:   _MemoryRead($iv_Address, $h_Handle[, $sv_Type])
; Description:    Reads the value located in the memory address specified.
; Parameter(s):  $iv_Address - The memory address you want to read from. It must
;                          Can be numerical or string format
;               $h_Handle - Handle returned from _MemoryOpen (or _ProcessOpen)
;               $sv_Type - (optional) The "Type" of value you intend to read.
;                        This is set to 'dword'(32bit(4byte) unsigned integer)
;                        by default.  See the help file for DllStructCreate
;                        for all types.  An example: If you want to read a
;                        word that is 15 characters in length, you would use
;                        'char[16]' since a 'char' is 8 bits (1 byte) in size.
; Return Value(s):  On Success - Returns the value located at the specified address.
;               On Failure - Returns 0
;               @Error - 0 = No error.
;                      1 = Invalid $h_Handle or $iv_Address.
;                      2 = $sv_Type was not a string.
;                      3 = $sv_Type is an unknown data type.
;                      4 = Failed to allocate the memory needed for the DllStructure.
;                      5 = Error allocating memory for $sv_Type.
;                      6 = Failed to read from the specified process.
; Author(s):        Nomad, ProcessFunctions version: Ascend4nt
; Note(s):      Values returned are in Decimal format, unless specified as a
;               'char' type, then they are returned in ASCII format.  Also note
;               that size ('char[size]') for all 'char' types should be 1
;               greater than the actual size.
;==============================================================================================
Func _MemoryRead($iv_Address, $h_Handle, $sv_Type = 'dword')
    Local $v_Buffer = DllStructCreate($sv_Type)
    If @error Then Return SetError(@error + 1,0,0)
	If _ProcessMemoryRead($h_Handle,$iv_Address,DllStructGetPtr($v_Buffer),DllStructGetSize($v_Buffer)) Then
		Return DllStructGetData($v_Buffer,1)
	EndIf
	If @error=1 Then Return SetError(1,0,0)
	Return SetError(6,@error,0)
EndFunc

;==============================================================================================
; Function:   _MemoryWrite($iv_Address, $h_Handle, $v_Data[, $sv_Type])
; Description:    Writes data to the specified memory address.
; Parameter(s):  $iv_Address - The memory address which you want to write to.
;                          Can be numerical or string format
;               $h_Handle - Handle returned from _MemoryOpen (or _ProcessOpen)
;               $v_Data - The data to be written.
;               $sv_Type - (optional) The "Type" of value you intend to write.
;                        This is set to 'dword'(32bit(4byte) unsigned integer)
;                        by default.  See the help file for DllStructCreate
;                        for all types.  An example: If you want to write a
;                        word that is 15 characters in length, you would use
;                        'char[16]' since a 'char' is 8 bits (1 byte) in size.
; Return Value(s):  On Success - Returns 1
;               On Failure - Returns 0
;               @Error - 0 = No error.
;                      1 = Invalid $h_Handle or $iv_Address
;                      2 = $sv_Type was not a string.
;                      3 = $sv_Type is an unknown data type.
;                      4 = Failed to allocate the memory needed for the DllStructure.
;                      5 = Error allocating memory for $sv_Type.
;                      6 = $v_Data is not in the proper format to be used with the
;                         "Type" selected for $sv_Type, or it is out of range.
;                      7 = Failed to write to the specified process.
; Author(s):        Nomad, ProcessFunctions version: Ascend4nt
; Note(s):      Values sent must be in Decimal format, unless specified as a
;               'char' type, then they must be in ASCII format.  Also note
;               that size ('char[size]') for all 'char' types should be 1
;               greater than the actual size.
;==============================================================================================
Func _MemoryWrite($iv_Address, $h_Handle, $v_Data, $sv_Type = 'dword')
    Local $v_Buffer = DllStructCreate($sv_Type)
	If @error Then Return SetError(@error + 1,0,0)
	DllStructSetData($v_Buffer, 1, $v_Data)
	If @error Then Return SetError(6,0,0)

	If _ProcessMemoryWrite($h_Handle,$iv_Address,DllStructGetPtr($v_Buffer),DllStructGetSize($v_Buffer)) Then Return 1

	If @error=1 Then Return SetError(1,0,0)
	Return SetError(7,@error,0)
EndFunc

;==============================================================================================
; Function:   _MemoryClose($h_Handle)
; Description:    Closes the process handle opened by using _MemoryOpen().
; Parameter(s):  $h_Handle - Handle returned from _MemoryOpen (or _ProcessOpen)
; Return Value(s):  On Success - Returns 1
;               On Failure - Returns 0
;               @Error - 0 = No error.
;                      1 = invalid parameter ($h_Handle.)
;                      2 = DLLCall error, @extended = DLLCall error # (see AutoIT documentation)
;                      3 = Function returned False (failure) - check GetLastError code
; Author(s):        Nomad, ProcessFunctions version: Ascend4nt
; Note(s):
;==============================================================================================
Func _MemoryClose($h_Handle)
	If _ProcessCloseHandle($h_Handle) Then Return 1
	Return SetError(@error,@extended,0)
EndFunc


;=================================================================================================
; Function:   _MemoryPointerRead ($iv_Address, $ah_Handle, $av_Offset[, $sv_Type])
; Description:    Reads a chain of pointers and returns an array containing the destination
;               address and the data at the address.
; Parameter(s):  $iv_Address - The static memory address you want to start at.
;                          Can be numerical or string format
;               $h_Handle - Handle returned from _MemoryOpen (or _ProcessOpen)
;               $av_Offset - An array of offsets for the pointers.  Each pointer must have an
;                         offset.  If there is no offset for a pointer, enter 0 for that
;                         array dimension.
;               $sv_Type - (optional) The "Type" of data you intend to read at the destination
;                         address.  This is set to 'dword'(32bit(4byte) unsigned integer) by
;                         default.  See the help file for DllStructCreate for all types.
; Requirement(s):   The $h_Handle returned from _MemoryOpen.
; Return Value(s):  On Success - Returns an array containing the destination address and the value
;                         located at the address.
;               On Failure - Returns 0
;               @Error - 0 = No error.
;                      1 = $av_Offset is not an array.
;                      2 = Invalid $h_Handle
;                      3 = $sv_Type is not a string.
;                      4 = $sv_Type is an unknown data type.
;                      5 = Failed to allocate the memory needed for the DllStructure.
;                      6 = Error allocating memory for $sv_Type.
;                      7 = Failed to read from the specified process.
; Author(s):        Nomad, ProcessFunctions version: Ascend4nt
; Note(s):      Values returned are in Decimal format, unless a 'char' type is selected.
;               Set $av_Offset like this:
;               $av_Offset[0] = NULL (not used)
;               $av_Offset[1] = Offset for pointer 1 (all offsets must be in Decimal)
;               $av_Offset[2] = Offset for pointer 2
;               etc...
;               (The number of array dimensions determines the number of pointers)
;=================================================================================================
Func _MemoryPointerRead($iv_Address, $h_Handle, $av_Offset, $sv_Type = 'dword')
	If Not IsArray($av_Offset) Then Return SetError(1,0,0)
	If Not IsPtr($h_Handle) Then Return SetError(2,0,0)

	Local $iv_PointerCount = UBound($av_Offset) - 1

    Local $iv_Data[2], $i, $iPtrSize = 4 * (1 + @AutoItX64)
    Local $v_Buffer = DllStructCreate($sv_Type)
	If @error Then Return SetError(@error + 2,0,0)

	$iv_Data[1] = Ptr($iv_Address)

    For $i = 0 To $iv_PointerCount
		If $i Then
			$iv_Address = $iv_Data[1] + Number($av_Offset[$i])
		EndIf

		If $i = $iv_PointerCount Then ExitLoop

		$iv_Data[1] = _ProcessMemoryReadSimple($h_Handle,$iv_Address,$iPtrSize,'ptr')
		If @error Then Return SetError(7,@error,0)
    Next
	If Not _ProcessMemoryRead($h_Handle,$iv_Address,DllStructGetPtr($v_Buffer),DllStructGetSize($v_Buffer)) Then Return SetError(7,@error,0)
	$iv_Data[1] = DllStructGetData($v_Buffer, 1)

    $iv_Data[0] = $iv_Address

    Return $iv_Data
EndFunc   ;==>_MemoryPointerRead


;=================================================================================================
; Function:         _MemoryPointerWrite ($iv_Address, $ah_Handle, $av_Offset, $v_Data[, $sv_Type])
; Description:      Reads a chain of pointers and writes the data to the destination address.
; Parameter(s):     $iv_Address - The static memory address you want to start at. It must be in
;                                 hex format (0x00000000).
;                   $h_Handle - Handle returned from _MemoryOpen (or _ProcessOpen)
;                   $av_Offset - An array of offsets for the pointers.  Each pointer must have an
;                                offset.  If there is no offset for a pointer, enter 0 for that
;                                array dimension.
;                   $v_Data - The data to be written.
;                   $sv_Type - (optional) The "Type" of data you intend to write at the destination
;                                address.  This is set to 'dword'(32bit(4byte) signed integer) by
;                                default.  See the help file for DllStructCreate for all types.
; Requirement(s):   The $h_Handle returned from _MemoryOpen.
; Return Value(s):  On Success - Returns the destination address.
;                   On Failure - Returns 0.
;                   @Error - 0 = No error.
;                            1 = $av_Offset is not an array.
;                            2 = Invalid $h_Handle.
;                            3 = Failed to read from the specified process.
;                            4 = $sv_Type is not a string.
;                            5 = $sv_Type is an unknown data type.
;                            6 = Failed to allocate the memory needed for the DllStructure.
;                            7 = Error allocating memory for $sv_Type.
;                            8 = $v_Data is not in the proper format to be used with the
;                                "Type" selected for $sv_Type, or it is out of range.
;                            9 = Failed to write to the specified process.
; Author(s):        Nomad, ProcessFunctions version: Ascend4nt
; Note(s):          Data written is in Decimal format, unless a 'char' type is selected.
;                   Set $av_Offset like this:
;                   $av_Offset[0] = NULL (not used, doesn't matter what's entered)
;                   $av_Offset[1] = Offset for pointer 1 (all offsets must be in Decimal)
;                   $av_Offset[2] = Offset for pointer 2
;                   etc...
;                   (The number of array dimensions determines the number of pointers)
;=================================================================================================

Func _MemoryPointerWrite ($iv_Address, $h_Handle, $av_Offset, $v_Data, $sv_Type = 'dword')
	If Not IsArray($av_Offset) Then Return SetError(1,0,0)
	If Not IsPtr($h_Handle) Then Return SetError(2,0,0)

	Local $iv_PointerCount = UBound($av_Offset) - 1

    Local $i, $iPtrSize = 4 * (1 + @AutoItX64)
    Local $v_Buffer = DllStructCreate($sv_Type)
	If @error Then Return SetError(@error + 3,0,0)

	DllStructSetData($v_Buffer, 1, $v_Data)
	If @error Then Return SetError(8,0,0)

	$iv_Address = Ptr($iv_Address)

    For $i = 0 To $iv_PointerCount
		If $i Then
			$iv_Address = $iv_Address + Number($av_Offset[$i])
		EndIf

        If $i = $iv_PointerCount Then ExitLoop

		$iv_Address = _ProcessMemoryReadSimple($h_Handle,$iv_Address,$iPtrSize,'ptr')
		If @error Then Return SetError(3,@error,0)
    Next

	If Not _ProcessMemoryWrite($h_Handle,$iv_Address,DllStructGetPtr($v_Buffer),DllStructGetSize($v_Buffer)) Then Return SetError(9,@error,0)

	Return $iv_Address
EndFunc

#EndRegion _Memory