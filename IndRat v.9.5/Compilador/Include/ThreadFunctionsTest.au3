#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=ThreadFunctionsTest.exe
#AutoIt3Wrapper_Outfile_x64=ThreadFunctionsTestx64.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Run_After=del ThreadFunctionsTest_Obfuscated.au3
#AutoIt3Wrapper_Run_Obfuscator=y
#Obfuscator_Parameters=/om /cn=0 /cs=0 /sf=1 /sv=1
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
; Optional directive (place before '#AutoIt3Wrapper_Run_After'): #AutoIt3Wrapper_UseX64=y
; NOTE: If compile for x64, change the outfile and Run_After filenames to ThreadFunctionsTestx64 (and ThreadFunctionsTestx64_Obfuscated)
;~ #include <Array.au3>		; Included with <_DLLStructDisplay.au3>
#include <[Includes]\_DLLStructDisplay.au3>
#include <[Includes]\_ThreadUndocumentedList.au3>
#include <[Includes]\_ThreadUDGetTEB.au3>
;~ #include <[Includes]\_ThreadFunctions.au3>			; included in _ThreadUndocumentedList
;~ #include <[Includes]\_ThreadUndocumented.au3>		; included in _ThreadUndocumentedList
;~ #include <[Includes]\_ProcessListFunctions.au3>		; included in _ThreadUndocumentedList
;~ #include <[Includes]\_ProcessUndocumentedList.au3>	; included in _ThreadUndocumentedList
#include <[Includes]\_ThreadListFunctions.au3>
#include <[Includes]\_ThreadContext.au3>	; needs further testing..
#include <[Includes]\_DLLFunctions.au3>		; some DLL functions needed for _ThreadCreate() example
#include "[Includes]\_GetDebugPrivilegeRtl.au3"
#include "[Includes]\_WinTimeFunctions.au3"	; for FileTime conversions
#include "[Includes]\_Circles.au3"			; for the Ball GUI

;	- KODA GUI INCLUDES	-
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#Include <GuiComboBox.au3>
#include <GuiStatusBar.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
; ===============================================================================================================================
; <ThreadFunctionsTest.au3>
;
;	Test of _ThreadFunctions, _ThreadListFunctions (one pulled from _ProcessListFunctions),
;		_ThreadUndocumented, _ThreadUndocumentedList, (and eventually _ThreadContext) modules
;
; Function:
;	TestThreadGUI()
;
; Internal functions:
;	... etc ...  (not for use outside of the main function)
;
;
; Author: Ascend4nt
; ===============================================================================================================================

; ===================================================================================================================
;	--------------------	GLOBAL VARIABLES (FOR INTERNAL FUNCTION USE)	--------------------
; ===================================================================================================================

Global $iTFGAccessTotal=0
Global $bLimitedAccessAvailable,$bDebugPrivilegeObtained=False
Global $TFGAQueryInfo,$TFGAQueryLimitInfo,$TFGASetInfo,$TFGASetLimitInfo
Global $TFGAccessValueOut,$TFGProcDropDown,$TFGThreadDropDown,$TFGStatus,$hPFGFunctionsList,$TTF_GUI_MSG_ID=0
Global $sSelfReference="Self #"&@AutoItPID
Global $aAccessSecCtls,$aTFGProcList[1][2]=[ [$sSelfReference,$PROCESS_THIS_HANDLE] ],$aTFGThreadList[1][2]= [ ['# x',$THREAD_THIS_HANDLE] ]
; Local Thread info
Global $TTF_LTHREAD_CREATED=False,$TTF_LTHREAD_MEM=0,$TTF_LTHREAD_TID=0,$TTF_LTHREAD_HANDLE=0,$TTF_LTHREAD_CLOSING=False,$TTF_LTHREAD_BALLGUI=''
Global $TTF_BALL_MENU,$TTF_STOP_BALL=0.5

; Set QueryLimitedAccess boolean for easy testing
If $THREAD_QUERY_LIMITED_INFO=0x0800 Then
	$bLimitedAccessAvailable=True
Else
	$bLimitedAccessAvailable=False
EndIf


#cs
; ----------------------------------------------------------------------------------------------------------------
; Functions List (with requirements):
; ----------------------------------------------------------------------------------------------------------------
;	Function name, Required Access/Security values (minus QueryLimitedInfo [O/S-specific] if an option),
;	  QueryLimitedInfo option (if alternately available), Win2000 additional req's (or alternate function),
;		available from 32->64bit?, Function definition
;	(0 in Required Access/Security means either QueryLimitedInfo is available, or that nothing is required
;	  for access - for example, _ThreadCreate, _ThreadUDIsSuspended, _ThreadGetWinThreadID
;
;	NOTE: _ThreadCreateRemote moved to _ProcessCreateRemoteThread, because it needs *PROCESS* Access Rights
;		Once it is created, however, it can be accessed with _Thread functions (and *THREAD* Access Rights)
; ----------------------------------------------------------------------------------------------------------------
#ce
Dim $sY="Yes",$sN="No",$sH="$hThread",$sP="$vProcessID",$sF="$vFilter=0,$iMatchMode=0",$sI="$iThreadID"
Dim $aThreadFuncs[32][6]=[ ["_ThreadGetCurrentID",0,0,0,$sY,''], ["_ThreadCreate",0,0,0,$sY,'$pFuncPtr,$vParam=0,$bCreateSuspended=False'], _
	["_ThreadGetProcessID",0,0x0800,"_ThreadUDGetProcessID",$sY,$sH], ["_ThreadGetThreadID",0,0x0800,"_ThreadUDGetThreadID",$sY,$sH], _
	["_ThreadGetPriority",0,0x0800,0,$sY,$sH], ["_ThreadSetPriority",0,0x0400,0,$sY,$sH&",$iPriority=0"], _
	["_ThreadGetAffinityMask",0,0x0C00,0,$sY,$sH&",$iTempAffinityMask"], ["_ThreadSetAffinityMask",0,0x0C00,0,$sY,$sH&",$iAffinityMask"], _
	["_ThreadGetTimes",0,0x0800,0,$sY,$sH&",$iTimeToGet=-1"], ["_ThreadWaitForExit",0x100000,0,0,$sY,$sH&",$iTimeOut=-1"], _
	["_ThreadStillActive",0x100000,0,0,$sY,$sH], ["_ThreadGetExitCode",0,0x0800,0,$sY,$sH], _
	["_ThreadSuspend",0x02,0,0,$sY,$sH], ["_ThreadWow64Suspend",0x02,0,0,$sY,$sH], _
	["_ThreadResume",0x02,0,0,$sY,$sH], ["_ThreadTerminate",0x01,0,0,$sY,$sH&",$iExitCode=0"], _
	["_ThreadGetWinThreadID",0,0,0,$sY,"$hWnd"], ["_ThreadList",0,0,0,$sY,"$vFilterID=-1,$bThreadFilter=False"], _
	["_ThreadExists",0,0,0,$sY,$sI], _
	["_ThreadUDGetThreadID",0,0x0800,0,$sY,$sH], ["_ThreadUDGetProcessID",0,0x0800,0,$sY,$sH], _
	["_ThreadUDGetAffinityMask",0,0x0800,0,$sY,$sH], ["_ThreadUDGetStartAddress",0x0040,0,0,$sN,$sH], _
	["_ThreadUDIsWow64",0,0x0800,0,$sY,$sH], ["_ThreadUDIs32Bit",0,0x0800,0,$sY,$sH], ["_ThreadUDIs64Bit",0,0x0800,0,$sY,$sH], _
	["_ThreadUDIsSuspended",0,0,0,$sY,$sI&",$iPID"], _
	["_ThreadGetContext",0x08,0x0800,0,$sN,$sH&",$iContextFlags,$bSuspend=False"], ["_ThreadGetWow64Context",0x08,0x0800,0,$sN,$sH&",$iContextFlags,$bSuspend=False"], _
	["_ThreadSetContext",0x12,0x0800,0,$sN,$sH&",Const ByRef $stContext,$bSuspend=True,$bSafetyChecks=True"], ["_ThreadSetWow64Context",0x12,0x0800,0,$sN,$sH&",Const ByRef $stWow64Context,$bSuspend=True,$bSafetyChecks=True"], _
	["_ThreadUDGetTEB",0,0x0800,0,$sN,$sH&',$hProcess=0'] ]

If @OSVersion="WIN_2000" Then
	For $i=0 To UBound($aThreadFuncs)-1
		If IsNumber($aThreadFuncs[$i][3]) And $aThreadFuncs[$i][3]>0 Then $aThreadFuncs[$i][1]=BitOR($aThreadFuncs[$i][1],$aThreadFuncs[$i][3])
	Next
EndIf

#cs
; ----------------------------------------------------------------------------------------------------------------
; Removed (these two are a required part of most _Thread* functions, and are of no use on their own):
;~ Dim $aThreadFuncs[39][5]=[ ["_ThreadOpen",0,0,0,$sY], ["_ThreadCloseHandle",0,0,0,$sY]
; ----------------------------------------------------------------------------------------------------------------
#ce


; ====================================================================================================
; Func __UpdateThreadList()
;
; INTERNAL FUNCTION:
; Updates Threads List (for selected Process in DropDown box) (includes TID# to distinguish them)
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateThreadList()
	Local $iProcessID,$aThreads,$sPrevSel,$sList=''
	$sPrevSel=GUICtrlRead($TFGThreadDropDown)
	$iProcessID=Number(StringRegExpReplace(GUICtrlRead($TFGProcDropDown),".*?#(\d+)$","$1"))
	$aThreads=_ProcessListThreads($iProcessID)
	If @error Or $aThreads[0][0]=0 Then Return SetError(@error,@extended,False)

	For $i=1 To $aThreads[0][0]
		$sList&='|'&$aThreads[$i][0]
	Next
	If $sPrevSel="" Or Not StringInStr($sList&'|','|'&$sPrevSel&'|') Then $sPrevSel=$aThreads[1][0]&""

	GUICtrlSetData($TFGThreadDropDown,$sList,$sPrevSel)
	Return True
EndFunc


; ====================================================================================================
; Func __UpdateProcessList()
;
; INTERNAL FUNCTION:
; Updates Processes List for DropDown box (includes PID# to distinguish them)
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateProcessList()
	Local $aProcList=ProcessList(),$iCurBound=UBound($aTFGProcList),$sList='',$sPrevSel,$iListIndex
	; If process count is different or last process not the same for both, than there were changes
	If $iCurBound-1<>$aProcList[0][0]-2 Or $aProcList[$aProcList[0][0]][1]<>$aTFGProcList[$iCurBound-1][1] Then
		ConsoleWrite("Difference in processes detected"&@CRLF)
		$sPrevSel=GUICtrlRead($TFGProcDropDown)
		; -1 for Idle processes, +1 for 'Self'
		Dim $aTFGProcList[$aProcList[0][0]-1+1][2]
		$aTFGProcList[0][0]=$sSelfReference
		$aTFGProcList[0][1]=$PROCESS_THIS_HANDLE
		$sList='|'&$sSelfReference
		$iListIndex=1
		For $i=1 To $aProcList[0][0]
			; These *should* be the first 2 elements, but we'll check each loop iteration to be on the safe side..
			If $aProcList[$i][1]=0 Then ContinueLoop	; Or $aProcList[$i][0]="System" Then ContinueLoop	; System is 'open-able'
			$aTFGProcList[$iListIndex][0]=$aProcList[$i][0]&" #"&$aProcList[$i][1]
			$aTFGProcList[$iListIndex][1]=$aProcList[$i][1]
			$sList&='|'&$aTFGProcList[$iListIndex][0]
			$iListIndex+=1
		Next
		If $sPrevSel="" Or Not StringInStr($sList,$sPrevSel) Then $sPrevSel=$sSelfReference
		GUICtrlSetData($TFGProcDropDown,$sList,$sPrevSel)
	EndIf
	; To handle Some freaky situations where a process was started but no Threads exist for it [seen in ThinApp'd programs]:
	If Not __UpdateThreadList() Then
		_GUICtrlComboBox_SelectString (GUICtrlGetHandle($TFGProcDropDown),$sSelfReference)
		__UpdateThreadList()
	EndIf
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

	$sStatus&="Debug Privilege: "
	If $bDebugPrivilegeObtained Then
		$sStatus&="Enabled"
	Else
		$sStatus&="Disabled"
	EndIf
	$sStatus&="; O/S Architecture: "
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
; Func __UpdateAccessByControl($ctControl,$iBitValue,$ctLinkedControl=-1)
;
; INTERNAL FUNCTION:
; Updates the Access value based on checked/unchecked state of checkbox.
;	Also, if something is unchecked, looks at Thread functions list to see if any
;	will be unavailable due to the change, and then clears them from the list if so.
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateAccessByControl($ctControl,$iBitValue,$ctLinkedControl=-1)
	Local $bChecked=False,$aSelectedItems,$sTemp
	If GUICtrlRead($ctControl)=$GUI_UNCHECKED Then
		$iTFGAccessTotal=BitXOR($iTFGAccessTotal,$iBitValue)
		If $ctLinkedControl<>-1 Then GUICtrlSetState($ctLinkedControl,$GUI_UNCHECKED)
	Else
		$bChecked=True
		$iTFGAccessTotal=BitOR($iTFGAccessTotal,$iBitValue)
		If $ctLinkedControl<>-1 Then GUICtrlSetState($ctLinkedControl,$GUI_CHECKED)
	EndIf
	GUICtrlSetData($TFGAccessValueOut,"0x"&Hex($iTFGAccessTotal))
	; If something was checked, no need to look at functions list - UNLESS 'Query/SetInfo' items unchecked
	If $bChecked And $ctControl<>$TFGAQueryInfo And $ctControl<>$TFGAQueryLimitInfo And $ctControl<>$TFGASetInfo And $ctControl<>$TFGASetLimitInfo Then Return

	; Something unchecked: Time to deselect functions based on what values we unchecked
	$aSelectedItems=_GUICtrlListBox_GetSelItems ($hPFGFunctionsList)
	If Not IsArray($aSelectedItems) Or $aSelectedItems[0]=0 Then Return

	For $i=1 To $aSelectedItems[0]
		$sTemp=_GUICtrlListBox_GetText($hPFGFunctionsList,$aSelectedItems[$i])
		For $i2=0 To UBound($aThreadFuncs)-1
			; Matching text
			If $sTemp=$aThreadFuncs[$i2][0] Then
				; All needed bit flags not set?  Also, if Query/Set-Limited access option available,
				;	and neither Query/Set Limited or Query/Set (full) set, clear the selection from the list
				If BitAND($iTFGAccessTotal,$aThreadFuncs[$i2][1])<>$aThreadFuncs[$i2][1] Or _
					(BitAND($aThreadFuncs[$i2][2],0x0800) And BitAND($iTFGAccessTotal,0x0840)=0) Or _
					(BitAND($aThreadFuncs[$i2][2],0x0400) And BitAND($iTFGAccessTotal,0x0420)=0) Then _
						_GUICtrlListBox_SetSel($hPFGFunctionsList,$aSelectedItems[$i],-1)
			EndIf
		Next
	Next
EndFunc


; ====================================================================================================
; Func __UpdateAccessBySelected()
;
; INTERNAL FUNCTION:
; Updates both the Access value and checkbox states based on the functions selected.
;	(Will clear any previously selected access boxes and choose only the ones required for the
;	 selected functions)
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateAccessBySelected()
	Local $i,$i2,$iAccessReqd=0,$bLimitedQPossible=False,$bLimitedSPossible=False
	Local $aSelectedItems=_GUICtrlListBox_GetSelItemsText($hPFGFunctionsList)
	If Not IsArray($aSelectedItems) Or $aSelectedItems[0]=0 Then Return
	; NEED TO go through ALL selected (can select >1 with one click-drag), and ALSO
	;	BitXor/uncheck items no longer set!
	; Clicking on a Thread function needs to set some states:

	; Set access flags
	For $i=1 To $aSelectedItems[0]
		For $i2=0 To UBound($aThreadFuncs)-1
			If $aThreadFuncs[$i2][0]=$aSelectedItems[$i] Then
				$iAccessReqd=BitOR($iAccessReqd,$aThreadFuncs[$i2][1])
				If BitAND($aThreadFuncs[$i2][2],0x0800) Then $bLimitedQPossible=True
				If BitAND($aThreadFuncs[$i2][2],0x0400) Then $bLimitedSPossible=True
			EndIf
		Next
	Next
	; If any of the functions require Query (full) rather than Query (limited) access, we must choose 'Query full'
	If BitAND($iAccessReqd,0x0040) Then $bLimitedQPossible=False
	; Same for Limited-Set access (if 'full' required for a function, limited isn't possible)
	If BitAND($iAccessReqd,0x0020) Then $bLimitedSPossible=False
	If $bLimitedQPossible Then $iAccessReqd=BitOR($iAccessReqd,$THREAD_QUERY_LIMITED_INFO)
	If $bLimitedSPossible Then $iAccessReqd=BitOR($iAccessReqd,$THREAD_SET_LIMITED_INFO)

	; Go through and check/uncheck options required, based on the access flags
	For $i=0 To UBound($aAccessSecCtls)-1
		If BitAND($iAccessReqd,$aAccessSecCtls[$i][1]) Then
			GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_CHECKED)
		Else
			GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_UNCHECKED)
		EndIf
	Next
	; Check Query Limited or Query full?
	If $bLimitedAccessAvailable And BitAND($iAccessReqd,0x0800) Then
		GUICtrlSetState($TFGAQueryLimitInfo,$GUI_CHECKED)
		GUICtrlSetState($TFGAQueryInfo,$GUI_UNCHECKED)
	ElseIf (Not $bLimitedAccessAvailable And $bLimitedQPossible) Or BitAND($iAccessReqd,0x0040) Then
		GUICtrlSetState($TFGAQueryInfo,$GUI_CHECKED)
		GUICtrlSetState($TFGAQueryLimitInfo,$GUI_UNCHECKED)
	EndIf
	; Set Limited or Set Full?
	If $bLimitedAccessAvailable And BitAND($iAccessReqd,0x0020) Then
		GUICtrlSetState($TFGASetLimitInfo,$GUI_CHECKED)
		GUICtrlSetState($TFGASetInfo,$GUI_UNCHECKED)
	ElseIf (Not $bLimitedAccessAvailable And $bLimitedSPossible) Or BitAND($iAccessReqd,0x0020) Then
		GUICtrlSetState($TFGASetInfo,$GUI_CHECKED)
		GUICtrlSetState($TFGASetLimitInfo,$GUI_UNCHECKED)
	EndIf

	; Reflect the new access value
	GUICtrlSetData($TFGAccessValueOut,"0x"&Hex($iAccessReqd))
	$iTFGAccessTotal=$iAccessReqd
EndFunc


; ====================================================================================================
; Func __ReRunGUI($hParentGUI)
;
; INTERNAL FUNCTION:
; Using a simple GUI, lets the user re-run the Program in a different bit mode (if possible),
;	and also with/without admin. privileges
;
; Author: Ascend4nt
; ====================================================================================================

Func __ReRunGUI($hParentGUI)
	Local $sAdminCB,$sBitModeCB,$bBitModeChangeAvailable=False,$sExeName=@AutoItExe,$sParam="",$sVerb="",$bRestartReady=False,$sAltBitModeExe

	If IsAdmin() Then
		$sAdminCB="Already running as Admin"
	Else
		$sAdminCB="Run As Admin (Elevated Privilege)"
	EndIf
	If @AutoItX64 Then
		$sAltBitModeExe=StringReplace($sExeName,"x64.exe",".exe")
		If @Compiled And Not FileExists($sAltBitModeExe) Then
			$sBitModeCB="Unable to alter bit-mode (Compiled)"
		Else
			$bBitModeChangeAvailable=True
			$sBitModeCB="Run in 32-bit Mode (O/S supported)"
		EndIf
	Else
		$sAltBitModeExe=StringReplace($sExeName,".exe","x64.exe")
		If @OSArch="IA64" Then
			$sBitModeCB="Unable to alter bit-mode (IA-64 O/S)"
		ElseIf @OSArch="X86" Then
			$sBitModeCB="Unable to alter bit-mode (32-bit O/S)"
		ElseIf @Compiled And Not FileExists($sAltBitModeExe) Then
			$sBitModeCB="Unable to alter bit-mode (Compiled)"
		Else
			$bBitModeChangeAvailable=True
			$sBitModeCB="Run in 64-bit Mode (O/S supported)"
		EndIf
	EndIf
	; No changes possible? Let the user know and return
	If IsAdmin() And Not $bBitModeChangeAvailable Then _
		Return MsgBox(64,"No Restart possible","Currently running as administrator, and a change of bit-mode is prohibited."&@CRLF& _
			"(Either running in a 32-bit O/S, under Itanium, or runing a compiled script)",0,$hParentGUI)

	#Region ### START Koda GUI section ###
	$RSSGUI = GUICreate("Restart Script", 297, 143, 346, 262,-1,-1,$hParentGUI)
	$RSSLabel = GUICtrlCreateLabel("Restart Script", 90, 8, 116, 24)
	GUICtrlSetFont(-1, 12, 800, 0, "MS Sans Serif")
	$RSSAdminCB = GUICtrlCreateCheckbox($sAdminCB, 7, 32, 282, 33)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Run As Administrator (Elevated Privileges). May bring up UAC prompt!")
	$RSSBitModeCB = GUICtrlCreateCheckbox($sBitModeCB, 7, 62, 282, 33)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Run under a different bit mode.  NOT possible on compiled scripts!")
	$RSSRestartBt = GUICtrlCreateButton("ReStart", 27, 98, 107, 38, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "ReStart Script with above changes")
	$RSSCancelBt = GUICtrlCreateButton("&Cancel", 180, 98, 107, 38, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Cancel operation")
	;~ GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###

	GUICtrlSetState($RSSRestartBt,$GUI_DISABLE)
	If IsAdmin() Then GUICtrlSetState($RSSAdminCB,$GUI_DISABLE)
	If Not $bBitModeChangeAvailable Then GUICtrlSetState($RSSBitModeCB,$GUI_DISABLE)
	GUISetState(@SW_SHOW)
	GUISwitch($RSSGUI)
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $RSSAdminCB
				If GUICtrlRead($RSSAdminCB)=$GUI_CHECKED Then
					If Not $bRestartReady Then GUICtrlSetState($RSSRestartBt,$GUI_ENABLE)
					$bRestartReady=True
				ElseIf $bRestartReady And GUICtrlRead($RSSBitModeCB)=$GUI_UNCHECKED Then
					$bRestartReady=False
					GUICtrlSetState($RSSRestartBt,$GUI_DISABLE)
				EndIf
			Case $RSSBitModeCB
				If GUICtrlRead($RSSBitModeCB)=$GUI_CHECKED Then
					If Not $bRestartReady Then GUICtrlSetState($RSSRestartBt,$GUI_ENABLE)
					$bRestartReady=True
				ElseIf $bRestartReady And GUICtrlRead($RSSAdminCB)=$GUI_UNCHECKED Then
					$bRestartReady=False
					GUICtrlSetState($RSSRestartBt,$GUI_DISABLE)
				EndIf
			Case $RSSRestartBt
				ExitLoop
			Case $GUI_EVENT_CLOSE,$RSSCancelBt
				GUIDelete($RSSGUI)
				Return False
		EndSwitch
	WEnd

	If GUICtrlRead($RSSAdminCB)=$GUI_CHECKED Then $sVerb="runas"
	If GUICtrlRead($RSSBitModeCB)=$GUI_CHECKED Then
		If Not @Compiled Then
			If @AutoItX64 Then
				$sExeName=StringReplace($sExeName,"t3_x64.exe","t3.exe")
			Else
				$sExeName=StringReplace($sExeName,"t3.exe","t3_x64.exe")
			EndIf
		Else
			$sExeName=$sAltBitModeExe
		EndIf
	EndIf
	If Not @Compiled Then $sParam='"'&@ScriptFullPath&'"'
	Exit ShellExecute($sExeName,$sParam,@ScriptDir,$sVerb)
EndFunc


; ====================================================================================================
; Func __RunTestProcessFunctions()
;
; INTERNAL FUNCTION:
; Attempts to run the ProcessFunctions Test GUI program
;
; Author: Ascend4nt
; ====================================================================================================

Func __RunTestProcessFunctions()
	If WinActivate("Process Functions Tester") Then Return True
	Local $sFileName=StringReplace(@ScriptName,"ThreadFunctions","ProcessFunctions",-1)
	If FileExists(@ScriptDir&'\'&$sFileName) Then
		If Not @Compiled Then
			ShellExecute(@AutoItExe,'"'&@ScriptDir&'\'&$sFileName&'"',@ScriptDir)
		Else
			Run('"'&@ScriptDir&'\'&$sFileName&'"',@ScriptDir)
		EndIf
		Return True
	EndIf
	Return False
EndFunc


; ====================================================================================================
; Func __TTF_BallThreadStart()
;
; INTERNAL FUNCTION:
; 	Starts the 'Independently Moving Ball' thread
;
; Author: Ascend4nt
; ====================================================================================================

Func __TTF_BallThreadStart()
	If $TTF_LTHREAD_CREATED Or $TTF_LTHREAD_CLOSING Then Return SetError(1,0,False)
	Local $TTF_BALL_CODE
	If @AutoItX64 Then
		$TTF_BALL_CODE='0x58E8C20100004889C3483986900300000F84CA000000488D96F0000000488D8EA0010000E863020000488986E80000004885C00F84A70000004889DD49C7C40A0000004D89E54989DE49FFC65068154600004831C050504883EC204989E94989D84889C267488B8E90030000FF96E800000048C7C114000000FF96780100004883C4404D09F678204C01E378103B9E980300007CB78B9E98030000EB034831DB49F7DE49F7DCEBA44C01ED78103BAE9C0300007C978BAE9C030000EB034831ED49F7DE49F7DDEB844889D948FFC9E80602000048C7C1D5DD0000FF96600100004889D948FFC9EBF2000000000000000053657457696E646F77506F730090909000000000000000000000000000000000000000000000000000000000000000004C6F61644C69627261727941009090900000000000000000467265654C6962726172790090909090000000000000000047657450726F634164647265737300900000000000000000457869745468726561640090909090900000000000000000536C656570009090000000000000000001000000000000002E2E2E0090909090000000000000000000000000000000007573657233322E646C6C0090909090900000000000000000488B34244883EE06488986100100004989C7488D9680030000488996080100004889CF4C8B274C89A688010000488B5F0848899E480100004831C04809C374054909C475075B48FFC84157C34883EC28488D96200100004C89E1FFD348898618010000488D96380100004C89E1FFD348898630010000488D96800100004C89E1FFD348898678010000488D96680100004C89E1FFD3488986600100004883C4284885C074A04831C048398630010000749448398678010000748B483986180100007482C353524889CB48833B00751E4883EC28488D4B10FF96180100004883C4284885C07421488903488B14244883EC28488B0BFF96480100004883C4284885C0740448FF430848899EC00100005A5BC34889C8488B8EC00100004885C975044889C8C34889C252E8020000005AC35341544889C84885C0746F4889C348833B00745E4889D14883F9007C0E48294B0848FF4B0874047802EB4F488D86880100004839D8750A48C7430801000000EB394883EC28488B0BFF96300100004883C4284885C0742348C7030000000048399EC0010000750B48C786C00100000000000048C7430800000000415C5BC39090909090909090909090'
	Else
		$TTF_BALL_CODE='0xE86701000089C33986D80200000F84B40000008D8ED0000000518D8E5401000051E8DF0100008986CC00000085C00F849300000089DD681546000031C05050555350FFB6D8020000FF96CC0000006814000000FF963C01000080BEE8000000007C28039EE000000078103B9EDC0200007CC48B9EDC020000EB0231DBF69EE8000000F79EE0000000EBAC03AEE400000078103BAEE00200007C9C8BAEE0020000EB0231EDF69EE8000000F79EE4000000EB8431C04850E887010000B8D5DD000050FF962C01000031C048EBF40000000053657457696E646F77506F73009090900A0000000A000000019090900000000000000000000000004C6F61644C696272617279410090909000000000467265654C696272617279000000000047657450726F634164647265737300900000000045786974546872656164009000000000536C65657000909000000000010000002E2E2E0000000000000000007573657233322E646C6C0090000000008B342483EE058D8ED0020000898EF00000008B7C240889BEEC0000008B178996480100008B5F04899E1801000031C009C3740409C275035B48C38D8EF800000051528D8E0C01000051528D8E4001000051528D8E300100005152FFD389862C010000FFD389863C010000FFD3898608010000FFD38986F400000085C074B931C039860801000074AF39863C01000074A739862C010000749FC35589E5538B5D08833B00751289D983C10851FF96F400000085C0741689038B038B4D0C5150FF961801000085C07403FF4304899E680100005B5DC208008B866801000085C0740B8B5424045250E803000000C204005589E5538B450885C0745A89C3833B00744C8B4D0C83F9007C0C294B04FF4B0474047802EB3F8D864801000039D87509C7430401000000EB2C8B0350FF960801000085C0741FC70300000000399E68010000750AC7866801000000000000C74304000000005B5DC20800909090909090909090909090'
	EndIf
	Local $aDLLInfo=_DLL_GetBaseAndProcAddress('kernel32.dll','GetProcAddress')
	If @error Then Return SetError(@error,@extended,False)
	; Allocate memory with $MEM_COMMIT (0x1000), $PAGE_EXECUTE_READWRITE (0x40)
	;	(alternatively, can use GlobalAlloc() - preferably with a multiple of 4096 bytes, and _MemVirtualProtect())
	$TTF_LTHREAD_MEM=_ProcessMemoryAlloc($PROCESS_THIS_HANDLE,BinaryLen($TTF_BALL_CODE)+32,0x1000,0x40)
	If @error Then Return SetError(@error,@extended,False)
	; The pointer happens to be in our address space, so doing this is okay here:
	Local $stBinCode=DllStructCreate("byte["&BinaryLen($TTF_BALL_CODE)&"];handle;ptr;hwnd;dword;dword",$TTF_LTHREAD_MEM)
	DllStructSetData($stBinCode,1,$TTF_BALL_CODE)
	DllStructSetData($stBinCode,2,$aDLLInfo[0])
	DllStructSetData($stBinCode,3,$aDLLInfo[1])
	DllStructSetData($stBinCode,5,@DesktopWidth-50)
	DllStructSetData($stBinCode,6,@DesktopHeight-50)
	$TTF_LTHREAD_BALLGUI=_CircleGUICreate(0,0,50,Default,0xFF0000)
	DllStructSetData($stBinCode,4,$TTF_LTHREAD_BALLGUI)
;~ 	MsgBox(0,"Starting Thread","Thread at Address:"&$TTF_LTHREAD_MEM)
	$TTF_LTHREAD_HANDLE=_ThreadCreate($TTF_LTHREAD_MEM,DllStructGetPtr($stBinCode,2))
	If @error Then
		Local $iErr=@error,$iExt=@extended
		GUIDelete($TTF_LTHREAD_BALLGUI)
		$TTF_LTHREAD_BALLGUI=0
		_ProcessMemoryFree($PROCESS_THIS_HANDLE,$TTF_LTHREAD_MEM)
		Return SetError($iErr,$iExt,False)
	EndIf
	$TTF_LTHREAD_TID=@extended
	$TTF_LTHREAD_CREATED=True
	WinSetTrans($TTF_LTHREAD_BALLGUI,"",130)
	GUISetState(@SW_SHOWNOACTIVATE,$TTF_LTHREAD_BALLGUI)
	WinSetOnTop($TTF_LTHREAD_BALLGUI,"",1)
	; Update Status Bar text
	_GUICtrlStatusBar_SetText($TFGStatus,"Local Thread ID#: "&$TTF_LTHREAD_TID,0)
	_GUICtrlStatusBar_SetTipText($TFGStatus,0,"Local Thread: Thread ID#"&$TTF_LTHREAD_TID)	; in case it doesn't fit, a mouse-over will show the whole thing
	Return True
EndFunc


; ====================================================================================================
; Func __TTF_BallThreadEnd()
;
; INTERNAL FUNCTION:
; 	Ends the 'Independently Moving Ball' thread
;
; Author: Ascend4nt
; ====================================================================================================

Func __TTF_BallThreadEnd()
	If $TTF_LTHREAD_CLOSING Or Not $TTF_LTHREAD_CREATED Then Return
	$TTF_LTHREAD_CLOSING=True
	; Normally a 'nice' way to terminate a thread should be used; however this thread is simple and can be tossed.
	If _ThreadStillActive($TTF_LTHREAD_HANDLE) Then _ThreadTerminate($TTF_LTHREAD_HANDLE)
;~ 	_ThreadWaitForExit($TTF_LTHREAD_HANDLE)
	; Update Status Bar text
	_GUICtrlStatusBar_SetText($TFGStatus,"Local Thread: None",0)
	; Get the exit code (debug purposes)
	ConsoleWrite("Local thread exit code:"&_ThreadGetExitCode($TTF_LTHREAD_HANDLE)&@CRLF)
	_ThreadCloseHandle($TTF_LTHREAD_HANDLE)						; closes Thread handle and also invalidates handle
	_ProcessMemoryFree($PROCESS_THIS_HANDLE,$TTF_LTHREAD_MEM)	; frees memory and invalidates pointer
	GUIDelete($TTF_LTHREAD_BALLGUI)
	$TTF_LTHREAD_BALLGUI=0
	$TTF_LTHREAD_CREATED=False
	$TTF_LTHREAD_TID=0
	$TTF_LTHREAD_CLOSING=False
EndFunc


; ====================================================================================================
; Func _LocalThreadChecker()
;
; INTERNAL ADLIB FUNCTION:
;	If a Local Thread was spawned, this will check to see if it is still active
;
; Author: Ascend4nt
; ====================================================================================================

Func _LocalThreadChecker()
	If $TTF_LTHREAD_CLOSING Or Not $TTF_LTHREAD_CREATED Then Return
	; Check to see if we must update things
	If Not _ThreadStillActive($TTF_LTHREAD_HANDLE) Then
		AdlibUnRegister("_LocalThreadChecker")	; disable this Adlib function
		__TTF_BallThreadEnd()
		GUICtrlDelete($TTF_STOP_BALL)	; delete the pop-up menu item
		$TTF_STOP_BALL=0.5
	EndIf
EndFunc


; ====================================================================================================
; Func __TTFOnExit()
;
; INTERNAL FUNCTION:
;	Simple On-Exit function - cleans up.
;
; Author: Ascend4nt
; ====================================================================================================

Func __TTFOnExit()
	AdlibUnRegister("_LocalThreadChecker")
	GUIRegisterMsg($TTF_GUI_MSG_ID,"")
	If $TTF_LTHREAD_CREATED Then __TTF_BallThreadEnd()
EndFunc

; ===================================================================================================================
; Func _PROCESS_AND_THREAD_COMM($hWnd,$Msg,$wParam,$lParam)
;
;	Called by a Posted message from the TestProcessFuntions GUI when a Remote Thread is created
;		hWnd = Our main GUI, $Msg=Our registered message, $wParam = Running or not, $lParam = Thread ID #
;
; Author: Ascend4nt
; ===================================================================================================================

Func _PROCESS_AND_THREAD_COMM($hWnd,$Msg,$wParam,$lParam)
	If $wParam<>0 Then
		Local $sText,$sProcess=_ProcessGetFilenameByPID(Number($wParam))
		$sText="Remote Thread: Process '"&$sProcess&"', PID#"&Number($wParam)&", Thread ID#"&Number($lParam)
		_GUICtrlStatusBar_SetText($TFGStatus,$sText,1)
		_GUICtrlStatusBar_SetTipText($TFGStatus,1,$sText)	; in case it doesn't fit, a mouse-over will show the whole thing
	Else
		_GUICtrlStatusBar_SetText($TFGStatus,"Remote Thread: none running",1)
	EndIf
	Return 'GUI_RUNDEFMSG'		; From <GUIConstantsEx.au3> Global Const $GUI_RUNDEFMSG = 'GUI_RUNDEFMSG'
EndFunc


; ====================================================================================================
; Func TestThreadGUI()
;
; The main GUI for testing/playing around with Thread access modes and function examples.
;
; Author: Ascend4nt
; ====================================================================================================


Func TestThreadGUI()
	Local $i,$iTemp,$aTemp,$hTemp,$sSelItem
	Local $sTemp,$sFileToRun,$sLastRunDir=@ProgramFilesDir,$sLastRunExe=""

#cs
	$TTF_GUI_MSG_ID=_WinAPI_RegisterWindowMessage("%#PRocess&THreads.MSgs#%")
	If $TTF_GUI_MSG_ID=0 Then Return False
	If Not GUIRegisterMsg($TTF_GUI_MSG_ID,"_PROCESS_AND_THREAD_COMM") Then Return False
#ce
	OnAutoItExitRegister("__TTFOnExit")	; cleanup duties

	#Region ### START Koda GUI section ###
	$TFGUI = GUICreate("Thread Functions Tester", 599, 559)
	; Set a unique title.. unfortunately this doesn't really let us use GUIRegisterMsg() - but we can sneak in window handle
	AutoItWinSetTitle("#_THREAD_FUNCTIONS_TEST_GUI_#"&$TFGUI)
	$TTF_GUI_MSG_ID=_WinAPI_RegisterWindowMessage("%#PRocess&THreads.MSgs#%")
	If $TTF_GUI_MSG_ID=0 Then Return False
	If Not GUIRegisterMsg($TTF_GUI_MSG_ID,"_PROCESS_AND_THREAD_COMM") Then Return False

	$TFGTitleLbl = GUICtrlCreateLabel("Thread Functions Tester", 220, 8, 173, 20)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$TFGStatusLbl = GUICtrlCreateLabel("", 14, 26, 570, 20, $SS_CENTER)
	GUICtrlSetFont(-1, 10, 400, 2, "Arial")
	$TFGAccessLbl = GUICtrlCreateLabel("Access Modes for Opening a Thread", 176, 44, 257, 20)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$TFGAccessGroup = GUICtrlCreateGroup("Access Rights", 8, 62, 289, 305)
	$TFGAQueryInfo = GUICtrlCreateCheckbox("THREAD_QUERY_INFORMATION ", 13, 77, 217, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Required to get certain information for a Thread (0x0040). ")
	$TFGAQueryLimitInfo = GUICtrlCreateCheckbox("THREAD_QUERY_LIMITED_INFORMATION", 13, 101, 273, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Required to get certain *limited* information from a Thread (0x0800). Useful for Protected Processes. (Vista+ req'd)")
	$TFGASetInfo = GUICtrlCreateCheckbox("THREAD_SET_INFORMATION", 13, 124, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows setting certain information in a Thread (0x0020)")
	$TFGASetLimitInfo = GUICtrlCreateCheckbox("THREAD_SET_LIMITED_INFORMATION ", 13, 148, 257, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Required to set certain *limited* information for a Thread (0x0400). Useful for Protected Processes. (Vista+ req'd)")
	$TFGASuspendResume = GUICtrlCreateCheckbox("THREAD_SUSPEND_RESUME", 13, 172, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows Suspend/Resume Operations on Thread (0x0002)")
	$TFGATerminate = GUICtrlCreateCheckbox("THREAD_TERMINATE", 13, 195, 161, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows Termination of Thread (0x0001)")
	$TFGADirectImpersonate = GUICtrlCreateCheckbox("THREAD_DIRECT_IMPERSONATION ", 13, 219, 233, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows a Server Thread to Impersonate a Client Thread (0x0200)")
	$TFGAImpersonate = GUICtrlCreateCheckbox("THREAD_IMPERSONATE", 13, 242, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows use of a Thread's security info directly by Impersonation (0x0100)")
	$TFGAGetContext = GUICtrlCreateCheckbox("THREAD_GET_CONTEXT", 13, 266, 185, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows Retrieval of Thread Context Information (0x08)")
	$TFGASetContext = GUICtrlCreateCheckbox("THREAD_SET_CONTEXT ", 13, 290, 169, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows setting of Thread Context Information (0x0010)")
	$TFGASetThreadToken = GUICtrlCreateCheckbox("THREAD_SET_THREAD_TOKEN", 13, 313, 209, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows Setting of the Impersonation Token for a Thread (0x0080)")
	$TFGASync = GUICtrlCreateCheckbox("SYNCHRONIZE", 13, 337, 113, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows 'wait' operations for a Thread (0x00100000)")
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$TFGSecGroup = GUICtrlCreateGroup("Security Rights", 304, 62, 249, 129)
	$TFGSDelete = GUICtrlCreateCheckbox("DELETE", 312, 76, 73, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "N/A to Threads. Allows Deletion of Objects (0x00010000)")
	$TFGSRead = GUICtrlCreateCheckbox("READ_CONTROL", 312, 98, 121, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows you to read Security Descriptor Info for a Thread (0x00020000)")
	$TFGSSync = GUICtrlCreateCheckbox("SYNCHRONIZE ", 312, 119, 105, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows the Thread to be used for Synchronization functions (0x00100000)")
	$TFGSWriteDAC = GUICtrlCreateCheckbox("WRITE_DAC", 312, 141, 97, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows modification of the DACL in the Security Descriptor (0x00040000)")
	$TFGSWriteOwner = GUICtrlCreateCheckbox("WRITE_OWNER", 312, 163, 121, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows you to change the owner in the Security Descriptor for the Thread (0x00080000)")
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$TFGAllAccessButn = GUICtrlCreateButton("Check ALL Access Rights", 8, 372, 155, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Select ALL Access and Security Rights")
	$TFGNoAccessButn = GUICtrlCreateButton("Clear Access Rights", 168, 372, 129, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Clear ALL Access and Security Rights")
	$TFGAccessValLbl = GUICtrlCreateLabel("Access Combined Value:", 304, 198, 144, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$TFGAccessValueOut = GUICtrlCreateInput("0x0", 456, 194, 97, 21, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
	GUICtrlSetTip(-1, "Combined Numerical value of all Access Rights selected")
	$TFGProcSelLabel = GUICtrlCreateLabel("Select Process:", 8, 412, 93, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$TFGProcDropDown = GUICtrlCreateCombo("", 104, 410, 185, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL,$CBS_SORT,$WS_VSCROLL))
	$TFGThreadSelLabel = GUICtrlCreateLabel("Select Thread:", 8, 438, 88, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$TFGThreadDropDown = GUICtrlCreateCombo("", 104, 436, 185, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL,$WS_VSCROLL))
	$TFGFuncsLabel = GUICtrlCreateLabel("Functions Available:", 376, 220, 119, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$TFGFunctionsList = GUICtrlCreateList("", 304, 240, 281, 253, BitOR($LBS_EXTENDEDSEL,$WS_VSCROLL,$WS_BORDER))
	$TFGRunProgramButn = GUICtrlCreateButton("Run New Program...", 8, 462, 161, 36, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$TFGRefreshProcs = GUICtrlCreateButton("Refresh", 200, 462, 89, 36, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Refresh Processes and Threads List")
	$TFGDebugPrivBtn = GUICtrlCreateButton("Get Debug Privilege", 40, 504, 129, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Gives the program Debug Privilege (allowing access to more Processes's Threads).")
	$TFGReRun = GUICtrlCreateButton("ReStart Script...", 184, 504, 113, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "ReStart Script under a Different Bit-mode or with Admin Privileges (if disabled).")
	$TFGRunFuncs = GUICtrlCreateButton("Run Function(s)", 318, 504, 129, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Run Selected Function Example(s)")
	$TFGExitBtn = GUICtrlCreateButton("Exit", 468, 504, 121, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$TFGProcesses = GUICtrlCreateButton("P r o c e s s e s", 560, 64, 33, 153, BitOR($BS_MULTILINE,$WS_GROUP))
	GUICtrlSetFont(-1, 14, 800, 0, "Courier")
	GUICtrlSetTip(-1, "Start or Switch to Process Functions Tester module")
	$TFGStatus = _GUICtrlStatusBar_Create($TFGUI, -1, "", $SBARS_TOOLTIPS)
	Dim $TFGStatus_PartsWidth[2] = [188, -1]
	_GUICtrlStatusBar_SetParts($TFGStatus, $TFGStatus_PartsWidth)
;~ 	_GUICtrlStatusBar_SetText($TFGStatus, "", 0)
;~ 	_GUICtrlStatusBar_SetText($TFGStatus, "", 1)
	_GUICtrlStatusBar_SetMinHeight($TFGStatus, 10)
	#EndRegion ### END Koda GUI section ###
	_GUICtrlStatusBar_SetTipText($TFGStatus,0,"Info on any spawned Local (autoit3) threads")
	_GUICtrlStatusBar_SetTipText($TFGStatus,1,"Info on any spawned Remote (external process) threads")

	; Local/Remote Thread info (latter can be passed as parameters)
	_GUICtrlStatusBar_SetText($TFGStatus,"Local Thread info:")
	If $CmdLine[0]=2 And ProcessExists(Number($CmdLine[1])) Then
		_PROCESS_AND_THREAD_COMM(0,0,$CmdLine[1],$CmdLine[2])
	Else
		_GUICtrlStatusBar_SetText($TFGStatus,"Remote Thread info:",1)
	EndIf

	Dim $aAccessSecCtls[17][2]=[ [$TFGAQueryInfo,0x0040],[$TFGAQueryLimitInfo,0x0800],[$TFGASetInfo,0x0020],[$TFGASetLimitInfo,0x0400], _
	[$TFGASuspendResume,0x0002],[$TFGATerminate,0x0001],[$TFGADirectImpersonate,0x0200],[$TFGAImpersonate,0x0100], _
	[$TFGAGetContext,0x0008],[$TFGASetContext,0x0010],[$TFGASetThreadToken,0x0080],[$TFGASync,0x00100000], _
	[$TFGSDelete,0x00010000],[$TFGSRead,0x00020000], _
	[$TFGSSync,0x00100000],[$TFGSWriteDAC,0x00040000],[$TFGSWriteOwner,0x00080000] ]

	$hPFGFunctionsList=GUICtrlGetHandle($TFGFunctionsList)

	$sTemp=""
	For $i=0 To UBound($aThreadFuncs)-1
		$sTemp&="|"&$aThreadFuncs[$i][0]
	Next
	GUICtrlSetData($TFGFunctionsList,$sTemp)

	; 'Query/Set Limited Info' only available on Vista+ O/S's
	If Not $bLimitedAccessAvailable Then
		GUICtrlSetState($TFGAQueryLimitInfo,$GUI_DISABLE)
		GUICtrlSetState($TFGASetLimitInfo,$GUI_DISABLE)
	EndIf

	; We don't want a duplicate sync option
	GUICtrlSetState($TFGSSync,$GUI_DISABLE)

	; Set Status info on top with built string
	GUICtrlSetData($TFGStatusLbl,__BuildStatusString())

	; Update $TFGProcDropDown and $aTFGProcList
	__UpdateProcessList()

	$TTF_BALL_MENU=GUICtrlCreateContextMenu()
	GUISetState(@SW_SHOW)

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $TFGAQueryInfo
				; Can't have both 'Query Limited Info' and 'Query Info' combined
				If GUICtrlRead($TFGAQueryInfo)=$GUI_CHECKED And GUICtrlRead($TFGAQueryLimitInfo)=$GUI_CHECKED Then
					$iTFGAccessTotal=BitXOR($iTFGAccessTotal,0x0800)
					GUICtrlSetState($TFGAQueryLimitInfo,$GUI_UNCHECKED)
				EndIf
				__UpdateAccessByControl($TFGAQueryInfo,0x0040)
			Case $TFGAQueryLimitInfo
				; Can't have both 'Query Limited Info' and 'Query Info' combined
				If GUICtrlRead($TFGAQueryLimitInfo)=$GUI_CHECKED And GUICtrlRead($TFGAQueryInfo)=$GUI_CHECKED Then
					$iTFGAccessTotal=BitXOR($iTFGAccessTotal,0x0040)
					GUICtrlSetState($TFGAQueryInfo,$GUI_UNCHECKED)
				EndIf
				__UpdateAccessByControl($TFGAQueryLimitInfo,0x0800)
			Case $TFGASetInfo
				; Can't have both 'Set Limited Info' and 'Set Info' combined
				If GUICtrlRead($TFGASetInfo)=$GUI_CHECKED And GUICtrlRead($TFGASetLimitInfo)=$GUI_CHECKED Then
					$iTFGAccessTotal=BitXOR($iTFGAccessTotal,0x0400)
					GUICtrlSetState($TFGASetLimitInfo,$GUI_UNCHECKED)
				EndIf
				__UpdateAccessByControl($TFGASetInfo,0x0020)
			Case $TFGASetLimitInfo
				If GUICtrlRead($TFGASetLimitInfo)=$GUI_CHECKED And GUICtrlRead($TFGASetInfo)=$GUI_CHECKED Then
					$iTFGAccessTotal=BitXOR($iTFGAccessTotal,0x0020)
					GUICtrlSetState($TFGASetInfo,$GUI_UNCHECKED)
				EndIf
				__UpdateAccessByControl($TFGASetLimitInfo,0x0400)
			Case $TFGASuspendResume
				__UpdateAccessByControl($TFGASuspendResume,0x0002)
			Case $TFGATerminate
				__UpdateAccessByControl($TFGATerminate,0x0001)
			Case $TFGADirectImpersonate
				__UpdateAccessByControl($TFGADirectImpersonate,0x0200)
			Case $TFGAImpersonate
				__UpdateAccessByControl($TFGAImpersonate,0x0100)
			Case $TFGAGetContext
				__UpdateAccessByControl($TFGAGetContext,0x0008)
			Case $TFGASetContext
				__UpdateAccessByControl($TFGASetContext,0x0010)
			Case $TFGASetThreadToken
				__UpdateAccessByControl($TFGASetThreadToken,0x0080)
			Case $TFGASync
				__UpdateAccessByControl($TFGASync,0x00100000,$TFGSSync)
			Case $TFGSDelete
				__UpdateAccessByControl($TFGSDelete,0x00010000)
			Case $TFGSRead
				__UpdateAccessByControl($TFGSRead,0x00020000)
			Case $TFGSSync
				__UpdateAccessByControl($TFGSSync,0x00100000)
			Case $TFGSWriteDAC
				__UpdateAccessByControl($TFGSWriteDAC,0x00040000)
			Case $TFGSWriteOwner
				__UpdateAccessByControl($TFGSWriteOwner,0x00080000)
			Case $TFGAllAccessButn
				For $i=0 To UBound($aAccessSecCtls)-1
					GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_CHECKED)
				Next
				; Can't have *limited* access and ALL access, so clear this one
				GUICtrlSetState($TFGAQueryLimitInfo,$GUI_UNCHECKED)
				; Same for 'Set Limited' access
				GUICtrlSetState($TFGASetLimitInfo,$GUI_UNCHECKED)
				$iTFGAccessTotal=0x001F03FB
				GUICtrlSetData($TFGAccessValueOut,"0x"&Hex($iTFGAccessTotal))
			Case $TFGNoAccessButn
				For $i=0 To UBound($aAccessSecCtls)-1
					GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_UNCHECKED)
				Next
				$aTemp=_GUICtrlListBox_GetSelItems($hPFGFunctionsList)	; get listbox items selected
				If IsArray($aTemp) And $aTemp[0] Then
					For $i=1 To $aTemp[0]
						_GUICtrlListBox_SetSel($hPFGFunctionsList,$aTemp[$i],-1)	; clear selection
					Next
				EndIf
				$iTFGAccessTotal=0
				GUICtrlSetData($TFGAccessValueOut,"0x0")
			Case $TFGProcDropDown
;~ 				ConsoleWrite("DropDown clicked, selection="&GUICtrlRead($TFGProcDropDown)&@CRLF)
				$iTemp=Number(StringRegExpReplace(GUICtrlRead($TFGProcDropDown),".*?#(\d+)$","$1"))
				If Not ProcessExists($iTemp) Then __UpdateProcessList()
				If Not __UpdateThreadList() Then __UpdateProcessList()
			Case $TFGThreadDropDown
				If Not _ThreadExists(Number(GUICtrlRead($TFGThreadDropDown))) Then
					If Not __UpdateThreadList() Then __UpdateProcessList()
				EndIf
			Case $TFGFunctionsList
				__UpdateAccessBySelected()
#cs
				$sSelItem=GUICtrlRead($TFGFunctionsList)
				ConsoleWrite("List Item selected:"&$sSelItem&@CRLF)
				$aTemp=_GUICtrlListBox_GetSelItems($hPFGFunctionsList)	; _GUICtrlListBox_GetSelItemsText()
				If IsArray($aTemp) And $aTemp[0] Then
					For $i=1 To $aTemp[0]
						ConsoleWrite("Selected item #"&$i&": "&$aTemp[$i]&",Text: "&_GUICtrlListBox_GetText($hPFGFunctionsList,$aTemp[$i])&@CRLF)
					Next
				EndIf
#ce
			Case $TFGRunProgramButn
				$sFileToRun=FileOpenDialog("Select program to run",$sLastRunDir,"Executables (*.exe;*.com)",3,$sLastRunExe,$TFGUI)
				If @error Or $sFileToRun="" Then ContinueLoop
				$sLastRunExe=StringMid($sFileToRun,StringInStr($sFileToRun,'\',1,-1)+1)
				$sLastRunDir=StringLeft($sFileToRun,StringInStr($sFileToRun,'\',1,-1)-1)
;~ 				ConsoleWrite("Folder path:"& $sLastRunDir&", File to Run:"&$sLastRunExe&@CRLF)
				Run($sLastRunExe,$sLastRunDir)
				__UpdateProcessList()
				; _RefreshProcessList
			Case $TFGRefreshProcs
				__UpdateProcessList()
			Case $TFGDebugPrivBtn
				If $bDebugPrivilegeObtained Then ContinueLoop
				If _GetDebugPrivilegeRtl() Then
					$bDebugPrivilegeObtained=True
					GUICtrlSetState($TFGDebugPrivBtn,$GUI_DISABLE)
					GUICtrlSetData($TFGStatusLbl,__BuildStatusString())
				Else
					MsgBox(48,"Debug Privilege Not Obtained","There was an error getting Debug Privileges."&@CRLF& _
						"Note Admin mode is required, which has a current status of IsAdmin()="&IsAdmin()&@CRLF& _
						"If not Admin, you can click the 'ReStart Script...' button to attempt to run as Administrator",0,$TFGUI)
				EndIf
			Case $TFGReRun
				__ReRunGUI($TFGUI)
				GUISwitch($TFGUI)
			Case $TFGRunFuncs
				If _GUICtrlListBox_GetSelCount($hPFGFunctionsList)>=1 Then
					GUISetState(@SW_HIDE,$TFGUI)
					__ExecuteExamples(GUICtrlRead($TFGProcDropDown),GUICtrlRead($TFGThreadDropDown))
					GUISwitch($TFGUI)
					GUISetState(@SW_SHOW,$TFGUI)
					__UpdateProcessList()
				EndIf
			Case $TFGProcesses
				__RunTestProcessFunctions()
			Case $GUI_EVENT_CLOSE,$TFGExitBtn
				Exit
			Case $TTF_STOP_BALL
				If $TTF_LTHREAD_CREATED Then
					$iTemp=$TTF_LTHREAD_TID
					AdlibUnRegister("_LocalThreadChecker")	; disable the Adlib function
					__TTF_BallThreadEnd()
					GUICtrlDelete($TTF_STOP_BALL)	; delete the pop-up menu item
					$TTF_STOP_BALL=0.5
					If $iTemp=Number(GUICtrlRead($TFGThreadDropDown)) Then __UpdateThreadList()
				Endif
		EndSwitch
	WEnd

EndFunc

; ====================================================================================================
;	Output write control variable and function (like a GUI-based ConsoleWrite)
; ====================================================================================================

Global $ctOutputEdit

Func _OutputWrite($sString,$bAddCRLF=True)
	If $bAddCRLF Then $sString&=@CRLF
	GUICtrlSetData($ctOutputEdit,$sString,1)
EndFunc


Global $aExecuteOuputRect[4]=[-1,-1,578,403]

; ====================================================================================================
; Func __ExecuteExamples($sDropDownSel,$sThreadDropDownSel)
;
; INTERNAL FUNCTION:
;	Here's where we run the Thread function examples based on what was selected.
;	  Note that _ThreadOpen/_ThreadCloseHandle are done automatically for those functions that
;	  require it!
;
; Author: Ascend4nt
; ====================================================================================================

Func __ExecuteExamples($sDropDownSel,$sThreadDropDownSel)
	Local $hOutputGUI,$iErr,$iTemp,$aTemp='',$pTemp,$bTemp,$sTemp,$pDest,$aEnv,$hThreadTemp,$stTemp,$hTemp
	Local $iSelItem=0,$sSelItem,$iProcessID=0,$iThreadID=Number($sThreadDropDownSel),$sProcName,$hThread=0
	Local $sSeparator="------------------------------------------------------------------------"
	Local $sSmallSeparator=".............................................."
	Local $aSelectedItems=_GUICtrlListBox_GetSelItemsText($hPFGFunctionsList)
	If Not IsArray($aSelectedItems) Or $aSelectedItems[0]=0 Then Return

	$iProcessID=Number(StringRegExpReplace($sDropDownSel,".*?#(\d+)$","$1"))
	If Not ProcessExists($iProcessID) Then Return MsgBox(48,"Process does not exist","Process selected from DropDown ("&$sDropDownSel&") does not exist")

	#Region ### START Koda GUI section ###
	$hOutputGUI = GUICreate("Thread Functions Test", 578, 403, $aExecuteOuputRect[0], $aExecuteOuputRect[1], BitOR($WS_MINIMIZEBOX,$WS_SIZEBOX,$WS_THICKFRAME,$WS_SYSMENU,$WS_CAPTION,$WS_POPUP,$WS_POPUPWINDOW,$WS_GROUP,$WS_BORDER,$WS_CLIPSIBLINGS))
	GUICtrlCreateLabel("Thread Functions Test Output", 6, 8, 568, 20, $SS_CENTER)
	GUICtrlSetFont(-1, 10, 800, 0, "Arial")
	GUICtrlSetResizing(-1, $GUI_DOCKTOP+$GUI_DOCKHCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
	$ctOutputEdit = GUICtrlCreateEdit("", 6, 40, 568, 305, BitOR($ES_AUTOVSCROLL,$ES_AUTOHSCROLL,$ES_READONLY,$ES_WANTRETURN,$WS_HSCROLL,$WS_VSCROLL))
	GUICtrlSetFont(-1, 9, 400, 0, "Courier New")
	GUICtrlSetResizing(-1, $GUI_DOCKTOP+$GUI_DOCKBOTTOM)
	GUICtrlSetLimit($ctOutputEdit,1000000)
	$ctClose = GUICtrlCreateButton("&Close", 224, 352, 137, 41, BitOR($BS_DEFPUSHBUTTON,$BS_CENTER))
	GUICtrlSetFont(-1, 10, 800, 0, "Arial")
	GUICtrlSetResizing(-1, $GUI_DOCKBOTTOM+$GUI_DOCKHCENTER+$GUI_DOCKWIDTH+$GUI_DOCKHEIGHT)
	; Resize *after* components are set using original size
	If $aExecuteOuputRect[0]<>-1 Then WinMove($hOutputGUI,"",$aExecuteOuputRect[0],$aExecuteOuputRect[1],$aExecuteOuputRect[2],$aExecuteOuputRect[3])
	GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###

	If $sDropDownSel=$sSelfReference Then
		_OutputWrite("NOTE: 'Self' was chosen as process.  Process name and Process ID (-1) have been adjusted.")
		$sProcName=StringMid(@AutoItExe,StringInStr(@AutoItExe,"\",1,-1)+1)
	Else
		$sProcName=StringRegExpReplace($sDropDownSel,"\s#\d+$","")
	EndIf

	_OutputWrite("Process '"&$sProcName&"' selected, $iAccess: 0x"&Hex($iTFGAccessTotal)&", DebugPrivileges="&$bDebugPrivilegeObtained&@CRLF& _
		"$sProcess="&$sProcName&@CRLF&"$iProcessID="&$iProcessID&"	; $iProcessID=ProcessExists($sProcess)"&@CRLF& _
		"$iThreadID="&$iThreadID&@CRLF)

	_OutputWrite(";  <- Source Process <- ",0)
	If @AutoItX64 Then
		_OutputWrite("64",0)
	Else
		_OutputWrite("32",0)
	EndIf
	_OutputWrite("-bit mode  &  -> Target Process -> ",0)

	$hTemp=_ProcessOpen($iProcessID,$PROCESS_QUERY_LIMITED_INFO)
	If _ProcessIs32Bit($hTemp) Then
		_OutputWrite("32",0)
	Else
		_OutputWrite("64",0)
	EndIf
	_ProcessCloseHandle($hTemp)

	_OutputWrite("-bit mode."&@CRLF&$sSeparator&@CRLF&"_Thread* Functions selected for testing:")
	For $i=1 To $aSelectedItems[0]
		_OutputWrite("#"&$i&":"&$aSelectedItems[$i])
	Next
	_OutputWrite($sSeparator)
	If $iTFGAccessTotal Then
		_OutputWrite("_ThreadOpen($iThreadID,$iAccess,$bInheritHandle=False)"&@CRLF)
		If BitAND($iTFGAccessTotal,0x0800) Then _OutputWrite(';  Note: For O/S-independent work, use $THREAD_QUERY_LIMITED_INFO in place of 0x0800')
		If BitAND($iTFGAccessTotal,0x0400) Then _OutputWrite(';  Note: For O/S-independent work, use $THREAD_SET_LIMITED_INFO in place of 0x0400')
		_OutputWrite("$iAccess=0x"&Hex($iTFGAccessTotal))
		_OutputWrite("$hThread=_ThreadOpen($iThreadID,0x"&Hex($iTFGAccessTotal)&")	; Get a Thread Handle")
		$hThread=_ThreadOpen($iThreadID,$iTFGAccessTotal)
		_OutputWrite("; _ThreadOpen() Return: $hThread="&$hThread&"     ; [0=failure], @error="&@error&", @extended="&@extended)
		If Not IsPtr($hThread) Then
			MsgBox(48,"Unable to open thread!", _
			"Thread was unable to be opened.  This can be due to access restrictions or bit-mode incompatibilities."&@CRLF& _
			"Press OK to return to the Thread Test GUI."&@CRLF&"You may try obtaining Debug Privileges or Restarting the script.",0,$hOutputGUI)
			$aExecuteOuputRect=WinGetPos($hOutputGUI)
			GUIDelete($hOutputGUI)
			Return False
		EndIf
	EndIf

	For $i=1 To $aSelectedItems[0]
		_OutputWrite($sSeparator)
		$sSelItem=$aSelectedItems[$i]
		For $i2=0 To UBound($aThreadFuncs)-1
			If $sSelItem=$aThreadFuncs[$i2][0] Then
				$iSelItem=$i2
				ExitLoop
			EndIf
		Next
		If @OSVersion="WIN_2000" And IsString($aThreadFuncs[$iSelItem][3]) Then
			_OutputWrite("The function '"&$sSelItem&"()' is unavailable on Win2000. ",False)
			If $aThreadFuncs[$iSelItem][3]<>"" Then
				$sSelItem=$aThreadFuncs[$iSelItem][3]
				_OutputWrite("However, an alternate function is available and will run:"&$sSelItem)
			Else
				_OutputWrite("Likely an error code will return from the API call.")
			EndIf
		EndIf
		_OutputWrite($sSelItem&"("&$aThreadFuncs[$iSelItem][5]&")   ; "&$aThreadFuncs[$iSelItem][4]&" for 32-to-64-bit Process (Thread) Availability"&@CRLF)
		Switch $sSelItem
			Case "_ThreadGetCurrentID"
				; Func _ThreadGetCurrentID()
				_OutputWrite("$iCurThreadID=_ThreadGetCurrentID()"&@CRLF&"$iCurThreadID="&_ThreadGetCurrentID()&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("; Note this is the Thread ID associated with *this* program (autoit3)")
			Case "_ThreadCreate"
				; Func _ThreadCreate($pFuncPtr,$vParam=0,$bCreateSuspended=False)
				If $TTF_LTHREAD_CREATED Then
					_OutputWrite(";* _ThreadCreate() already used to create a Local Thread (There should be a 'Ball' on screen somewhere)")
				Else
					_OutputWrite("$hThread=_ThreadCreate($pFuncPtr,$vParam)"&@CRLF&"; No simple example available - using _TTF_BallThreadStart()")
					$bTemp=__TTF_BallThreadStart()
					_OutputWrite("$bCreated=_TTF_BallThreadStart()"&@CRLF&"$bCreated="&$bTemp&"    ; @error="&@error&" @extended="&@extended)
					If $bTemp Then
						AdlibRegister("_LocalThreadChecker",250)	; start the Adlib function
						$TTF_STOP_BALL=GUICtrlCreateMenuItem("Stop Ball Thread",$TTF_BALL_MENU)
						_OutputWrite("; Local Thread started, ID will display in StatusBar. (Thread can be terminated by right-clicking GUI)")
					EndIf
				EndIf
			Case "_ThreadGetProcessID"
				; Func _ThreadGetProcessID($hThread)
				_OutputWrite("$iProcessID=_ThreadGetProcessID($hThread)"&@CRLF&"$iProcessID="&_ThreadGetProcessID($hThread)&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("; Warning: Vista+ is required!  Alternate function: _ThreadUDGetProcessID()")
			Case "_ThreadGetThreadID"
				; Func _ThreadGetThreadID($hThread)
				_OutputWrite("$iThreadID=_ThreadGetThreadID($hThread)"&@CRLF&"$iThreadID="&_ThreadGetThreadID($hThread)&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("; Warning: Vista+ is required!  Alternate function: _ThreadUDGetThreadID()")
			Case "_ThreadGetPriority"
				; Func _ThreadGetPriority($hThread)
				_OutputWrite("$iPriority=_ThreadGetPriority($hThread)"&@CRLF&"$iPriority="&_ThreadGetPriority($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadSetPriority"
				; Func _ThreadSetPriority($hThread,$iPriority=0)
				; To get the current priority, we need either QueryLimited or Query (full) access
				If BitAND($iTFGAccessTotal,0x0840)=0 Then
					; Open a temporary handle to the thread with the other access added
					$hThreadTemp=_ThreadOpen($iThreadID,BitOR($iTFGAccessTotal,$THREAD_QUERY_LIMITED_INFO))
					If Not @error Then
						$iTemp=_ThreadGetPriority($hThreadTemp)
						_ThreadCloseHandle($hThreadTemp)
					Else
						$iTemp=-1
					EndIf
				Else
					$iTemp=_ThreadGetPriority($hThread)
				EndIf
				If $iTemp<>-1 Then
					_OutputWrite("$bSetPriority=_ThreadSetPriority($hThread,0)"&@CRLF&"$bSetPriority="&_ThreadSetPriority($hThread,0)&"    ; @error="&@error&" @extended="&@extended)
					_OutputWrite("Resetting Priority to original value of 0x"&Hex($iTemp)&", Result:"&_ThreadSetPriority($hThread,$iTemp))
				Else
					_OutputWrite("_ThreadSetPriority() not called, due to inability to retrieve current Priority with _ThreadGetPriority()")
				EndIf
			Case "_ThreadGetAffinityMask"
				; Func _ThreadGetAffinityMask($hThread,$iTempAffinityMask=1)
				_OutputWrite("$iAffinityMask=_ThreadGetAffinityMask($hThread)"&@CRLF&"$iAffinityMask=0x"&Hex(_ThreadGetAffinityMask($hThread))&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("; Warning: This function makes 2 calls to _ThreadSetAffinityMask() due to lack of an API to retrieve current Affinity!  Alternate function: _ThreadUDGetAffinityMask()")
			Case "_ThreadSetAffinityMask"
				; Func _ThreadSetAffinityMask($hThread,$iAffinityMask)
				; Luckily, setting Affinity requires QueryLimited or Query (full) access, so we can simply grab the current state
				$iTemp=_ThreadUDGetAffinityMask($hThread)
				If $iTemp Then
					_OutputWrite("$bSetAffinity=_ThreadSetAffinityMask($hThread,0x1)"&@CRLF&"$bSetPriority="&_ThreadSetAffinityMask($hThread,0x1)&"    ; @error="&@error&" @extended="&@extended)
					_OutputWrite("Resetting Affinity to original value of 0x"&Hex($iTemp)&", Result:"&_ThreadSetAffinityMask($hThread,$iTemp))
				Else
					_OutputWrite("_ThreadSetAffinityMask() not called, due to inability to retrieve current Affinity with _ThreadUDGetAffinityMask()")
				EndIf
			Case "_ThreadGetTimes"
				; Func _ThreadGetTimes($hThread,$iTimeToGet=-1)
				_OutputWrite("$aThreadTimes=_ThreadGetTimes($hThread)",False)
				$aTemp=_ThreadGetTimes($hThread)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aThreadTimes[0]="&_WinTime_UTCFileTimeFormat($aTemp[0],4+8,1,True)&"    ; Thread Creation Time")
					_OutputWrite("$aThreadTimes[1]="&_WinTime_UTCFileTimeFormat($aTemp[1],4+8,1,True)&"    ; Thread Exit Time (if applicable)")
					_OutputWrite("$aThreadTimes[2]="&$aTemp[2]/100&" ms    ; Thread Kernel Time")
					_OutputWrite("$aThreadTimes[3]="&$aTemp[3]/1000&" ms    ; Thread User Time")
				Endif
			Case "_ThreadWaitForExit"
				; Func _ThreadWaitForExit($hThread,$iTimeOut=-1)
				_OutputWrite("$bThreadExited=_ThreadWaitForExit($hThread,250)"&@CRLF&"$bThreadExited="&_ThreadWaitForExit($hThread,250)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadStillActive"
				; Func _ThreadStillActive($hThread)
				_OutputWrite("$bThreadStillActive=_ThreadStillActive($hThread)"&@CRLF&"$bThreadStillActive="&_ThreadStillActive($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadGetExitCode"
				; Func _ThreadGetExitCode($hThread)
				MsgBox(64,"ThreadGetExitCode test requested", _
					"For this function to give a 'real' exit code, the thread #"&$iThreadID&" in process '"&$sProcName&"' would need to be closed."&@CRLF& _
					"Do NOT close important processes/threads!  The function can still be called either way."&@CRLF& _
					"STILL_ACTIVE (259) will be returned for threads that haven't exited"&@CRLF&@CRLF&"Click OK to run _ThreadGetExitCode()",0,$hOutputGUI)
				_OutputWrite("$iExitCode=_ThreadGetExitCode($hThread)"&@CRLF&"$iExitCode="&_ThreadGetExitCode($hThread)&@CRLF&"; [-1 = possible error, 259 = possibly still running] @error="&@error&" @extended="&@extended)
			Case "_ThreadSuspend"
				; Func _ThreadSuspend($hThread)
				If $iProcessID=@AutoItPID And (Not $TTF_LTHREAD_CREATED Or $TTF_LTHREAD_TID<>$iThreadID) Then
					_OutputWrite("_ThreadSuspend selected, but a main thread of *THIS* process was selected. This GUI will not Suspend/Resume our threads. Skipping function.")
				Else
					If ($TTF_LTHREAD_CREATED And $TTF_LTHREAD_TID=$iThreadID) Or MsgBox(35,"Suspend Thread Selected","For process '"&$sProcName&"' (PID #"&$iProcessID&", TID #"&$iThreadID&"), a Suspend request was made."&@CRLF& _
						"*SUSPENDING CRUCIAL THREADS OF A PROCESSES MAY CAUSE PROBLEMS!!*"&@CRLF&@CRLF&"Are you certain you wish to Suspend this thread in this process?")=6 Then
						_OutputWrite("$bSuspended=_ThreadSuspend($hThread)"&@CRLF&"$bSuspended="&_ThreadSuspend($hThread)&"    ; @error="&@error&" @extended="&@extended)
					Else
						_OutputWrite("; _ThreadSuspend($hThread) *NOT* called (user selection)")
					EndIf
				EndIf
			Case "_ThreadWow64Suspend"
				; Func _ThreadWow64Suspend($hThread)
				If $iProcessID=@AutoItPID And (Not $TTF_LTHREAD_CREATED Or $TTF_LTHREAD_TID<>$iThreadID) Then
					_OutputWrite("_ThreadWow64Suspend selected, but a main thread of *THIS* process was selected. This GUI will not Suspend/Resume our threads. Skipping function.")
				Else
					If ($TTF_LTHREAD_CREATED And $TTF_LTHREAD_TID=$iThreadID) Or MsgBox(35,"Suspend Thread Selected","For process '"&$sProcName&"' (PID #"&$iProcessID&", TID #"&$iThreadID&"), a Suspend request was made."&@CRLF& _
						"*SUSPENDING CRUCIAL THREADS OF A PROCESSES MAY CAUSE PROBLEMS!!*"&@CRLF&@CRLF&"Are you certain you wish to Suspend this thread in this process?")=6 Then
						_OutputWrite("$bSuspended=_ThreadWow64Suspend($hThread)"&@CRLF&"$bSuspended="&_ThreadWow64Suspend($hThread)&"    ; @error="&@error&" @extended="&@extended)
					Else
						_OutputWrite("; _ThreadWow64Suspend($hThread) *NOT* called (user selection)")
					EndIf
				EndIf
			Case "_ThreadResume"
				; Func _ThreadResume($hThread)
				If $iProcessID=@AutoItPID And (Not $TTF_LTHREAD_CREATED Or $TTF_LTHREAD_TID<>$iThreadID) Then
					_OutputWrite("_ThreadResume selected, but a main thread of *THIS* process was selected. This GUI will not Suspend/Resume our threads. Skipping function.")
				Else
					_OutputWrite("$bResumed=_ThreadResume($hThread)"&@CRLF&"$bResumed="&_ThreadResume($hThread)&"    ; @error="&@error&" @extended="&@extended)
				EndIf
			Case "_ThreadTerminate"
				; Func _ThreadTerminate($hThread,$iExitCode=0)
				If $iProcessID=@AutoItPID And (Not $TTF_LTHREAD_CREATED Or $TTF_LTHREAD_TID<>$iThreadID) Then
					_OutputWrite("_ThreadTerminate selected, but a main thread of *THIS* process was selected. Will not Terminate our threads. Skipping function.")
				Else
					If ($TTF_LTHREAD_CREATED And $TTF_LTHREAD_TID=$iThreadID) Or MsgBox(35,"Terminate Thread Selected","For process '"&$sProcName&"' (PID #"&$iProcessID&", TID #"&$iThreadID&"), a Termination request was made."&@CRLF& _
						"*TERMINATING CRUCIAL THREADS OF A PROCESSES MAY CAUSE PROBLEMS!!*"&@CRLF&@CRLF&"Are you certain you wish to Terminate this thread in this process?")=6 Then
						_OutputWrite("$bTerminated=_ThreadTerminate($hThread)"&@CRLF&"$bTerminated="&_ThreadTerminate($hThread)&"    ; @error="&@error&" @extended="&@extended)
					Else
						_OutputWrite("; _ThreadTerminate($hThread) *NOT* called (user selection)")
					EndIf
				EndIf
			Case "_ThreadGetWinThreadID"
				; Func _ThreadGetWinThreadID($hWnd,$vUSER32DLL="user32.dll")
				_OutputWrite("$iGUIThreadID=_ThreadGetWinThreadID($hThisGUI)"&@CRLF&"$iGUIThreadID="&_ThreadGetWinThreadID($hOutputGUI)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadList"
				; Func _ThreadList($vFilterID=-1,$bThreadFilter=False)
				$iTemp=-1
				$sTemp="-1"
				$bTemp=False
				; Loop twice: 1st, complete Thread list, 2nd - filtered
				For $i2=1 To 2
					_OutputWrite("$aThreads=_ThreadList("&$sTemp&','&$bTemp&")",$bTemp)
					$aTemp=_ThreadList($iTemp,$bTemp)
					$iErr=@error
					_OutputWrite("    ; @error="&@error&" @extended="&@extended)
					If Not $iErr Then
						_OutputWrite("Return ("&$aTemp[0][0]&" total Threads)")
						$aTemp[0][0]="Thread ID#"
						$aTemp[0][1]="Process ID#"
						$aTemp[0][2]="Thread Base Priority"
						_ArrayDisplay($aTemp,"_ThreadList("&$sTemp&','&$bTemp&") Return Array")
					Endif
					$sTemp="$iThreadID"
					$iTemp=$iThreadID
					$bTemp=True
				Next
			Case "_ThreadExists"
				; Func _ThreadExists($iThreadID)
				_OutputWrite("$bThreadExists=_ThreadExists($iThreadID)"&@CRLF&"$bThreadExists="&_ThreadExists($iThreadID)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDGetThreadID"
				; Func _ThreadUDGetThreadID($hThread)
				_OutputWrite("$iThreadID=_ThreadUDGetThreadID($hThread)"&@CRLF&"$iThreadID="&_ThreadUDGetThreadID($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDGetProcessID"
				; Func _ThreadUDGetProcessID($hThread)
				_OutputWrite("$iProcessID=_ThreadUDGetProcessID($hThread)"&@CRLF&"$iProcessID="&_ThreadUDGetProcessID($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDGetAffinityMask"
				; Func _ThreadUDGetAffinityMask($hThread)
				_OutputWrite("$iAffinityMask=_ThreadUDGetAffinityMask($hThread)"&@CRLF&"$iAffinityMask=0x"&Hex(_ThreadUDGetAffinityMask($hThread))&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDGetStartAddress"
				; Func _ThreadUDGetStartAddress($hThread)
				_OutputWrite("$pThreadStartAddress=_ThreadUDGetStartAddress($hThread)"&@CRLF&"$pThreadStartAddress="&_ThreadUDGetStartAddress($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDIsWow64"
				; Func _ThreadUDIsWow64($hThread)
				_OutputWrite("$bIsWow64=_ThreadUDIsWow64($hThread)"&@CRLF&"$bIsWow64="&_ThreadUDIsWow64($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDIs32Bit"
				; Func _ThreadUDIs32Bit($hThread)
				_OutputWrite("$bIs32Bit=_ThreadUDIs32Bit($hThread)"&@CRLF&"$bIs32Bit="&_ThreadUDIs32Bit($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDIs64Bit"
				; Func _ThreadUDIs64Bit($hThread)
				_OutputWrite("$bIs64Bit=_ThreadUDIs64Bit($hThread)"&@CRLF&"$bIs64Bit="&_ThreadUDIs64Bit($hThread)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadUDIsSuspended"
				; Func _ThreadUDIsSuspended($iThreadID,$iPID=-1)
				_OutputWrite("$bThreadSuspended=_ThreadUDIsSuspended($iThreadID,$iProcessID)"&@CRLF&"$bThreadSuspended="&_ThreadUDIsSuspended($iThreadID,$iProcessID)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ThreadGetContext"
				; Func _ThreadGetContext($hThread,$iContextFlags,$bSuspend=False)
				If _ThreadUDIs32Bit($hThread) And @AutoItX64 Then _OutputWrite("; NOTE! Thread is 32-bit, and this process is 64-bit! Results will be for the Wow64 wrapper context."&@CRLF&"; - Use '_ThreadGetWow64Context' for the correct Context!")
				_OutputWrite("$stContext=_ThreadGetContext($hThread,BitOR($CONTEXT_CONTROL,$CONTEXT_INTEGER,$CONTEXT_SEGMENTS,$CONTEXT_FLOATING_POINT))")
				$stTemp=_ThreadGetContext($hThread,BitOR($CONTEXT_CONTROL,$CONTEXT_INTEGER,$CONTEXT_SEGMENTS,$CONTEXT_FLOATING_POINT))
				_OutputWrite("; Result -  @error="&@error&", @extended="&@extended&", IsDLLStruct($stContext)="&IsDllStruct($stTemp))
				If IsDllStruct($stTemp) Then _DLLStructDisplay($stTemp,$tagCONTEXT_STRUCT,"Context Structure")
				$stTemp=0		; free up the memory used by the temp structure
			Case "_ThreadGetWow64Context"
				; Func _ThreadGetWow64Context($hThread,$iContextFlags,$bSuspend=False)
				_OutputWrite("$stContext=_ThreadGetWow64Context($hThread,BitOR($CONTEXT_CONTROL_WOW64,$CONTEXT_INTEGER_WOW64,$CONTEXT_SEGMENTS_WOW64,$CONTEXT_FLOATING_POINT_WOW64))")
				$stTemp=_ThreadGetWow64Context($hThread,BitOR($CONTEXT_CONTROL,$CONTEXT_INTEGER,$CONTEXT_SEGMENTS,$CONTEXT_FLOATING_POINT))
				_OutputWrite("; Result -  @error="&@error&", @extended="&@extended&", IsDLLStruct($stContext)="&IsDllStruct($stTemp))
				If IsDllStruct($stTemp) Then _DLLStructDisplay($stTemp,$tagWOW64CONTEXT_STRUCT,"WOW64 Context Structure")
				$stTemp=0		; free up the memory used by the temp structure
			Case "_ThreadSetContext"
				; Func _ThreadSetContext($hThread,Const ByRef $stContext,$bSuspend=True,$bSafetyChecks=True)
				_OutputWrite("$bContextSet=_ThreadSetContext($hThread,$stContext)	; - Sorry, NO examples (Dangerous & for advanced users only!)")
			Case "_ThreadSetWow64Context"
				; Func _ThreadSetWow64Context($hThread,Const ByRef $stWow64Context,$bSuspend=True,$bSafetyChecks=True)
				_OutputWrite("$bWow64ContextSet=_ThreadSetWow64Context($hThread,$stWow64Context)	; - Sorry, NO examples (Dangerous & for advanced users only!)")
			Case "_ThreadUDGetTEB"
				; Func _ThreadUDGetTEB($hThread,$hProcess=0)
				_OutputWrite("$hProcess=_ProcessOpen($iProcessID,$PROCESS_QUERY_LIMITED_INFO+0x10)")
				$hTemp=_ProcessOpen($iProcessID,$PROCESS_QUERY_LIMITED_INFO+0x10)
				_OutputWrite("; $hProcess="&$hTemp&"		; @error="&@error&" @extended="&@extended)
				If IsPtr($hTemp) Then
					$stTemp=_ThreadUDGetTEB($hThread,$hTemp)
					$iErr=@error
					$pTemp=Ptr(@extended)	; If successful, this will be a pointer to the TEB
					_OutputWrite("$stTEB=_ThreadUDGetTEB($hThread,$hProcess)    ; @error="&$iErr&" @extended="&$pTemp)
					If IsDllStruct($stTemp) Then
						_OutputWrite("_DLLStructDisplay($stTEB,$tagTEB,'TEB')")
						_DLLStructDisplay($stTemp,$tagTEB,"TEB: "&$pTemp)
						$stTemp=0	; free up the memory used by the temp structure
					EndIf
					$bTemp=_ProcessCloseHandle($hTemp)
					_OutputWrite("_ProcessCloseHandle($hProcess) 	; Return:"&$bTemp&", @error="&@error&" @extended="&@extended)
				EndIf
		EndSwitch
		Sleep(1)	; just to cut down on resources when a huge list is being created
	Next
	If IsPtr($hThread) Then
		_OutputWrite($sSeparator)
		_OutputWrite("_ThreadCloseHandle($hThread)	; Close Thread Handle. Required step! (except w/ -2 handles)")
		_OutputWrite("_ThreadCloseHandle Return:"&_ThreadCloseHandle($hThread)&"    ; @error="&@error&", @extended="&@extended)
	EndIf
	_OutputWrite($sSeparator&@CRLF&"Thread Function test complete!")
	GUISwitch($hOutputGUI)
	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $GUI_EVENT_CLOSE,$ctClose
				ExitLoop
		EndSwitch
	WEnd
	$aExecuteOuputRect=WinGetPos($hOutputGUI)
	GUIDelete($hOutputGUI)
	Return
EndFunc


; ===================================================================================================================
;	--------------------	The Call That Does It All	--------------------
; ===================================================================================================================

TestThreadGUI()