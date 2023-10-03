#include-once
#AutoIt3Wrapper_Version=Beta
#AutoIt3Wrapper_Change2CUI=y
#include <WinAPI.au3>
#include <SecurityConstants.au3>
#include <Constants.au3>

; ------------------------------------------------------------------------------
;
; AutoIt Version: 3.2
; Author(s):      Arcker, Engine, Shminkyboy, udgeen
; Description:    This file is meant to be included in an AutoIt v3 script to
;                 provide access to these constants.
;
; ------------------------------------------------------------------------------

; ===============================================================================================================================
; Services
; =====================

; #INDEX# ==========================================================================================================================================================
; Title .........: Services
; AutoIt Version : 3.2.10++
; Language ......: English
; Description ...: Windows service management for AutoIt, with AutoIt-as-service functionality.
; Authors .......: Engine, Arcker
; ...............: Shminkyboy, udgeen
; ==================================================================================================================================================================

; #CURRENT# ========================================================================================================================================================
;_Service_Change
;_Service_Create
;_Service_Delete
;_Service_Enum
;_Service_EnumDependent
;_Service_Exists
;_Service_Pause
;_Service_Resume
;_Service_QueryAccount
;_Service_QueryBinaryPath
;_Service_QueryConfig
;_Service_QueryDependencies
;_Service_QueryDesc
;_Service_QueryDisplayName
;_Service_QueryErrorControl
;_Service_QueryFailureActions
;_Service_QueryGroup
;_Service_QueryStartType
;_Service_QueryStatus
;_Service_QueryType
;_Service_SetAccount
;_Service_SetBinaryPath
;_Service_SetDependencies
;_Service_SetDesc
;_Service_SetDisplayName
;_Service_SetErrorControl
;_Service_SetFailureActions
;_Service_SetGroup
;_Service_SetStartType
;_Service_SetType
;_Service_Start
;_Service_Stop
; ==================================================================================================================================================================

; #INTERNAL_USE_ONLY#===============================================================================================================================================
;ChangeServiceConfig
;CloseServiceHandle
;ControlService
;OpenSCManager
;OpenService
;QueryServiceConfig
;SetPrivs
; ==================================================================================================================================================================

; Standard access rights for a service
Global Const $SERVICES_ACTIVE_DATABASE = "ServicesActive"
Global Const $DELETE = 0x10000
;~ Global Const $READ_CONTROL = 0x20000
;~ Global Const $WRITE_DAC = 0x40000
;~ Global Const $WRITE_OWNER = 0x80000

;~ Global Const $STANDARD_RIGHTS_REQUIRED = BitOR( $DELETE, _
;~ 										$READ_CONTROL, _
;~ 										$WRITE_DAC, _
;~ 										$WRITE_OWNER )

; Access rights for the Service Control Manager
Global Const $SC_MANAGER_CONNECT = 0x0001
Global Const $SC_MANAGER_CREATE_SERVICE = 0x0002
Global Const $SC_MANAGER_ENUMERATE_SERVICE = 0x0004
Global Const $SC_MANAGER_LOCK = 0x0008
Global Const $SC_MANAGER_QUERY_LOCK_STATUS = 0x0010
Global Const $SC_MANAGER_MODIFY_BOOT_CONFIG = 0x0020

Global Const $SC_MANAGER_ALL_ACCESS = BitOR( $STANDARD_RIGHTS_REQUIRED, _
									$SC_MANAGER_CONNECT, _
									$SC_MANAGER_CREATE_SERVICE, _
									$SC_MANAGER_ENUMERATE_SERVICE, _
									$SC_MANAGER_LOCK, _
									$SC_MANAGER_QUERY_LOCK_STATUS, _
									$SC_MANAGER_MODIFY_BOOT_CONFIG )

; Access rights for a service
Global Const $SERVICE_QUERY_CONFIG = 0x0001
Global Const $SERVICE_CHANGE_CONFIG = 0x0002
Global Const $SERVICE_QUERY_STATUS = 0x0004
Global Const $SERVICE_ENUMERATE_DEPENDENTS = 0x0008
Global Const $SERVICE_START = 0x0010
Global Const $SERVICE_STOP = 0x0020
Global Const $SERVICE_PAUSE_CONTINUE = 0x0040
Global Const $SERVICE_INTERROGATE = 0x0080
Global Const $SERVICE_USER_DEFINED_CONTROL = 0x0100

Global Const $SERVICE_ALL_ACCESS = BitOR( $STANDARD_RIGHTS_REQUIRED, _
								$SERVICE_QUERY_CONFIG, _
								$SERVICE_CHANGE_CONFIG, _
								$SERVICE_QUERY_STATUS, _
								$SERVICE_ENUMERATE_DEPENDENTS, _
								$SERVICE_START, _
								$SERVICE_STOP, _
								$SERVICE_PAUSE_CONTINUE, _
								$SERVICE_INTERROGATE, _
								$SERVICE_USER_DEFINED_CONTROL )

; Service controls
Global Const $SERVICE_CONTROL_STOP = 0x00000001
Global Const $SERVICE_CONTROL_PAUSE = 0x00000002
Global Const $SERVICE_CONTROL_CONTINUE = 0x00000003
Global Const $SERVICE_CONTROL_INTERROGATE = 0x00000004
Global Const $SERVICE_CONTROL_SHUTDOWN = 0x00000005
Global Const $SERVICE_CONTROL_PARAMCHANGE = 0x00000006
Global Const $SERVICE_CONTROL_NETBINDADD = 0x00000007
Global Const $SERVICE_CONTROL_NETBINDREMOVE = 0x00000008
Global Const $SERVICE_CONTROL_NETBINDENABLE = 0x00000009
Global Const $SERVICE_CONTROL_NETBINDDISABLE = 0x0000000A
Global Const $SERVICE_CONTROL_DEVICEEVENT = 0x0000000B
Global Const $SERVICE_CONTROL_HARDWAREPROFILECHANGE = 0x0000000C
Global Const $SERVICE_CONTROL_POWEREVENT = 0x0000000D
Global Const $SERVICE_CONTROL_SESSIONCHANGE = 0x0000000E

; Service config
Global Const $SERVICE_NO_CHANGE = -1
Global Const $SERVICE_CONFIG_DESCRIPTION = 1
Global Const $SERVICE_CONFIG_FAILURE_ACTIONS = 2

; Service types
Global Const $SERVICE_KERNEL_DRIVER = 0x00000001
Global Const $SERVICE_FILE_SYSTEM_DRIVER = 0x00000002
Global Const $SERVICE_ADAPTER = 0x00000004
Global Const $SERVICE_RECOGNIZER_DRIVER = 0x00000008
Global Const $SERVICE_DRIVER = BitOR( $SERVICE_KERNEL_DRIVER, _
							$SERVICE_FILE_SYSTEM_DRIVER, _
							$SERVICE_RECOGNIZER_DRIVER )
Global Const $SERVICE_WIN32_OWN_PROCESS = 0x00000010
Global Const $SERVICE_WIN32_SHARE_PROCESS = 0x00000020
Global Const $SERVICE_WIN32 = BitOR( $SERVICE_WIN32_OWN_PROCESS, _
							$SERVICE_WIN32_SHARE_PROCESS )
Global Const $SERVICE_INTERACTIVE_PROCESS = 0x00000100
Global Const $SERVICE_TYPE_ALL = BitOR( $SERVICE_WIN32, _
								$SERVICE_ADAPTER, _
								$SERVICE_DRIVER, _
								$SERVICE_INTERACTIVE_PROCESS )

; Service start types
Global Const $SERVICE_BOOT_START = 0x00000000
Global Const $SERVICE_SYSTEM_START = 0x00000001
Global Const $SERVICE_AUTO_START = 0x00000002
Global Const $SERVICE_DEMAND_START = 0x00000003
Global Const $SERVICE_DISABLED = 0x00000004

; Service error control
Global Const $SERVICE_ERROR_IGNORE = 0x00000000
Global Const $SERVICE_ERROR_NORMAL = 0x00000001
Global Const $SERVICE_ERROR_SEVERE = 0x00000002
Global Const $SERVICE_ERROR_CRITICAL = 0x00000003

; Service state
Global Const $SERVICE_STOPPED = 0x00000001
Global Const $SERVICE_START_PENDING = 0x00000002
Global Const $SERVICE_STOP_PENDING = 0x00000003
Global Const $SERVICE_RUNNING = 0x00000004
Global Const $SERVICE_CONTINUE_PENDING = 0x00000005
Global Const $SERVICE_PAUSE_PENDING = 0x00000006
Global Const $SERVICE_PAUSED = 0x00000007

; Service accept control codes
Global Const $SERVICE_ACCEPT_STOP = 0x00000001
Global Const $SERVICE_ACCEPT_PAUSE_CONTINUE = 0x00000002
Global Const $SERVICE_ACCEPT_SHUTDOWN = 0x00000004
Global Const $SERVICE_ACCEPT_PARAMCHANGE = 0x00000008
Global Const $SERVICE_ACCEPT_NETBINDCHANGE = 0x00000010
Global Const $SERVICE_ACCEPT_HARDWAREPROFILECHANGE = 0x00000020
Global Const $SERVICE_ACCEPT_POWEREVENT = 0x00000040
Global Const $SERVICE_ACCEPT_SESSIONCHANGE = 0x00000080
Global Const $SERVICE_ACCEPT_PRESHUTDOWN = 0x00000100

; Service enumerate
Global Const $SERVICE_ACTIVE = 0x00000001
Global Const $SERVICE_INACTIVE = 0x00000002
Global Const $SERVICE_STATE_ALL = BitOR( $SERVICE_ACTIVE, _
								$SERVICE_INACTIVE )

; Service info
Global Const $SC_STATUS_PROCESS_INFO = 0
Global Const $SC_ENUM_PROCESS_INFO = 0

; Service specific system error codes
Global Const $ERROR_SERVICE_DISABLED = 1058
Global Const $ERROR_SERVICE_SPECIFIC_ERROR = 1066
Global Const $ERROR_SERVICE_DEPENDENCY_FAIL = 1068
Global Const $ERROR_SERVICE_NEVER_STARTED = 1077
Global Const $NO_ERROR = 0

; SC_ACTION_TYPE enumeration type
Global Enum $SC_ACTION_NONE, $SC_ACTION_RESTART, $SC_ACTION_REBOOT, $SC_ACTION_RUN_COMMAND

Global Const $SERVICE_RUNS_IN_SYSTEM_PROCESS = 0x00000001

; Globals for Au3@service routines
Global $tServiceName,$tServiceCtrl,$tServiceMain,$service_debug_mode = False
Global $tService_Status = DllStructCreate("dword dwServiceType;" & _
		"dword dwCurrentState;dword dwControlsAccepted;dword dwWin32ExitCode;" & _
		"dword dwServiceSpecificExitCode;dword dwCheckPoint;dword dwWaitHint")
Global $tService_Status_handle
Global Const $NTSL_LOOP_WAIT = -1
Global $service_type
Global $service_stop_event
Global $NTSL_ERROR_SERVICE_STATUS = 2
Global Const $WAIT_OBJECT_0 = 0x0

; Service event types
Global Const $WTS_CONSOLE_CONNECT = 0x00000001
Global Const $WTS_CONSOLE_DISCONNECT = 0x00000002
Global Const $WTS_REMOTE_CONNECT = 0x00000003
Global Const $WTS_REMOTE_DISCONNECT = 0x00000004
Global Const $WTS_SESSION_LOGON = 0x00000005
Global Const $WTS_SESSION_LOGOFF = 0x00000006
Global Const $WTS_SESSION_LOCK = 0x00000007
Global Const $WTS_SESSION_UNLOCK = 0x00000008
Global Const $WTS_SESSION_REMOTE_CONTROL = 0x00000009

