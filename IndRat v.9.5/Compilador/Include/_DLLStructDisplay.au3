#include-once
#include <Array.au3>
; ===================================================================================================================
; <_DLLStructDisplay.au3>
;
; A function to display the contents of a DLL Structure in a ListView format (using _ArrayDisplay)
;
; Version: 2011.5.27, All AutoIt v.3.3.7.2 types allowed, including 'Struct'/'EndStruct' alignment directives
;
; NOTE: Some items may appear blank if they exceed a certain length.
;  For example, a binary [byte] concatenated object will fail somewhere between 1024-2048 bytes!
;  Not sure what the *string* display limit is..
;
; Functions:
;	_DLLStructDisplay()
;
; Dependencies:
;	<Array.au3>	; _ArrayDisplay()
;
; References:
;	Data Structure Alignment @ Wikipedia: http://en.wikipedia.org/wiki/Data_structure_alignment
;	#pragma pack C/C++ Directive (basically equivalent to 'align #') - 'pack' @ MSDN:
;		http://msdn.microsoft.com/en-us/library/2e70t5y1%28v=VS.100%29.aspx
;
; Author: Ascend4nt
; ===================================================================================================================


; ===================================================================================================================
; Func _DLLStructDisplay(Const ByRef $stStruct,$sStString,$sStructName="",$bBinConcat=False,$bStrConcat=True)
;
; Displays the contents of a DLL structure in a ListView format (using _ArrayDisplay)
;	NOTE: Some items may appear blank if they exceed a certain length.
;	  For example, a binary [byte] concatenated object will fail somewhere between 1024-2048 bytes!
;	  Not sure what the *string* limit is though..
;
; $stStruct = structure that has been initialized
; $sStString = string used to create the structure.
;	IMPORTANT: This MUST absolutely be the same string!
; $sStructName = optional *SHORT* description of the Structure, to be incorporated into Title
; $bBinConcat = If True, any byte/ubyte data with subitems/array ([#]) will be displayed as one whole string
;				If False (default), its displayed item by item
; $bStrConcat = If True (default), any char/uchar data with subitems/array ([#]) will be displayed as one whole string
;				If False, its displayed item by item
;
; Formatted-Translation-String NOTES:
; - There are no 'ptr' and no types without 'u' - this is because the RegEx will
;	correctly see those types within other types - and the sizes will be the same
; - Also: Current documentation in DLLStructCreate incorrectly lists "handle" and "hwnd" types as integers,
;	but they are actually *pointers* (this is correctly indicated in DLLCall documentation though).
;
; Returns:
;	Success: True
;	Failure: False, with @error set:
;		@error = 1 = invalid parameter,	& if @extended>-1, it indicates index # of the type where error was found
;
; Author: Ascend4nt
; ===================================================================================================================

Func _DLLStructDisplay(Const ByRef $stStruct,$sStString,$sStructName="",$bBinConcat=False,$bStrConcat=True)
	If Not IsDllStruct($stStruct) Or Not IsString($sStString) Then Return SetError(1,-1,False)
;~ 	Local $iTimer=TimerInit()	; Un-comment this line & the line before _ArrayDisplay() for execution speed
	; DLL Type-Size Translation String. '*' represents architecture-dependent values (4 in 32-bit, 8 in 64-bit)
	;	The Replace here relies on @AutoItX64 being 0 or 1, so if the behavior changes in future, it will need a rewrite
	Local $sDLLTypeSzXLat=StringReplace("boolean,1ubyte,1char,1ushort,2word,2wchar,2udword,4uint,4ulong,4bool,4"& _
		"float,4double,8uint64,8uint_ptr,*dword_ptr,*ulong_ptr,*hwnd,*handle,*lparam,*wparam,*lresult,*align,0endstruct,0", _
		'*',(@AutoItX64+1)*4,0,2)

	; Add user brief description to title
	If $sStructName<>"" Then $sStructName=' ('&$sStructName&')'

	Local $iPos,$iSize,$iStrSize,$iAlign=0,$iOffset,$iBaseAddress,$iSubItems=0,$iDispIndex=1,$iStIndex=1
	Local $aTmp,$aSubItems,$aStDisplay,$aStDataTypes

	$sStString=StringStripWS($sStString,3)	; Strip leading/trailing whitespace

	; Check for the 'align (##);' overide prefix - note ## is optional and NONE means default '8' (set below)
	If StringLeft($sStString,5)="align" Then
		$aTmp=StringRegExp($sStString,"(?i)^align(?:\h+(\d+))?\h*;",1)
		; Error in string - need at least a ';' after 1st 'align'!
		If @error Then Return SetError(1,0,False)
		; We have the Offset of 1 past ';' in @extended, lets strip 'align (##);' off string
		$sStString=StringTrimLeft($sStString,@extended-1)
		; Grab the alignment #, if present (otherwise 0 is returned) - checked for after EndIf
		$iAlign=Int($aTmp[0])
	EndIf
	If $iAlign=0 Then $iAlign=8		; 'Align', or Align's '#' not present - use default in both cases

	; Need a valid structure string (if 'align (##);' was present, it was stripped - there should be at least 1 type!)
	If $sStString='' Then Return SetError(1,0,False)
	; Structure size
	$iStrSize=DllStructGetSize($stStruct)
	; Check for ';' at end of the string (some tags use this, and DLLStructCreate accepts it)
	If StringRight($sStString,1)=';' Then $sStString=StringTrimRight($sStString,1)

	; Split the string based on ';' separators (if only one item (no ;), it will still be set in an array correctly)
	$aStDataTypes=StringSplit($sStString,';')

	; Get base address of calculation of offsets
	$iBaseAddress=DllStructGetPtr($stStruct)
;~ 	$iSubItems=0
	; Check for [##] data-type subitems (or 'arrays') in string
	$aSubItems=StringRegExp($sStString,"\[(\d+)\]",3)
	If Not @error Then
		; Get a total of all subitems
		For $i=0 To UBound($aSubItems)-1
			$iSubItems+=$aSubItems[$i]-1	; -1 for first displayed item
		Next
	EndIf
	; Now that we have split the string and counted subitems, we can make an array (with 1st row for titles, last for padding info)
	Dim $aStDisplay[$aStDataTypes[0]+2+$iSubItems][5]
	; Set titles
	$aStDisplay[0][0]="Index"
	$aStDisplay[0][1]="DLL Struct Type + Description (optional)"
	$aStDisplay[0][2]="Value"
	$aStDisplay[0][3]="Offset [Base Ptr="&$iBaseAddress&", Alignment="&$iAlign&" [Base], Size="&$iStrSize&']'
	$aStDisplay[0][4]="Size [Total="&$iStrSize&']'

;~ 	$iDispIndex=1
;~ 	$iStIndex=1		; usually matches $i, unless 'align', 'Struct', or 'EndStruct' alignment directives found
	; Begin going through all items
	For $i=1 To $aStDataTypes[0]
		; Strip Whitespace from beginning, end, and more-than-one space (between type and description)
		$aStDataTypes[$i]=StringStripWS($aStDataTypes[$i],7)
		; Set Type, name & array info "[#]" (last 2 are optional)
		$aStDisplay[$iDispIndex][1]=$aStDataTypes[$i]
		; See if there's a subitem/array indicator for data-type
		$iPos=StringInStr($aStDataTypes[$i],'[',0)
		; Grab count into $iSubItems, and strip "[#]" out
		If $iPos Then
			; Find total of subitems for this data-type
			$aSubItems=StringRegExp($aStDataTypes[$i],"\[(\d+)\]",1)
			; Shouldn't be an error if structure was created properly
			If @error Then Return SetError(1,$i,False)

			$iSubItems=$aSubItems[0]

			; Since we won't be using this again for display, we can overwrite it (and simplify SRE below)
			$aStDataTypes[$i]=StringLeft($aStDataTypes[$i],$iPos-1)
		Else
			$iSubItems=0
		EndIf
#cs
		; -----------------------------------------------------------------------
		; Get the type size from the array. We use two Regular expressions here:
		;	1: Erase the description text (RegExpReplace)
		;	2: Find the size in the formatted $sDLLTypeSzXLat string
		; -----------------------------------------------------------------------
#ce
		$aTmp=StringRegExp($sDLLTypeSzXLat,'(?i)'&StringRegExpReplace($aStDataTypes[$i],'\h.*','')&',(.)',1)
		; Shouldn't be an error if structure was created properly
		If @error Then Return SetError(1,$i,False)

		; 'align', 'Struct', or 'EndStruct' alignment directive? (size '0')
		If $aTmp[0]=0 Then
			; 'Struct'/'EndStruct' directive? (9 char limit prevents text descriptions from being looked at)
			If StringInStr($aStDataTypes[$i],'struct',0,1,1,9) Then
				; Add little curly braces as if it's a C structure definition
				If StringLeft($aStDataTypes[$i],3)='end' Then
					$aStDisplay[$iDispIndex][1]='}; '&$aStDisplay[$iDispIndex][1]
				Else
					$aStDisplay[$iDispIndex][1]&=' {'
				EndIf
			EndIf
			;Else (align) -> 'align' directives are left as-is for now
			$iDispIndex+=1
			ContinueLoop
		EndIf
		; We set this AFTER the Struct/EndStruct check, because it is used at end of loop (last legit. item size)
		$iSize=$aTmp[0]
		; Set the size
		$aStDisplay[$iDispIndex][4]=$iSize
		; Set Index #
		$aStDisplay[$iDispIndex][0]=$iStIndex
		; Calculate offset, store it in the array and in temporary variable ($iOffset used at end of loop)
		$iOffset=Number(DllStructGetPtr($stStruct,$iStIndex)-$iBaseAddress)
		$aStDisplay[$iDispIndex][3]=$iOffset
		; If there were subitems, and the the Concatenation bool is True, show items individually
		;	Note the 5-char limit on both StringInStr()'s - prevents any description text from being looked at
		If $iSubItems And Not (StringInStr($aStDataTypes[$i],'char',0,1,1,5) And $bStrConcat) And Not (StringInStr($aStDataTypes[$i],'byte',0,1,1,5) And $bBinConcat) Then
			; Affix (sub item #1) to 1st item description
			$aStDisplay[$iDispIndex][1]&="  (sub item #1)"
			; Set the Value for 1st item
			$aStDisplay[$iDispIndex][2]=String(DllStructGetData($stStruct,$iStIndex,1))
			; $iOffset -> set above

			; Next array item
			$iDispIndex+=1
			; Loop through all the subitems and display the relevant info
			For $i2=2 To $iSubItems
				$iOffset+=$iSize
				$aStDisplay[$iDispIndex][0]=""
				$aStDisplay[$iDispIndex][1]="______ (sub item #"&$i2&')'
				$aStDisplay[$iDispIndex][2]=String(DllStructGetData($stStruct,$iStIndex,$i2))
				$aStDisplay[$iDispIndex][3]=$iOffset
				$aStDisplay[$iDispIndex][4]=$iSize
				$iDispIndex+=1
			Next
		Else
			; Get the whole item, subitems and all, in one chunk
			;	[NOTE: Display may limit this. For binary data I've found a limit somewhere between 1024-2048 bytes]
			$aStDisplay[$iDispIndex][2]=String(DllStructGetData($stStruct,$iStIndex))
			; Add comments for concatenated strings/binary data
			If $iSubItems Then
				$aStDisplay[$iDispIndex][1]&="  (concatenated)"
				$aStDisplay[$iDispIndex][4]&=' (*'&$iSubItems&')'
			EndIf
			$iDispIndex+=1
		EndIf
		$iStIndex+=1
	Next
	; Check for end-of-Structure padding & report it on a separate line
	If $iOffset+$iSize<$iStrSize Then
;~ 		ConsoleWrite("Struct Size:"&$iStrSize&", Last item Offset:"&$iOffset&", Last item Size:"&$iSize&@CRLF)
		$aStDisplay[$iDispIndex][1]="End-Of-Structure Padding"
		$aStDisplay[$iDispIndex][3]=$iOffset+$iSize
		$aStDisplay[$iDispIndex][4]=$iStrSize-($iOffset+$iSize)
		$iDispIndex+=1
	EndIf
	; Resize due to any concatenation and/or no padding reported
	ReDim $aStDisplay[$iDispIndex][5]
;~ 	ConsoleWrite("Time to arrange array: "&TimerDiff($iTimer)&" ms"&@CRLF)
	; And finally display the result
	_ArrayDisplay($aStDisplay,"DLLStruct"&$sStructName&" Contents [Base Ptr="&$iBaseAddress&", Alignment="&$iAlign&", Size="&$iStrSize&']')
	Return True
EndFunc
