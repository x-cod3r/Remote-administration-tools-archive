#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_outfile=ProcessMemoryReducer.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Run_After=del ProcessMemoryReducer_Obfuscated.au3
#AutoIt3Wrapper_Run_Obfuscator=y
#Obfuscator_Parameters=/om /cn=0 /cs=0 /sf=1 /sv=1
;~ #AutoIt3Wrapper_Res_requestedExecutionLevel=requireAdministrator	; Optional
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <[Includes]\_ProcessFunctions.au3>
#include <[Includes]\_ProcessUndocumentedList.au3>
#include "[Includes]\_GetDebugPrivilegeRtl.au3"
; ===============================================================================================================================
; <ProcessFunctionsTest.au3>
;
; Sample use of process functions to reduce the working set size of processes.
;
; Function:
;	_ProcessMemoryReducer()
;
; Internal functions:
;	... etc ...  (not for use outside of the main function)
;
; To add possibly:
;	'Invert Selection' button?
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===================================================================================================================
; --------------------  MISC FUNCTIONS --------------------
; ===================================================================================================================


; ====================================================================================================
; Func _AddCommas($sString)
;
; Simple function - does what it says. Adds commas to a number/string and returns the result.
;
; Author: Ascend4nt
; ====================================================================================================

Func _AddCommas($sString)
	Local $iLen=StringLen($sString)
	If $iLen<=3 Then Return $sString
	Local $iMod=Mod($iLen,3),$sLeft
	If Not $iMod Then $iMod=3
	$sLeft=StringLeft($sString,$iMod)
	$sString=StringTrimLeft($sString,$iMod)
	Return $sLeft&StringRegExpReplace($sString,"(...)",",$1")
EndFunc


; ====================================================================================================
; Func __BuildStatusString()
;
; INTERNAL FUNCTION:
; Builds a Status string to display in a Label at the top of the box
;	(includes Admin state, Debug privilege state, O/S Architecture, Operating Bit Mode)
;
; Author: Ascend4nt
; ====================================================================================================

Func __BuildStatusString()
	Local $sStatus=""
	If Not IsAdmin() Then $sStatus="Non-"
	$sStatus&="Admin mode; "

	$sStatus&="O/S Architecture: "
	If @OSArch<>"X86" Then
		$sStatus&="64-bit"
	Else
		$sStatus&="32-bit"
	EndIf
	$sStatus&="; Operating Mode: "
	If @AutoItX64 Then
		$sStatus&="64-bit"
	Else
		$sStatus&="32-bit"
	EndIf
	Return $sStatus
EndFunc


; ====================================================================================================
; Func __UpdateProcessList($hProcListCtrl)
;
; INTERNAL FUNCTION:
; Updates Processes List
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateProcessList($hProcListCtrl)
	Local $aProcList=_ProcessUDListEverything("^System( Idle Process)?$",8+2,False),$sList='|',$hProcess
	If @error Then Return SetError(-1,0,0)
;~ 	ConsoleWrite($aProcList[0][0]&" total processes found [System & System Idle Process excluded)"&@CRLF)
	For $i=1 To $aProcList[0][0]
		$sList&=$aProcList[$i][0]&' (PID# '&$aProcList[$i][1]&') = '&_AddCommas(Round($aProcList[$i][13]/1024))&' KB|'
	Next
	$sList=StringTrimRight($sList,1)
	GUICtrlSetData($hProcListCtrl,$sList)
EndFunc


; ====================================================================================================
; Func _ProcessMemoryReducerGUI()
;
; The main GUI for Reducing Memory of selected Processes.
;
; Author: Ascend4nt
; ====================================================================================================

Func _ProcessMemoryReducerGUI()
	Local $i,$iTemp,$aSelectedItems,$iPID,$hProcess,$iSuccessTotal
	#Region ### START Koda GUI section ### Form
	$PMRGUI = GUICreate("Process Memory Reducer", 413, 518)
	$PMRTitleLbl = GUICtrlCreateLabel("Process Memory Reducer", 115, 8, 183, 20)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$PMRStatusLbl = GUICtrlCreateLabel("O/S Architecture: 64-bit; Non-Admin Mode; Working Mode: 32-bit", 6, 26, 400, 20, $SS_CENTER)
	GUICtrlSetFont(-1, 10, 400, 2, "Arial")
	$PMRProcsList = GUICtrlCreateList("", 8, 56, 393, 331, BitOR($LBS_EXTENDEDSEL,$WS_VSCROLL,$WS_BORDER,$LBS_SORT))
	$PMRSelectALL = GUICtrlCreateButton("Select ALL", 8, 388, 105, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Select ALL Processes")
	$PMRClearALL = GUICtrlCreateButton("Clear Selection", 296, 388, 105, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Clear Selection (nothing is selected)")
	$PMRRefreshProcs = GUICtrlCreateButton("Refresh List", 154, 412, 105, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Refresh Processes List")
	$PMRReRun = GUICtrlCreateButton("ReStart as Admin", 16, 436, 121, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "ReStart Script as Admin")
	$PMRFree = GUICtrlCreateButton("Free Memory", 142, 472, 129, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Free Memory of Selected Processes")
	$PMRExitBtn = GUICtrlCreateButton("Exit", 276, 436, 113, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
;~ 	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###

	If IsAdmin() Then GUICtrlSetState($PMRReRun,$GUI_DISABLE)
	_GetDebugPrivilegeRtl()

	_ProcessEmptyWorkingSet($PROCESS_THIS_HANDLE)
	; Set Status info on top with built string
	GUICtrlSetData($PMRStatusLbl,__BuildStatusString())

	; Update $PMRProcsList
	__UpdateProcessList($PMRProcsList)

	GUISetState(@SW_SHOW)

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $PMRSelectALL
				$iTemp=_GUICtrlListBox_GetCount($PMRProcsList)
				_GUICtrlListBox_SelItemRange($PMRProcsList,0,$iTemp)
			Case $PMRClearALL
				_GUICtrlListBox_SelItemRange($PMRProcsList,0,$iTemp,False)
			Case $PMRRefreshProcs
				__UpdateProcessList($PMRProcsList)
			Case $PMRReRun
				If Not IsAdmin() Then
					If @Compiled Then
						Exit ShellExecute(@AutoItExe,"",@ScriptDir,"runas")
					Else
						Exit ShellExecute(@AutoItExe,'"'&@ScriptFullPath&'"',@ScriptDir,"runas")
					EndIf
				EndIf
			Case $PMRFree
				$aSelectedItems=_GUICtrlListBox_GetSelItemsText($PMRProcsList)
				If IsArray($aSelectedItems) And $aSelectedItems[0] Then
					$iSuccessTotal=0
					For $i=1 to $aSelectedItems[0]
						$iPID=Number(StringRegExpReplace($aSelectedItems[$i],'.*?\(PID#\s(\d+)\).*','$1'))
						$hProcess=_ProcessOpen($iPID,$PROCESS_QUERY_LIMITED_INFO+0x100)
						_ProcessEmptyWorkingSet($hProcess)
						If Not @error Then $iSuccessTotal+=1
						_ProcessCloseHandle($hProcess)
					Next
					If $iSuccessTotal Then
						MsgBox(64,"Memory Reduction Results",$iSuccessTotal&" out of "&$aSelectedItems[0]&" processes returned success on memory reduction")
					Else
						MsgBox(32,"Memory Reduction Error","All "&$aSelectedItems[0]&" processes failed memory reduction")
					EndIf
					__UpdateProcessList($PMRProcsList)
				EndIf
			Case $GUI_EVENT_CLOSE,$PMRExitBtn
				Exit
		EndSwitch
	WEnd
EndFunc

_ProcessMemoryReducerGUI()