#include-Once

; #INDEX# =======================================================================================================================
; Title .........: Array
; AutoIt Version : 3.2.10++
; Language ......: English
; Description ...: Functions for manipulating arrays.
; Author(s) .....: JdeB, Erik Pilsits, Ultima, Dale (Klaatu) Thompson, Cephas,randallc, Gary Frost, GEOSoft,
;                  Helias Gerassimou(hgeras), Brian Keene, Michael Michta, gcriaco, LazyCoder, Tylo, David Nuttall,
;                  Adam Moore (redndahead), SmOke_N, litlmike, Valik, Melba23
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _ArrayAdd
; _ArrayBinarySearch
; _ArrayCombinations
; _ArrayConcatenate
; _ArrayDelete
; _ArrayDisplay
; _ArrayFindAll
; _ArrayInsert
; _ArrayMax
; _ArrayMaxIndex
; _ArrayMin
; _ArrayMinIndex
; _ArrayPermute
; _ArrayPop
; _ArrayPush
; _ArrayReverse
; _ArraySearch
; _ArraySort
; _ArraySwap
; _ArrayToClip
; _ArrayToString
; _ArrayTranspose
; _ArrayTrim
; _ArrayUnique
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; __Array_Combinations
; __Array_ExeterInternal
; __Array_GetNext
; __ArrayDualPivotSort
; __ArrayQuickSort1D
; __ArrayQuickSort2D
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: Jos van der Zande <jdeb at autoitscript dot com>
; Modified.......: Ultima - code cleanup
; ===============================================================================================================================
Func _ArrayAdd(ByRef $avArray, $vValue)
	If Not IsArray($avArray) Then Return SetError(1, 0, -1)
	If UBound($avArray, 0) <> 1 Then Return SetError(2, 0, -1)

	Local $iUBound = UBound($avArray)
	ReDim $avArray[$iUBound + 1]
	$avArray[$iUBound] = $vValue
	Return $iUBound
EndFunc   ;==>_ArrayAdd

; #FUNCTION# ====================================================================================================================
; Author ........: Jos van der Zande <jdeb at autoitscript dot com>
; Modified.......: Ultima - added $iEnd as parameter, code cleanup; Melba23 - added support for empty arrays
; ===============================================================================================================================
Func _ArrayBinarySearch(Const ByRef $avArray, $vValue, $iStart = 0, $iEnd = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, -1)
	If UBound($avArray, 0) <> 1 Then Return SetError(5, 0, -1)

	Local $iUBound = UBound($avArray) - 1
	If $iUBound = -1 Then Return SetError(6, 0, -1)

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(4, 0, -1)

	Local $iMid = Int(($iEnd + $iStart) / 2)

	If $avArray[$iStart] > $vValue Or $avArray[$iEnd] < $vValue Then Return SetError(2, 0, -1)

	; Search
	While $iStart <= $iMid And $vValue <> $avArray[$iMid]
		If $vValue < $avArray[$iMid] Then
			$iEnd = $iMid - 1
		Else
			$iStart = $iMid + 1
		EndIf
		$iMid = Int(($iEnd + $iStart) / 2)
	WEnd

	If $iStart > $iEnd Then Return SetError(3, 0, -1) ; Entry not found

	Return $iMid
EndFunc   ;==>_ArrayBinarySearch

; #FUNCTION# ====================================================================================================================
; Author ........: Erik Pilsits
; Modified.......: 07/08/2008
; ===============================================================================================================================
Func _ArrayCombinations(Const ByRef $avArray, $iSet, $sDelim = "")
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)
	If UBound($avArray, 0) <> 1 Then Return SetError(2, 0, 0)

	Local $iN = UBound($avArray)
	Local $iR = $iSet
	Local $aIdx[$iR]
	For $i = 0 To $iR - 1
		$aIdx[$i] = $i
	Next
	Local $iTotal = __Array_Combinations($iN, $iR)
	Local $iLeft = $iTotal
	Local $aResult[$iTotal + 1]
	$aResult[0] = $iTotal

	Local $iCount = 1
	While $iLeft > 0
		__Array_GetNext($iN, $iR, $iLeft, $iTotal, $aIdx)
		For $i = 0 To $iSet - 1
			$aResult[$iCount] &= $avArray[$aIdx[$i]] & $sDelim
		Next
		If $sDelim <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], 1)
		$iCount += 1
	WEnd
	Return $aResult
EndFunc   ;==>_ArrayCombinations

; #FUNCTION# ====================================================================================================================
; Author ........: Ultima
; Modified.......: Partypooper - added target start index
; ===============================================================================================================================
Func _ArrayConcatenate(ByRef $avArrayTarget, Const ByRef $avArraySource, $iStart = 0)
	If Not IsArray($avArrayTarget) Then Return SetError(1, 0, 0)
	If Not IsArray($avArraySource) Then Return SetError(2, 0, 0)
	If UBound($avArrayTarget, 0) <> 1 Then
		If UBound($avArraySource, 0) <> 1 Then Return SetError(5, 0, 0)
		Return SetError(3, 0, 0)
	EndIf
	If UBound($avArraySource, 0) <> 1 Then Return SetError(4, 0, 0)

	Local $iUBoundTarget = UBound($avArrayTarget) - $iStart, $iUBoundSource = UBound($avArraySource)
	ReDim $avArrayTarget[$iUBoundTarget + $iUBoundSource]
	For $i = $iStart To $iUBoundSource - 1
		$avArrayTarget[$iUBoundTarget + $i] = $avArraySource[$i]
	Next

	Return $iUBoundTarget + $iUBoundSource
EndFunc   ;==>_ArrayConcatenate

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> - array passed ByRef
; ===============================================================================================================================
Func _ArrayDelete(ByRef $avArray, $iElement)
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)
	Local $iUBound = UBound($avArray, 1) - 1
	; Bounds checking
	If $iElement < 0 Then $iElement = 0
	If $iElement > $iUBound Then $iElement = $iUBound

	; Move items after $iElement up by 1
	Switch UBound($avArray, 0)
		Case 1
			For $i = $iElement To $iUBound - 1
				$avArray[$i] = $avArray[$i + 1]
			Next
			ReDim $avArray[$iUBound]
		Case 2
			Local $iSubMax = UBound($avArray, 2) - 1
			For $i = $iElement To $iUBound - 1
				For $j = 0 To $iSubMax
					$avArray[$i][$j] = $avArray[$i + 1][$j]
				Next
			Next
			ReDim $avArray[$iUBound][$iSubMax + 1]
		Case Else
			Return SetError(3, 0, 0)
	EndSwitch

	Return $iUBound
EndFunc   ;==>_ArrayDelete

; #FUNCTION# ====================================================================================================================
; Author ........: randallc, Ultima
; Modified.......: Gary Frost (gafrost), Ultima, Zedna, jpm, Melba23, AZJIO, UEZ
; ===============================================================================================================================
Func _ArrayDisplay(Const ByRef $avArray, $sTitle = Default, $sArray_Range = Default, $iFlags = Default, $vUser_Separator = Default, $sHeader = Default, $iMax_ColWidth = Default, $iAlt_Color = Default, $hUser_Func = Default)

	Local Const $_ARRAYCONSTANT_MB_SYSTEMMODAL = 4096
	Local Const $_ARRAYCONSTANT_MB_ICONERROR = 16
	Local Const $_ARRAYCONSTANT_MB_YESNO = 4
	Local Const $_ARRAYCONSTANT_IDYES = 6

	; Default values
	If $sTitle = Default Then $sTitle = "ArrayDisplay"
	If $sArray_Range = Default Then $sArray_Range = ""
	If $iFlags = Default Then $iFlags = 0
	If $vUser_Separator = Default Then $vUser_Separator = ""
	If $sHeader = Default Then $sHeader = ""
	If $iMax_ColWidth = Default Then $iMax_ColWidth = 350
	If $iAlt_Color = Default Then $iAlt_Color = 0
	If $hUser_Func = Default Then $hUser_Func = 0

	; Check for transpose, column align and verbosity
	Local $iTranspose = BitAND($iFlags, 1)
	Local $iColAlign = BitAND($iFlags, 6) ; 0 = Left (default); 2 = Right; 4 = CenterLocal $iVerbose = BitAnd($iFlags, 8)
	Local $iVerbose = BitAND($iFlags, 8)

	; Check valid array
	Local $sMsg = "", $iRet
	If IsArray($avArray) Then
		; Dimension checking
		Local $iDimension = UBound($avArray, 0), $iRowCount = UBound($avArray, 1), $iColCount = UBound($avArray, 2)
		If $iDimension > 2 Then
			$sMsg = "Larger than 2D array passed to function"
			$iRet = 2
		EndIf
	Else
		$sMsg = "No array variable passed to function"
		$iRet = 1
	EndIf
	If $sMsg Then
		If $iVerbose And MsgBox($_ARRAYCONSTANT_MB_SYSTEMMODAL + $_ARRAYCONSTANT_MB_ICONERROR + $_ARRAYCONSTANT_MB_YESNO, _
				"ArrayDisplay Error: " & $sTitle, $sMsg & @CRLF & @CRLF & "Exit the script?") = $_ARRAYCONSTANT_IDYES Then
			Exit
		Else
			Return SetError($iRet, 0, "")
		EndIf
	EndIf

	; Determine copy separator
	Local $iCW_ColWidth = Number($vUser_Separator)

	; Separator handling
	Local $sAD_Separator = ChrW(0xFAB1)
	; Set separator to use in this UDF and store existing one
	Local $sCurr_Separator = Opt("GUIDataSeparatorChar", $sAD_Separator)
	; Set default user separator if required
	If $vUser_Separator = "" Then $vUser_Separator = $sCurr_Separator

	; Declare variables
	Local $vTmp, $iRowLimit = 65525, $iColLimit = 250 ; Row = 64k control limit minus 4 buttons; Column - arbitrary limit

	; Set original dimensions for data display
	Local $iDataRow = $iRowCount
	Local $iDataCol = $iColCount

	; Set display limits for dimensions
	Local $iItem_Start = 0, $iItem_End = $iRowCount - 1, $iSubItem_Start = 0, $iSubItem_End = $iColCount - 1, $avDimSplit, $avRangeSplit
	; Adjust for 1D array
	If $iDimension = 1 Then $iSubItem_End = 0
	; Check for range set
	If $sArray_Range Then
		; Force trailing | if required
		If (Not StringInStr($sArray_Range, "|")) Then
			$sArray_Range &= "|"
		EndIf
		; Split into row|col
		$avDimSplit = StringSplit($sArray_Range, "|")
		; Check valid ranges
		If Not @error Then
			$avRangeSplit = StringSplit($avDimSplit[1], ":")
			If @error Then
				$iItem_Start = 0
				If Number($avRangeSplit[1]) Then
					$iItem_End = Number($avRangeSplit[1])
				EndIf
			Else
				$iItem_Start = Number($avRangeSplit[1])
				If Number($avRangeSplit[2]) Then
					$iItem_End = Number($avRangeSplit[2])
				EndIf
			EndIf
			$avRangeSplit = StringSplit($avDimSplit[2], ":")
			If @error Then
				$iSubItem_Start = 0
				If Number($avRangeSplit[1]) Then
					$iSubItem_End = Number($avRangeSplit[1])
				EndIf
			Else
				$iSubItem_Start = Number($avRangeSplit[1])
				If Number($avRangeSplit[2]) Then
					$iSubItem_End = Number($avRangeSplit[2])
				EndIf
			EndIf
			; Check limits
			If $iItem_Start < 0 Then $iItem_Start = 0
			If $iSubItem_Start < 0 Then $iSubItem_Start = 0
			If $iItem_End > $iRowCount - 1 Then $iItem_End = $iRowCount - 1
			If $iSubItem_End > $iColCount - 1 Then $iSubItem_End = $iColCount - 1
		EndIf
	EndIf

	; Create data display
	Local $sDisplayData = "[" & $iDataRow
	; Check if rows will be truncated
	Local $fTruncated = False
	If $iTranspose Then
		If $iItem_End - $iItem_Start > $iColLimit Then
			$fTruncated = True
			$iItem_End = $iItem_Start + $iColLimit - 1
		EndIf
	Else
		If $iItem_End - $iItem_Start > $iRowLimit Then
			$fTruncated = True
			$iItem_End = $iItem_Start + $iRowLimit - 1
		EndIf
	EndIf
	If $fTruncated Then
		$sDisplayData &= "*]"
	Else
		$sDisplayData &= "]"
	EndIf
	If $iDimension = 2 Then
		$sDisplayData &= " [" & $iDataCol
		If $iTranspose Then
			If $iSubItem_End - $iSubItem_Start > $iRowLimit Then
				$fTruncated = True
				$iSubItem_End = $iSubItem_Start + $iRowLimit - 1
			EndIf
		Else
			If $iSubItem_End - $iSubItem_Start > $iColLimit Then
				$fTruncated = True
				$iSubItem_End = $iSubItem_Start + $iColLimit - 1
			EndIf
		EndIf
		If $fTruncated Then
			$sDisplayData &= "*]"
		Else
			$sDisplayData &= "]"
		EndIf
	EndIf
	; Create tooltip data
	Local $sTipData = ""
	If $fTruncated Then $sTipData &= "Truncated"
	If $sArray_Range Then
		If $sTipData Then $sTipData &= " - "
		$sTipData &= "Range set"
	EndIf
	If $iTranspose Then
		If $sTipData Then $sTipData &= " - "
		$sTipData &= "Transposed"
	EndIf

	; Split custom header on separator
	Local $asHeader = StringSplit($sHeader, $sCurr_Separator, 2) ; No count element
	$sHeader = "Row"
	Local $iIndex = $iSubItem_Start
	If $iTranspose Then
		; All default headers
		For $j = $iItem_Start To $iItem_End
			$sHeader &= $sAD_Separator & "Col " & $j
		Next
	Else
		; Create custom header with available items
		If $asHeader[0] Then
			; Set as many as available
			For $iIndex = $iSubItem_Start To $iSubItem_End
				; Check custom header available
				If $iIndex >= UBound($asHeader) Then ExitLoop
				$sHeader &= $sAD_Separator & $asHeader[$iIndex]
			Next
		EndIf
		; Add default headers to fill to end
		For $j = $iIndex To $iSubItem_End
			$sHeader &= $sAD_Separator & "Col " & $j
		Next
	EndIf

	; Display splash dialog if required
	If $iVerbose And ($iItem_End - $iItem_Start) * ($iSubItem_End - $iSubItem_Start) > 10000 Then
		SplashTextOn("ArrayDisplay", "Preparing display" & @CRLF & @CRLF & "Please be patient", 300, 100)
	EndIf

	; Convert array into ListViewItem compatible lines
	If $iTranspose Then
		; Swap dimensions
		$vTmp = $iItem_Start
		$iItem_Start = $iSubItem_Start
		$iSubItem_Start = $vTmp
		$vTmp = $iItem_End
		$iItem_End = $iSubItem_End
		$iSubItem_End = $vTmp
	EndIf
	Local $avArrayText[$iItem_End - $iItem_Start + 1]
	For $i = $iItem_Start To $iItem_End
		$avArrayText[$i - $iItem_Start] = "[" & $i & "]"
		For $j = $iSubItem_Start To $iSubItem_End
			If $iDimension = 1 Then
				If $iTranspose Then
					$vTmp = $avArray[$j]
				Else
					$vTmp = $avArray[$i]
				EndIf
			Else
				If $iTranspose Then
					$vTmp = $avArray[$j][$i]
				Else
					$vTmp = $avArray[$i][$j]
				EndIf
			EndIf
			$avArrayText[$i - $iItem_Start] &= $sAD_Separator & $vTmp
		Next
	Next

	; GUI Constants
	Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
	Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
	Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
	Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
	Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
	Local Const $_ARRAYCONSTANT_GUI_DOCKHCENTER = 8
	Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = -3
	Local Const $_ARRAYCONSTANT_GUI_DISABLE = 128
	Local Const $_ARRAYCONSTANT_GUI_FOCUS = 256
	Local Const $_ARRAYCONSTANT_GUI_BKCOLOR_LV_ALTERNATE = 0xFE000000
	Local Const $_ARRAYCONSTANT_SS_CENTER = 0x1
	Local Const $_ARRAYCONSTANT_SS_CENTERIMAGE = 0x0200
	Local Const $_ARRAYCONSTANT_LVM_GETITEMCOUNT = (0x1000 + 4)
	Local Const $_ARRAYCONSTANT_LVM_GETITEMRECT = (0x1000 + 14)
	Local Const $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH = (0x1000 + 29)
	Local Const $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH = (0x1000 + 30)
	Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = (0x1000 + 44)
	Local Const $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT = (0x1000 + 50)
	Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = (0x1000 + 54)
	Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 0x1
	Local Const $_ARRAYCONSTANT_LVIS_SELECTED = 0x2
	Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 0x8
	Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 0x20
	Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 0x0200
	Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 0x00010000
	Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 0x00020000
	Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 0x00040000
	Local Const $_ARRAYCONSTANT_WM_SETREDRAW = 11
	Local Const $_ARRAYCONSTANT_LVSCW_AUTOSIZE = -1

	; Create GUI
	Local $iOrgWidth = 210, $iHeight = 200, $iMinSize = 250
	Local $hGUI = GUICreate($sTitle, $iOrgWidth, $iHeight, Default, Default, BitOR($_ARRAYCONSTANT_WS_SIZEBOX, $_ARRAYCONSTANT_WS_MINIMIZEBOX, $_ARRAYCONSTANT_WS_MAXIMIZEBOX))
	Local $aiGUISize = WinGetClientSize($hGUI)
	Local $iButtonWidth_2 = $aiGUISize[0] / 2
	Local $iButtonWidth_3 = $aiGUISize[0] / 3
	; Create ListView
	Local $cListView = GUICtrlCreateListView($sHeader, 0, 0, $aiGUISize[0], $aiGUISize[1] - 46, $_ARRAYCONSTANT_LVS_SHOWSELALWAYS)
	GUICtrlSetBkColor($cListView, $_ARRAYCONSTANT_GUI_BKCOLOR_LV_ALTERNATE)
	GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_GRIDLINES, $_ARRAYCONSTANT_LVS_EX_GRIDLINES)
	GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT, $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT)
	GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE, $_ARRAYCONSTANT_WS_EX_CLIENTEDGE)
	; Create buttons
	Local $cCopy_ID = GUICtrlCreateButton("Copy Data && Hdr/Row", 0, $aiGUISize[1] - 43, $iButtonWidth_2, 20)
	Local $cCopy_Data = GUICtrlCreateButton("Copy Data Only", $iButtonWidth_2, $aiGUISize[1] - 43, $iButtonWidth_2, 20)
	Local $cData_Label = GUICtrlCreateLabel($sDisplayData, 5, $aiGUISize[1] - 22, $iButtonWidth_3 - 5, 18, BitOR($_ARRAYCONSTANT_SS_CENTER, $_ARRAYCONSTANT_SS_CENTERIMAGE))
	Local $cUser_Func = GUICtrlCreateButton("Run User Func", $iButtonWidth_3, $aiGUISize[1] - 23, $iButtonWidth_3, 20)
	If Not IsFunc($hUser_Func) Then GUICtrlSetState($cUser_Func, $_ARRAYCONSTANT_GUI_DISABLE)
	Local $cExit_Script = GUICtrlCreateButton("Exit Script", $iButtonWidth_3 * 2, $aiGUISize[1] - 23, $iButtonWidth_3, 20)
	; Change label colour and create tooltip if required
	Select
		Case $fTruncated Or $iTranspose Or $sArray_Range
			GUICtrlSetColor($cData_Label, 0xFF0000)
			GUICtrlSetTip($cData_Label, $sTipData)
	EndSelect
	; Set resizing
	GUICtrlSetResizing($cListView, $_ARRAYCONSTANT_GUI_DOCKBORDERS)
	GUICtrlSetResizing($cCopy_ID, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
	GUICtrlSetResizing($cCopy_Data, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
	GUICtrlSetResizing($cData_Label, $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
	GUICtrlSetResizing($cUser_Func, $_ARRAYCONSTANT_GUI_DOCKHCENTER + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)
	GUICtrlSetResizing($cExit_Script, $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT)

	; Start ListView update
	GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_WM_SETREDRAW, 0, 0)

	; Fill listview
	Local $cItem
	For $i = 0 To UBound($avArrayText) - 1
		$cItem = GUICtrlCreateListViewItem($avArrayText[$i], $cListView)
		If $iAlt_Color Then
			GUICtrlSetBkColor($cItem, $iAlt_Color)
		EndIf
	Next

	; Align columns if required - $iColAlign = 2 for Right and 4 for Center
	If $iColAlign Then
		Local Const $_ARRAYCONSTANT_LVCF_FMT = 0x01
		Local Const $_ARRAYCONSTANT_LVM_SETCOLUMNW = (0x1000 + 96)
		Local $tColumn = DllStructCreate("uint Mask;int Fmt;int CX;ptr Text;int TextMax;int SubItem;int Image;int Order;int cxMin;int cxDefault;int cxIdeal")
		DllStructSetData($tColumn, "Mask", $_ARRAYCONSTANT_LVCF_FMT)
		DllStructSetData($tColumn, "Fmt", $iColAlign / 2) ; Left = 0; Right = 1; Center = 2
		Local $pColumn = DllStructGetPtr($tColumn)
		; Loop through columns
		For $i = 1 To $iSubItem_End - $iSubItem_Start + 1
			GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETCOLUMNW, $i, $pColumn)
		Next
	EndIf

	; End ListView update
	GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_WM_SETREDRAW, 1, 0)

	; Allow for borders with and without vertical scrollbar
	Local $iBorder = 45
	If UBound($avArrayText) > 20 Then
		$iBorder += 20
	EndIf
	; Adjust dialog width
	Local $iWidth = $iBorder, $iColWidth = 0, $aiColWidth[$iSubItem_End - $iSubItem_Start + 2], $iMin_ColWidth = 55
	; Get required column widths to fit items
	For $i = 0 To $iSubItem_End - $iSubItem_Start + 1
		GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH, $i, $_ARRAYCONSTANT_LVSCW_AUTOSIZE)
		$iColWidth = GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH, $i, 0)
		; Set minimum if required
		If $iColWidth < $iMin_ColWidth Then
			GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH, $i, $iMin_ColWidth)
			$iColWidth = $iMin_ColWidth
		EndIf
		; Add to total width
		$iWidth += $iColWidth
		; Store  value
		$aiColWidth[$i] = $iColWidth
	Next
	; Now check max size
	If $iWidth > @DesktopWidth - 100 Then
		; Apply max col width limit to reduce width
		$iWidth = $iBorder
		For $i = 0 To $iSubItem_End - $iSubItem_Start + 1
			If $aiColWidth[$i] > $iMax_ColWidth Then
				; Reset width
				GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_SETCOLUMNWIDTH, $i, $iMax_ColWidth)
				$iWidth += $iMax_ColWidth
			Else
				; Retain width
				$iWidth += $aiColWidth[$i]
			EndIf
		Next
	EndIf
	; Check max/min width
	If $iWidth > @DesktopWidth - 100 Then
		$iWidth = @DesktopWidth - 100
	ElseIf $iWidth < $iMinSize Then
		$iWidth = $iMinSize
	EndIf

	; Get row height
	Local $tRect = DllStructCreate("struct; long Left;long Top;long Right;long Bottom; endstruct")
	DllCall("user32.dll", "struct*", "SendMessageW", "hwnd", GUICtrlGetHandle($cListView), "uint", $_ARRAYCONSTANT_LVM_GETITEMRECT, "wparam", 0, "struct*", $tRect)
	; Set required GUI height
	Local $aiWin_Pos = WinGetPos($hGUI)
	Local $aiLV_Pos = ControlGetPos($hGUI, "", $cListView)
	$iHeight = ((UBound($avArrayText) + 3) * (DllStructGetData($tRect, "Bottom") - DllStructGetData($tRect, "Top"))) + $aiWin_Pos[3] - $aiLV_Pos[3]
	; Check min/max height
	If $iHeight > @DesktopHeight - 100 Then
		$iHeight = @DesktopHeight - 100
	ElseIf $iHeight < $iMinSize Then
		$iHeight = $iMinSize
	EndIf

	SplashOff()

	; Display and resize dialog
	GUISetState(@SW_HIDE, $hGUI)
	WinMove($hGUI, "", (@DesktopWidth - $iWidth) / 2, (@DesktopHeight - $iHeight) / 2, $iWidth, $iHeight)
	GUISetState(@SW_SHOW, $hGUI)

	; Switch to GetMessage mode
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg

	While 1

		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
		Switch $iMsg
			Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
				ExitLoop

			Case $cCopy_ID, $cCopy_Data
				; Count selected rows
				Local $iSel_Count = GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_GETSELECTEDCOUNT, 0, 0)
				; Display splash dialog if required
				If $iVerbose And (Not $iSel_Count) And ($iItem_End - $iItem_Start) * ($iSubItem_End - $iSubItem_Start) > 10000 Then
					SplashTextOn("ArrayDisplay", "Copying data" & @CRLF & @CRLF & "Please be patient", 300, 100)
				EndIf
				; Generate clipboard text
				Local $sClip = "", $sItem, $aSplit
				; Add items
				For $i = 0 To $iItem_End - $iItem_Start
					; Skip if copying selected rows and item not selected
					If $iSel_Count And Not (GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED)) Then
						ContinueLoop
					EndIf
					$sItem = $avArrayText[$i]
					If $iMsg = $cCopy_Data Then
						; Remove row ID if required
						$sItem = StringRegExpReplace($sItem, "^\[\d+\].(.*)$", "$1")
					EndIf
					If $iCW_ColWidth Then
						; Expand columns
						$aSplit = StringSplit($sItem, $sAD_Separator)
						$sItem = ""
						For $j = 1 To $aSplit[0]
							$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
						Next
					Else
						; Use defined separator
						$sItem = StringReplace($sItem, $sAD_Separator, $vUser_Separator)
					EndIf
					$sClip &= $sItem & @CRLF
				Next
				; Add header line if required
				If $iMsg = $cCopy_ID Then
					If $iCW_ColWidth Then
						$aSplit = StringSplit($sHeader, $sAD_Separator)
						$sItem = ""
						For $j = 1 To $aSplit[0]
							$sItem &= StringFormat("%-" & $iCW_ColWidth + 1 & "s", StringLeft($aSplit[$j], $iCW_ColWidth))
						Next
					Else
						$sItem = StringReplace($sHeader, $sAD_Separator, $vUser_Separator)
					EndIf
					$sClip = $sItem & @CRLF & $sClip
				EndIf
				;Send to clipboard
				ClipPut($sClip)
				; Remove splash if used
				SplashOff()
				; Refocus ListView
				GUICtrlSetState($cListView, $_ARRAYCONSTANT_GUI_FOCUS)

			Case $cUser_Func
				; Get selected indices
				Local $aiSelItems[$iRowLimit] = [0]
				For $i = 0 To GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_GETITEMCOUNT, 0, 0)
					If GUICtrlSendMsg($cListView, $_ARRAYCONSTANT_LVM_GETITEMSTATE, $i, $_ARRAYCONSTANT_LVIS_SELECTED) Then
						$aiSelItems[0] += 1
						$aiSelItems[$aiSelItems[0]] = $i + $iItem_Start
					EndIf
				Next
				ReDim $aiSelItems[$aiSelItems[0] + 1]
				; Pass array and selection to user function
				$hUser_Func($avArray, $aiSelItems)
				GUICtrlSetState($cListView, $_ARRAYCONSTANT_GUI_FOCUS)

			Case $cExit_Script
				Exit
		EndSwitch
	WEnd

	; Clear up
	GUIDelete($hGUI)
	Opt("GUIOnEventMode", $iOnEventMode) ; Reset original GUI mode
	Opt("GUIDataSeparatorChar", $sCurr_Separator) ; Reset original separator

	Return 1

EndFunc   ;==>_ArrayDisplay

; #FUNCTION# ====================================================================================================================
; Author ........: GEOSoft, Ultima
; Modified.......:
; ===============================================================================================================================
Func _ArrayFindAll(Const ByRef $avArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iSubItem = 0)
	$iStart = _ArraySearch($avArray, $vValue, $iStart, $iEnd, $iCase, $iCompare, 1, $iSubItem)
	If @error Then Return SetError(@error, 0, -1)

	Local $iIndex = 0, $avResult[UBound($avArray)]
	Do
		$avResult[$iIndex] = $iStart
		$iIndex += 1
		$iStart = _ArraySearch($avArray, $vValue, $iStart + 1, $iEnd, $iCase, $iCompare, 1, $iSubItem)
	Until @error

	ReDim $avResult[$iIndex]
	Return $avResult
EndFunc   ;==>_ArrayFindAll

; #FUNCTION# ====================================================================================================================
; Author ........: Jos van der Zande <jdeb at autoitscript dot com>: Ultima - code cleanup; Melba23 - element position check
; ===============================================================================================================================
Func _ArrayInsert(ByRef $avArray, $iElement, $vValue = "")
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)
	If UBound($avArray, 0) <> 1 Then Return SetError(2, 0, 0)

	; Check element in array bounds + 1
	If $iElement > UBound($avArray) Then Return SetError(3, 0, 0)

	; Add 1 to the array
	Local $iUBound = UBound($avArray) + 1
	ReDim $avArray[$iUBound]

	; Move all entries over til the specified element
	For $i = $iUBound - 1 To $iElement + 1 Step -1
		$avArray[$i] = $avArray[$i - 1]
	Next

	; Add the value in the specified element
	$avArray[$iElement] = $vValue
	Return $iUBound
EndFunc   ;==>_ArrayInsert

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> - Added $iCompNumeric and $iStart parameters and logic, Ultima - added $iEnd parameter, code cleanup
; ===============================================================================================================================
Func _ArrayMax(Const ByRef $avArray, $iCompNumeric = 0, $iStart = 0, $iEnd = 0)
	Local $iResult = _ArrayMaxIndex($avArray, $iCompNumeric, $iStart, $iEnd)
	If @error Then Return SetError(@error, 0, "")
	Return $avArray[$iResult]
EndFunc   ;==>_ArrayMax

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> - Added $iCompNumeric and $iStart parameters and logic
; ===============================================================================================================================
Func _ArrayMaxIndex(Const ByRef $avArray, $iCompNumeric = 0, $iStart = 0, $iEnd = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, -1)
	If UBound($avArray, 0) <> 1 Then Return SetError(3, 0, -1)
	If Not UBound($avArray) Then Return SetError(4, 0, -1)

	Local $iUBound = UBound($avArray) - 1

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(2, 0, -1)

	Local $iMaxIndex = $iStart

	; Search
	If $iCompNumeric Then
		For $i = $iStart To $iEnd
			If Number($avArray[$iMaxIndex]) < Number($avArray[$i]) Then $iMaxIndex = $i
		Next
	Else
		For $i = $iStart To $iEnd
			If $avArray[$iMaxIndex] < $avArray[$i] Then $iMaxIndex = $i
		Next
	EndIf

	Return $iMaxIndex
EndFunc   ;==>_ArrayMaxIndex

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> - Added $iCompNumeric and $iStart parameters and logic, Ultima - added $iEnd parameter, code cleanup
; ===============================================================================================================================
Func _ArrayMin(Const ByRef $avArray, $iCompNumeric = 0, $iStart = 0, $iEnd = 0)
	Local $iResult = _ArrayMinIndex($avArray, $iCompNumeric, $iStart, $iEnd)
	If @error Then Return SetError(@error, 0, "")
	Return $avArray[$iResult]
EndFunc   ;==>_ArrayMin

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> - Added $iCompNumeric and $iStart parameters and logic
; ===============================================================================================================================
Func _ArrayMinIndex(Const ByRef $avArray, $iCompNumeric = 0, $iStart = 0, $iEnd = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, -1)
	If UBound($avArray, 0) <> 1 Then Return SetError(3, 0, -1)
	If Not UBound($avArray) Then Return SetError(4, 0, -1)

	Local $iUBound = UBound($avArray) - 1

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(2, 0, -1)

	Local $iMinIndex = $iStart

	; Search
	If $iCompNumeric Then
		For $i = $iStart To $iEnd
			If Number($avArray[$iMinIndex]) > Number($avArray[$i]) Then $iMinIndex = $i
		Next
	Else
		For $i = $iStart To $iEnd
			If $avArray[$iMinIndex] > $avArray[$i] Then $iMinIndex = $i
		Next
	EndIf

	Return $iMinIndex
EndFunc   ;==>_ArrayMinIndex

; #FUNCTION# ====================================================================================================================
; Author ........: Erik Pilsits
; Modified.......: Melba23 - added support for empty arrays
; ===============================================================================================================================
Func _ArrayPermute(ByRef $avArray, $sDelim = "")
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)
	If UBound($avArray, 0) <> 1 Then Return SetError(2, 0, 0)
	Local $iSize = UBound($avArray), $iFactorial = 1, $aIdx[$iSize], $aResult[1], $iCount = 1

	If UBound($avArray) Then
		For $i = 0 To $iSize - 1
			$aIdx[$i] = $i
		Next
		For $i = $iSize To 1 Step -1
			$iFactorial *= $i
		Next
		ReDim $aResult[$iFactorial + 1]
		$aResult[0] = $iFactorial
		__Array_ExeterInternal($avArray, 0, $iSize, $sDelim, $aIdx, $aResult, $iCount)
	Else
		$aResult[0] = 0
	EndIf
	Return $aResult
EndFunc   ;==>_ArrayPermute

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Ultima - code cleanup; Melba23 - added support for empty arrays
; ===============================================================================================================================
Func _ArrayPop(ByRef $avArray)
	If (Not IsArray($avArray)) Then Return SetError(1, 0, "")
	If UBound($avArray, 0) <> 1 Then Return SetError(2, 0, "")

	Local $iUBound = UBound($avArray) - 1
	If $iUBound = -1 Then Return SetError(3, 0, "")
	Local $sLastVal = $avArray[$iUBound]

	; Remove last item
	If $iUBound > -1 Then
		ReDim $avArray[$iUBound]
	EndIf

	; Return last item
	Return $sLastVal
EndFunc   ;==>_ArrayPop

; #FUNCTION# ====================================================================================================================
; Author ........: Helias Gerassimou(hgeras), Ultima - code cleanup/rewrite (major optimization), fixed support for $vValue as an array
; Modified.......:
; ===============================================================================================================================
Func _ArrayPush(ByRef $avArray, $vValue, $iDirection = 0)
	If (Not IsArray($avArray)) Then Return SetError(1, 0, 0)
	If UBound($avArray, 0) <> 1 Then Return SetError(3, 0, 0)
	Local $iUBound = UBound($avArray) - 1

	If IsArray($vValue) Then ; $vValue is an array
		Local $iUBoundS = UBound($vValue)
		If ($iUBoundS - 1) > $iUBound Then Return SetError(2, 0, 0)

		; $vValue is an array smaller than $avArray
		If $iDirection Then ; slide right, add to front
			For $i = $iUBound To $iUBoundS Step -1
				$avArray[$i] = $avArray[$i - $iUBoundS]
			Next
			For $i = 0 To $iUBoundS - 1
				$avArray[$i] = $vValue[$i]
			Next
		Else ; slide left, add to end
			For $i = 0 To $iUBound - $iUBoundS
				$avArray[$i] = $avArray[$i + $iUBoundS]
			Next
			For $i = 0 To $iUBoundS - 1
				$avArray[$i + $iUBound - $iUBoundS + 1] = $vValue[$i]
			Next
		EndIf
	Else
		; Check for empty array
		If $iUBound > -1 Then
			If $iDirection Then ; slide right, add to front
				For $i = $iUBound To 1 Step -1
					$avArray[$i] = $avArray[$i - 1]
				Next
				$avArray[0] = $vValue
			Else ; slide left, add to end
				For $i = 0 To $iUBound - 1
					$avArray[$i] = $avArray[$i + 1]
				Next
				$avArray[$iUBound] = $vValue
			EndIf
		EndIf
	EndIf

	Return 1
EndFunc   ;==>_ArrayPush

; #FUNCTION# ====================================================================================================================
; Author ........: Brian Keene
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> -  added $iStart parameter and logic; Tylo - added $iEnd parameter and rewrote it for speed
; ===============================================================================================================================
Func _ArrayReverse(ByRef $avArray, $iStart = 0, $iEnd = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)
	If UBound($avArray, 0) <> 1 Then Return SetError(3, 0, 0)
	If Not UBound($avArray) Then Return SetError(4, 0, 0)

	Local $vTmp, $iUBound = UBound($avArray) - 1

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(2, 0, 0)

	; Reverse
	For $i = $iStart To Int(($iStart + $iEnd - 1) / 2)
		$vTmp = $avArray[$i]
		$avArray[$i] = $avArray[$iEnd]
		$avArray[$iEnd] = $vTmp
		$iEnd -= 1
	Next

	Return 1
EndFunc   ;==>_ArrayReverse

; #FUNCTION# ====================================================================================================================
; Author ........: Michael Michta <MetalGX91 at GMail dot com>
; Modified.......: gcriaco <gcriaco at gmail dot com>; Ultima - 2D arrays supported, directional search, code cleanup, optimization; Melba23 - added support for empty arrays; BrunoJ - Added compare option 3 to use a regex pattern.
; ===============================================================================================================================
Func _ArraySearch(Const ByRef $avArray, $vValue, $iStart = 0, $iEnd = 0, $iCase = 0, $iCompare = 0, $iForward = 1, $iSubItem = -1)
	If Not IsArray($avArray) Then Return SetError(1, 0, -1)
	If UBound($avArray, 0) > 2 Or UBound($avArray, 0) < 1 Then Return SetError(2, 0, -1)

	Local $iUBound = UBound($avArray) - 1
	If $iUBound = -1 Then Return SetError(3, 0, -1)

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(4, 0, -1)

	; Direction (flip if $iForward = 0)
	Local $iStep = 1
	If Not $iForward Then
		Local $iTmp = $iStart
		$iStart = $iEnd
		$iEnd = $iTmp
		$iStep = -1
	EndIf

	; same var Type of comparison
	Local $iCompType = False
	If $iCompare = 2 Then
		$iCompare = 0
		$iCompType = True
	EndIf

	; Search
	Switch UBound($avArray, 0)
		Case 1 ; 1D array search
			If Not $iCompare Then
				If Not $iCase Then
					For $i = $iStart To $iEnd Step $iStep
						If $iCompType And VarGetType($avArray[$i]) <> VarGetType($vValue) Then ContinueLoop
						If $avArray[$i] = $vValue Then Return $i
					Next
				Else
					For $i = $iStart To $iEnd Step $iStep
						If $iCompType And VarGetType($avArray[$i]) <> VarGetType($vValue) Then ContinueLoop
						If $avArray[$i] == $vValue Then Return $i
					Next
				EndIf
			Else
				For $i = $iStart To $iEnd Step $iStep
					If $iCompare = 3 Then
						If StringRegExp($avArray[$i], $vValue) Then Return $i
					Else
						If StringInStr($avArray[$i], $vValue, $iCase) > 0 Then Return $i
					EndIf
				Next
			EndIf
		Case 2 ; 2D array search
			Local $iUBoundSub = UBound($avArray, 2) - 1
			If $iSubItem > $iUBoundSub Then $iSubItem = $iUBoundSub
			If $iSubItem < 0 Then
				; will search for all Col
				$iSubItem = 0
			Else
				$iUBoundSub = $iSubItem
			EndIf

			For $j = $iSubItem To $iUBoundSub
				If Not $iCompare Then
					If Not $iCase Then
						For $i = $iStart To $iEnd Step $iStep
							If $iCompType And VarGetType($avArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
							If $avArray[$i][$j] = $vValue Then Return $i
						Next
					Else
						For $i = $iStart To $iEnd Step $iStep
							If $iCompType And VarGetType($avArray[$i][$j]) <> VarGetType($vValue) Then ContinueLoop
							If $avArray[$i][$j] == $vValue Then Return $i
						Next
					EndIf
				Else
					For $i = $iStart To $iEnd Step $iStep
						If $iCompare = 3 Then
							If StringRegExp($avArray[$i][$j], $vValue) Then Return $i
						Else
							If StringInStr($avArray[$i][$j], $vValue, $iCase) > 0 Then Return $i
						EndIf
					Next
				EndIf
			Next
		Case Else
			Return SetError(7, 0, -1)
	EndSwitch

	Return SetError(6, 0, -1)
EndFunc   ;==>_ArraySearch

; #FUNCTION# ====================================================================================================================
; Author ........: Jos van der Zande <jdeb at autoitscript dot com>
; Modified.......: LazyCoder - added $iSubItem option; Tylo - implemented stable QuickSort algo; Jos van der Zande - changed logic to correctly Sort arrays with mixed Values and Strings; Melba23 - implemented stable pivot algo
; ===============================================================================================================================
Func _ArraySort(ByRef $avArray, $iDescending = 0, $iStart = 0, $iEnd = 0, $iSubItem = 0, $iPivot = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)

	Local $iUBound = UBound($avArray) - 1
	If $iUBound = -1 Then Return SetError(5, 0, 0)

	; Bounds checking
	If $iEnd = Default Then $iEnd = 0
	If $iEnd < 1 Or $iEnd > $iUBound Or $iEnd = Default Then $iEnd = $iUBound
	If $iStart < 0 Or $iStart = Default Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(2, 0, 0)

	If $iDescending = Default Then $iDescending = 0
	If $iPivot = Default Then $iPivot = 0
	If $iSubItem = Default Then $iSubItem = 0

	; Sort
	Switch UBound($avArray, 0)
		Case 1
			If $iPivot Then ; Switch algorithms as required
				__ArrayDualPivotSort($avArray, $iStart, $iEnd)
			Else
				__ArrayQuickSort1D($avArray, $iStart, $iEnd)
			EndIf
			If $iDescending Then _ArrayReverse($avArray, $iStart, $iEnd)
		Case 2
			If $iPivot Then Return SetError(6, 0, 0) ; Error if 2D array and $iPivot
			Local $iSubMax = UBound($avArray, 2) - 1
			If $iSubItem > $iSubMax Then Return SetError(3, 0, 0)

			If $iDescending Then
				$iDescending = -1
			Else
				$iDescending = 1
			EndIf

			__ArrayQuickSort2D($avArray, $iDescending, $iStart, $iEnd, $iSubItem, $iSubMax)
		Case Else
			Return SetError(4, 0, 0)
	EndSwitch

	Return 1
EndFunc   ;==>_ArraySort

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __ArrayQuickSort1D
; Description ...: Helper function for sorting 1D arrays
; Syntax.........: __ArrayQuickSort1D ( ByRef $avArray, ByRef $iStart, ByRef $iEnd )
; Parameters ....: $avArray - Array to sort
;                  $iStart  - Index of array to start sorting at
;                  $iEnd    - Index of array to stop sorting at
; Return values .: None
; Author ........: Jos van der Zande, LazyCoder, Tylo, Ultima
; Modified.......:
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __ArrayQuickSort1D(ByRef $avArray, Const ByRef $iStart, Const ByRef $iEnd)
	If $iEnd <= $iStart Then Return

	Local $vTmp

	; InsertionSort (faster for smaller segments)
	If ($iEnd - $iStart) < 15 Then
		Local $vCur
		For $i = $iStart + 1 To $iEnd
			$vTmp = $avArray[$i]

			If IsNumber($vTmp) Then
				For $j = $i - 1 To $iStart Step -1
					$vCur = $avArray[$j]
					; If $vTmp >= $vCur Then ExitLoop
					If ($vTmp >= $vCur And IsNumber($vCur)) Or (Not IsNumber($vCur) And StringCompare($vTmp, $vCur) >= 0) Then ExitLoop
					$avArray[$j + 1] = $vCur
				Next
			Else
				For $j = $i - 1 To $iStart Step -1
					If (StringCompare($vTmp, $avArray[$j]) >= 0) Then ExitLoop
					$avArray[$j + 1] = $avArray[$j]
				Next
			EndIf

			$avArray[$j + 1] = $vTmp
		Next
		Return
	EndIf

	; QuickSort
	Local $L = $iStart, $R = $iEnd, $vPivot = $avArray[Int(($iStart + $iEnd) / 2)], $fNum = IsNumber($vPivot)
	Do
		If $fNum Then
			; While $avArray[$L] < $vPivot
			While ($avArray[$L] < $vPivot And IsNumber($avArray[$L])) Or (Not IsNumber($avArray[$L]) And StringCompare($avArray[$L], $vPivot) < 0)
				$L += 1
			WEnd
			; While $avArray[$R] > $vPivot
			While ($avArray[$R] > $vPivot And IsNumber($avArray[$R])) Or (Not IsNumber($avArray[$R]) And StringCompare($avArray[$R], $vPivot) > 0)
				$R -= 1
			WEnd
		Else
			While (StringCompare($avArray[$L], $vPivot) < 0)
				$L += 1
			WEnd
			While (StringCompare($avArray[$R], $vPivot) > 0)
				$R -= 1
			WEnd
		EndIf

		; Swap
		If $L <= $R Then
			$vTmp = $avArray[$L]
			$avArray[$L] = $avArray[$R]
			$avArray[$R] = $vTmp
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R

	__ArrayQuickSort1D($avArray, $iStart, $R)
	__ArrayQuickSort1D($avArray, $L, $iEnd)
EndFunc   ;==>__ArrayQuickSort1D

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __ArrayQuickSort2D
; Description ...: Helper function for sorting 2D arrays
; Syntax.........: __ArrayQuickSort2D ( ByRef $avArray, ByRef $iStep, ByRef $iStart, ByRef $iEnd, ByRef $iSubItem, ByRef $iSubMax )
; Parameters ....: $avArray  - Array to sort
;                  $iStep    - Step size (should be 1 to sort ascending, -1 to sort descending!)
;                  $iStart   - Index of array to start sorting at
;                  $iEnd     - Index of array to stop sorting at
;                  $iSubItem - Sub-index to sort on in 2D arrays
;                  $iSubMax  - Maximum sub-index that array has
; Return values .: None
; Author ........: Jos van der Zande, LazyCoder, Tylo, Ultima
; Modified.......:
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __ArrayQuickSort2D(ByRef $avArray, Const ByRef $iStep, Const ByRef $iStart, Const ByRef $iEnd, Const ByRef $iSubItem, Const ByRef $iSubMax)
	If $iEnd <= $iStart Then Return

	; QuickSort
	Local $vTmp, $L = $iStart, $R = $iEnd, $vPivot = $avArray[Int(($iStart + $iEnd) / 2)][$iSubItem], $fNum = IsNumber($vPivot)
	Do
		If $fNum Then
			; While $avArray[$L][$iSubItem] < $vPivot
			While ($iStep * ($avArray[$L][$iSubItem] - $vPivot) < 0 And IsNumber($avArray[$L][$iSubItem])) Or (Not IsNumber($avArray[$L][$iSubItem]) And $iStep * StringCompare($avArray[$L][$iSubItem], $vPivot) < 0)
				$L += 1
			WEnd
			; While $avArray[$R][$iSubItem] > $vPivot
			While ($iStep * ($avArray[$R][$iSubItem] - $vPivot) > 0 And IsNumber($avArray[$R][$iSubItem])) Or (Not IsNumber($avArray[$R][$iSubItem]) And $iStep * StringCompare($avArray[$R][$iSubItem], $vPivot) > 0)
				$R -= 1
			WEnd
		Else
			While ($iStep * StringCompare($avArray[$L][$iSubItem], $vPivot) < 0)
				$L += 1
			WEnd
			While ($iStep * StringCompare($avArray[$R][$iSubItem], $vPivot) > 0)
				$R -= 1
			WEnd
		EndIf

		; Swap
		If $L <= $R Then
			For $i = 0 To $iSubMax
				$vTmp = $avArray[$L][$i]
				$avArray[$L][$i] = $avArray[$R][$i]
				$avArray[$R][$i] = $vTmp
			Next
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R

	__ArrayQuickSort2D($avArray, $iStep, $iStart, $R, $iSubItem, $iSubMax)
	__ArrayQuickSort2D($avArray, $iStep, $L, $iEnd, $iSubItem, $iSubMax)
EndFunc   ;==>__ArrayQuickSort2D

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __ArrayDualPivotSort
; Description ...: Helper function for sorting 1D arrays
; Syntax.........: __ArrayDualPivotSort ( ByRef $aArray, $iPivot_Left, $iPivot_Right [, $fLeftMost = True ] )
; Parameters ....: $avArray  - Array to sort
;                  $iPivot_Left  - Index of the array to start sorting at
;                  $iPivot_Right - Index of the array to stop sorting at
;                  $fLeftMost    - Indicates if this part is the leftmost in the range
; Return values .: None
; Author ........: Erik Pilsits
; Modified.......: Melba23
; Remarks .......: For Internal Use Only
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __ArrayDualPivotSort(ByRef $aArray, $iPivot_Left, $iPivot_Right, $fLeftMost = True)
	If $iPivot_Left > $iPivot_Right Then Return
	Local $iLength = $iPivot_Right - $iPivot_Left + 1
	Local $i, $j, $k, $ai, $ak, $a1, $a2, $last
	If $iLength < 45 Then ; Use insertion sort for small arrays - value chosen empirically
		If $fLeftMost Then
			$i = $iPivot_Left
			While $i < $iPivot_Right
				$j = $i
				$ai = $aArray[$i + 1]
				While $ai < $aArray[$j]
					$aArray[$j + 1] = $aArray[$j]
					$j -= 1
					If $j + 1 = $iPivot_Left Then ExitLoop
				WEnd
				$aArray[$j + 1] = $ai
				$i += 1
			WEnd
		Else
			While 1
				If $iPivot_Left >= $iPivot_Right Then Return 1
				$iPivot_Left += 1
				If $aArray[$iPivot_Left] < $aArray[$iPivot_Left - 1] Then ExitLoop
			WEnd
			While 1
				$k = $iPivot_Left
				$iPivot_Left += 1
				If $iPivot_Left > $iPivot_Right Then ExitLoop
				$a1 = $aArray[$k]
				$a2 = $aArray[$iPivot_Left]
				If $a1 < $a2 Then
					$a2 = $a1
					$a1 = $aArray[$iPivot_Left]
				EndIf
				$k -= 1
				While $a1 < $aArray[$k]
					$aArray[$k + 2] = $aArray[$k]
					$k -= 1
				WEnd
				$aArray[$k + 2] = $a1
				While $a2 < $aArray[$k]
					$aArray[$k + 1] = $aArray[$k]
					$k -= 1
				WEnd
				$aArray[$k + 1] = $a2
				$iPivot_Left += 1
			WEnd
			$last = $aArray[$iPivot_Right]
			$iPivot_Right -= 1
			While $last < $aArray[$iPivot_Right]
				$aArray[$iPivot_Right + 1] = $aArray[$iPivot_Right]
				$iPivot_Right -= 1
			WEnd
			$aArray[$iPivot_Right + 1] = $last
		EndIf
		Return 1
	EndIf
	Local $iSeventh = BitShift($iLength, 3) + BitShift($iLength, 6) + 1
	Local $e1, $e2, $e3, $e4, $e5, $t
	$e3 = Ceiling(($iPivot_Left + $iPivot_Right) / 2)
	$e2 = $e3 - $iSeventh
	$e1 = $e2 - $iSeventh
	$e4 = $e3 + $iSeventh
	$e5 = $e4 + $iSeventh
	If $aArray[$e2] < $aArray[$e1] Then
		$t = $aArray[$e2]
		$aArray[$e2] = $aArray[$e1]
		$aArray[$e1] = $t
	EndIf
	If $aArray[$e3] < $aArray[$e2] Then
		$t = $aArray[$e3]
		$aArray[$e3] = $aArray[$e2]
		$aArray[$e2] = $t
		If $t < $aArray[$e1] Then
			$aArray[$e2] = $aArray[$e1]
			$aArray[$e1] = $t
		EndIf
	EndIf
	If $aArray[$e4] < $aArray[$e3] Then
		$t = $aArray[$e4]
		$aArray[$e4] = $aArray[$e3]
		$aArray[$e3] = $t
		If $t < $aArray[$e2] Then
			$aArray[$e3] = $aArray[$e2]
			$aArray[$e2] = $t
			If $t < $aArray[$e1] Then
				$aArray[$e2] = $aArray[$e1]
				$aArray[$e1] = $t
			EndIf
		EndIf
	EndIf
	If $aArray[$e5] < $aArray[$e4] Then
		$t = $aArray[$e5]
		$aArray[$e5] = $aArray[$e4]
		$aArray[$e4] = $t
		If $t < $aArray[$e3] Then
			$aArray[$e4] = $aArray[$e3]
			$aArray[$e3] = $t
			If $t < $aArray[$e2] Then
				$aArray[$e3] = $aArray[$e2]
				$aArray[$e2] = $t
				If $t < $aArray[$e1] Then
					$aArray[$e2] = $aArray[$e1]
					$aArray[$e1] = $t
				EndIf
			EndIf
		EndIf
	EndIf
	Local $iLess = $iPivot_Left
	Local $iGreater = $iPivot_Right
	If (($aArray[$e1] <> $aArray[$e2]) And ($aArray[$e2] <> $aArray[$e3]) And ($aArray[$e3] <> $aArray[$e4]) And ($aArray[$e4] <> $aArray[$e5])) Then
		Local $iPivot_1 = $aArray[$e2]
		Local $iPivot_2 = $aArray[$e4]
		$aArray[$e2] = $aArray[$iPivot_Left]
		$aArray[$e4] = $aArray[$iPivot_Right]
		Do
			$iLess += 1
		Until $aArray[$iLess] >= $iPivot_1
		Do
			$iGreater -= 1
		Until $aArray[$iGreater] <= $iPivot_2
		$k = $iLess
		While $k <= $iGreater
			$ak = $aArray[$k]
			If $ak < $iPivot_1 Then
				$aArray[$k] = $aArray[$iLess]
				$aArray[$iLess] = $ak
				$iLess += 1
			ElseIf $ak > $iPivot_2 Then
				While $aArray[$iGreater] > $iPivot_2
					$iGreater -= 1
					If $iGreater + 1 = $k Then ExitLoop 2
				WEnd
				If $aArray[$iGreater] < $iPivot_1 Then
					$aArray[$k] = $aArray[$iLess]
					$aArray[$iLess] = $aArray[$iGreater]
					$iLess += 1
				Else
					$aArray[$k] = $aArray[$iGreater]
				EndIf
				$aArray[$iGreater] = $ak
				$iGreater -= 1
			EndIf
			$k += 1
		WEnd
		$aArray[$iPivot_Left] = $aArray[$iLess - 1]
		$aArray[$iLess - 1] = $iPivot_1
		$aArray[$iPivot_Right] = $aArray[$iGreater + 1]
		$aArray[$iGreater + 1] = $iPivot_2
		__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 2, True)
		__ArrayDualPivotSort($aArray, $iGreater + 2, $iPivot_Right, False)
		If ($iLess < $e1) And ($e5 < $iGreater) Then
			While $aArray[$iLess] = $iPivot_1
				$iLess += 1
			WEnd
			While $aArray[$iGreater] = $iPivot_2
				$iGreater -= 1
			WEnd
			$k = $iLess
			While $k <= $iGreater
				$ak = $aArray[$k]
				If $ak = $iPivot_1 Then
					$aArray[$k] = $aArray[$iLess]
					$aArray[$iLess] = $ak
					$iLess += 1
				ElseIf $ak = $iPivot_2 Then
					While $aArray[$iGreater] = $iPivot_2
						$iGreater -= 1
						If $iGreater + 1 = $k Then ExitLoop 2
					WEnd
					If $aArray[$iGreater] = $iPivot_1 Then
						$aArray[$k] = $aArray[$iLess]
						$aArray[$iLess] = $iPivot_1
						$iLess += 1
					Else
						$aArray[$k] = $aArray[$iGreater]
					EndIf
					$aArray[$iGreater] = $ak
					$iGreater -= 1
				EndIf
				$k += 1
			WEnd
		EndIf
		__ArrayDualPivotSort($aArray, $iLess, $iGreater, False)
	Else
		Local $iPivot = $aArray[$e3]
		$k = $iLess
		While $k <= $iGreater
			If $aArray[$k] = $iPivot Then
				$k += 1
				ContinueLoop
			EndIf
			$ak = $aArray[$k]
			If $ak < $iPivot Then
				$aArray[$k] = $aArray[$iLess]
				$aArray[$iLess] = $ak
				$iLess += 1
			Else
				While $aArray[$iGreater] > $iPivot
					$iGreater -= 1
				WEnd
				If $aArray[$iGreater] < $iPivot Then
					$aArray[$k] = $aArray[$iLess]
					$aArray[$iLess] = $aArray[$iGreater]
					$iLess += 1
				Else
					$aArray[$k] = $iPivot
				EndIf
				$aArray[$iGreater] = $ak
				$iGreater -= 1
			EndIf
			$k += 1
		WEnd
		__ArrayDualPivotSort($aArray, $iPivot_Left, $iLess - 1, True)
		__ArrayDualPivotSort($aArray, $iGreater + 1, $iPivot_Right, False)
	EndIf
EndFunc   ;==>__ArrayDualPivotSort

; #FUNCTION# ====================================================================================================================
; Author ........: David Nuttall <danuttall at rocketmail dot com>
; Modified.......: Ultima - minor optimization
; ===============================================================================================================================
Func _ArraySwap(ByRef $vItem1, ByRef $vItem2)
	Local $vTmp = $vItem1
	$vItem1 = $vItem2
	$vItem2 = $vTmp
EndFunc   ;==>_ArraySwap

; #FUNCTION# ====================================================================================================================
; Author ........: Cephas <cephas at clergy dot net>
; Modified.......: Jos van der Zande <jdeb at autoitscript dot com> - added $iStart parameter and logic, Ultima - added $iEnd parameter, make use of _ArrayToString() instead of duplicating efforts
; ===============================================================================================================================
Func _ArrayToClip(Const ByRef $avArray, $iStart = 0, $iEnd = 0)
	Local $sResult = _ArrayToString($avArray, @CR, $iStart, $iEnd)
	If @error Then Return SetError(@error, 0, 0)
	If ClipPut($sResult) Then Return 1
	Return SetError(-1, 0, 0)
EndFunc   ;==>_ArrayToClip

; #FUNCTION# ====================================================================================================================
; Author ........: Brian Keene <brian_keene at yahoo dot com>, Valik - rewritten
; Modified.......: Ultima - code cleanup; Melba23 - added support for empty arrays
; ===============================================================================================================================
Func _ArrayToString(Const ByRef $avArray, $sDelim = "|", $iStart = 0, $iEnd = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, "")
	If UBound($avArray, 0) <> 1 Then Return SetError(3, 0, "")
	If Not UBound($avArray) Then Return SetError(4, 0, "")

	Local $sResult, $iUBound = UBound($avArray) - 1

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(2, 0, "")

	; Combine
	For $i = $iStart To $iEnd
		$sResult &= $avArray[$i] & $sDelim
	Next

	Return StringTrimRight($sResult, StringLen($sDelim))
EndFunc   ;==>_ArrayToString

; #FUNCTION# ====================================================================================================================
; Author ........: jchd
; Modified.......:
; ===============================================================================================================================
Func _ArrayTranspose(ByRef $avArray)
	If UBound($avArray, 0) <> 2 Then Return SetError(1, 0, 0)

	Local $vElement = 0, $iDim_1 = UBound($avArray, 1), $iDim_2 = UBound($avArray, 2), $iDim_Max = ($iDim_1 > $iDim_2) ? $iDim_1 : $iDim_2

	If $iDim_Max <= 4096 Then
		ReDim $avArray[$iDim_Max][$iDim_Max]
		For $i = 0 To $iDim_Max - 2
			For $j = $i + 1 To $iDim_Max - 1
				$vElement = $avArray[$i][$j]
				$avArray[$i][$j] = $avArray[$j][$i]
				$avArray[$j][$i] = $vElement
			Next
		Next
		ReDim $avArray[$iDim_2][$iDim_1]
	Else
		Local $aTemp[$iDim_2][$iDim_1]
		For $i = 0 To $iDim_1 - 1
			For $j = 0 To $iDim_2 - 1
				$aTemp[$j][$i] = $avArray[$i][$j]
			Next
		Next
		ReDim $avArray[$iDim_2][$iDim_1]
		$avArray = $aTemp
	EndIf
	Return 1
EndFunc   ;==>_ArrayTranspose

; #FUNCTION# ====================================================================================================================
; Author ........: Adam Moore (redndahead)
; Modified.......: Ultima - code cleanup, optimization
; ===============================================================================================================================
Func _ArrayTrim(ByRef $avArray, $iTrimNum, $iDirection = 0, $iStart = 0, $iEnd = 0)
	If Not IsArray($avArray) Then Return SetError(1, 0, 0)
	If UBound($avArray, 0) <> 1 Then Return SetError(2, 0, 0)
	If Not UBound($avArray) Then Return SetError(3, 0, 0)

	Local $iUBound = UBound($avArray) - 1

	; Bounds checking
	If $iEnd < 1 Or $iEnd > $iUBound Then $iEnd = $iUBound
	If $iStart < 0 Then $iStart = 0
	If $iStart > $iEnd Then Return SetError(5, 0, 0)

	; Trim
	If $iDirection Then
		For $i = $iStart To $iEnd
			$avArray[$i] = StringTrimRight($avArray[$i], $iTrimNum)
		Next
	Else
		For $i = $iStart To $iEnd
			$avArray[$i] = StringTrimLeft($avArray[$i], $iTrimNum)
		Next
	EndIf

	Return 1
EndFunc   ;==>_ArrayTrim

; #FUNCTION# ====================================================================================================================
; Author ........: SmOke_N
; Modified.......: litlmike, Erik Pilsits, BrewManNH
; ===============================================================================================================================
Func _ArrayUnique(Const ByRef $aArray, $iColumn = Default, $iBase = Default, $iCase = Default, $iFlags = Default)
	If $iColumn = Default Then $iColumn = 1
	If $iBase = Default Then $iBase = 0
	If $iCase = Default Then $iCase = 0
	If $iFlags = Default Then $iFlags = 1
	; Start bounds checking
	If UBound($aArray) = 0 Then Return SetError(1, 0, 0) ; Check if array is empty, or not an array
	; $iBase can only be 0 or 1, if anything else, return with an error
	If $iBase < 0 Or $iBase > 1 Or (Not IsInt($iBase)) Then Return SetError(2, 0, 0)
	If $iCase < 0 Or $iCase > 1 Or (Not IsInt($iCase)) Then Return SetError(2, 0, 0)
	If $iFlags < 0 Or $iFlags > 1 Or (Not IsInt($iFlags)) Then Return SetError(4, 0, 0)
	Local $iDims = UBound($aArray, 0), $iNumColumns = UBound($aArray, 2)
	If $iDims > 2 Then Return SetError(3, 0, 0)
	; checks the given dimension is valid
	If ($iColumn < 1) Or ($iNumColumns = 0 And ($iColumn - 1 > $iNumColumns)) Or ($iNumColumns > 0 And ($iColumn > $iNumColumns)) Then Return SetError(3, 0, 0)
	; make $iColumn an array index, note this is ignored for 1D arrays
	$iColumn -= 1
	; create dictionary
	Local $oD = ObjCreate("Scripting.Dictionary")
	; compare mode for strings
	; 0 = binary, which is case sensitive
	; 1 = text, which is case insensitive
	; this expression forces either 1 or 0
	$oD.CompareMode = Number(Not $iCase)
	Local $vElem
	; walk the input array
	For $i = $iBase To UBound($aArray) - 1
		If $iDims = 1 Then
			; 1D array
			$vElem = $aArray[$i]
		Else
			; 2D array
			$vElem = $aArray[$i][$iColumn]
		EndIf
		; add key to dictionary
		; NOTE: accessing the value (.Item property) of a key that doesn't exist creates the key :)
		; keys are guaranteed to be unique
		$oD.Item($vElem)
	Next
	;
	; return the array of unique keys
	If BitAND($iFlags, 1) = 1 Then
		Local $aTemp = $oD.Keys()
		_ArrayInsert($aTemp, 0, $oD.Count)
		Return $aTemp
	Else
		Return $oD.Keys()
	EndIf
EndFunc   ;==>_ArrayUnique

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __Array_ExeterInternal
; Description ...: Permute Function based on an algorithm from Exeter University.
; Syntax.........: __Array_ExeterInternal ( ByRef $avArray, $iStart, $iSize, $sDelim, ByRef $aIdx, ByRef $aResult )
; Parameters ....: $avArray - The Array to get Permutations
;                  $iStart - Starting Point for Loop
;                  $iSize - End Point for Loop
;                  $sDelim - String result separator
;                  $aIdx - Array Used in Rotations
;                  $aResult - Resulting Array
; Return values .: Success      - Computer name
; Author ........: Erik Pilsits
; Modified.......: 07/08/2008
; Remarks .......: This function is used internally. Permute Function based on an algorithm from Exeter University.
; +
;                   http://www.bearcave.com/random_hacks/permute.html
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __Array_ExeterInternal(ByRef $avArray, $iStart, $iSize, $sDelim, ByRef $aIdx, ByRef $aResult, ByRef $iCount)
	If $iStart == $iSize - 1 Then
		For $i = 0 To $iSize - 1
			$aResult[$iCount] &= $avArray[$aIdx[$i]] & $sDelim
		Next
		If $sDelim <> "" Then $aResult[$iCount] = StringTrimRight($aResult[$iCount], 1)
		$iCount += 1
	Else
		Local $iTemp
		For $i = $iStart To $iSize - 1
			$iTemp = $aIdx[$i]

			$aIdx[$i] = $aIdx[$iStart]
			$aIdx[$iStart] = $iTemp
			__Array_ExeterInternal($avArray, $iStart + 1, $iSize, $sDelim, $aIdx, $aResult, $iCount)
			$aIdx[$iStart] = $aIdx[$i]
			$aIdx[$i] = $iTemp
		Next
	EndIf
EndFunc   ;==>__Array_ExeterInternal

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __Array_Combinations
; Description ...: Creates Combination
; Syntax.........: __Array_Combinations ( $iN, $iR )
; Parameters ....: $iN - Value passed on from UBound($avArray)
;                  $iR - Size of the combinations set
; Return values .: Integer value of the number of combinations
; Author ........: Erik Pilsits
; Modified.......: 07/08/2008
; Remarks .......: This function is used internally. PBased on an algorithm by Kenneth H. Rosen.
; +
;                   http://www.bearcave.com/random_hacks/permute.html
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __Array_Combinations($iN, $iR)
	Local $i_Total = 1

	For $i = $iR To 1 Step -1
		$i_Total *= ($iN / $i)
		$iN -= 1
	Next
	Return Round($i_Total)
EndFunc   ;==>__Array_Combinations

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name...........: __Array_GetNext
; Description ...: Creates Combination
; Syntax.........: __Array_GetNext ( $iN, $iR, ByRef $iLeft, $iTotal, ByRef $aIdx )
; Parameters ....: $iN - Value passed on from UBound($avArray)
;                  $iR - Size of the combinations set
;                  $iLeft - Remaining number of combinations
;                  $iTotal - Total number of combinations
;                  $aIdx - Array containing combinations
; Return values .: Function only changes values ByRef
; Author ........: Erik Pilsits
; Modified.......: 07/08/2008
; Remarks .......: This function is used internally. PBased on an algorithm by Kenneth H. Rosen.
; +
;                   http://www.bearcave.com/random_hacks/permute.html
; Related .......:
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func __Array_GetNext($iN, $iR, ByRef $iLeft, $iTotal, ByRef $aIdx)
	If $iLeft == $iTotal Then
		$iLeft -= 1
		Return
	EndIf

	Local $i = $iR - 1
	While $aIdx[$i] == $iN - $iR + $i
		$i -= 1
	WEnd

	$aIdx[$i] += 1
	For $j = $i + 1 To $iR - 1
		$aIdx[$j] = $aIdx[$i] + $j - $i
	Next

	$iLeft -= 1
EndFunc   ;==>__Array_GetNext
