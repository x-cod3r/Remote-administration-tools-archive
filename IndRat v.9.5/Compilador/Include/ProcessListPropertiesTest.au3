#RequireAdmin
#include <Array.au3>
#include <[Includes]\_ProcessListFunctions.au3>
;~ #include <[Includes]\_ProcessUndocumented.au3>	; included by <_ProcessUndocumentedList.au3>
#include <[Includes]\_ProcessUndocumentedList.au3>
#include "[Includes]\_WinTimeFunctions.au3"	; For converting _ProcessGetTimes()
#include "[Includes]\_GetDebugPrivilegeRtl.au3"
; ===============================================================================================================================
; <ProcessListPropertiesTest.au3>
;
;	Another test of _ProcessFunctions, _ProcessListFunctions, _ProcessUndocumented, & _ProcessUndocumentedList modules
;
;	This example mimics most all of '_ProcessListProperties' by PsaltyDS, sans CPU usage.
;		It is, however, a lot faster and does not suffer with memory leak issues
;	NOTE: This does not get CPU Usage information, though CPU Usage reported with WMI doesn't show reliable results anyway
;
;	If CPU Usage is required, a calculation for each Process would need to be done with _ProcessGetTimes(), SystemTimes,
;	 and probably and Adlib function.  Alternatively 'Performance Counters' can be used for accurate results.
;
; Functions:
;	_ProcessListProperties()	; uses standard API calls, save for getting the Command Line
;	_ProcessUDListProperties()	; based on an 'undocumented' API call (and a few documented ones)
;
; See _ProcessListProperties by PsaltyDS @:
;	http://www.autoitscript.com/forum/index.php?showtopic=70538
;
; Author: Ascend4nt
; ===============================================================================================================================


; =================================================================================================================
; Func _ProcessListProperties($vFilter=0,$iMatchMode=0)
;
;	Attempts (using regular API calls) to Match the Output of _ProcessListProperties by PsaltyDS
;		Thread Count is put in column [6] instead of CPU Usage, as this isn't obtainable with simple _Process calls
;
; Author: Ascend4nt
; =================================================================================================================

Func _ProcessListProperties($vFilter=0,$iMatchMode=0)
	Local $aProcessList,$aOwnerList,$iScanFrom,$i,$i2,$iCurPID,$iTemp,$iScanEnd,$aTemp
	Local $bScanPastStart=False,$bMissingOwner=False,$bFoundProc=False,$hProcessLimited,$hProcessFull
	$aProcessList=_ProcessListEx($vFilter,$iMatchMode)
	If @error Then Return SetError(@error,@extended,"")
	ReDim $aProcessList[$aProcessList[0][0]+1][11]
	$aOwnerList=_ProcessListWTS($vFilter,$iMatchMode)
	If @error Then Return SetError(@error,@extended,"")
	$iScanFrom=1
	For $i=1 To $aProcessList[0][0]
		$iCurPID=$aProcessList[$i][1]
		$aProcessList[$i][6]=$aProcessList[$i][3]	; move thread count over (need to put Owner in [3])
		; Occasionally the two lists don't line up
		If $iCurPID<>$aOwnerList[$iScanFrom][1] Then
			If $iScanFrom>1 Then $bScanPastStart=True
			$iTemp=$iScanFrom
			$iScanEnd=$aOwnerList[0][0]
			For $i2=1 To 2
				For $iTemp=$iTemp+1 To $iScanEnd
					If $iCurPID=$aOwnerList[$iTemp][1] Then
						$aProcessList[$i][10]=$aOwnerList[$iTemp][2]	; Session ID
						$aProcessList[$i][3]=$aOwnerList[$iTemp][3]		; Owner
						If $aOwnerList[$iTemp][3]="" Then $bMissingOwner=True
						$bFoundProc=True
						ExitLoop 2
					EndIf
				Next
				If Not $bScanPastStart Then ExitLoop
				$iScanEnd=$iScanFrom-1
				$iTemp=0	; due to +1 above
			Next
			If $iScanFrom>$aOwnerList[0][0] Then $iScanFrom=1
			$bScanPastStart=False
		Else
			$aProcessList[$i][10]=$aOwnerList[$iScanFrom][2]	; Session ID
			$aProcessList[$i][3]=$aOwnerList[$iScanFrom][3]		; Owner
			If $aOwnerList[$iScanFrom][3]="" Then $bMissingOwner=True
			$iScanFrom+=1
			$bFoundProc=True
		EndIf
		$hProcessLimited=_ProcessOpen($iCurPID,$PROCESS_QUERY_LIMITED_INFO)
		$hProcessFull=_ProcessOpen($iCurPID,$PROCESS_QUERY_LIMITED_INFO+0x10+0x00020000)
		If Not $bFoundProc Then $aProcessList[$i][10]=_ProcessGetSessionID($iCurPID)	; or: _ProcessUDGetSessionID($hProcessLimited)
		If Not $bFoundProc Or $bMissingOwner Then $aProcessList[$i][3]=_ProcessGetOwner($hProcessFull)
		$aProcessList[$i][5]=_ProcessGetPathname($hProcessLimited)
		$aTemp=_ProcessUDGetStrings($hProcessFull)
		If Not @error Then $aProcessList[$i][9]=$aTemp[3]
		; Working Set Size (/1024 = KB)
		$aProcessList[$i][7]=_ProcessGetMemInfo($hProcessFull,2) ; Round(_ProcessGetMemInfo($hProcessFull,2)/1024)
		$aTemp=_WinTime_UTCFileTimeFormat(_ProcessGetTimes($hProcessLimited,0),0,0,False)
		If Not @error Then
			$aProcessList[$i][8]=StringRight(0&$aTemp[1],2)&'/'&StringRight(0&$aTemp[2],2)&'/'&$aTemp[0]& _
			' '&StringRight(0&$aTemp[3],2)&':'&StringRight(0&$aTemp[4],2)&':'&StringRight(0&$aTemp[5],2)
		EndIf
;~ 		$aProcessList[$i][8]=_WinTime_UTCFileTimeFormat(_ProcessGetTimes($hProcessLimited,0),4+8,1,True,$_PFhKern32DLL)	; nicer output
		_ProcessCloseHandle($hProcessFull)
		_ProcessCloseHandle($hProcessLimited)
	Next
	; Set headers
	$aProcessList[0][0]="Process Name"
	$aProcessList[0][1]="Process ID#"
	$aProcessList[0][2]="Parent Process ID#"
	$aProcessList[0][3]="Owner"
	$aProcessList[0][4]="Base Priority of Threads"
	$aProcessList[0][5]="Pathname"
	$aProcessList[0][6]="Thread Count"
	$aProcessList[0][7]="Working Set Size"	; (KB)"  (if divide by 1024)
	$aProcessList[0][8]="Process Creation Time"
	$aProcessList[0][9]="Command Line"
	$aProcessList[0][10]="Session ID"

	Return $aProcessList
EndFunc


; =================================================================================================================
; Func _ProcessUDListProperties($vFilter=0,$iMatchMode=0)
;
;	Attempts (using 'undocumented' functions) to Match the Output of _ProcessListProperties by PsaltyDS
;		Thread Count is put in column [6] instead of CPU Usage, as this isn't obtainable with simple _Process calls
;
; Author: Ascend4nt
; =================================================================================================================

Func _ProcessUDListProperties($vFilter=0,$iMatchMode=0)
	Local $aMondoList,$aOwnerList,$iScanFrom,$i,$i2,$iCurPID,$iTime,$iTemp,$iScanEnd,$aTemp
	Local $bScanPastStart=False,$bMissingOwner=False,$bFoundProc=False,$hProcessLimited,$hProcessFull
	$aMondoList=_ProcessUDListEverything($vFilter,$iMatchMode,False)
	If @error Then Return SetError(@error,@extended,"")
	$aOwnerList=_ProcessListWTS($vFilter,$iMatchMode)
	If @error Then Return SetError(@error,@extended,"")
	$iScanFrom=1
	For $i=1 To $aMondoList[0][0]
		; Rearrange items in array to match required output
		$aMondoList[$i][10]=$aMondoList[$i][8]				; Session ID
		$iTime=$aMondoList[$i][4]
		$aMondoList[$i][4]=$aMondoList[$i][3]				; Base Priority
		$aMondoList[$i][6]=$aMondoList[$i][26]				; Thread Count
		$aMondoList[$i][7]=$aMondoList[$i][13]	; Round($aMondoList[$i][13]/1024)	; Working Set Size (/1024 = KB)

		$iCurPID=$aMondoList[$i][1]
		; Occasionally the two lists don't line up
		If $iCurPID<>$aOwnerList[$iScanFrom][1] Then
			If $iScanFrom>1 Then $bScanPastStart=True
			$iTemp=$iScanFrom
			$iScanEnd=$aOwnerList[0][0]
			For $i2=1 To 2
				For $iTemp=$iTemp+1 To $iScanEnd
					If $iCurPID=$aOwnerList[$iTemp][1] Then
;~ 						$aMondoList[$i][x]=$aOwnerList[$iTemp][2]	; Session ID
						$aMondoList[$i][3]=$aOwnerList[$iTemp][3]	; Owner	; prev: [$i][6]
						If $aOwnerList[$iTemp][3]="" Then $bMissingOwner=True
						$bFoundProc=True
						ExitLoop 2
					EndIf
				Next
				If Not $bScanPastStart Then ExitLoop
				$iScanEnd=$iScanFrom-1
				$iTemp=0	; due to +1 above
			Next
			If $iScanFrom>$aOwnerList[0][0] Then $iScanFrom=1
			$bScanPastStart=False
		Else
;~ 			$aMondoList[$i][x]=$aOwnerList[$iScanFrom][2]	; Session ID
			$aMondoList[$i][3]=$aOwnerList[$iScanFrom][3]	; Owner	; prev: [$i][6]
			If $aOwnerList[$iScanFrom][3]="" Then $bMissingOwner=True
			$iScanFrom+=1
			$bFoundProc=True
		EndIf
		$hProcessLimited=_ProcessOpen($iCurPID,$PROCESS_QUERY_LIMITED_INFO)
		$hProcessFull=_ProcessOpen($iCurPID,$PROCESS_QUERY_LIMITED_INFO+0x10+0x00020000)
;~ 		If Not $bFoundProc Then $aMondoList[$i][x]=_ProcessUDGetSessionID($hProcessLimited)
		If Not $bFoundProc Or $bMissingOwner Then $aMondoList[$i][3]=_ProcessGetOwner($hProcessFull)
		$aMondoList[$i][5]=_ProcessGetPathname($hProcessLimited)
		$aTemp=_ProcessUDGetStrings($hProcessFull)
		If @error Then
			$aMondoList[$i][9]=""
		Else
			$aMondoList[$i][9]=$aTemp[3]
		EndIf
		$aTemp=_WinTime_UTCFileTimeFormat($iTime,0,0,False)
		If @error Then
			$aMondoList[$i][8]=""
		Else
			$aMondoList[$i][8]=StringRight(0&$aTemp[1],2)&'/'&StringRight(0&$aTemp[2],2)&'/'&$aTemp[0]& _
			' '&StringRight(0&$aTemp[3],2)&':'&StringRight(0&$aTemp[4],2)&':'&StringRight(0&$aTemp[5],2)
		EndIf
;~ 		$aMondoList[$i][8]=_WinTime_UTCFileTimeFormat(_ProcessGetTimes($hProcessLimited,0),4+8,1,True,$_PFhKern32DLL)	; nicer output
		_ProcessCloseHandle($hProcessFull)
		_ProcessCloseHandle($hProcessLimited)
	Next
	ReDim $aMondoList[$aMondoList[0][0]+1][11]
	; Set headers
	$aMondoList[0][0]="Process Name"
	$aMondoList[0][1]="Process ID#"
	$aMondoList[0][2]="Parent Process ID#"
	$aMondoList[0][3]="Owner"
	$aMondoList[0][4]="Base Priority of Threads"
	$aMondoList[0][5]="Pathname"
	$aMondoList[0][6]="Thread Count"
	$aMondoList[0][7]="Working Set Size"	; (KB)"  (if divide by 1024)
	$aMondoList[0][8]="Process Creation Time"
	$aMondoList[0][9]="Command Line"
	$aMondoList[0][10]="Session ID"

	Return $aMondoList
EndFunc

; ===================================================================================================================
;	--------------------	MAIN CALLS	--------------------
; ===================================================================================================================

; ---- Set SEDEBUG privilege ----
_GetDebugPrivilegeRtl()

; ---- Run tests (could also use filtering here if preferred [by name, string-in-string, PCRE, PID, or Parent PID]) ----

; -- Regular API calls List Test --

$iTimer=TimerInit()
$aProcessList=_ProcessListProperties()
_ArrayDisplay($aProcessList,"_ProcessListProperties() (Executed in "&TimerDiff($iTimer)&" ms)")

; -- 'Undocumented' List Test --

$iTimer=TimerInit()
$aProcessList=_ProcessUDListProperties()
_ArrayDisplay($aProcessList,"_ProcessUDListProperties() (Executed in "&TimerDiff($iTimer)&" ms)")