#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Outfile=ProcessFunctionsTest.exe
#AutoIt3Wrapper_Outfile_x64=ProcessFunctionsTestx64.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_Compile_Both=y
#AutoIt3Wrapper_Run_After=del ProcessFunctionsTest_Obfuscated.au3
#AutoIt3Wrapper_Run_Obfuscator=y
#Obfuscator_Parameters=/om /cn=0 /cs=0 /sf=1 /sv=1
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs
; - OBFUSCATOR NOTES -
;
;	Latest version of Obfuscator now handles Alidb*/OnAutoItExit*/HotKeySet/DLLCallbackRegister functions properly with the following functions:
;~ #obfuscator_ignore_funcs __RMBTOnExit,__TPFOnExit,_RemoteThreadChecker
; Optional directive (place before '#AutoIt3Wrapper_Run_After'): #AutoIt3Wrapper_UseX64=y
; NOTE: If compile for x64, change the outfile and Run_After filenames to ProcessFunctionsTestx64 (and ProcessFunctionsTestx64_Obfuscated)
#ce

;~ #include <Array.au3>		; Included with <_DLLStructDisplay.au3>
#include <[Includes]\_DLLStructDisplay.au3>
;~ #include <[Includes]\_ProcessFunctions.au3>	; Included with below two
#include <[Includes]\_ProcessListFunctions.au3>
;~ #include <[Includes]\_ProcessUndocumented.au3>	; Included with the below
#include <[Includes]\_ProcessCreateRemoteThread.au3>
#include <[Includes]\_ProcessUndocumentedList.au3>
#include <[Includes]\_ProcessUDGetPEB.au3>
#include <[Includes]\_RemoteMsgBox.au3>		; Remote Thread..
#include "[Includes]\_GetDebugPrivilegeRtl.au3"
#include "[Includes]\_WinTimeFunctions.au3"	; for _ProcessGetTimes() conversions
#include "[Includes]\_WinFlashEx.au3"
;	- KODA GUI INCLUDES	-
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <GuiStatusBar.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
; ===============================================================================================================================
; <ProcessFunctionsTest.au3>
;
;	Test of _ProcessFunctions, _ProcessListFunctions, _ProcessUndocumented, _ProcessUndocumentedList, _ProcessUDGetPEB
;	 AND _ProcessCreateRemoteThread modules
;
; Function:
;	TestProcessGUI()
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

Global $iPFGAccessTotal=0
Global $bLimitedAccessAvailable,$bDebugPrivilegeObtained=False
Global $PFGAccessValueOut,$PFGProcDropDown,$PFGAQueryInfo,$PFGAQueryLimitInfo,$hPFGFunctionsList
Global $sSelfReference="Self #"&@AutoItPID
Global $aAccessSecCtls,$aPFGProcList[1][2]=[ [$sSelfReference,$PROCESS_THIS_HANDLE] ],$PFGStatus
Global $iPTTGUIMsgID		; Process-to-Thread Message ID (used for Remote Thread info)
Global $hRMSGBOXWnd=""

; Set QueryLimitedAccess boolean for easy testing
If $PROCESS_QUERY_LIMITED_INFO=0x1000 Then
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
;	  for access - for example, _ProcessList* functions and _Process functions working on PID#'s)
;
;	NOTE: _ProcessGetGUIResources() ('GetGuiResources') on MSDN states PROCESS_QUERY_INFORMATION (0x400)
;		access is required, yet my tests indicate that it can work with PROCESS_QUERY_LIMITED_INFORMATION (0x1000)
;	ALSO: '_ProcessGetMemInfo()' and '_ProcessUDGetMemInfo()' appear to work from 32-to-64-bit Processes
; ----------------------------------------------------------------------------------------------------------------
#ce
Dim $sY="Yes",$sN="No",$sH="$hProcess",$sP="$vProcessID",$sF="$vFilter=0,$iMatchMode=0"
Dim $aProcessFuncs[55][6]=[ ["_ProcessGetPID",0,0x1000,"_ProcessUDGetPID",$sY,$sH], ["_ProcessGetExitCode",0,0x1000,0,$sY,$sH], _
	["_ProcessIsWow64",0,0x1000,0,$sY,$sH], ["_ProcessIs32Bit",0,0x1000,0,$sY,$sH], ["_ProcessIs64Bit",0,0x1000,0,$sY,$sH], _
	["_ProcessGetPriorityX",0,0x1000,0,$sY,$sH], ["_ProcessSetPriorityX",0x0200,0,0,$sY,$sH&",$iPriority=0x20"], _
	["_ProcessGetAffinityMask",0,0x1000,0,$sY,$sH], ["_ProcessSetAffinityMask",0x0200,0,0,$sY,$sH&",$iAffinityMask"], _
	["_ProcessGetTimes",0,0x1000,0,$sY,$sH&",$iTimeToGet=-1"], ["_ProcessGetSessionID",0,0,0,$sY,$sP], _
	["_ProcessGetOwner",0x20000,0,0,$sY,$sH&',$vADVAPI32DLL="advapi32.dll"'], _
	["_ProcessGetHandleCount",0,0x1000,"_ProcessUDGetHandleCount",$sY,$sH], _
	["_ProcessGetIOCounters",0,0x1000,0,$sY,$sH&",$iCounterToGet=-1"], _
	["_ProcessGetGUIResources",0,0x1000,0,$sY,$sH&',$iObjType'], _
	["_ProcessGetFilename",0,0x1000,0x10,$sY,$sH&",$vPSAPIDLL=-1"], ["_ProcessGetFilenameByPID",0,0,0,$sY,$sP], _
	["_ProcessGetPathname",0,0x1000,0x10,$sY,$sH&",$bResetDriveMap=False,$vPSAPIDLL=-1"], _
	["_ProcessWaitForInputIdle",0,0x1000,0,$sY,$sH&", $iTimeOut"], _
	["_ProcessGetMemInfo",0x10,0x1000,0,$sY,$sH&",$iInfoToGet=-1,$vPSAPIDLL=-1"], _
	["_ProcessEmptyWorkingSet",0x100,0x1000,0,$sY,$sH&",$vPSAPIDLL=-1"], _
	["_ProcessMemoryRead",0x10,0,0,$sN,$sH&",$pSource,$pDest,$iNumBytes"], ["_ProcessMemoryWrite",0x28,0,0,$sN,$sH&",$pDest,$pSource,$iNumBytes"], _
	["_ProcessMemoryAlloc",0x8,0,0,$sN,$sH&",$iNumBytes,$iAllocType,$iProtectType,$pAddress=0"], _
	["_ProcessMemoryFree",0x8,0,0,$sN,$sH&",ByRef $pAddress,$iNumBytes=0,$iFreeType=0x8000"], _
	["_ProcessMemoryVirtualQuery",0x400,0,0,$sY,$sH&",$pAddress,$iInfo=-1"], _
	["_ProcessMemoryVirtualProtect",0x8,0,0,$sN,$sH&",$pAddress,$iNumBytes,$iProtect"], _
	["_ProcessTerminate",0x1,0,0,$sY,$sH&",$iExitCode=0"], _
	["_ProcessUDGetPID",0,0x1000,0,$sY,$sH], ["_ProcessUDGetParentPID",0,0x1000,0,$sY,$sH], _
	["_ProcessUDGetSessionID",0,0x1000,0,$sY,$sH], ["_ProcessUDGetHandleCount",0,0x1000,0,$sY,$sH], _	; UDGetIOCounters??
	["_ProcessUDGetMemInfo",0x10,0x1000,0,$sY,$sH&",$iInfoToGet=-1"], ["_ProcessUDGetStrings",0x10,0x1000,0,$sN,$sH&",$bGetEnvStr=False"], _
	["_ProcessUDGetHeaps",0x10,0x1000,0,$sN,$sH],["_ProcessUDGetSubSystemInfo",0x10,0x1000,0,$sN,$sH], _
	["_ProcessUDSuspend",0x0800,0,0,$sY,$sH], ["_ProcessUDResume",0x0800,0,0,$sY,$sH], _   ; *both - Win2000 w/o SP *NOT* supported!
	["_ProcessListEx",0,0,0,$sY,$sF], ["_ProcessGetChildren",0,0,0,$sY,$sP], ["_ProcessGetParent",0,0,0,$sY,$sP], _
	["_ProcessListHeaps",0,0,0,$sN,$sP&",$bHeapWalk=False,$bCompleteList=False"], _
	["_ProcessListThreads",0,0,0,$sY,"$vFilterID=-1,$bThreadFilter=False"], _
	["_ProcessListModules",0,0,0,$sN,$sP&",$sTitleFilter=0,$iTitleMatchMode=0,$bList32bitMods=False"], _
	["_ProcessGetModuleBaseAddress",0,0,0,$sN,$sP&",$sModuleName,$bList32bitMods=False,$bGetWow64Instance=False"], _
	["_ProcessGetModuleByAddress",0,0,0,$sN,$sP&",$pAddress"], _
	["_ProcessListWTS",0,0,0,$sY,$sF&',$vWTSAPI32DLL="wtsapi32.dll"'], ["_ProcessWinList",0,0,0,$sY,$sP&",$sTitle=0,$bOnlyGetVisible=False,$bOnlyGetRoot=False,$bOnlyGetAltTab=False"], _
	["_ProcessUDListEverything",0,0,0,$sY,$sF&",$bEnumThreads=True"], ["_ProcessUDIsSuspended",0,0,0,$sY,$sP], _
	["_ProcessUDListModules",0x10,0x1000,0,$sN,$sH&",$sTitleFilter=0,$iTitleMatchMode=0,$iOrder=0"], _
	["_ProcessUDGetModuleBaseAddress",0x10,0x1000,0,$sN,$sH&",$sModuleName"], _
	["_ProcessUDGetModuleByAddress",0x10,0x1000,0,$sN,$sH&",$pAddress"], _
	["_ProcessCreateRemoteThread",0x043A,0,0,$sN,$sH&",$pCodePtr,$vParam=0,$bCreateSuspended=False,$bForceRtl=False,$bWow64Code=False)"], _
	["_ProcessUDGetPEB",0x10,0x1000,0,$sN,$sH] ]

If @OSVersion="WIN_2000" Then
	For $i=0 To UBound($aProcessFuncs)-1
		If IsNumber($aProcessFuncs[$i][3]) And $aProcessFuncs[$i][3]>0 Then $aProcessFuncs[$i][1]=BitOR($aProcessFuncs[$i][1],$aProcessFuncs[$i][3])
	Next
EndIf

#cs
; ----------------------------------------------------------------------------------------------------------------
; Removed (these two are a required part of most _Process* functions, and are of no use on their own):
;~ Dim $aProcessFuncs[39][5]=[ ["_ProcessOpen",0,0,0,$sY], ["_ProcessCloseHandle",0,0,0,$sY]

; The following were integrated into $aProcessFuncs (the middle 3 parameters mean nothing, last is same as above)
Dim $aProcessListFunc[8][5]=[ ["_ProcessListEx",0,0,0,$sY], ["_ProcessGetChildren",0,0,0,$sY], ["_ProcessGetParent",0,0,0,$sY], _
	["_ProcessListHeaps",0,0,0,$sN], ["_ProcessListThreads",0,0,0,$sY], ["_ProcessListModules",0,0,0,$sN], _
	["_ProcessGetModuleBaseAddress",0,0,0,$sN], ["_ProcessListWTS",0,0,0,$sY], ["_ProcessWinList",0,0,0,$sY] ]
; ----------------------------------------------------------------------------------------------------------------
#ce

; ====================================================================================================
; Func __UpdateProcessList()
;
; INTERNAL FUNCTION:
; Updates Processes List for DropDown box (includes PID# to distinguish them)
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateProcessList()
	Local $aProcList=ProcessList(),$iCurBound=UBound($aPFGProcList),$sList,$sPrevSel,$iListIndex
	; If process count is different or last process not the same for both, than there were changes
	If $iCurBound-1<>$aProcList[0][0]-2 Or $aProcList[$aProcList[0][0]][1]<>$aPFGProcList[$iCurBound-1][1] Then
		ConsoleWrite("Difference in processes detected"&@CRLF)
		$sPrevSel=GUICtrlRead($PFGProcDropDown)
		; -1 for Idle process, +1 for 'Self'
		Dim $aPFGProcList[$aProcList[0][0]-1+1][2]
		$aPFGProcList[0][0]=$sSelfReference
		$aPFGProcList[0][1]=$PROCESS_THIS_HANDLE
		$sList='|'&$sSelfReference
		$iListIndex=1
		For $i=1 To $aProcList[0][0]
			; These *should* be the first 2 elements, but we'll check each loop iteration to be on the safe side..
			If $aProcList[$i][1]=0 Then ContinueLoop	; Or $aProcList[$i][0]="System"	; System is actually 'open-able'
			$aPFGProcList[$iListIndex][0]=$aProcList[$i][0]&" #"&$aProcList[$i][1]
			$aPFGProcList[$iListIndex][1]=$aProcList[$i][1]
			$sList&='|'&$aPFGProcList[$iListIndex][0]
			$iListIndex+=1
		Next
		If $sPrevSel="" Or Not StringInStr($sList,$sPrevSel) Then $sPrevSel=$sSelfReference
		GUICtrlSetData($PFGProcDropDown,$sList,$sPrevSel)
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
;	Also, if something is unchecked, looks at Process functions list to see if any
;	will be unavailable due to the change, and then clears them from the list if so.
;
; Author: Ascend4nt
; ====================================================================================================

Func __UpdateAccessByControl($ctControl,$iBitValue,$ctLinkedControl=-1)
	Local $bChecked=False,$aSelectedItems,$sTemp
	If GUICtrlRead($ctControl)=$GUI_UNCHECKED Then
		$iPFGAccessTotal=BitXOR($iPFGAccessTotal,$iBitValue)
		If $ctLinkedControl<>-1 Then GUICtrlSetState($ctLinkedControl,$GUI_UNCHECKED)
	Else
		$bChecked=True
		$iPFGAccessTotal=BitOR($iPFGAccessTotal,$iBitValue)
		If $ctLinkedControl<>-1 Then GUICtrlSetState($ctLinkedControl,$GUI_CHECKED)
	EndIf
	GUICtrlSetData($PFGAccessValueOut,"0x"&Hex($iPFGAccessTotal))
	; If something was checked, no need to look at functions list - UNLESS 'QueryInfo' items unchecked
	If $bChecked And $ctControl<>$PFGAQueryInfo And $ctControl<>$PFGAQueryLimitInfo Then Return

	; Something unchecked: Time to deselect functions based on what values we unchecked
	$aSelectedItems=_GUICtrlListBox_GetSelItems ($hPFGFunctionsList)
	If Not IsArray($aSelectedItems) Or $aSelectedItems[0]=0 Then Return

	For $i=1 To $aSelectedItems[0]
		$sTemp=_GUICtrlListBox_GetText($hPFGFunctionsList,$aSelectedItems[$i])
		For $i2=0 To UBound($aProcessFuncs)-1
			; Matching text
			If $sTemp=$aProcessFuncs[$i2][0] Then
				; All needed bit flags not set?  Also, if Query-Limited access option available,
				;	and neither Query Limited or Query (full) set, clear the selection from the list
				If BitAND($iPFGAccessTotal,$aProcessFuncs[$i2][1])<>$aProcessFuncs[$i2][1] Or _
					($aProcessFuncs[$i2][2]=0x1000 And BitAND($iPFGAccessTotal,0x1400)=0) Then _
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
	Local $i,$i2,$iAccessReqd=0,$bLimitedPossible=False
	Local $aSelectedItems=_GUICtrlListBox_GetSelItemsText($hPFGFunctionsList)
	If Not IsArray($aSelectedItems) Or $aSelectedItems[0]=0 Then Return
	; NEED TO go through ALL selected (can select >1 with one click-drag), and ALSO
	;	BitXor/uncheck items no longer set!
	; Clicking on a Process function needs to set some states:

	; Set access flags
	For $i=1 To $aSelectedItems[0]
		For $i2=0 To UBound($aProcessFuncs)-1
			If $aProcessFuncs[$i2][0]=$aSelectedItems[$i] Then
				$iAccessReqd=BitOR($iAccessReqd,$aProcessFuncs[$i2][1])
				If $aProcessFuncs[$i2][2]=0x1000 Then $bLimitedPossible=True
			EndIf
		Next
	Next
	; If any of the functions require Query (full) rather than Query (limited) access, we must choose 'Query full'
	If BitAND($iAccessReqd,0x400) Then $bLimitedPossible=False
	If $bLimitedPossible Then $iAccessReqd=BitOR($iAccessReqd,$PROCESS_QUERY_LIMITED_INFO)

	; Go through and check/uncheck options required, based on the access flags
	For $i=0 To UBound($aAccessSecCtls)-1
		If BitAND($iAccessReqd,$aAccessSecCtls[$i][1]) Then
			GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_CHECKED)
		Else
			GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_UNCHECKED)
		EndIf
	Next
	; Check Query Limited or Query full?
	If $bLimitedAccessAvailable And BitAND($iAccessReqd,0x1000) Then
		GUICtrlSetState($PFGAQueryLimitInfo,$GUI_CHECKED)
		GUICtrlSetState($PFGAQueryInfo,$GUI_UNCHECKED)
	ElseIf (Not $bLimitedAccessAvailable And $bLimitedPossible) Or BitAND($iAccessReqd,0x400) Then
		GUICtrlSetState($PFGAQueryInfo,$GUI_CHECKED)
		GUICtrlSetState($PFGAQueryLimitInfo,$GUI_UNCHECKED)
	EndIf

	; Reflect the new access value
	GUICtrlSetData($PFGAccessValueOut,"0x"&Hex($iAccessReqd))
	$iPFGAccessTotal=$iAccessReqd
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
; Func __RunTestThreadFunctions($vParams="")
;
; INTERNAL FUNCTION:
; Attempts to run the ThreadFunctions Test GUI program
;
; Author: Ascend4nt
; ====================================================================================================

Func __RunTestThreadFunctions($vParams="")
	If WinActivate("Thread Functions Tester") Then Return True
	Local $sFileName=StringReplace(@ScriptName,"ProcessFunctions","ThreadFunctions",-1)
	If FileExists(@ScriptDir&'\'&$sFileName) Then
		If Not @Compiled Then
			ShellExecute(@AutoItExe,'"'&@ScriptDir&'\'&$sFileName&'" '&$vParams,@ScriptDir)
		Else
			Run('"'&@ScriptDir&'\'&$sFileName&'" '&$vParams,@ScriptDir)
		EndIf
		Return True
	EndIf
	Return False
EndFunc


; ====================================================================================================
; Func _RemoteThreadChecker()
;
; INTERNAL ADLIB FUNCTION:
;	If a Remote Thread was created, this will check to see if it is still active,
;	and will flash the window now and then.
;
; Author: Ascend4nt
; ====================================================================================================

Func _RemoteThreadChecker()
	If $RMSGBOX_CLOSING Then Return		; don't do anything if the message box is in the middle of closing
	If Not $RMSGBOX_THREAD_CREATED Then
		; Just in case
		If $hRMSGBOXWnd<>"" Then AdlibUnRegister("_RemoteThreadChecker")
		$hRMSGBOXWnd=""
		Return
	EndIf
	; Check to see if we must update things
	If Not _ThreadStillActive($RMSGBOX_THREAD_INFO[1]) Then
		__ThreadFunctionsMessageUpdate(0,$RMSGBOX_THREAD_INFO[4])	; indicate no Remote Threads active
		_GUICtrlStatusBar_SetText($PFGStatus,"Remote Thread: none running",0)
		_RemoteMsgBoxClose(100,True)
		$hRMSGBOXWnd=""
		AdlibUnRegister("_RemoteThreadChecker")
	Else
		If $hRMSGBOXWnd="" Then
			$hRMSGBOXWnd=WinGetHandle("[TITLE:"&$RMSGBOX_THREAD_INFO[6]&"; CLASS:#32770]")
			If Not @error Then _WinFlashEx($hRMSGBOXWnd,"",3)
		EndIf
	EndIf
EndFunc


; ====================================================================================================
; Func __TPFOnExit()
;
; INTERNAL FUNCTION:
;	Simple On-Exit function - cleans up.
;
; Author: Ascend4nt
; ====================================================================================================

Func __TPFOnExit()
	AdlibUnRegister("_RemoteThreadChecker")
	If $RMSGBOX_THREAD_CREATED And Not $RMSGBOX_CLOSING Then _RemoteMsgBoxClose(2500,True)
	__ThreadFunctionsMessageUpdate(0,0)
EndFunc


; ====================================================================================================
; Func __ThreadFunctionsMessageUpdate($iProcessID,$iThreadID)
;
; INTERNAL FUNCTION:
;	Update 'TestThreadFunctions' GUI (if it is running) with information regarding any Remote Threads
;	that were created. (sends 0 if a created Remote Thread has terminated)
;
; Author: Ascend4nt
; ====================================================================================================

Func __ThreadFunctionsMessageUpdate($iProcessID,$iThreadID)
	; Get the 'unique' AutoIT Window handle - the MAIN GUI handle is embedded in this string
	Local $hThreadGUI=WinGetHandle("[REGEXPTITLE:#_THREAD_FUNCTIONS_TEST_GUI_#]")
	If @error Then Return 0
;~	ConsoleWrite("Window title found:"&WinGetTitle($hTemp)&@CRLF)
	; Now pull out the Handle and cast to HWnd
	$hThreadGUI=HWnd(StringReplace(WinGetTitle($hThreadGUI),"#_THREAD_FUNCTIONS_TEST_GUI_#",""))
	; If it exists - send a message to the main window (will eventually send Thread handle and Thread ID
	If $hThreadGUI Then _WinAPI_PostMessage($hThreadGUI,$iPTTGUIMsgID,$iProcessID,$iThreadID)
	Return $hThreadGUI
EndFunc


; ====================================================================================================
; Func TestProcessGUI()
;
; The main GUI for testing/playing around with Process access modes and function examples.
;
; Author: Ascend4nt
; ====================================================================================================


Func TestProcessGUI()
	Local $i,$iTemp,$aTemp,$hTemp,$sSelItem
	Local $sTemp,$sFileToRun,$sLastRunDir=@ProgramFilesDir,$sLastRunExe=""

	$iPTTGUIMsgID=_WinAPI_RegisterWindowMessage("%#PRocess&THreads.MSgs#%")
	If $iPTTGUIMsgID=0 Then Return False
	AutoItWinSetTitle("#PROCESS_FUNCTIONS_TESTER#"&@AutoItPID)

	OnAutoItExitRegister("__TPFOnExit")	; cleanup duties

	#Region ### START Koda GUI section ###
	$PFGUI = GUICreate("Process Functions Tester", 599, 552)
	$PFGTitleLbl = GUICtrlCreateLabel("Process Functions Tester", 220, 8, 180, 20)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$PFGStatusLbl = GUICtrlCreateLabel("", 14, 26, 570, 20, $SS_CENTER)
	GUICtrlSetFont(-1, 10, 400, 2, "Arial")
	$PFGAccessLbl = GUICtrlCreateLabel("Access Modes for Opening a Process:", 176, 44, 268, 20)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$PFGAccessGroup = GUICtrlCreateGroup("Access Rights", 8, 62, 289, 321)
	$PFGACreateProc = GUICtrlCreateCheckbox("PROCESS_CREATE_PROCESS", 13, 78, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows creation of Processes (0x0080)")
	$PFGACreateThread = GUICtrlCreateCheckbox("PROCESS_CREATE_THREAD", 13, 102, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows creation of Threads for the Process (0x0002)")
	$PFGADupHandle = GUICtrlCreateCheckbox("PROCESS_DUP_HANDLE", 13, 125, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows duplication of Process handle (0x0040)")
	$PFGAQueryInfo = GUICtrlCreateCheckbox("PROCESS_QUERY_INFORMATION ", 13, 149, 217, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Required to get certain information for a Process (0x0400). ")
	$PFGAQueryLimitInfo = GUICtrlCreateCheckbox("PROCESS_QUERY_LIMITED_INFORMATION", 13, 172, 273, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Required to get certain *limited* information from a Process (0x1000). Useful for Protected Processes. (Vista+ req'd)")
	$PFGASetInfo = GUICtrlCreateCheckbox("PROCESS_SET_INFORMATION", 13, 196, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows setting certain information in a Process (0x0200)")
	$PFGASetQuota = GUICtrlCreateCheckbox("PROCESS_SET_QUOTA ", 13, 219, 161, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows setting memory limits for a Process (0x0100)")
	$PFGASuspendResume = GUICtrlCreateCheckbox("PROCESS_SUSPEND_RESUME", 13, 243, 201, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows Suspend/Resume Operations on Process (0x0800)")
	$PFGATerminate = GUICtrlCreateCheckbox("PROCESS_TERMINATE", 13, 267, 161, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows Termination of Process (0x0001)")
	$PFGAVMOps = GUICtrlCreateCheckbox("PROCESS_VM_OPERATION", 13, 290, 185, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows operations on Virtual memory inside the Process (0x0008)")
	$PFGAVMRead = GUICtrlCreateCheckbox("PROCESS_VM_READ", 13, 314, 145, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows reading of Process memory (0x0010)")
	$PFGAVMWrite = GUICtrlCreateCheckbox("PROCESS_VM_WRITE", 13, 337, 153, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows writing to Process memory (0x0020)")
	$PFGASync = GUICtrlCreateCheckbox("SYNCHRONIZE", 13, 361, 113, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows 'wait' operations for a Process ((0x00100000)")
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$PFGSecGroup = GUICtrlCreateGroup("Security Rights", 304, 62, 249, 129)
	$PFGSDelete = GUICtrlCreateCheckbox("DELETE", 312, 76, 73, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "N/A to Processes. Allows Deletion of Objects (0x00010000)")
	$PFGSRead = GUICtrlCreateCheckbox("READ_CONTROL", 312, 98, 121, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows you to read Security Descriptor Info for a Process (0x00020000)")
	$PFGSSync = GUICtrlCreateCheckbox("SYNCHRONIZE ", 312, 119, 105, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows the Process to be used for Synchronization functions (0x00100000)")
	$PFGSWriteDAC = GUICtrlCreateCheckbox("WRITE_DAC", 312, 141, 97, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows modification of the DACL in the Security Descriptor (0x00040000)")
	$PFGSWriteOwner = GUICtrlCreateCheckbox("WRITE_OWNER", 312, 163, 121, 25)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Allows you to change the owner in the Security Descriptor for the Process (0x00080000)")
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	$PFGAllAccessButn = GUICtrlCreateButton("Check ALL Access Rights", 8, 388, 155, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Select ALL Access and Security Rights")
	$PFGNoAccessButn = GUICtrlCreateButton("Clear Access Rights", 168, 388, 129, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Clear ALL Access and Security Rights")
	$PFGAccessValLbl = GUICtrlCreateLabel("Access Combined Value:", 304, 198, 144, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$PFGAccessValueOut = GUICtrlCreateInput("0x0", 456, 194, 97, 21, BitOR($ES_AUTOHSCROLL,$ES_READONLY))
	GUICtrlSetTip(-1, "Combined Numerical value of all Access Rights selected")
	$PFGProcSelLabel = GUICtrlCreateLabel("Select Process:", 8, 428, 93, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$PFGProcDropDown = GUICtrlCreateCombo("", 104, 426, 185, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL,$CBS_SORT,$WS_VSCROLL))
	$PFGFuncsLabel = GUICtrlCreateLabel("Functions Available:", 376, 220, 119, 17)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$PFGFunctionsList = GUICtrlCreateList("", 304, 240, 281, 240, BitOR($LBS_EXTENDEDSEL,$WS_VSCROLL,$WS_BORDER))
	$PFGRunProgramButn = GUICtrlCreateButton("Run New Program...", 8, 452, 161, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	$PFGRefreshProcs = GUICtrlCreateButton("Refresh", 200, 452, 89, 40, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Refresh Processes List")
	$PFGDebugPrivBtn = GUICtrlCreateButton("Get Debug Privilege", 40, 496, 129, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Gives the program Debug Privilege (allowing access to more Processes).")
	$PFGReRun = GUICtrlCreateButton("ReStart Script...", 184, 496, 113, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 8, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "ReStart Script under a Different Bit-mode or with Admin Privileges (if disabled).")
	$PFGRunFuncs = GUICtrlCreateButton("Run Function(s)", 318, 496, 129, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	GUICtrlSetTip(-1, "Run Selected Function Example(s)")
	$PFGExitBtn = GUICtrlCreateButton("Exit", 468, 496, 121, 33, $WS_GROUP)
	GUICtrlSetFont(-1, 10, 800, 0, "MS Sans Serif")
	$PFGThreads = GUICtrlCreateButton("T h r e a d s", 559, 64, 33, 128, BitOR($BS_MULTILINE,$WS_GROUP))
	GUICtrlSetFont(-1, 14, 800, 0, "Courier")
	GUICtrlSetTip(-1, "Start or Switch to Thread Functions Tester module")
	$PFGStatus = _GUICtrlStatusBar_Create($PFGUI, -1, "", $SBARS_TOOLTIPS)
	Dim $PFGStatus_PartsWidth[1] = [-1]
	_GUICtrlStatusBar_SetParts($PFGStatus, $PFGStatus_PartsWidth)
	_GUICtrlStatusBar_SetText($PFGStatus, "Remote Thread Info:", 0)
	_GUICtrlStatusBar_SetMinHeight($PFGStatus, 10)
	;~ GUISetState(@SW_SHOW)
	#EndRegion ### END Koda GUI section ###
	_GUICtrlStatusBar_SetTipText($PFGStatus,0,"Info on any spawned Remote (external process) threads")

	Dim $aAccessSecCtls[18][2]=[ [$PFGACreateProc,0x0080],[$PFGACreateThread,0x0002],[$PFGADupHandle,0x0040], _
	[$PFGAQueryInfo,0x0400],[$PFGAQueryLimitInfo,0x1000],[$PFGASetInfo,0x0200],[$PFGASetQuota,0x0100], _
	[$PFGASuspendResume,0x0800],[$PFGATerminate,0x0001],[$PFGAVMOps,0x0008],[$PFGAVMRead,0x0010], _
	[$PFGAVMWrite,0x0020],[$PFGASync,0x00100000],[$PFGSDelete,0x00010000],[$PFGSRead,0x00020000], _
	[$PFGSSync,0x00100000],[$PFGSWriteDAC,0x00040000],[$PFGSWriteOwner,0x00080000] ]

	$hPFGFunctionsList=GUICtrlGetHandle($PFGFunctionsList)

	$sTemp=""
	For $i=0 To UBound($aProcessFuncs)-1
		$sTemp&="|"&$aProcessFuncs[$i][0]
	Next
	GUICtrlSetData($PFGFunctionsList,$sTemp)

	; 'Query Limited Info' only available on Vista+ O/S's
	If Not $bLimitedAccessAvailable Then GUICtrlSetState($PFGAQueryLimitInfo,$GUI_DISABLE)

	; We don't want a duplicate sync option
	GUICtrlSetState($PFGSSync,$GUI_DISABLE)

	; Set Status info on top with built string
	GUICtrlSetData($PFGStatusLbl,__BuildStatusString())

	; Update $PFGProcDropDown and $aPFGProcList
	__UpdateProcessList()

	GUISetState(@SW_SHOW)

	While 1
		$nMsg = GUIGetMsg()
		Switch $nMsg
			Case $PFGACreateProc
				__UpdateAccessByControl($PFGACreateProc,0x0080)
			Case $PFGACreateThread
				__UpdateAccessByControl($PFGACreateThread,0x0002)
			Case $PFGADupHandle
				__UpdateAccessByControl($PFGADupHandle,0x0040)
			Case $PFGAQueryInfo
				; Can't have both 'Query Limited Info' and 'Query Info' combined
				If GUICtrlRead($PFGAQueryInfo)=$GUI_CHECKED And GUICtrlRead($PFGAQueryLimitInfo)=$GUI_CHECKED Then
					$iPFGAccessTotal=BitXOR($iPFGAccessTotal,0x1000)
					GUICtrlSetState($PFGAQueryLimitInfo,$GUI_UNCHECKED)
				EndIf
				__UpdateAccessByControl($PFGAQueryInfo,0x0400)
			Case $PFGAQueryLimitInfo
				; Can't have both 'Query Limited Info' and 'Query Info' combined
				If GUICtrlRead($PFGAQueryLimitInfo)=$GUI_CHECKED And GUICtrlRead($PFGAQueryInfo)=$GUI_CHECKED Then
					$iPFGAccessTotal=BitXOR($iPFGAccessTotal,0x0400)
					GUICtrlSetState($PFGAQueryInfo,$GUI_UNCHECKED)
				EndIf
				__UpdateAccessByControl($PFGAQueryLimitInfo,0x1000)
			Case $PFGASetInfo
				__UpdateAccessByControl($PFGASetInfo,0x0200)
			Case $PFGASetQuota
				__UpdateAccessByControl($PFGASetQuota,0x0100)
			Case $PFGASuspendResume
				__UpdateAccessByControl($PFGASuspendResume,0x0800)
			Case $PFGATerminate
				__UpdateAccessByControl($PFGATerminate,0x0001)
			Case $PFGAVMOps
				__UpdateAccessByControl($PFGAVMOps,0x0008)
			Case $PFGAVMRead
				__UpdateAccessByControl($PFGAVMRead,0x0010)
			Case $PFGAVMWrite
				__UpdateAccessByControl($PFGAVMWrite,0x0020)
			Case $PFGASync
				__UpdateAccessByControl($PFGASync,0x00100000,$PFGSSync)
			Case $PFGSDelete
				__UpdateAccessByControl($PFGSDelete,0x00010000)
			Case $PFGSRead
				__UpdateAccessByControl($PFGSRead,0x00020000)
			Case $PFGSSync
				__UpdateAccessByControl($PFGSSync,0x00100000)
			Case $PFGSWriteDAC
				__UpdateAccessByControl($PFGSWriteDAC,0x00040000)
			Case $PFGSWriteOwner
				__UpdateAccessByControl($PFGSWriteOwner,0x00080000)
			Case $PFGAllAccessButn
				For $i=0 To UBound($aAccessSecCtls)-1
					GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_CHECKED)
				Next
				; Can't have *limited* access and ALL access, so clear this one
				GUICtrlSetState($PFGAQueryLimitInfo,$GUI_UNCHECKED)
				$iPFGAccessTotal=0x001F0FFB
				GUICtrlSetData($PFGAccessValueOut,"0x"&Hex($iPFGAccessTotal))
			Case $PFGNoAccessButn
				For $i=0 To UBound($aAccessSecCtls)-1
					GUICtrlSetState($aAccessSecCtls[$i][0],$GUI_UNCHECKED)
				Next
				$aTemp=_GUICtrlListBox_GetSelItems($hPFGFunctionsList)	; get listbox items selected
				If IsArray($aTemp) And $aTemp[0] Then
					For $i=1 To $aTemp[0]
						_GUICtrlListBox_SetSel($hPFGFunctionsList,$aTemp[$i],-1)	; clear selection
					Next
				EndIf
				$iPFGAccessTotal=0
				GUICtrlSetData($PFGAccessValueOut,"0x0")
			Case $PFGProcDropDown
;~ 				ConsoleWrite("DropDown clicked, selection="&GUICtrlRead($PFGProcDropDown)&@CRLF)
				$iTemp=Number(StringRegExpReplace(GUICtrlRead($PFGProcDropDown),".*?#(\d+)$","$1"))
				If Not ProcessExists($iTemp) Then __UpdateProcessList()
			Case $PFGFunctionsList
				__UpdateAccessBySelected()
#cs
				$sSelItem=GUICtrlRead($PFGFunctionsList)
				ConsoleWrite("List Item selected:"&$sSelItem&@CRLF)
				$aTemp=_GUICtrlListBox_GetSelItems($hPFGFunctionsList)	; _GUICtrlListBox_GetSelItemsText()
				If IsArray($aTemp) And $aTemp[0] Then
					For $i=1 To $aTemp[0]
						ConsoleWrite("Selected item #"&$i&": "&$aTemp[$i]&",Text: "&_GUICtrlListBox_GetText($hPFGFunctionsList,$aTemp[$i])&@CRLF)
					Next
				EndIf
#ce
			Case $PFGRunProgramButn
				$sFileToRun=FileOpenDialog("Select program to run",$sLastRunDir,"Executables (*.exe;*.com)",3,$sLastRunExe,$PFGUI)
				If @error Or $sFileToRun="" Then ContinueLoop
				$sLastRunExe=StringMid($sFileToRun,StringInStr($sFileToRun,'\',1,-1)+1)
				$sLastRunDir=StringLeft($sFileToRun,StringInStr($sFileToRun,'\',1,-1)-1)
;~ 				ConsoleWrite("Folder path:"& $sLastRunDir&", File to Run:"&$sLastRunExe&@CRLF)
				Run($sLastRunExe,$sLastRunDir)
				__UpdateProcessList()
				; _RefreshProcessList
			Case $PFGRefreshProcs
				__UpdateProcessList()
			Case $PFGDebugPrivBtn
				If $bDebugPrivilegeObtained Then ContinueLoop
				If _GetDebugPrivilegeRtl() Then
					$bDebugPrivilegeObtained=True
					GUICtrlSetState($PFGDebugPrivBtn,$GUI_DISABLE)
					GUICtrlSetData($PFGStatusLbl,__BuildStatusString())
				Else
					MsgBox(48,"Debug Privilege Not Obtained","There was an error getting Debug Privileges."&@CRLF& _
						"Note Admin mode is required, which has a current status of IsAdmin()="&IsAdmin()&@CRLF& _
						"If not Admin, you can click the 'ReStart Script...' button to attempt to run as Administrator",0,$PFGUI)
				EndIf
			Case $PFGReRun
				__ReRunGUI($PFGUI)
				GUISwitch($PFGUI)
			Case $PFGRunFuncs
				If _GUICtrlListBox_GetSelCount($hPFGFunctionsList)>=1 Then
					GUISetState(@SW_HIDE,$PFGUI)
					__ExecuteExamples(GUICtrlRead($PFGProcDropDown))
					GUISwitch($PFGUI)
					GUISetState(@SW_SHOW,$PFGUI)
					__UpdateProcessList()
				EndIf
			Case $PFGThreads
				__RunTestThreadFunctions()
			Case $GUI_EVENT_CLOSE,$PFGExitBtn
;~ 				_RemoteMsgBoxClose(500,True)
				Exit
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
; Func __ExecuteExamples($sDropDownSel)
;
; INTERNAL FUNCTION:
;	Here's where we run the Process function examples based on what was selected.
;	  Note that _ProcessOpen/_ProcessCloseHandle are done automatically for those functions that
;	  require it!
;
; Author: Ascend4nt
; ====================================================================================================

Func __ExecuteExamples($sDropDownSel)
	Local $hOutputGUI,$iErr,$iTemp,$aTemp='',$pTemp,$bTemp,$sTemp,$pDest,$aEnv,$hProcessTemp,$stTemp
	Local $iSelItem=0,$sSelItem,$iProcessID=0,$sProcName,$hProcess=0
	Local $sSeparator="------------------------------------------------------------------------"
	Local $sSmallSeparator=".............................................."
	Local $aSelectedItems=_GUICtrlListBox_GetSelItemsText($hPFGFunctionsList)
	If Not IsArray($aSelectedItems) Or $aSelectedItems[0]=0 Then Return

	$iProcessID=Number(StringRegExpReplace($sDropDownSel,".*?#(\d+)$","$1"))
	If Not ProcessExists($iProcessID) Then Return MsgBox(48,"Process does not exist","Process selected from DropDown ("&$sDropDownSel&") does not exist")

	#Region ### START Koda GUI section ###
	$hOutputGUI = GUICreate("Process Functions Test", 578, 403, $aExecuteOuputRect[0], $aExecuteOuputRect[1], BitOR($WS_MINIMIZEBOX,$WS_SIZEBOX,$WS_THICKFRAME,$WS_SYSMENU,$WS_CAPTION,$WS_POPUP,$WS_POPUPWINDOW,$WS_GROUP,$WS_BORDER,$WS_CLIPSIBLINGS))
	GUICtrlCreateLabel("Process Functions Test Output", 6, 8, 568, 20, $SS_CENTER)
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

	_OutputWrite("Process '"&$sProcName&"' selected, Access: 0x"&Hex($iPFGAccessTotal)&", DebugPrivileges="&$bDebugPrivilegeObtained&@CRLF& _
		"$sProcess="&$sProcName&@CRLF&"$iProcessID="&$iProcessID&"	; $iProcessID=ProcessExists($sProcess)"&@CRLF)


	_OutputWrite(";  <- Source Process <- ",0)
	If @AutoItX64 Then
		_OutputWrite("64",0)
	Else
		_OutputWrite("32",0)
	EndIf
	_OutputWrite("-bit mode  &  -> Target Process -> ",0)

	$hProcessTemp=_ProcessOpen($iProcessID,$PROCESS_QUERY_LIMITED_INFO)
	If _ProcessIs32Bit($hProcessTemp) Then
		_OutputWrite("32",0)
	Else
		_OutputWrite("64",0)
	EndIf
	_ProcessCloseHandle($hProcessTemp)

	_OutputWrite("-bit mode."&@CRLF&$sSeparator&@CRLF&"_Process* Functions selected for testing:")
	For $i=1 To $aSelectedItems[0]
		_OutputWrite("#"&$i&":"&$aSelectedItems[$i])
	Next
	_OutputWrite($sSeparator)
	If $iPFGAccessTotal Then
		_OutputWrite("_ProcessOpen($iProcessID,$iAccess,$bInheritHandle=False)"&@CRLF)
		If BitAND($iPFGAccessTotal,0x1000) Then _OutputWrite(';  Note: For O/S-independent work, use $PROCESS_QUERY_LIMITED_INFO in place of 0x1000')
		_OutputWrite("$iAccess=0x"&Hex($iPFGAccessTotal))
		If $iProcessID=$PROCESS_THIS_HANDLE Then $iProcessID=-1
		_OutputWrite("$hProcess=_ProcessOpen($iProcessID,0x"&Hex($iPFGAccessTotal)&")	; Get a Process Handle")
		$hProcess=_ProcessOpen($iProcessID,$iPFGAccessTotal)
		_OutputWrite("; _ProcessOpen() Return: $hProcess="&$hProcess&"     ; [0=failure], @error="&@error&", @extended="&@extended)
		If Not IsPtr($hProcess) Then
			MsgBox(48,"Unable to open process!", _
			"Process was unable to be opened.  This can be due to access restrictions or bit-mode incompatibilities."&@CRLF& _
			"Press OK to return to the Process Test GUI."&@CRLF&"You may try obtaining Debug Privileges or Restarting the script.",0,$hOutputGUI)
			$aExecuteOuputRect=WinGetPos($hOutputGUI)
			GUIDelete($hOutputGUI)
			Return False
		EndIf
		If $iProcessID=-1 Then $iProcessID=@AutoItPID
	EndIf

	For $i=1 To $aSelectedItems[0]
		_OutputWrite($sSeparator)
		$sSelItem=$aSelectedItems[$i]
		For $i2=0 To UBound($aProcessFuncs)-1
			If $sSelItem=$aProcessFuncs[$i2][0] Then
				$iSelItem=$i2
				ExitLoop
			EndIf
		Next
		If @OSVersion="WIN_2000" And IsString($aProcessFuncs[$iSelItem][3]) Then
			_OutputWrite("The function '"&$sSelItem&"()' is unavailable on Win2000. ",False)
			If $aProcessFuncs[$iSelItem][3]<>"" Then
				$sSelItem=$aProcessFuncs[$iSelItem][3]
				_OutputWrite("However, an alternate function is available and will run:"&$sSelItem)
			Else
				_OutputWrite("Likely an error code will return from the API call.")
			EndIf
		EndIf
		_OutputWrite($sSelItem&"("&$aProcessFuncs[$iSelItem][5]&")   ; "&$aProcessFuncs[$iSelItem][4]&" for 32-to-64-bit Process Availability"&@CRLF)
		Switch $sSelItem
			Case "_ProcessGetPID"
				; Func _ProcessGetPID($hProcess)
				_OutputWrite("$iProcessID=_ProcessGetPID($hProcess)"&@CRLF&"$iProcessID="&_ProcessGetPID($hProcess)&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("; Warning: for XP-based systems, SP1 is required!  Alternate function: _ProcessUDGetPID)")
			Case "_ProcessGetExitCode"
				; Func _ProcessGetExitCode($hProcess)
				MsgBox(64,"GetExitCode test requested", _
					"For this function to give a 'real' exit code, the process '"&$sProcName&"' would need to be closed."&@CRLF& _
					"Do NOT close important processes!  The function can still be called either way."&@CRLF& _
					"STILL_ACTIVE (259) will be returned for processes that haven't exited"&@CRLF&@CRLF&"Click OK to run _ProcessGetExitCode()",0,$hOutputGUI)
				_OutputWrite("$iExitCode=_ProcessGetExitCode($hProcess)"&@CRLF&"$iExitCode="&_ProcessGetExitCode($hProcess)&@CRLF&"; [-1 = possible error, 259 = possibly still running] @error="&@error&" @extended="&@extended)
			Case "_ProcessIsWow64"
				; Func _ProcessIsWow64($hProcess)
				_OutputWrite("$bIsWow64=_ProcessIsWow64($hProcess)"&@CRLF&"$bIsWow64="&_ProcessIsWow64($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessIs32Bit"
				; Func _ProcessIs32Bit($hProcess)
				_OutputWrite("$bIs32Bit=_ProcessIs32Bit($hProcess)"&@CRLF&"$bIs32Bit="&_ProcessIs32Bit($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessIs64Bit"
				; Func _ProcessIs64Bit($hProcess)
				_OutputWrite("$bIs64Bit=_ProcessIs64Bit($hProcess)"&@CRLF&"$bIs64Bit="&_ProcessIs64Bit($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetPriorityX"
				; Func _ProcessGetPriorityX($hProcess)
				_OutputWrite("$iPriority=_ProcessGetPriorityX($hProcess)"&@CRLF&"$iPriority="&_ProcessGetPriorityX($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessSetPriorityX"
				; Func _ProcessSetPriorityX($hProcess,$iPriority=0x20)
				; To get the current priority, we need either QueryLimited or Query (full) access
				If BitAND($iPFGAccessTotal,0x1400)=0 Then
					; Open a temporary handle to the process with the other access added
					$hProcessTemp=_ProcessOpen($iProcessID,BitOR($iPFGAccessTotal,$PROCESS_QUERY_LIMITED_INFO))
					If Not @error Then
						$iTemp=_ProcessGetPriorityX($hProcessTemp)
						_ProcessCloseHandle($hProcessTemp)
					Else
						$iTemp=-1
					EndIf
				Else
					$iTemp=_ProcessGetPriorityX($hProcess)
				EndIf
				If $iTemp<>-1 Then
					_OutputWrite("$bSetPriority=_ProcessSetPriorityX($hProcess,0x8000)"&@CRLF&"$bSetPriority="&_ProcessSetPriorityX($hProcess,0x8000)&"    ; @error="&@error&" @extended="&@extended)
					_OutputWrite("Resetting Priority to original value of 0x"&Hex($iTemp)&", Result:"&_ProcessSetPriorityX($hProcess,$iTemp))
				Else
					_OutputWrite("_ProcessSetPriorityX() not called, due to inability to retrieve current Priority with _ProcessGetPriorityX()")
				EndIf
			Case "_ProcessGetAffinityMask"
				; Func _ProcessGetAffinityMask($hProcess)
				_OutputWrite("$iAffinityMask=_ProcessGetAffinityMask($hProcess)"&@CRLF&"$iAffinityMask=0x"&Hex(_ProcessGetAffinityMask($hProcess))&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessSetAffinityMask"
				; Func _ProcessSetAffinityMask($hProcess,$iAffinityMask)
				; To get the current affinity, we need either QueryLimited or Query (full) access
				If BitAND($iPFGAccessTotal,0x1400)=0 Then
					; Open a temporary handle to the process with the other access added
					$hProcessTemp=_ProcessOpen($iProcessID,BitOR($iPFGAccessTotal,$PROCESS_QUERY_LIMITED_INFO))
					If Not @error Then
						$iTemp=_ProcessGetAffinityMask($hProcessTemp)
						_ProcessCloseHandle($hProcessTemp)
					Else
						$iTemp=0
					EndIf
				Else
					$iTemp=_ProcessGetAffinityMask($hProcess)
				EndIf
				If $iTemp Then
					_OutputWrite("$bSetAffinity=_ProcessSetAffinityMask($hProcess,0x1)"&@CRLF&"$bSetPriority="&_ProcessSetAffinityMask($hProcess,0x1)&"    ; @error="&@error&" @extended="&@extended)
					_OutputWrite("Resetting Affinity to original value of 0x"&Hex($iTemp)&", Result:"&_ProcessSetAffinityMask($hProcess,$iTemp))
				Else
					_OutputWrite("_ProcessSetAffinityMask() not called, due to inability to retrieve current Affinity with _ProcessGetAffinityMask()")
				EndIf
			Case "_ProcessGetTimes"
				; Func _ProcessGetTimes($hProcess,$iTimeToGet=-1)
				_OutputWrite("$aProcessTimes=_ProcessGetTimes($hProcess)",False)
				$aTemp=_ProcessGetTimes($hProcess)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aProcessTimes[0]="&_WinTime_UTCFileTimeFormat($aTemp[0],4+8,1,True)&"    ; Process Creation Time")
					_OutputWrite("$aProcessTimes[1]="&_WinTime_UTCFileTimeFormat($aTemp[1],4+8,1,True)&"    ; Process Exit Time (if applicable)")
					_OutputWrite("$aProcessTimes[2]="&$aTemp[2]/100&" ms    ; Process Kernel Time")
					_OutputWrite("$aProcessTimes[3]="&$aTemp[3]/1000&" ms    ; Process User Time")
				Endif
			Case "_ProcessGetSessionID"
				; Func _ProcessGetSessionID($vProcessID)
				_OutputWrite("$iSessionID=_ProcessGetSessionID($iProcessID)"&@CRLF&"$iSessionID="&_ProcessGetSessionID($iProcessID)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetOwner"
				; Func _ProcessGetOwner($hProcess,$vADVAPI32DLL="advapi32.dll")
				_OutputWrite("$sOwner=_ProcessGetOwner($hProcess)"&@CRLF&"$sOwner="&_ProcessGetOwner($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetHandleCount"
				; Func _ProcessGetHandleCount($hProcess)
				_OutputWrite("$iNumHandles=_ProcessGetHandleCount($hProcess)"&@CRLF&"$iNumHandles="&_ProcessGetHandleCount($hProcess)&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("; Warning: for XP-based systems, SP1 is required!  Alternate function: _ProcessUDGetHandleCount)")
			Case "_ProcessGetIOCounters"
				; Func _ProcessGetIOCounters($hProcess,$iCounterToGet=-1)
				_OutputWrite("$aIOCounters=_ProcessGetIOCounters($hProcess)",False)
				$aTemp=_ProcessGetIOCounters($hProcess)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aIOCounters[0]="&$aTemp[0]&"    ; ReadOperationCount")
					_OutputWrite("$aIOCounters[1]="&$aTemp[1]&"    ; WriteOperationCount")
					_OutputWrite("$aIOCounters[2]="&$aTemp[2]&"    ; OtherOperationCount")
					_OutputWrite("$aIOCounters[3]="&$aTemp[3]&"    ; ReadTransferCount")
					_OutputWrite("$aIOCounters[4]="&$aTemp[4]&"    ; WriteTransferCount")
					_OutputWrite("$aIOCounters[5]="&$aTemp[5]&"    ; OtherTransferCount")
				Endif
			Case "_ProcessGetGUIResources"
				; Func _ProcessGetGUIResources($hProcess,$iObjType)
				_OutputWrite("$iGDIObjCount=_ProcessGetGUIResources($hProcess,0)"&@CRLF&"$iGDIObjCount="&_ProcessGetGUIResources($hProcess,0)&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("$iUSERObjCount=_ProcessGetGUIResources($hProcess,1)"&@CRLF&"$iUSERObjCount="&_ProcessGetGUIResources($hProcess,1)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetFilename"
				; Func _ProcessGetFilename($hProcess,$vPSAPIDLL=-1)
				_OutputWrite("$sFilename=_ProcessGetFilename($hProcess)"&@CRLF&"$sFilename="&_ProcessGetFilename($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetFilenameByPID"
				; Func _ProcessGetFilenameByPID($vProcessID)
				_OutputWrite("$sFilename=_ProcessGetFilenameByPID($iProcessID)"&@CRLF&"$sFilename="&_ProcessGetFilenameByPID($iProcessID)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetPathname"
				; Func _ProcessGetPathname($hProcess,$bResetDriveMap=False,$vPSAPIDLL=-1)
				_OutputWrite("$sPathname=_ProcessGetPathname($hProcess)"&@CRLF&"$sPathname="&_ProcessGetPathname($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessWaitForInputIdle"
				; Func _ProcessWaitForInputIdle($hProcess,$iTimeOut)
				_OutputWrite("$bWaitSuccess=_ProcessWaitForInputIdle($hProcess,500)")
				$bTemp=_ProcessWaitForInputIdle($hProcess,500)
				$iErr=@error
				$iTemp=@extended
				_OutputWrite("$bWaitSuccess="&$bTemp&"    ; @error="&@error&" @extended="&@extended)
				If $iErr=3 Then
					If $iTemp=258 Then
						_OutputWrite("; WAIT_TIMEOUT was returned (@error=3, @extended=258). Process may not have started or does not have a GUI. [See _ProcessUDGetSubSystemInfo()]")
					Else
						_OutputWrite("; WAIT_FAILED returned (@error=3, @extended=-1). GetLastError:"&_WinAPI_GetLastErrorMessage(),False)
					EndIf
				EndIf
			Case "_ProcessGetMemInfo"
				; _Func _ProcessGetMemInfo($hProcess,$iInfoToGet=-1,$vPSAPIDLL=-1)
				_OutputWrite("$aMemInfo=_ProcessGetMemInfo($hProcess)",False)
				$aTemp=_ProcessGetMemInfo($hProcess)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aMemInfo[0]="&$aTemp[0]&"    ; Page Fault Count")
					_OutputWrite("$aMemInfo[1]="&$aTemp[1]&"    ; Peak Working Set Size")
					_OutputWrite("$aMemInfo[2]="&$aTemp[2]&"    ; Working Set Size")
					_OutputWrite("$aMemInfo[3]="&$aTemp[3]&"    ; Quota Peak Paged Pool Usage")
					_OutputWrite("$aMemInfo[4]="&$aTemp[4]&"    ; Quota Paged Pool Usage")
					_OutputWrite("$aMemInfo[5]="&$aTemp[5]&"    ; Quota Peak NON-Paged Pool Usage")
					_OutputWrite("$aMemInfo[6]="&$aTemp[6]&"    ; Quota NON-Paged Pool Usage")
					_OutputWrite("$aMemInfo[7]="&$aTemp[7]&"    ; Page File Usage")
					_OutputWrite("$aMemInfo[8]="&$aTemp[8]&"    ; Peak Page File Usage")
				Endif
			Case "_ProcessEmptyWorkingSet"
				; Func _ProcessEmptyWorkingSet($hProcess,$vPSAPIDLL=-1)
				_OutputWrite("$bReducedMem=_ProcessEmptyWorkingSet($hProcess)"&@CRLF&"$bReducedMem="&_ProcessEmptyWorkingSet($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessMemoryRead"
				; Func _ProcessMemoryRead($hProcess,$pSource,$pDest,$iNumBytes)
				; Grab the module base address of main executable if possible:
				$pTemp=_ProcessGetModuleBaseAddress($iProcessID,$sProcName)
				_OutputWrite("$pSource="&$pTemp&@CRLF&'$stTemp=DllStructCreate("char[2]")')
				$stTemp=DllStructCreate("char[2]")
				_OutputWrite("$pDest=DLLStructGetPtr($stTemp,1)")
				$pDest=DLLStructGetPtr($stTemp,1)
				_OutputWrite("$iNumBytes=DLLStructGetSize($stTemp)")
				$iTemp=DLLStructGetSize($stTemp)
				_OutputWrite("$bMemoryRead=_ProcessMemoryRead($hProcess,$pSource,$pDest,$iNumBytes)"&@CRLF&"$bMemoryRead="&_ProcessMemoryRead($hProcess,$pTemp,$pDest,$iTemp)&"    ; @error="&@error&" @extended="&@extended)
				_OutputWrite("$sExeSig=DllStructGetData($stTemp,1)"&@CRLF&"$sExeSig='"&DllStructGetData($stTemp,1)&"'")
			Case "_ProcessMemoryWrite","_ProcessMemoryAlloc","_ProcessMemoryFree","_ProcessMemoryVirtualProtect"
				; Func _ProcessMemoryAlloc($hProcess,$iNumBytes,$iAllocType,$iProtectType,$pAddress=0)
				; Func _ProcessMemoryFree($hProcess,ByRef $pAddress,$iNumBytes=0,$iFreeType=0x8000)
				; Func _ProcessMemoryWrite($hProcess,$pDest,$pSource,$iNumBytes)
				; Func _ProcessMemoryVirtualProtect($hProcess,$pAddress,$iNumBytes,$iProtect)
				_OutputWrite("$pRemoteAddress=_ProcessMemoryAlloc($hProcess,4096,$MEM_COMMIT,$PAGE_READWRITE)")
				$pTemp=_ProcessMemoryAlloc($hProcess,4096,0x1000,0x4)
				_OutputWrite("$pRemoteAddress="&$pTemp&"    ; @error="&@error&" @extended="&@extended)
				If $sSelItem="_ProcessMemoryWrite" Then
					; Func _ProcessMemoryWrite($hProcess,$pDest,$pSource,$iNumBytes)
					_OutputWrite('$stString=DllStructCreate("wchar[4]")')
					$stTemp=DllStructCreate("wchar[4]")
					DllStructSetData($stTemp,1,"TEST")
					_OutputWrite('DllStructSetData($stString,1,"TEST")')
					_OutputWrite("$bMemoryWritten=_ProcessMemoryWrite($hProcess,$pRemoteAddress,DllStructGetPtr($stString),DllStructGetSize($stString))")
					$bTemp=_ProcessMemoryWrite($hProcess,$pTemp,DllStructGetPtr($stTemp),DllStructGetSize($stTemp))
					_OutputWrite("$bMemoryWritten="&$bTemp&"    ; @error="&@error&" @extended="&@extended)
				ElseIf $sSelItem="_ProcessMemoryVirtualProtect" Then
					; Func _ProcessMemoryVirtualProtect($hProcess,$pAddress,$iNumBytes,$iProtect)
					_OutputWrite("$bProtectAltered=_ProcessMemoryVirtualProtect($hProcess,$pRemoteAddress,4096,$PAGE_EXECUTE_READWRITE)")
					$bTemp=_ProcessMemoryVirtualProtect($hProcess,$pTemp,4096,0x40)
					_OutputWrite("$bProtectAltered="&$bTemp&"    ; @error="&@error&" @extended="&@extended)
				EndIf
				; Must free the memory
				$bTemp=_ProcessMemoryFree($hProcess,$pTemp)
				_OutputWrite("$bFree=_ProcessMemoryFree($hProcess,$pRemoteAddress)"&@CRLF&"$bFree="&$bTemp&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessMemoryVirtualQuery"
				; Func _ProcessMemoryVirtualQuery($hProcess,$pAddress,$iInfo=-1)
				; Grab the module base address of main executable if possible:
				$pTemp=_ProcessGetModuleBaseAddress($iProcessID,$sProcName)
				; Usually an error for 32->64bit Process query. If so, we'll use a typical 'desired' base address (0x01000000)
				If @error Then $pTemp=Ptr(0x01000000)	;  NOT recommended. This is here just for an example address to Query
				_OutputWrite("$pAddress="&$pTemp)
				_OutputWrite("$aMemInfo=_ProcessMemoryVirtualQuery($hProcess,$pAddress)",False)
				$aTemp=_ProcessMemoryVirtualQuery($hProcess,$pTemp)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aMemInfo[0]="&$aTemp[0]&"    ; Base Address")
					_OutputWrite("$aMemInfo[1]="&$aTemp[1]&"    ; Allocation Base")
					_OutputWrite("$aMemInfo[2]=0x"&Hex($aTemp[2])&"    ; Allocation Protection")
					_OutputWrite("$aMemInfo[3]="&$aTemp[3]&"    ; Region Size [in bytes]")
					_OutputWrite("$aMemInfo[4]=0x"&Hex($aTemp[4])&"    ; State [Allocation Type]")
					_OutputWrite("$aMemInfo[5]=0x"&Hex($aTemp[5])&"    ; Protection Type")
					_OutputWrite("$aMemInfo[6]=0x"&Hex($aTemp[6])&"    ; Type (either MEM_IMAGE [0x1000000], MEM_MAPPED [0x40000], or MEM_PRIVATE [0x20000])")
				Endif
			Case "_ProcessTerminate"
				; Func _ProcessTerminate($hProcess,$iExitCode=0)
				If $iProcessID<>@AutoItPID Then
					If MsgBox(35,"Terminate Process Selected","For process '"&$sProcName&"' (PID #"&$iProcessID&"), a Termination request was made."&@CRLF& _
						"*TERMINATING CRUCIAL PROCESSES MAY CAUSE PROBLEMS!!*"&@CRLF&@CRLF&"Are you certain you wish to Terminate this process?")=6 Then
						_OutputWrite("$bTerminated=_ProcessTerminate($hProcess,-11)"&@CRLF&"$bTerminated="&_ProcessTerminate($hProcess,-11)&"    ; @error="&@error&" @extended="&@extended)
					Else
						_OutputWrite("; _ProcessTerminate($hProcess) *NOT* called (user selection)")
					EndIf
				Else
					_OutputWrite("_ProcessTerminate selected, but *THIS* process was selected. Can't Terminate ourselves. Skipping function.")
				EndIf
			Case "_ProcessUDGetPID"
				; Func _ProcessUDGetPID($hProcess)
				_OutputWrite("$iProcessID=_ProcessUDGetPID($hProcess)"&@CRLF&"$iProcessID="&_ProcessUDGetPID($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessUDGetParentPID"
				; Func _ProcessUDGetParentPID($hProcess)
				_OutputWrite("$iParentPID=_ProcessUDGetParentPID($hProcess)"&@CRLF&"$iParentPID="&_ProcessUDGetParentPID($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessUDGetSessionID"
				; Func _ProcessUDGetSessionID($hProcess)
				_OutputWrite("$iSessionID=_ProcessUDGetSessionID($hProcess)"&@CRLF&"$iSessionID="&_ProcessUDGetSessionID($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessUDGetHandleCount"
				; Func _ProcessUDGetHandleCount($hProcess)
				_OutputWrite("$iNumHandles=_ProcessUDGetHandleCount($hProcess)"&@CRLF&"$iNumHandles="&_ProcessUDGetHandleCount($hProcess)&"    ; @error="&@error&" @extended="&@extended)
#cs
			; Retired Function (available as a standard O/S call since Win2000)
			Case "_ProcessUDGetIOCounters"
				; Func _ProcessUDGetIOCounters($hProcess,$iCounterToGet=-1)
				_OutputWrite("$aIOCounters=_ProcessUDGetIOCounters($hProcess)",False)
				$aTemp=_ProcessUDGetIOCounters($hProcess)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aIOCounters[0]="&$aTemp[0]&"    ; ReadOperationCount")
					_OutputWrite("$aIOCounters[1]="&$aTemp[1]&"    ; WriteOperationCount")
					_OutputWrite("$aIOCounters[2]="&$aTemp[2]&"    ; OtherOperationCount")
					_OutputWrite("$aIOCounters[3]="&$aTemp[3]&"    ; ReadTransferCount")
					_OutputWrite("$aIOCounters[4]="&$aTemp[4]&"    ; WriteTransferCount")
					_OutputWrite("$aIOCounters[5]="&$aTemp[5]&"    ; OtherTransferCount")
				Endif
#ce
			Case "_ProcessUDGetMemInfo"
				; Func _ProcessUDGetMemInfo($hProcess,$iInfoToGet=-1)
				_OutputWrite("$aMemInfo=_ProcessUDGetMemInfo($hProcess)",False)
				$aTemp=_ProcessUDGetMemInfo($hProcess)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aMemInfo[0]="&$aTemp[0]&"    ; Page Fault Count")
					_OutputWrite("$aMemInfo[1]="&$aTemp[1]&"    ; Peak Working Set Size")
					_OutputWrite("$aMemInfo[2]="&$aTemp[2]&"    ; Working Set Size")
					_OutputWrite("$aMemInfo[3]="&$aTemp[3]&"    ; Quota Peak Paged Pool Usage")
					_OutputWrite("$aMemInfo[4]="&$aTemp[4]&"    ; Quota Paged Pool Usage")
					_OutputWrite("$aMemInfo[5]="&$aTemp[5]&"    ; Quota Peak NON-Paged Pool Usage")
					_OutputWrite("$aMemInfo[6]="&$aTemp[6]&"    ; Quota NON-Paged Pool Usage")
					_OutputWrite("$aMemInfo[7]="&$aTemp[7]&"    ; Page File Usage")
					_OutputWrite("$aMemInfo[8]="&$aTemp[8]&"    ; Peak Page File Usage")
					_OutputWrite("$aMemInfo[9]="&$aTemp[9]&"    ; Peak Virtual Size")
					_OutputWrite("$aMemInfo[10]="&$aTemp[10]&"    ; Virtual Size")
				Endif
			Case "_ProcessUDGetStrings"
				; Func _ProcessUDGetStrings($hProcess,$bGetEnvStr=False)
				_OutputWrite("$aProcStrings=_ProcessUDGetStrings($hProcess,True)",False)
				$aTemp=_ProcessUDGetStrings($hProcess,True)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aProcStrings[0]="&$aTemp[0]&"    ; Current Directory")
					_OutputWrite("$aProcStrings[1]="&$aTemp[1]&"    ; DLL Search Path")
					_OutputWrite("$aProcStrings[2]="&$aTemp[2]&"    ; Process Full Pathname")
					_OutputWrite("$aProcStrings[3]="&$aTemp[3]&"    ; Command Line")
					_OutputWrite("$aProcStrings[4]="&$aTemp[4]&"    ; Invokation Method (if available)")
					_OutputWrite("$aProcStrings[5]="&$aTemp[5]&"    ; Desktop [Window Station] Info (if available)")
					_OutputWrite("$aProcStrings[6]="&$aTemp[6]&"    ; Shell Info (if available)")
					_OutputWrite("$aProcStrings[7]="&$aTemp[7]&"    ; Runtime Data (if available)")
					_OutputWrite($sSmallSeparator)
					$aEnv=StringSplit($aTemp[8],@LF)
					If IsArray($aEnv) Then
						_OutputWrite("Environment Strings ("&$aEnv[0]&" total):")
						_ArrayDisplay($aEnv,"Process Environment Strings from _ProcessUDGetStrings()")
#cs
						For $i2=1 To $aEnv[0]
							_OutputWrite("$aEnv["&$i2&"]="&$aEnv[$i2])
						Next
#ce
					EndIf
				Endif
			Case "_ProcessUDGetHeaps"
				; Func _ProcessUDGetHeaps($hProcess)
				_OutputWrite("$aHeaps=_ProcessUDGetHeaps($hProcess)",False)
				$aTemp=_ProcessUDGetHeaps($hProcess)
				$iErr=@error
				$iTemp=@extended
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$iTemp&" heaps):")
					For $i2=0 To $iTemp-1
						_OutputWrite("$aHeaps["&$i2&"]="&$aTemp[$i2])
					Next
				Endif
			Case "_ProcessUDGetSubSystemInfo"
				; Func _ProcessUDGetSubSystemInfo($hProcess)
				_OutputWrite("$iSubSysType=_ProcessUDGetSubSystemInfo($hProcess)"&@CRLF&"; Typical returns: 1 (Native System Process), 2 (GUI), 3 (CUI)")
				_OutputWrite("$iSubSysType="&_ProcessUDGetSubSystemInfo($hProcess)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessUDSuspend"
				; Func _ProcessUDSuspend($hProcess)
				If $iProcessID<>@AutoItPID Then
					If MsgBox(35,"Suspend Process Selected","For process '"&$sProcName&"' (PID #"&$iProcessID&"), a Suspend request was made."&@CRLF& _
						"*SUSPENDING CRUCIAL PROCESSES MAY CAUSE PROBLEMS!!*"&@CRLF&@CRLF&"Are you certain you wish to Suspend this process?")=6 Then
						_OutputWrite("$bSuspended=_ProcessUDSuspend($hProcess)"&@CRLF&"$bSuspended="&_ProcessUDSuspend($hProcess)&"    ; @error="&@error&" @extended="&@extended)
					Else
						_OutputWrite("; _ProcessUDSuspend($hProcess) *NOT* called (user selection)")
					EndIf
				Else
					_OutputWrite("_ProcessUDSuspend selected, but *THIS* process was selected. Can't Suspend/Resume ourselves. Skipping function.")
				EndIf
			Case "_ProcessUDResume"
				; Func _ProcessUDResume($hProcess)
				If $iProcessID<>@AutoItPID Then
					_OutputWrite("$bResumed=_ProcessUDResume($hProcess)"&@CRLF&"$bResumed="&_ProcessUDResume($hProcess)&"    ; @error="&@error&" @extended="&@extended)
				Else
					_OutputWrite("_ProcessUDResume selected, but *THIS* process was selected. Can't Suspend/Resume ourselves. Skipping function.")
				EndIf
			Case "_ProcessListEx"
				; Func _ProcessListEx($vFilter=0,$iMatchMode=0)
				_OutputWrite("$aProcList=_ProcessListEx()",False)
				$aTemp=_ProcessListEx()
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Processes)")
					$aTemp[0][0]="Process Name"
					$aTemp[0][1]="Process ID#"
					$aTemp[0][2]="Parent Process ID#"
					$aTemp[0][3]="Thread Count"
					$aTemp[0][4]="Base Priority of Threads"
					_ArrayDisplay($aTemp,"_ProcessListEx() Return Array")
#cs
					For $i2=1 To $aTemp[0][0]
						_OutputWrite("$aProcList["&$i2&"][0]="&$aTemp[$i2][0]&"    ; Process Name")
						_OutputWrite("$aProcList["&$i2&"][1]="&$aTemp[$i2][1]&"    ; Process ID #")
						_OutputWrite("$aProcList["&$i2&"][2]="&$aTemp[$i2][2]&"    ; Parent Process ID #")
						_OutputWrite("$aProcList["&$i2&"][3]="&$aTemp[$i2][3]&"    ; Thread Count")
						_OutputWrite("$aProcList["&$i2&"][4]="&$aTemp[$i2][4]&"    ; Threads Base Priority")
						_OutputWrite($sSmallSeparator)
					Next
#ce
				Endif
			Case "_ProcessGetChildren"
				; Func _ProcessGetChildren($vProcessID)
				_OutputWrite("$aChildren=_ProcessGetChildren($iProcessID)",False)
				$aTemp=_ProcessGetChildren($iProcessID)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Child Processes)")
					If $aTemp[0][0]=0 Then
						_OutputWrite("No child processes found",False)
						If $sDropDownSel=$sSelfReference Then _OutputWrite(" - use the 'Run New Program' command from the main GUI",False)
						_OutputWrite("")
					Else
						$aTemp[0][0]="Process Name"
						$aTemp[0][1]="Process ID#"
						$aTemp[0][2]="Parent Process ID#"
						$aTemp[0][3]="Thread Count"
						$aTemp[0][4]="Base Priority of Threads"
						_ArrayDisplay($aTemp,"_ProcessGetChildren($iProcessID) Return Array")
#cs
						For $i2=1 To $aTemp[0][0]
							_OutputWrite("$aChildren["&$i2&"][0]="&$aTemp[$i2][0]&"    ; Process Name")
							_OutputWrite("$aChildren["&$i2&"][1]="&$aTemp[$i2][1]&"    ; Process ID #")
							_OutputWrite("$aChildren["&$i2&"][2]="&$aTemp[$i2][2]&"    ; Parent Process ID #")
							_OutputWrite("$aChildren["&$i2&"][3]="&$aTemp[$i2][3]&"    ; Thread Count")
							_OutputWrite("$aChildren["&$i2&"][4]="&$aTemp[$i2][4]&"    ; Threads Base Priority")
							_OutputWrite($sSmallSeparator)
						Next
#ce
					EndIf
				Endif
			Case "_ProcessGetParent"
				; Func _ProcessGetParent($vProcessID)
				_OutputWrite("$aParentInfo=_ProcessGetParent($iProcessID)",False)
				$aTemp=_ProcessGetParent($iProcessID)
				$iErr=@error
				$iTemp=@extended
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If $iErr=16 Then _OutputWrite("; @error 16 means Parent PID found [in @extended: "&$iTemp&"], but no longer exists.")
				If Not $iErr Then
					_OutputWrite("Return:"&@CRLF&"$aParentInfo[0]="&$aTemp[0]&"    ; Parent Process Name")
					_OutputWrite("$aParentInfo[1]="&$aTemp[1]&"    ; Parent Process ID")
					_OutputWrite("$aParentInfo[2]="&$aTemp[2]&"    ; Parent's Parent Process ID")
					_OutputWrite("$aParentInfo[3]="&$aTemp[3]&"    ; Parent Thread Count")
					_OutputWrite("$aParentInfo[4]="&$aTemp[4]&"    ; Parent Threads Base Priority")
				Endif
			Case "_ProcessListHeaps"
				; Func _ProcessListHeaps($vProcessID,$bHeapWalk=False,$bCompleteList=False)
				_OutputWrite("$aHeaps=_ProcessListHeaps($iProcessID)",False)
				$aTemp=_ProcessListHeaps($iProcessID)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Heaps)")
					$aTemp[0][0]="Heap Block Handle"
					$aTemp[0][1]="Heap Block Start Address"
					$aTemp[0][2]="Heap Size (in bytes) [if walked]"
					$aTemp[0][3]="Heap Flags"
					$aTemp[0][4]="Heap ID [for ToolHelp32Snapshot use]"
					_ArrayDisplay($aTemp,"_ProcessListHeaps($iProcessID) Return Array")
#cs
					For $i2=1 To $aTemp[0][0]
						_OutputWrite("$aHeaps["&$i2&"][0]="&$aTemp[$i2][0]&"    ; Handle to Heap Block")
						_OutputWrite("$aHeaps["&$i2&"][1]="&$aTemp[$i2][1]&"    ; Heap Start Address")
						_OutputWrite("$aHeaps["&$i2&"][2]="&$aTemp[$i2][2]&"    ; Heap Size in Bytes (if walked)")
						_OutputWrite("$aHeaps["&$i2&"][3]="&$aTemp[$i2][3]&"    ; Heap Flags")
						_OutputWrite("$aHeaps["&$i2&"][4]="&$aTemp[$i2][4]&"    ; Heap ID")
						_OutputWrite($sSmallSeparator)
					Next
#ce
				Endif
			Case "_ProcessListThreads"
				; Func _ProcessListThreads($vFilterID=-1,$bThreadFilter=False)
				$iTemp=-1
				$sTemp=""
				; Loop twice: 1st, complete Thread list, 2nd - filtered
				For $i2=1 To 2
					_OutputWrite("$aThreads=_ProcessListThreads("&$sTemp&")",False)
					$aTemp=_ProcessListThreads($iTemp)
					$iErr=@error
					_OutputWrite("    ; @error="&@error&" @extended="&@extended)
					If Not $iErr Then
						_OutputWrite("Return ("&$aTemp[0][0]&" total Threads)")
						$aTemp[0][0]="Thread ID#"
						$aTemp[0][1]="Process ID#"
						$aTemp[0][2]="Thread Base Priority"
						_ArrayDisplay($aTemp,"_ProcessListThreads("&$sTemp&") Return Array")
					Endif
					$sTemp="$iProcessID"
					$iTemp=$iProcessID
				Next
			Case "_ProcessListModules"
				; Func _ProcessListModules($vProcessID,$sTitleFilter=0,$iTitleMatchMode=0,$bList32bitMods=False)
				If @AutoItX64 Then
					$bTemp=True
				Else
					$bTemp=False
				EndIf
				_OutputWrite("$aModules=_ProcessListModules($iProcessID,0,0,"&$bTemp&")",False)
				$aTemp=_ProcessListModules($iProcessID,0,0,$bTemp)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Modules)")
					$aTemp[0][0]="Module Name"
					$aTemp[0][1]="Module Pathname"
					$aTemp[0][2]="Module Handle"
					$aTemp[0][3]="Module Base Address"
					$aTemp[0][4]="Module Size"
					$aTemp[0][5]="Process Usage Count [load/free DLL count]"
					_ArrayDisplay($aTemp,"_ProcessListModules($iProcessID) Return Array")
#cs
					For $i2=1 To $aTemp[0][0]
						_OutputWrite("$aModules["&$i2&"][0]="&$aTemp[$i2][0]&"    ; Module Name")
						_OutputWrite("$aModules["&$i2&"][1]="&$aTemp[$i2][1]&"    ; Module Pathname")
						_OutputWrite("$aModules["&$i2&"][2]="&$aTemp[$i2][2]&"    ; Module Handle")
						_OutputWrite("$aModules["&$i2&"][3]="&$aTemp[$i2][3]&"    ; Module Base Address")
						_OutputWrite("$aModules["&$i2&"][4]="&$aTemp[$i2][4]&"    ; Module Size")
						_OutputWrite("$aModules["&$i2&"][5]="&$aTemp[$i2][5]&"    ; Process Usage Count [load/free DLL]")
						_OutputWrite($sSmallSeparator)
					Next
#ce
				Endif
			Case "_ProcessGetModuleBaseAddress"
				; Func _ProcessGetModuleBaseAddress($vProcessID,$sModuleName,$bList32bitMods=False,$bGetWow64Instance=False)
				_OutputWrite("$pBaseAddress=_ProcessGetModuleBaseAddress($iProcessID,$sProcess)"&@CRLF&"$pBaseAddress="&_ProcessGetModuleBaseAddress($iProcessID,$sProcName)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessGetModuleByAddress"
				; Func _ProcessGetModuleByAddress($vProcessID,$pAddress)
				; Grab the module base address of ntdll.dll if possible:
				$pTemp=_ProcessGetModuleBaseAddress($iProcessID,"ntdll.dll")
				; Usually an error for 32->64bit Process query. If so, we'll use a typical 'desired' base address (0x01000000)
				If @error Then $pTemp=Ptr(0x01000000)	;  NOT recommended. This is here just for an example address to Query
				$pTemp+=512		; Just offset it a little
				_OutputWrite("$pAddress="&$pTemp)
				_OutputWrite("$aModule=_ProcessGetModuleByAddress($iProcessID,$pAddress)",False)
				$aTemp=_ProcessGetModuleByAddress($iProcessID,$pTemp)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return Module Info:")
					_OutputWrite("$aModule[0]="&$aTemp[0]&"	; Module Name")
					_OutputWrite("$aModule[1]="&$aTemp[1]&"	; Module Pathname")
					_OutputWrite("$aModule[2]="&$aTemp[2]&"	; Module Handle")
					_OutputWrite("$aModule[3]="&$aTemp[3]&"	; Module Base Address")
					_OutputWrite("$aModule[4]="&$aTemp[4]&"	; Module Size")
					_OutputWrite("$aModule[5]="&$aTemp[5]&"	; Process Usage Count [load/free DLL count]")
				Endif
			Case "_ProcessListWTS"
				; Func _ProcessListWTS($vFilter=0,$iMatchMode=0,$vWTSAPI32DLL="wtsapi32.dll")
				_OutputWrite("$aProcWTSList=_ProcessListWTS()",False)
				$aTemp=_ProcessListWTS()
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Processes)")
					$aTemp[0][0]="Process Name"
					$aTemp[0][1]="Process ID"
					$aTemp[0][2]="Session ID"
					$aTemp[0][3]="Owner Name"
					_ArrayDisplay($aTemp,"_ProcessListWTS() Return Array")
#cs
					For $i2=1 To $aTemp[0][0]
						_OutputWrite("$aProcWTSList["&$i2&"][0]="&$aTemp[$i2][0]&"    ; Process Name")
						_OutputWrite("$aProcWTSList["&$i2&"][1]="&$aTemp[$i2][1]&"    ; Process ID")
						_OutputWrite("$aProcWTSList["&$i2&"][2]="&$aTemp[$i2][2]&"    ; Session ID")
						_OutputWrite("$aProcWTSList["&$i2&"][3]="&$aTemp[$i2][3]&"    ; Owner Name")
						_OutputWrite($sSmallSeparator)
					Next
#ce
				ElseIf @OSVersion="WIN_2000" Then
					_OutputWrite("_ProcessListWTS requires Terminal Services, which isn't part of most Windows 2000 installs")
				EndIf
			Case "_ProcessWinList"
				; Func _ProcessWinList($vProcessID,$sTitle=0,$bOnlyGetVisible=False,$bOnlyGetRoot=False,$bOnlyGetAltTab=False)
				_OutputWrite("$aProcWinList=_ProcessWinList($iProcessID,0,True,False,True)",False)
				$aTemp=_ProcessWinList($iProcessID,0,True,False,True)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Windows)")
					If $aTemp[0][0]=0 Then
						_OutputWrite("! No Alt-Tabbable (param #4) Windows found for the given Process")
					Else
						$aTemp[0][0]="Window Title"
						$aTemp[0][1]="Window Handle"
						_ArrayDisplay($aTemp,"_ProcessWinList Return Array")
#cs
						For $i2=1 To $aTemp[0][0]
							_OutputWrite("$aProcWinList["&$i2&"][0]="&$aTemp[$i2][0]&"    ; Window Title")
							_OutputWrite("$aProcWinList["&$i2&"][1]="&$aTemp[$i2][1]&"    ; Window Handle")
							_OutputWrite($sSmallSeparator)
						Next
#ce
					EndIf
				Endif
			Case "_ProcessUDListEverything"
				; Func _ProcessUDListEverything($vFilter=0,$iMatchMode=0,$bEnumThreads=True)
				_OutputWrite("$aProcessList=_ProcessUDListEverything()",False)
				$aTemp=_ProcessUDListEverything()
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					$iTemp=$aTemp[0][0]
					_OutputWrite("Return ("&$iTemp&" Total Proceses, "&$aTemp[0][1]&" Total Threads)")
					$aTemp[0][0]="Process Name"
					$aTemp[0][1]="Process ID"
					$aTemp[0][2]="Parent PID"
					$aTemp[0][3]="Base Priority (8=normal)"
					$aTemp[0][4]="Creation Time (FileTime)"
					$aTemp[0][5]="User Time (ms)"
					$aTemp[0][6]="Kernel Time (ms)"
					$aTemp[0][7]="Handle Count"
					$aTemp[0][8]="Session ID"
					$aTemp[0][9]="Peak Virtual Size"
					$aTemp[0][10]="Virtual Size"
					$aTemp[0][11]="Page Fault Count"
					$aTemp[0][12]="Peak Working Set Size"
					$aTemp[0][13]="Working Set Size"
					$aTemp[0][14]="Quota Peak Paged Pool Usage"
					$aTemp[0][15]="Quota Paged Pool Usage"
					$aTemp[0][16]="Quota Peak Non-Paged Pool Usage"
					$aTemp[0][17]="Quota Non-Paged Pool Usage"
					$aTemp[0][18]="Pagefile Usage"
					$aTemp[0][19]="Peak Pagefile Usage"
					$aTemp[0][20]="Read Operations Count"
					$aTemp[0][21]="Write Operations Count"
					$aTemp[0][22]="Other Operations Count"
					$aTemp[0][23]="Read Transfers Count"
					$aTemp[0][24]="Write Transfers Count"
					$aTemp[0][25]="Other Transfers Count"
					$aTemp[0][26]="Number of Threads"
					$aTemp[0][27]="Embedded Threads array [blank]"
					_ArrayDisplay($aTemp,"_ProcessUDListEverything() Return Array")
					For $i2=1 To $iTemp
						If $aTemp[$i2][1]=$iProcessID Then ExitLoop
					Next
					If $i2>$iTemp Then
						_OutputWrite("Process '"&$sProcName&"' not found in list!")
					Else
						$aTemp=$aTemp[$i2][27]	; grab the embedded Thread info array at [27]
						$aTemp[0][0]="Thread ID"
						$aTemp[0][1]="Process ID"
						$aTemp[0][2]="Thread Initial Start Address (not Base Address)"
						$aTemp[0][3]="Thread Base Priority"
						$aTemp[0][4]="Thread Priority"
						$aTemp[0][5]="Thread Creation Time (FileTime)"
						$aTemp[0][6]="Thread User Time (ms)"
						$aTemp[0][7]="Thread Kernel Time (ms)"
						$aTemp[0][8]="Thread Last Wait State Time (ticks)"
						$aTemp[0][9]="Thread Context Switch Count"
						$aTemp[0][10]="Thread State"
						$aTemp[0][11]="Thread Wait Reason"
						_ArrayDisplay($aTemp,"_ProcessUDListEverything() Thread info for '"&$sProcName&"'")
					EndIf
				Endif
			Case "_ProcessUDIsSuspended"
				; Func _ProcessUDIsSuspended($vProcessID)
				_OutputWrite("$bSuspended=_ProcessUDIsSuspended($iProcessID)"&@CRLF&"$bSuspended="&_ProcessUDIsSuspended($iProcessID)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessUDListModules"
				; Func _ProcessUDListModules($hProcess,$sTitleFilter=0,$iTitleMatchMode=0,$iOrder=0)
				_OutputWrite("$aModules=_ProcessUDListModules($hProcess)",False)
				$aTemp=_ProcessUDListModules($hProcess)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return ("&$aTemp[0][0]&" total Modules)")
					$aTemp[0][0]="Module Name"
					$aTemp[0][1]="Module Pathname"
					$aTemp[0][2]="Module Handle"
					$aTemp[0][3]="Module Base Address"
					$aTemp[0][4]="Module Size"
					$aTemp[0][5]="Load Count [load/free DLL count]"
					$aTemp[0][6]="DLL Entry Point Address (if available)"
					_ArrayDisplay($aTemp,"_ProcessListModules($iProcessID) Return Array")
				EndIf
			Case "_ProcessUDGetModuleBaseAddress"
				; Func _ProcessUDGetModuleBaseAddress($hProcess,$sModuleName)
				_OutputWrite("$pBaseAddress=_ProcessUDGetModuleBaseAddress($hProcess,$sProcess)"&@CRLF&"$pBaseAddress="&_ProcessUDGetModuleBaseAddress($hProcess,$sProcName)&"    ; @error="&@error&" @extended="&@extended)
			Case "_ProcessUDGetModuleByAddress"
				; Func _ProcessUDGetModuleByAddress($hProcess,$pAddress)
				; Grab the module base address of ntdll.dll if possible:
				$pTemp=_ProcessUDGetModuleBaseAddress($hProcess,"ntdll.dll")
				; Usually an error for 32->64bit Process query. If so, we'll use a typical 'desired' base address (0x01000000)
				If @error Then $pTemp=Ptr(0x01000000)	;  NOT recommended. This is here just for an example address to Query
				$pTemp+=512		; Just offset it a little
				_OutputWrite("$pAddress="&$pTemp)
				_OutputWrite("$aModule=_ProcessUDGetModuleByAddress($hProcess,$pAddress)",False)
				$aTemp=_ProcessUDGetModuleByAddress($hProcess,$pTemp)
				$iErr=@error
				_OutputWrite("    ; @error="&@error&" @extended="&@extended)
				If Not $iErr Then
					_OutputWrite("Return Module Info:")
					_OutputWrite("$aModule[0]="&$aTemp[0]&"	; Module Name")
					_OutputWrite("$aModule[1]="&$aTemp[1]&"	; Module Pathname")
					_OutputWrite("$aModule[2]="&$aTemp[2]&"	; Module Handle")
					_OutputWrite("$aModule[3]="&$aTemp[3]&"	; Module Base Address")
					_OutputWrite("$aModule[4]="&$aTemp[4]&"	; Module Size")
					_OutputWrite("$aModule[5]="&$aTemp[5]&"	; Load Count [load/free DLL count]")
					_OutputWrite("$aModule[6]="&$aTemp[6]&"	; DLL Entry Point Address (if available)")
				Endif
			Case "_ProcessCreateRemoteThread"
				; Func _ProcessCreateRemoteThread($hProcess,$pCodePtr,$vParam=0,$bCreateSuspended=False,$bForceRtl=False,$bWow64Code=False))
				If $RMSGBOX_THREAD_CREATED Then
					_OutputWrite(";* _ProcessCreateRemoteThread() already used to create a Thread (Check for a Remote Message Box dialog)")
					If $hRMSGBOXWnd<>"" Then _WinFlashEx($hRMSGBOXWnd,"",3)
				ElseIf _ProcessUDGetSubSystemInfo($hProcess)=1 Then		; 1 = Native System Process (driver)
					_OutputWrite(";* _ProcessCreateRemoteThread() function can't run due to target process '"&$sProcName&"' being a Native System Process (driver)")
				Else
					_OutputWrite("$hThread=_ProcessCreateRemoteThread($hProcess,$pCodePtr,$vParam)"&@CRLF&"; No simple example available - using _RemoteMsgBox")
					; Func _RemoteMsgBoxThreadCreate($iProcessID,$bStartSuspended=False)
					_OutputWrite("$bTemp=_RemoteMsgBoxThreadCreate($iProcessID)")
					$bTemp=_RemoteMsgBoxThreadCreate($iProcessID)
					_OutputWrite("; $bTemp="&$bTemp&"    ; @error="&@error&" @extended="&@extended)
					If $bTemp Then
						; Update Thread Functions Test GUI with non-zero # (running) and Thread ID
						If __ThreadFunctionsMessageUpdate($iProcessID,$RMSGBOX_THREAD_INFO[4])=0 Then
							If MsgBox(32+4,"Thread Functions Test GUI Not running", _
								"Thread Functions Test GUI is not running, but we just started a remote thread. Run GUI?")=6 Then _
								__RunTestThreadFunctions($iProcessID&' '&$RMSGBOX_THREAD_INFO[4])
						EndIf
						; Update our Status bar
						$sTemp="Remote Thread: Process '"&$sProcName&"', PID#"&$iProcessID&", Thread ID#"&$RMSGBOX_THREAD_INFO[4]
						_GUICtrlStatusBar_SetText($PFGStatus,$sTemp,0)
						_GUICtrlStatusBar_SetTipText($PFGStatus,0,$sTemp)	;  in case it doesn't fit, a mouse-over will show the whole thing
						; Start monitoring Remote Thread
						AdlibRegister("_RemoteThreadChecker",250)
					EndIf
				EndIf
			Case "_ProcessUDGetPEB"
				; Func _ProcessUDGetPEB($hProcess)
				$stTemp=_ProcessUDGetPEB($hProcess)
				$iErr=@error
				$pTemp=Ptr(@extended)	; If successful, this will be a pointer to the PEB
				_OutputWrite("$stPEB=_ProcessUDGetPEB($hProcess)    ; @error="&$iErr&" @extended="&$pTemp)
				If IsDllStruct($stTemp) Then
					_OutputWrite("_DLLStructDisplay($stPEB,$tagPEB,'PEB')")
					_DLLStructDisplay($stTemp,$tagPEB,"PEB: "&$pTemp)
					$stTemp=0	; free memory
				EndIf
		EndSwitch
		Sleep(1)	; just to cut down on resources when a huge list is being created
	Next
	If IsPtr($hProcess) Then
		_OutputWrite($sSeparator)
		_OutputWrite("_ProcessCloseHandle($hProcess)	; Close Process Handle. Required step! (except w/ -1 handles)")
		_OutputWrite("_ProcessCloseHandle Return:"&_ProcessCloseHandle($hProcess)&"    ; @error="&@error&", @extended="&@extended)
	EndIf
	_OutputWrite($sSeparator&@CRLF&"Process Function test complete!")
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

TestProcessGUI()