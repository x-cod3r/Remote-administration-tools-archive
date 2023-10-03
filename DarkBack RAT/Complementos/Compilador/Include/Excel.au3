#include-once

; #INDEX# =======================================================================================================================
; Title .........: Microsoft Excel COM UDF library for AutoIt v3
; AutoIt Version : 3.2.3++, Excel.au3 v 1.5 (07/18/2008 @ 8:25am PST)
; Language ......: English
; Description ...: Functions for creating, attaching to, reading from and manipulating Microsoft Excel.
; Author(s) .....: SEO (Locodarwin), DaLiMan, Stanley Lim, MikeOsdx, MRDev, big_daddy, PsaltyDS, litlmike, water
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
Global Const $xlCalculationManual = -4135
Global Const $xlCalculationAutomatic = -4105
Global Const $xlLeft = -4131
Global Const $xlCenter = -4108
Global Const $xlRight = -4152
Global Const $xlEdgeLeft = 7
Global Const $xlEdgeTop = 8
Global Const $xlEdgeBottom = 9
Global Const $xlEdgeRight = 10
Global Const $xlInsideVertical = 11
Global Const $xlInsideHorizontal = 12
Global Const $xlTop = -4160
Global Const $xlBottom = -4107
Global Const $xlNormal = -4143
Global Const $xlWorkbookNormal = -4143
Global Const $xlWorkbookDefault = 51
Global Const $xlCSVMSDOS = 24
Global Const $xlTextWindows = 20
Global Const $xlHtml = 44
Global Const $xlTemplate = 17
Global Const $xlThin = 2
Global Const $xlDouble = -4119
Global Const $xlThick = 4
Global Const $xl3DColumn = -4100
Global Const $xlColumns = 2
Global Const $xlLocationAsObject = 2
Global Const $xlVAlignBottom = -4107
Global Const $xlVAlignCenter = -4108
Global Const $xlVAlignDistributed = -4117
Global Const $xlVAlignJustify = -4130
Global Const $xlVAlignTop = -4160
Global Const $xlLine = 4
Global Const $xlValue = 2
Global Const $xlLinear = -4132
Global Const $xlNone = -4142
Global Const $xlDot = -4118
Global Const $xlCategory = 1
Global Const $xlContinuous = 1
Global Const $xlMedium = -4138
Global Const $xlLegendPositionLeft = -4131
Global Const $xlRadar = -4151
Global Const $xlAutomatic = -4105
Global Const $xlHairline = 1
Global Const $xlAscending = 1
Global Const $xlDescending = 2
Global Const $xlSortRows = 2
Global Const $xlSortColumns = 1
Global Const $xlSortLabels = 2
Global Const $xlSortValues = 1
Global Const $xlLeftToRight = 2
Global Const $xlTopToBottom = 1
Global Const $xlSortNormal = 0
Global Const $xlSortTextAsNumbers = 1
Global Const $xlGuess = 0
Global Const $xlNo = 2
Global Const $xlYes = 1
Global Const $xlFormulas = -4123
Global Const $xlPart = 2
Global Const $xlWhole = 1
Global Const $xlByColumns = 2
Global Const $xlByRows = 1
Global Const $xlNext = 1
Global Const $xlPrevious = 2
Global Const $xlCellTypeLastCell = 11
Global Const $xlR1C1 = -4150
Global Const $xlShiftDown = -4121
Global Const $xlShiftToRight = -4161
Global Const $xlValues = -4163
Global Const $xlNotes = -4144

Global Const $xlExclusive = 3
Global Const $xlNoChange = 1
Global Const $xlShared = 2

Global Const $xlLocalSessionChanges = 2
Global Const $xlOtherSessionChanges = 3
Global Const $xlUserResolution = 1

; Constants used for testing if a worksheet is visible or hidden.
Global Const $xlSheetHidden = 0
Global Const $xlSheetVisible = -1
Global Const $xlSheetVeryHidden = 2

; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _ExcelBookNew
; _ExcelBookOpen
; _ExcelBookAttach
; _ExcelBookSave
; _ExcelBookSaveAs
; _ExcelBookClose
; _ExcelWriteCell
; _ExcelWriteFormula
; _ExcelWriteArray
; _ExcelWriteSheetFromArray
; _ExcelHyperlinkInsert
; _ExcelNumberFormat
; _ExcelReadCell
; _ExcelReadArray
; _ExcelReadSheetToArray
; _ExcelRowDelete
; _ExcelColumnDelete
; _ExcelRowInsert
; _ExcelColumnInsert
; _ExcelSheetAddNew
; _ExcelSheetDelete
; _ExcelSheetNameGet
; _ExcelSheetNameSet
; _ExcelSheetList
; _ExcelSheetActivate
; _ExcelSheetMove
; _ExcelHorizontalAlignSet
; _ExcelFontSetProperties
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelBookNew($fVisible = 1)
	Local $oExcel = ObjCreate("Excel.Application")
	If @error Then Return SetError(1, @error, 0)
	If Not IsNumber($fVisible) Then Return SetError(2, 0, 0)
	If $fVisible > 1 Then $fVisible = 1
	If $fVisible < 0 Then $fVisible = 0
	With $oExcel
		.Visible = $fVisible
		.WorkBooks.Add()
		.ActiveWorkbook.Sheets(1).Select()
	EndWith
	Return $oExcel
EndFunc   ;==>_ExcelBookNew

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelBookOpen($sFilePath, $fVisible = 1, $fReadOnly = False, $sPassword = "", $sWritePassword = "")
	Local $oExcel = ObjCreate("Excel.Application")
	If @error Then Return SetError(1, @error, 0)
	If Not FileExists($sFilePath) Then Return SetError(2, 0, 0)
	If $fVisible > 1 Then $fVisible = 1
	If $fVisible < 0 Then $fVisible = 0
	If $fReadOnly > 1 Then $fReadOnly = 1
	If $fReadOnly < 0 Then $fReadOnly = 0
	With $oExcel
		.Visible = $fVisible
		If $sPassword <> "" And $sWritePassword <> "" Then .WorkBooks.Open($sFilePath, Default, $fReadOnly, Default, $sPassword, $sWritePassword)
		If $sPassword = "" And $sWritePassword <> "" Then .WorkBooks.Open($sFilePath, Default, $fReadOnly, Default, Default, $sWritePassword)
		If $sPassword <> "" And $sWritePassword = "" Then .WorkBooks.Open($sFilePath, Default, $fReadOnly, Default, $sPassword, Default)
		If $sPassword = "" And $sWritePassword = "" Then .WorkBooks.Open($sFilePath, Default, $fReadOnly)
		If @error Then Return SetError(3, @error, 0)
		; Select the first *visible* worksheet.
		For $i = 1 To .ActiveWorkbook.Sheets.Count
			If .ActiveWorkbook.Sheets($i).Visible = $xlSheetVisible Then
				.ActiveWorkbook.Sheets($i).Select()
				ExitLoop
			EndIf
		Next
	EndWith
	Return $oExcel
EndFunc   ;==>_ExcelBookOpen

; #FUNCTION# ====================================================================================================================
; Author ........: Bob Anthony (big_daddy)
; Modified.......: water
; ===============================================================================================================================
Func _ExcelBookAttach($s_string, $s_mode = "FilePath")
	Local $o_Result
	If $s_mode = "filepath" Then
		$o_Result = ObjGet($s_string)
		If Not @error And IsObj($o_Result) Then Return $o_Result
	EndIf
	$o_Result = ObjGet("", "Excel.Application")
	If @error Or Not IsObj($o_Result) Then Return SetError(1, @error, 0)
	Local $o_workbooks = $o_Result.Application.Workbooks
	If Not IsObj($o_workbooks) Or $o_workbooks.Count = 0 Then Return SetError(2, 0, 0)
	For $o_workbook In $o_workbooks
		Switch $s_mode
			Case "filename"
				If $o_workbook.Name = $s_string Then Return $o_workbook
			Case "filepath"
				If $o_workbook.FullName = $s_string Then Return $o_workbook
			Case "title"
				If ($o_workbook.Application.Caption) = $s_string Then Return $o_workbook
			Case Else
				Return SetError(3, 0, 0)
		EndSwitch
	Next
	Return SetError(4, 0, 0)
EndFunc   ;==>_ExcelBookAttach

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelBookSave($oExcel, $fAlerts = 0)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $fAlerts > 1 Then $fAlerts = 1
	If $fAlerts < 0 Then $fAlerts = 0
	$oExcel.Application.DisplayAlerts = $fAlerts
	$oExcel.Application.ScreenUpdating = $fAlerts
	$oExcel.ActiveWorkBook.Save()
	If @error Then Return SetError(2, @error, 0)
	If Not $fAlerts Then
		$oExcel.Application.DisplayAlerts = 1
		$oExcel.Application.ScreenUpdating = 1
	EndIf
	Return 1
EndFunc   ;==>_ExcelBookSave

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelBookSaveAs($oExcel, $sFilePath, $vType = "xls", $fAlerts = 0, $fOverWrite = 0, $sPassword = "", $sWritePassword = "", $iAccessMode = 1, _
		$iConflictResolution = 2)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $vType = "xlsx" Or $vType = "xls" Or $vType = "csv" Or $vType = "txt" Or $vType = "template" Or $vType = "html" Then
		If $vType = "xlsx" Then $vType = $xlWorkbookDefault
		If $vType = "xls" Then $vType = $xlNormal
		If $vType = "csv" Then $vType = $xlCSVMSDOS
		If $vType = "txt" Then $vType = $xlTextWindows
		If $vType = "template" Then $vType = $xlTemplate
		If $vType = "html" Then $vType = $xlHtml
	ElseIf Not IsNumber($vType) Then
		Return SetError(2, 0, 0)
	EndIf
	If $fAlerts > 1 Then $fAlerts = 1
	If $fAlerts < 0 Then $fAlerts = 0
	$oExcel.Application.DisplayAlerts = $fAlerts
	$oExcel.Application.ScreenUpdating = $fAlerts
	If FileExists($sFilePath) Then
		If Not $fOverWrite Then Return SetError(3, 0, 0)
		FileDelete($sFilePath)
	EndIf
	If $sPassword = "" And $sWritePassword = "" Then $oExcel.ActiveWorkBook.SaveAs($sFilePath, $vType, Default, Default, Default, Default, $iAccessMode, $iConflictResolution)
	If $sPassword <> "" And $sWritePassword = "" Then $oExcel.ActiveWorkBook.SaveAs($sFilePath, $vType, $sPassword, Default, Default, Default, $iAccessMode, $iConflictResolution)
	If $sPassword <> "" And $sWritePassword <> "" Then $oExcel.ActiveWorkBook.SaveAs($sFilePath, $vType, $sPassword, $sWritePassword, Default, Default, $iAccessMode, $iConflictResolution)
	If $sPassword = "" And $sWritePassword <> "" Then $oExcel.ActiveWorkBook.SaveAs($sFilePath, $vType, Default, $sWritePassword, Default, Default, $iAccessMode, $iConflictResolution)
	If @error Then Return SetError(4, @error, 0)
	If Not $fAlerts Then
		$oExcel.Application.DisplayAlerts = 1
		$oExcel.Application.ScreenUpdating = 1
	EndIf
	Return 1
EndFunc   ;==>_ExcelBookSaveAs

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: 07/17/2008 by bid_daddy; litlmike, water
; ===============================================================================================================================
Func _ExcelBookClose($oExcel, $fSave = 1, $fAlerts = 0)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	Local $sObjName = ObjName($oExcel)
	If $fSave > 1 Then $fSave = 1
	If $fSave < 0 Then $fSave = 0
	If $fAlerts > 1 Then $fAlerts = 1
	If $fAlerts < 0 Then $fAlerts = 0
	; Save the users specified settings
	Local $fDisplayAlerts = $oExcel.Application.DisplayAlerts
	Local $fScreenUpdating = $oExcel.Application.ScreenUpdating
	; Make necessary changes
	$oExcel.Application.DisplayAlerts = $fAlerts
	$oExcel.Application.ScreenUpdating = $fAlerts
	Switch $sObjName
		Case "_Workbook"
			If $fSave Then
				$oExcel.Save()
				If @error Then Return SetError(2, @error, 0)
			EndIf
			; Check if multiple workbooks are open
			; Do not close application if there are
			If $oExcel.Application.Workbooks.Count > 1 Then
				Local $oApp = $oExcel.Application ; Save the application object
				#forceref $oApp
				$oExcel.Close()
				If @error Then Return SetError(3, @error, 0)
				; Restore the users specified settings
				$oApp.DisplayAlerts = $fDisplayAlerts
				$oApp.ScreenUpdating = $fScreenUpdating
			Else
				$oExcel.Application.Quit()
				If @error Then Return SetError(4, @error, 0)
			EndIf
		Case "_Application"
			If $fSave Then
				$oExcel.ActiveWorkBook.Save()
				If @error Then Return SetError(2, @error, 0)
			EndIf
			$oExcel.Quit()
			If @error Then Return SetError(4, @error, 0)
		Case Else
			Return SetError(1, 0, 0)
	EndSwitch
	Return 1
EndFunc   ;==>_ExcelBookClose

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelWriteCell($oExcel, $sValue, $sRangeOrRow, $iColumn = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If Not StringRegExp($sRangeOrRow, "[A-Z,a-z]", 0) Then
		If $sRangeOrRow < 1 Then Return SetError(2, 0, 0)
		If $iColumn < 1 Then Return SetError(2, 1, 0)
		$oExcel.Activesheet.Cells($sRangeOrRow, $iColumn).Value = $sValue
		If @error Then Return SetError(3, @error, 0)
		Return 1
	Else
		$oExcel.Activesheet.Range($sRangeOrRow).Value = $sValue
		If @error Then Return SetError(3, @error, 0)
		Return 1
	EndIf
EndFunc   ;==>_ExcelWriteCell

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelWriteFormula($oExcel, $sFormula, $sRangeOrRow, $iColumn = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If Not StringRegExp($sRangeOrRow, "[A-Z,a-z]", 0) Then
		If $sRangeOrRow < 1 Then Return SetError(2, 0, 0)
		If $iColumn < 1 Then Return SetError(2, 1, 0)
		$oExcel.Activesheet.Cells($sRangeOrRow, $iColumn).FormulaR1C1 = $sFormula
		If @error Then Return SetError(3, @error, 0)
		Return 1
	Else
		$oExcel.Activesheet.Range($sRangeOrRow).Formula = $sFormula
		If @error Then Return SetError(3, @error, 0)
		Return 1
	EndIf
EndFunc   ;==>_ExcelWriteFormula

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelWriteArray($oExcel, $iStartRow, $iStartColumn, $aArray, $iDirection = 0, $iIndexBase = 0)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iStartRow < 1 Then Return SetError(2, 0, 0)
	If $iStartColumn < 1 Then Return SetError(2, 1, 0)
	If Not IsArray($aArray) Then Return SetError(3, 0, 0)
	If $iDirection < 0 Or $iDirection > 1 Then Return SetError(4, 0, 0)
	If Not $iDirection Then
		For $xx = $iIndexBase To UBound($aArray) - 1
			$oExcel.Activesheet.Cells($iStartRow, ($xx - $iIndexBase) + $iStartColumn).Value = $aArray[$xx]
			If @error Then Return SetError(5, @error, 0)
		Next
	Else
		For $xx = $iIndexBase To UBound($aArray) - 1
			$oExcel.Activesheet.Cells(($xx - $iIndexBase) + $iStartRow, $iStartColumn).Value = $aArray[$xx]
			If @error Then Return SetError(5, @error, 0)
		Next
	EndIf
	Return 1
EndFunc   ;==>_ExcelWriteArray

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike and PsaltyDS 01/04/08 - 2D version _ExcelWriteSheetFromArray(), water
; ===============================================================================================================================
Func _ExcelWriteSheetFromArray($oExcel, ByRef $aArray, $iStartRow = 1, $iStartColumn = 1, $iRowBase = 1, $iColBase = 1)
	; Test inputs
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iStartRow < 1 Then Return SetError(2, 0, 0)
	If $iStartColumn < 1 Then Return SetError(2, 1, 0)
	If Not IsArray($aArray) Then Return SetError(3, 0, 0)
	Local $iDims = UBound($aArray, 0), $iLastRow = UBound($aArray, 1) - 1, $iLastColumn = UBound($aArray, 2) - 1
	If $iDims <> 2 Then Return SetError(3, 1, 0)
	If $iRowBase > $iLastRow Then Return SetError(4, 0, 0)
	If $iColBase > $iLastColumn Then Return SetError(4, 1, 0)
	Local $iCurrCol
	For $r = $iRowBase To $iLastRow
		$iCurrCol = $iStartColumn
		For $c = $iColBase To $iLastColumn
			$oExcel.Activesheet.Cells($iStartRow, $iCurrCol).Value = $aArray[$r][$c]
			If @error Then Return SetError(5, @error, 0)
			$iCurrCol += 1
		Next
		$iStartRow += 1
	Next
	Return 1
EndFunc   ;==>_ExcelWriteSheetFromArray

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelHyperlinkInsert($oExcel, $sLinkText, $sAddress, $sScreenTip, $sRangeOrRow, $iColumn = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If Not StringRegExp($sRangeOrRow, "[A-Z,a-z]", 0) Then
		If $sRangeOrRow < 1 Then Return SetError(2, 0, 0)
		If $iColumn < 1 Then Return SetError(2, 1, 0)
		$oExcel.ActiveSheet.Cells($sRangeOrRow, $iColumn).Select()
		If @error Then Return SetError(3, @error, 0)
	Else
		$oExcel.ActiveSheet.Range($sRangeOrRow).Select()
		If @error Then Return SetError(3, @error, 0)
	EndIf
	$oExcel.ActiveSheet.Hyperlinks.Add($oExcel.Selection, $sAddress, "", $sScreenTip, $sLinkText)
	If @error Then Return SetError(4, @error, 0)
	Return 1
EndFunc   ;==>_ExcelHyperlinkInsert

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelNumberFormat($oExcel, $sFormat, $sRangeOrRowStart, $iColStart = 1, $iRowEnd = 1, $iColEnd = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If Not StringRegExp($sRangeOrRowStart, "[A-Z,a-z]", 0) Then
		If $sRangeOrRowStart < 1 Then Return SetError(2, 0, 0)
		If $iColStart < 1 Then Return SetError(2, 1, 0)
		If $iRowEnd < $sRangeOrRowStart Then Return SetError(3, 0, 0)
		If $iColEnd < $iColStart Then Return SetError(3, 1, 0)
		With $oExcel.ActiveSheet
			.Range(.Cells($sRangeOrRowStart, $iColStart), .Cells($iRowEnd, $iColEnd)).NumberFormat = $sFormat
			If @error Then Return SetError(4, @error, 0)
		EndWith
	Else
		$oExcel.ActiveSheet.Range($sRangeOrRowStart).NumberFormat = $sFormat
		If @error Then Return SetError(4, @error, 0)
	EndIf
	Return 1
EndFunc   ;==>_ExcelNumberFormat

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelReadCell($oExcel, $sRangeOrRow, $iColumn = 1, $iReturn = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iReturn < 1 Or $iReturn > 3 Then Return SetError(4, 0, 0)
	Local $Value
	If Not StringRegExp($sRangeOrRow, "[A-Z,a-z]", 0) Then
		If $sRangeOrRow < 1 Then Return SetError(2, 0, 0)
		If $iColumn < 1 Then Return SetError(2, 1, 0)
		If $iReturn = 1 Then
			$Value = $oExcel.Activesheet.Cells($sRangeOrRow, $iColumn).Value
		ElseIf $iReturn = 2 Then
			$Value = $oExcel.Activesheet.Cells($sRangeOrRow, $iColumn).Formula
		Else
			$Value = $oExcel.Activesheet.Cells($sRangeOrRow, $iColumn).Text
		EndIf
		If @error Then Return SetError(3, @error, 0)
	Else
		If $iReturn = 1 Then
			$Value = $oExcel.Activesheet.Range($sRangeOrRow).Value
		ElseIf $iReturn = 2 Then
			$Value = $oExcel.Activesheet.Range($sRangeOrRow).Formula
		Else
			$Value = $oExcel.Activesheet.Range($sRangeOrRow).Text
		EndIf
		If @error Then Return SetError(3, @error, 0)
	EndIf
	Return $Value
EndFunc   ;==>_ExcelReadCell

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelReadArray($oExcel, $iStartRow, $iStartColumn, $iNumCells, $iDirection = 0, $iIndexBase = 0)
	Local $aArray[$iNumCells + $iIndexBase]
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iStartRow < 1 Then Return SetError(2, 0, 0)
	If $iStartColumn < 1 Then Return SetError(2, 1, 0)
	If Not IsNumber($iNumCells) Or $iNumCells < 1 Then Return SetError(3, 0, 0)
	If $iDirection < 0 Or $iDirection > 1 Then Return SetError(4, 0, 0)
	If Not $iDirection Then
		For $xx = $iIndexBase To UBound($aArray) - 1
			$aArray[$xx] = $oExcel.Activesheet.Cells($iStartRow, ($xx - $iIndexBase) + $iStartColumn).Value
			If @error Then Return SetError(5, @error, 0)
		Next
	Else
		For $xx = $iIndexBase To UBound($aArray) - 1
			$aArray[$xx] = $oExcel.Activesheet.Cells(($xx - $iIndexBase) + $iStartRow, $iStartColumn).Value
			If @error Then Return SetError(5, @error, 0)
		Next
	EndIf
	If $iIndexBase Then $aArray[0] = UBound($aArray) - 1
	Return $aArray
EndFunc   ;==>_ExcelReadArray

; #FUNCTION# ====================================================================================================================
; Author ........: SEO
; Modified.......: PsaltyDS 01/04/08 - 2D version, litlmike - Column shift parm,
; ===============================================================================================================================
Func _ExcelReadSheetToArray($oExcel, $iStartRow = 1, $iStartColumn = 1, $iRowCnt = 0, $iColCnt = 0, $iColShift = False)
	; Parameter edits
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iStartRow < 1 Then Return SetError(2, 0, 0)
	If $iStartColumn < 1 Then Return SetError(2, 1, 0)
	If $iRowCnt < 0 Then Return SetError(3, 0, 0)
	If $iColCnt < 0 Then Return SetError(3, 1, 0)
	Local $iLastRow = $oExcel.Activesheet.UsedRange.Rows.Count
	Local $iLastColumn = $oExcel.Activesheet.UsedRange.Columns.Count
	If ($iLastRow + $iLastColumn = 2) And $oExcel.Activesheet.Cells(1, 1).Value = "" Then ; empty result
		Local $avRET[1][2] = [[0, 0]]
		Return $avRET
	EndIf
	; Parameter edits (continued)
	If $iStartRow > $iLastRow Then Return SetError(2, 0, 0)
	If $iStartColumn > $iLastColumn Then Return SetError(2, 1, 0)
	If $iStartRow + $iRowCnt - 1 > $iLastRow Then Return SetError(3, 0, 0)
	If $iStartColumn + $iColCnt - 1 > $iLastColumn Then Return SetError(3, 1, 0); Check for defaulted counts
	If $iRowCnt Then
		$iLastRow = $iStartRow + $iRowCnt - 1
	Else
		$iRowCnt = $iLastRow - $iStartRow + 1
	EndIf
	If $iColCnt Then
		$iLastColumn = $iStartColumn + $iColCnt - 1
	Else
		$iColCnt = $iLastColumn - $iStartColumn + 1
	EndIf
	; Read data
	Local $aArray = $oExcel.ActiveSheet.Range($oExcel.Cells($iStartRow, $iStartColumn), $oExcel.Cells($iLastRow, $iLastColumn)).Value
	If @error Then Return SetError(4, @error, 0)
	; Handle single-cell sheet
	If Not IsArray($aArray) Then
		Local $avRET[2][2] = [[1, 1]]
		If $iColShift Then
			$avRET[1][0] = $aArray
		Else
			$avRET[1][1] = $aArray
		EndIf
		Return $avRET
	EndIf
	; Insert Row-0 totals, convert Col/Row array (from Excel) to Row/Col, apply $iColShift
	Local $avRET[$iRowCnt + 1][$iColCnt + ($iColCnt = 1 Or $iColShift = 0)] = [[$iRowCnt, $iColCnt]]
	For $i = 1 To $iColCnt
		For $j = 1 To $iRowCnt
			$avRET[$j][$i - $iColShift] = $aArray[$i - 1][$j - 1]
		Next
	Next
	Return $avRET
EndFunc   ;==>_ExcelReadSheetToArray

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelRowDelete($oExcel, $iRow, $iNumRows = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iRow < 1 Then Return SetError(2, 0, 0)
	For $x = 1 To $iNumRows
		$oExcel.ActiveSheet.Rows($iRow).Delete()
		If @error Then Return SetError(3, @error, 0)
	Next
	Return 1
EndFunc   ;==>_ExcelRowDelete

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelColumnDelete($oExcel, $iColumn, $iNumCols = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iColumn < 1 Then Return SetError(2, 0, 0)
	For $x = 1 To $iNumCols
		$oExcel.ActiveSheet.Columns($iColumn).Delete()
		If @error Then Return SetError(3, @error, 0)
	Next
	Return 1
EndFunc   ;==>_ExcelColumnDelete

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>, water
; ===============================================================================================================================
Func _ExcelRowInsert($oExcel, $iRow, $iNumRows = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iRow < 1 Then Return SetError(2, 0, 0)
	For $x = 1 To $iNumRows
		$oExcel.ActiveSheet.Rows($iRow).Insert()
		If @error Then Return SetError(3, @error, 0)
	Next
	Return 1
EndFunc   ;==>_ExcelRowInsert

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelColumnInsert($oExcel, $iColumn, $iNumCols = 1)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $iColumn < 1 Then Return SetError(2, 0, 0)
	For $x = 1 To $iNumCols
		$oExcel.ActiveSheet.Columns($iColumn).Insert()
		If @error Then Return SetError(3, @error, 0)
	Next
	Return 1
EndFunc   ;==>_ExcelColumnInsert

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetAddNew($oExcel, $sName = "")
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If $sName Then
		For $iIndex = 1 To $oExcel.ActiveWorkbook.Sheets.Count
			If $oExcel.ActiveWorkbook.Sheets($iIndex).Name = $sName Then Return SetError(4, 0, 0)
		Next
	EndIf
	Local $oSheet = $oExcel.ActiveWorkBook.WorkSheets.Add()
	If @error Then Return SetError(2, @error, 0)
	$oSheet.Activate()
	If $sName Then
		$oExcel.ActiveSheet.Name = $sName
		If @error Then Return SetError(3, @error, 0)
	EndIf
	Return 1
EndFunc   ;==>_ExcelSheetAddNew

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetDelete($oExcel, $vSheet, $fAlerts = False)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If IsNumber($vSheet) Then
		If $oExcel.ActiveWorkbook.Sheets.Count < $vSheet Then Return SetError(2, 0, 0)
	Else
		Local $fFound = 0
		Local $aSheetList = _ExcelSheetList($oExcel)
		For $xx = 1 To $aSheetList[0]
			If $aSheetList[$xx] = $vSheet Then $fFound = 1
		Next
		If Not $fFound Then Return SetError(3, 0, 0)
	EndIf
	If $fAlerts > 1 Then $fAlerts = 1
	If $fAlerts < 0 Then $fAlerts = 0
	$oExcel.Application.DisplayAlerts = $fAlerts
	$oExcel.Application.ScreenUpdating = $fAlerts
	$oExcel.ActiveWorkbook.Sheets($vSheet).Delete()
	If @error Then Return SetError(4, @error, 0)
	$oExcel.Application.DisplayAlerts = True
	$oExcel.Application.ScreenUpdating = True
	Return 1
EndFunc   ;==>_ExcelSheetDelete

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetNameGet($oExcel)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	Return $oExcel.ActiveSheet.Name
EndFunc   ;==>_ExcelSheetNameGet

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetNameSet($oExcel, $sSheetName)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	$oExcel.ActiveSheet.Name = $sSheetName
	If @error Then Return SetError(2, @error, 0)
	Return 1
EndFunc   ;==>_ExcelSheetNameSet

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetList($oExcel)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	Local $iTemp = $oExcel.ActiveWorkbook.Sheets.Count
	Local $aSheets[$iTemp + 1]
	$aSheets[0] = $iTemp
	For $xx = 1 To $iTemp
		$aSheets[$xx] = $oExcel.ActiveWorkbook.Sheets($xx).Name
	Next
	Return $aSheets
EndFunc   ;==>_ExcelSheetList

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetActivate($oExcel, $vSheet)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If IsNumber($vSheet) Then
		If $oExcel.ActiveWorkbook.Sheets.Count < $vSheet Then Return SetError(2, 0, 0)
	Else
		Local $fFound = 0
		Local $aSheetList = _ExcelSheetList($oExcel)
		For $xx = 1 To $aSheetList[0]
			If $aSheetList[$xx] = $vSheet Then $fFound = 1
		Next
		If Not $fFound Then Return SetError(3, 0, 0)
	EndIf
	$oExcel.ActiveWorkbook.Sheets($vSheet).Select()
	Return 1
EndFunc   ;==>_ExcelSheetActivate

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelSheetMove($oExcel, $vMoveSheet, $vRelativeSheet = 1, $fBefore = True)
	Local $aSheetList, $iFoundMove = 0, $iFoundBefore = 0
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If IsNumber($vMoveSheet) Then
		If $oExcel.ActiveWorkbook.Sheets.Count < $vMoveSheet Then Return SetError(2, 0, 0)
	Else
		$aSheetList = _ExcelSheetList($oExcel)
		For $xx = 1 To $aSheetList[0]
			If $aSheetList[$xx] = $vMoveSheet Then $iFoundMove = $xx
		Next
		If Not $iFoundMove Then Return SetError(3, 0, 0)
	EndIf
	If IsNumber($vRelativeSheet) Then
		If $oExcel.ActiveWorkbook.Sheets.Count < $vRelativeSheet Then Return SetError(4, 0, 0)
	Else
		$aSheetList = _ExcelSheetList($oExcel)
		For $xx = 1 To $aSheetList[0]
			If $aSheetList[$xx] = $vRelativeSheet Then $iFoundBefore = $xx
		Next
		If Not $iFoundBefore Then Return SetError(5, 0, 0)
	EndIf
	If $fBefore Then
		$oExcel.Sheets($vMoveSheet).Move($oExcel.Sheets($vRelativeSheet))
		If @error Then Return SetError(6, 0, 0)
	Else
		$oExcel.Sheets($vMoveSheet).Move(Default, $oExcel.Sheets($vRelativeSheet))
		If @error Then Return SetError(6, 0, 0)
	EndIf
	Return 1
EndFunc   ;==>_ExcelSheetMove

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelHorizontalAlignSet($oExcel, $sRangeOrRowStart, $iColStart = 1, $iRowEnd = 1, $iColEnd = 1, $sHorizAlign = "left")
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If Not StringRegExp($sRangeOrRowStart, "[A-Z,a-z]", 0) Then
		If $sRangeOrRowStart < 1 Then Return SetError(2, 0, 0)
		If $iColStart < 1 Then Return SetError(2, 1, 0)
		If $iRowEnd < $sRangeOrRowStart Then Return SetError(3, 0, 0)
		If $iColEnd < $iColStart Then Return SetError(3, 1, 0)
		Switch ($sHorizAlign)
			Case "left"
				$oExcel.Activesheet.Range($oExcel.Cells($sRangeOrRowStart, $iColStart), $oExcel.Cells($iRowEnd, $iColEnd)).HorizontalAlignment = $xlLeft
			Case "center", "centre"
				$oExcel.Activesheet.Range($oExcel.Cells($sRangeOrRowStart, $iColStart), $oExcel.Cells($iRowEnd, $iColEnd)).HorizontalAlignment = $xlCenter
			Case "right"
				$oExcel.Activesheet.Range($oExcel.Cells($sRangeOrRowStart, $iColStart), $oExcel.Cells($iRowEnd, $iColEnd)).HorizontalAlignment = $xlRight
		EndSwitch
		If @error Then Return SetError(4, @error, 0)
	Else
		Switch ($sHorizAlign)
			Case "left"
				$oExcel.Activesheet.Range($sRangeOrRowStart).HorizontalAlignment = $xlLeft
			Case "center", "centre"
				$oExcel.Activesheet.Range($sRangeOrRowStart).HorizontalAlignment = $xlCenter
			Case "right"
				$oExcel.Activesheet.Range($sRangeOrRowStart).HorizontalAlignment = $xlRight
		EndSwitch
		If @error Then Return SetError(4, @error, 0)
	EndIf
	Return 1
EndFunc   ;==>_ExcelHorizontalAlignSet

; #FUNCTION# ====================================================================================================================
; Author ........: SEO <locodarwin at yahoo dot com>
; Modified.......: litlmike, water
; ===============================================================================================================================
Func _ExcelFontSetProperties($oExcel, $sRangeOrRowStart, $iColStart = 1, $iRowEnd = 1, $iColEnd = 1, $fBold = False, $fItalic = False, $fUnderline = False)
	If Not IsObj($oExcel) Then Return SetError(1, 0, 0)
	If Not StringRegExp($sRangeOrRowStart, "[A-Z,a-z]", 0) Then
		If $sRangeOrRowStart < 1 Then Return SetError(2, 0, 0)
		If $iColStart < 1 Then Return SetError(2, 1, 0)
		If $iRowEnd < $sRangeOrRowStart Then Return SetError(3, 0, 0)
		If $iColEnd < $iColStart Then Return SetError(3, 1, 0)
		$oExcel.Activesheet.Range($oExcel.Cells($sRangeOrRowStart, $iColStart), $oExcel.Cells($iRowEnd, $iColEnd)).Font.Bold = $fBold
		If @error Then Return SetError(4, @error, 0)
		$oExcel.Activesheet.Range($oExcel.Cells($sRangeOrRowStart, $iColStart), $oExcel.Cells($iRowEnd, $iColEnd)).Font.Italic = $fItalic
		$oExcel.Activesheet.Range($oExcel.Cells($sRangeOrRowStart, $iColStart), $oExcel.Cells($iRowEnd, $iColEnd)).Font.Underline = $fUnderline
	Else
		$oExcel.Activesheet.Range($sRangeOrRowStart).Font.Bold = $fBold
		If @error Then Return SetError(4, @error, 0)
		$oExcel.Activesheet.Range($sRangeOrRowStart).Font.Italic = $fItalic
		$oExcel.Activesheet.Range($sRangeOrRowStart).Font.Underline = $fUnderline
	EndIf
	Return 1
EndFunc   ;==>_ExcelFontSetProperties
