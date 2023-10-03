;=============================================================================
; Ideas from http://www.andreavb.com/tip060002.html, author: Andrea Tincani
; AutoIt scripts written by CatchFish, Feb 24th, 2006.
; 100% public domain. Feel free to remove the comments and claim it your own.
;=============================================================================
#include-once

;===============
; API Constants
;===============
Const $SERVICES_ACTIVE_DATABASE = "ServicesActive"
; Service Control
Const $SERVICE_CONTROL_STOP = 0x1
Const $SERVICE_CONTROL_PAUSE = 0x2
; Service State - for CurrentState
Const $SERVICE_STOPPED = 0x1
Const $SERVICE_START_PENDING = 0x2
Const $SERVICE_STOP_PENDING = 0x3
Const $SERVICE_RUNNING = 0x4
Const $SERVICE_CONTINUE_PENDING = 0x5
Const $SERVICE_PAUSE_PENDING = 0x6
Const $SERVICE_PAUSED = 0x7
; Service Control Manager object specific access types
;Const $STANDARD_RIGHTS_REQUIRED = 0xF0000
Const $SC_MANAGER_CONNECT = 0x1
Const $SC_MANAGER_CREATE_SERVICE = 0x2
Const $SC_MANAGER_ENUMERATE_SERVICE = 0x4
Const $SC_MANAGER_LOCK = 0x8
Const $SC_MANAGER_QUERY_LOCK_STATUS = 0x10
Const $SC_MANAGER_MODIFY_BOOT_CONFIG = 0x20
Const $SC_MANAGER_ALL_ACCESS = BitOR($STANDARD_RIGHTS_REQUIRED, $SC_MANAGER_CONNECT, $SC_MANAGER_CREATE_SERVICE, $SC_MANAGER_ENUMERATE_SERVICE, _
		$SC_MANAGER_LOCK, $SC_MANAGER_QUERY_LOCK_STATUS, $SC_MANAGER_MODIFY_BOOT_CONFIG)
; Service object specific access types
Const $SERVICE_QUERY_CONFIG = 0x1
Const $SERVICE_CHANGE_CONFIG = 0x2
Const $SERVICE_QUERY_STATUS = 0x4
Const $SERVICE_ENUMERATE_DEPENDENTS = 0x8
Const $SERVICE_START = 0x10
Const $SERVICE_STOP = 0x20
Const $SERVICE_PAUSE_CONTINUE = 0x40
Const $SERVICE_INTERROGATE = 0x80
Const $SERVICE_USER_DEFINED_CONTROL = 0x100
Const $SERVICE_ALL_ACCESS = BitOR($STANDARD_RIGHTS_REQUIRED, $SERVICE_QUERY_CONFIG, $SERVICE_CHANGE_CONFIG, $SERVICE_QUERY_STATUS, _
		$SERVICE_ENUMERATE_DEPENDENTS, $SERVICE_START, $SERVICE_STOP, $SERVICE_PAUSE_CONTINUE, $SERVICE_INTERROGATE, $SERVICE_USER_DEFINED_CONTROL)

;====================================================================
; DO NOT call these functions as they are used for internal affairs.
;====================================================================
Func __CreateStructServiceStatus()
	; ServiceType, CurrentState, ControlsAccepted, Win32ExitCode, ServiceSpecificExitCode, CheckPoint, WaitHint
	Return DllStructCreate("int;int;int;int;int;int;int")
EndFunc

Func __CloseServiceHandle($v_hSCObject, $v_hAdvAPI = "advapi32.dll")
	Local $_Result = DllCall($v_hAdvAPI, "int", "CloseServiceHandle", "int", $v_hSCObject)
	If @error = 0 Then
		Return $_Result[0]
	Else
		SetError(@error)
		Return 0
	EndIf
EndFunc

Func __ControlService($v_hService, $v_dwControl, $v_lpServiceStatus, $v_hAdvAPI = "advapi32.dll")
	Local $_Result = DllCall($v_hAdvAPI, "int", "ControlService", "int", $v_hService, "int", $v_dwControl, "ptr", $v_lpServiceStatus)
	If @error = 0 Then
		Return $_Result[0]
	Else
		SetError(@error)
		Return 0
	EndIf
EndFunc

Func __OpenSCManager($v_lpMachineName, $v_lpDatabaseName, $v_dwDesiredAccess, $v_hAdvAPI = "advapi32.dll")
	Local $_Result = DllCall($v_hAdvAPI, "int", "OpenSCManagerA", "str", $v_lpMachineName, "str", $v_lpDatabaseName, "int", $v_dwDesiredAccess)
	If @error = 0 Then
		Return $_Result[0]
	Else
		SetError(@error)
		Return 0
	EndIf
EndFunc

Func __OpenService($v_hSCManager, $v_lpServiceName, $v_dwDesiredAccess, $v_hAdvAPI = "advapi32.dll")
	Local $_Result = DllCall($v_hAdvAPI, "int", "OpenServiceA", "int", $v_hSCManager, "str", $v_lpServiceName, "int", $v_dwDesiredAccess)
	If @error = 0 Then
		Return $_Result[0]
	Else
		SetError(@error)
		Return 0
	EndIf
EndFunc

Func __QueryServiceStatus($v_hService, $v_lpServiceStatus, $v_hAdvAPI = "advapi32.dll")
	Local $_Result = DllCall($v_hAdvAPI, "int", "QueryServiceStatus", "int", $v_hService, "ptr", $v_lpServiceStatus)
	If @error = 0 Then
		Return $_Result[0]
	Else
		SetError(@error)
		Return 0
	EndIf
EndFunc

Func __StartService($v_hService, $v_dwNumServiceArgs, $v_lpServiceArgVectors, $v_hAdvAPI = "advapi32.dll")
	Local $_Result = DllCall($v_hAdvAPI, "int", "StartServiceA", "int", $v_hService, "int", $v_dwNumServiceArgs, "int", $v_lpServiceArgVectors)
	If @error = 0 Then
		Return $_Result[0]
	Else
		SetError(@error)
		Return 0
	EndIf
EndFunc

;===================================================================================================================
; Here below are 4 NT-service related functions: _ServiceStatus(), _ServicePause(), _ServiceStart(), _ServiceStop()
;===================================================================================================================
Func _ServiceStatus($v_ServiceName, $v_ComputerName = "")
    Local $_ServiceStat = __CreateStructServiceStatus()
    Local $_hSManager
    Local $_hService
    Local $_hServiceStatus
    Local $_Result = 0
	Local $_Err = 0
	Local $_Ext = 0

    $_hSManager = __OpenSCManager($v_ComputerName, $SERVICES_ACTIVE_DATABASE, $SC_MANAGER_ALL_ACCESS)
    If $_hSManager <> 0 Then
        $_hService = __OpenService($_hSManager, $v_ServiceName, $SERVICE_ALL_ACCESS)
        If $_hService <> 0 Then
            $_hServiceStatus = __QueryServiceStatus($_hService, DllStructGetPtr($_ServiceStat))
            If $_hServiceStatus <> 0 Then
                Switch DllStructGetData($_ServiceStat, 2)
                Case $SERVICE_STOPPED
                    $_Result = "Stopped"
                Case $SERVICE_START_PENDING
                    $_Result = "Start Pending"
                Case $SERVICE_STOP_PENDING
                    $_Result = "Stop Pending"
                Case $SERVICE_RUNNING
                    $_Result = "Running"
                Case $SERVICE_CONTINUE_PENDING
                    $_Result = "Coninue Pending"
                Case $SERVICE_PAUSE_PENDING
                    $_Result = "Pause Pending"
                Case $SERVICE_PAUSED
                    $_Result = "Paused"
				Case Else
					$_Err = 4
                EndSwitch
			Else
				$_Ext = @error
				$_Err = 3
            EndIf
            __CloseServiceHandle($_hService)
		Else
			$_Ext = @error
			$_Err = 2
        EndIf
        __CloseServiceHandle($_hSManager)
	Else
		$_Ext = @error
		$_Err = 1
    EndIf

	Return SetError($_Err, $_Ext, $_Result)
EndFunc

Func _ServicePause($v_ServiceName, $v_ComputerName = "")
    Local $_ServiceStatus = __CreateStructServiceStatus()
    Local $_hSManager
    Local $_hService
    Local $_Result = 0
	Local $_Err = 0
	Local $_Ext = 0

    $_hSManager = __OpenSCManager($v_ComputerName, $SERVICES_ACTIVE_DATABASE, $SC_MANAGER_ALL_ACCESS)
    If $_hSManager <> 0 Then
        $_hService = __OpenService($_hSManager, $v_ServiceName, $SERVICE_ALL_ACCESS)
        If $_hService <> 0 Then
            $_Result = __ControlService($_hService, $SERVICE_CONTROL_PAUSE, DllStructGetPtr($_ServiceStatus))
			If $_Result = 0 Then
				$_Ext = @error
				$_Err = 3
			EndIf
            __CloseServiceHandle($_hService)
		Else
			$_Ext = @error
			$_Err = 2
        EndIf
        __CloseServiceHandle($_hSManager)
	Else
		$_Ext = @error
		$_Err = 1
    EndIf

	Return SetError($_Err, $_Ext, $_Result)
EndFunc

Func _ServiceStart($v_ServiceName, $v_ComputerName = "")
    Local $_hSManager
    Local $_hService
    Local $_Result = 0
	Local $_Err = 0
	Local $_Ext = 0

    $_hSManager = __OpenSCManager($v_ComputerName, $SERVICES_ACTIVE_DATABASE, $SC_MANAGER_ALL_ACCESS)
    If $_hSManager <> 0 Then
        $_hService = __OpenService($_hSManager, $v_ServiceName, $SERVICE_ALL_ACCESS)
        If $_hService <> 0 Then
            $_Result = __StartService($_hService, 0, 0)
			If $_Result = 0 Then
				$_Ext = @error
				$_Err = 3
			EndIf
            __CloseServiceHandle($_hService)
		Else
			$_Ext = @error
			$_Err = 2
        EndIf
        __CloseServiceHandle($_hSManager)
	Else
		$_Ext = @error
		$_Err = 1
    EndIf

	Return SetError($_Err, $_Ext, $_Result)
EndFunc

Func _ServiceStop($v_ServiceName, $v_ComputerName = "")
    Local $_ServiceStatus = __CreateStructServiceStatus()
    Local $_hSManager
    Local $_hService
    Local $_Result = 0
	Local $_Err = 0
	Local $_Ext = 0

    $_hSManager = __OpenSCManager($v_ComputerName, $SERVICES_ACTIVE_DATABASE, $SC_MANAGER_ALL_ACCESS)
    If $_hSManager <> 0 Then
        $_hService = __OpenService($_hSManager, $v_ServiceName, $SERVICE_ALL_ACCESS)
        If $_hService <> 0 Then
            $_Result = __ControlService($_hService, $SERVICE_CONTROL_STOP, DllStructGetPtr($_ServiceStatus))
			If $_Result = 0 Then
				$_Ext = @error
				$_Err = 3
			EndIf
            __CloseServiceHandle($_hService)
		Else
			$_Ext = @error
			$_Err = 2
        EndIf
        __CloseServiceHandle($_hSManager)
	Else
		$_Ext = @error
		$_Err = 1
    EndIf

	Return SetError($_Err, $_Ext, $_Result)
EndFunc

;===============================================================================================================================================
; NT-service related funtions use internal service names. So use this function to convert the display name, as you see in the Services Manager.
;===============================================================================================================================================
Func _ToInternalServiceName($v_ServiceDisplayName)
	Local $_Result = ""
	Local $_NTSvcKey = "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services"
	Local $_SubKey
	Local $i = 1

	If $v_ServiceDisplayName = "" Then Return $_Result
	While 1
		$_SubKey = RegEnumKey($_NTSvcKey, $i)
		$i += 1
		If @error = 0 Then
			If RegRead($_NTSvcKey & "\" & $_SubKey, "DisplayName") = $v_ServiceDisplayName Then
				$_Result = $_SubKey
				ExitLoop
			EndIf
		Else
			ExitLoop
		EndIf
	WEnd

	Return $_Result
EndFunc
