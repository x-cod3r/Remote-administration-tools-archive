
;===================================================================================================
; Function........:  _MemoryGetBaseAddress($ah_Handle, $iHD)
;
; Description.....:  Reads the 'Allocation Base' from the open process.
;
; Parameter(s)....:  $ah_Handle - An array containing the Dll handle and the handle of the open
;                         		  process as returned by _MemoryOpen().
;              	     $iHD - Return type:
;                	    |0 = Hex (Default)
;                	    |1 = Dec
;
; Requirement(s)..:  A valid process ID.
;
; Return Value(s).:  On Success - Returns the 'allocation Base' address and sets @Error to 0.
;                    On Failure - Returns 0 and sets @Error to:
;						|1 = Invalid $ah_Handle.
;						|2 = Failed to find correct allocation address.
;						|3 = Failed to read from the specified process.
;
; Author(s).......:  Nomad. Szhlopp.
; URL.............:  http://www.autoitscript.com/forum/index.php?showtopic=78834
; Note(s).........:  Go to Www.CheatEngine.org for the latest version of CheatEngine.
;===================================================================================================
Func _MemoryGetBaseAddress($ah_Handle, $iHexDec = 0)
    
    Local $iv_Address = 0x00100000
	Local $v_Buffer = DllStructCreate('dword;dword;dword;dword;dword;dword;dword')
	Local $vData
	Local $vType
	
    If Not IsArray($ah_Handle) Then
        SetError(1)
        Return 0
    EndIf
    

    DllCall($ah_Handle[0], 'int', 'VirtualQueryEx', 'int', $ah_Handle[1], 'int', $iv_Address, 'ptr', DllStructGetPtr($v_Buffer), 'int', DllStructGetSize($v_Buffer))
    
    If Not @Error Then
        
        $vData = Hex(DllStructGetData($v_Buffer, 2))
        $vType = Hex(DllStructGetData($v_Buffer, 3))
        
        While $vType <> "00000080"
            DllCall($ah_Handle[0], 'int', 'VirtualQueryEx', 'int', $ah_Handle[1], 'int', $iv_Address, 'ptr', DllStructGetPtr($v_Buffer), 'int', DllStructGetSize($v_Buffer))
            $vData = Hex(DllStructGetData($v_Buffer, 2))
            $vType = Hex(DllStructGetData($v_Buffer, 3))
            If Hex($iv_Address) = "01000000" Then ExitLoop
            $iv_Address += 65536
            
        WEnd

        If $vType = "00000080" Then
            SetError(0)
            If $iHexDec = 1 Then
                Return Dec($vData)
            Else
                Return $vData
            EndIf
            
        Else
            SetError(2)
            Return 0
        EndIf
        
    Else
        SetError(3)
        Return 0
    EndIf
    
EndFunc