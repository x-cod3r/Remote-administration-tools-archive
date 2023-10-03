#include-once

#include "ProcessConstants.au3"
#include "FileConstants.au3"
#include "DirConstants.au3"
#include "ColorConstants.au3"
#include "StringConstants.au3"
#include "MsgBoxConstants.au3"
#include "TrayConstants.au3"

; #INDEX# =======================================================================================================================
; Title .........: Constants
; AutoIt Version : 3.2
; Language ......: English
; Description ...: Constants to be included in an AutoIt v3 script.
; Author(s) .....: JLandes, Nutster, CyberSlug, Holger, ...
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================
; Sets the way coords are used in the mouse and pixel functions
Global Const $OPT_COORDSRELATIVE = 0 ; Relative coords to the active window
Global Const $OPT_COORDSABSOLUTE = 1 ; Absolute screen coordinates (default)
Global Const $OPT_COORDSCLIENT = 2 ; Relative coords to client area

; Sets how errors are handled if a Run/RunWait function fails
Global Const $OPT_ERRORSILENT = 0 ; Silent error (@error set to 1)
Global Const $OPT_ERRORFATAL = 1 ; Fatal error (default)

; Alters the use of Caps Lock
Global Const $OPT_CAPSNOSTORE = 0 ; Don't store/restore Caps Lock state
Global Const $OPT_CAPSSTORE = 1 ; Store/restore Caps Lock state (default)

; Alters the method that is used to match window titles
Global Const $OPT_MATCHSTART = 1 ; Match the title from the start (default)
Global Const $OPT_MATCHANY = 2 ; Match any substring in the title
Global Const $OPT_MATCHEXACT = 3 ; Match the title exactly
Global Const $OPT_MATCHADVANCED = 4 ; Use advanced window matching (deprecated)

; Common Control Styles
Global Const $CCS_TOP = 0x01
Global Const $CCS_NOMOVEY = 0x02
Global Const $CCS_BOTTOM = 0x03
Global Const $CCS_NORESIZE = 0x04
Global Const $CCS_NOPARENTALIGN = 0x08
Global Const $CCS_NOHILITE = 0x10
Global Const $CCS_ADJUSTABLE = 0x20
Global Const $CCS_NODIVIDER = 0x40
Global Const $CCS_VERT = 0x0080
Global Const $CCS_LEFT = 0x0081
Global Const $CCS_NOMOVEX = 0x0082
Global Const $CCS_RIGHT = 0x0083

; DrawIconEx Constants
; in WinAPIConstants.au3

; EnumDisplayDevice Constants
; in WinAPIConstants.au3

; Dir Constants
; in DirConstants.au3

; DriveGetType() Constants
Global Const $DT_DRIVETYPE = 1 ; Drive type e.g. CD-ROM, Fixed.
Global Const $DT_SSDSTATUS = 2 ; Status of whether the drive is SSD.
Global Const $DT_BUSTYPE = 3 ; Bus type e.g. SATA, SD.

; File Constants
; in FileConstants.au3

; FlashWindowEx Constants
; in WinAPIConstants.au3

; FormatMessage Constants
; in WinAPIConstants.au3

; GetWindows Constants
; in WinAPIConstants.au3

; GetWindowLong Constants
; in WinAPIConstants.au3

; Standard Icon Index Constants
; in WinAPIConstants.au3

; Image Load Constants
; in WinAPIConstants.au3

; Image Type Constants
; in WinAPIConstants.au3

; Keyboard Constants
; Changes how keys are processed
; in WinAPIConstants.au3

; Sets the state of the Caps Lock key
; in WinAPIConstants.au3

; LoadLibraryEx Constants
; in WinAPIConstants.au3

; Reserved IDs for System Objects
; in MenuConstants.au3
; in ScrollBarsConstants.au3
Global Const $OBJID_WINDOW = 0x00000000
Global Const $OBJID_TITLEBAR = 0xFFFFFFFE
Global Const $OBJID_SIZEGRIP = 0xFFFFFFF9
Global Const $OBJID_CARET = 0xFFFFFFF8
Global Const $OBJID_CURSOR = 0xFFFFFFF7
Global Const $OBJID_ALERT = 0xFFFFFFF6
Global Const $OBJID_SOUND = 0xFFFFFFF5

; Virtual Keys Constants
; in WinAPIvkeysConstants.au3

; Message Box Constants
; Indicates the buttons displayed in the message box
; in MsgBoxConstants.au3

; Displays an icon in the message box
; in MsgBoxConstants.au3

; Indicates the default button
; in MsgBoxConstants.au3

; Indicates the modality of the dialog box
; in MsgBoxConstants.au3

; Indicates miscellaneous message box attributes
; in MsgBoxConstants.au3

; Indicates the button selected in the message box
; in MsgBoxConstants.au3

; Progress and Splash Constants
; Indicates properties of the displayed progress or splash dialog
Global Const $DLG_NOTITLE = 1 ; Titleless window
Global Const $DLG_NOTONTOP = 2 ; Without "always on top" attribute
Global Const $DLG_TEXTLEFT = 4 ; Left justified text
Global Const $DLG_TEXTRIGHT = 8 ; Right justified text
Global Const $DLG_MOVEABLE = 16 ; Window can be moved
Global Const $DLG_TEXTVCENTER = 32 ; Splash text centered vertically

; Tray Tip Constants
; in TrayConstants.au3

; Mouse Constants
; Indicates current mouse cursor
Global Const $IDC_UNKNOWN = 0 ; Unknown cursor
Global Const $IDC_APPSTARTING = 1 ; Standard arrow and small hourglass
Global Const $IDC_ARROW = 2 ; Standard arrow
Global Const $IDC_CROSS = 3 ; Crosshair
Global Const $IDC_HAND = 32649 ; Hand cursor
Global Const $IDC_HELP = 4 ; Arrow and question mark
Global Const $IDC_IBEAM = 5 ; I-beam
Global Const $IDC_ICON = 6 ; Obsolete
Global Const $IDC_NO = 7 ; Slashed circle
Global Const $IDC_SIZE = 8 ; Obsolete
Global Const $IDC_SIZEALL = 9 ; Four-pointed arrow pointing N, S, E, and W
Global Const $IDC_SIZENESW = 10 ; Double-pointed arrow pointing NE and SW
Global Const $IDC_SIZENS = 11 ; Double-pointed arrow pointing N and S
Global Const $IDC_SIZENWSE = 12 ; Double-pointed arrow pointing NW and SE
Global Const $IDC_SIZEWE = 13 ; Double-pointed arrow pointing W and E
Global Const $IDC_UPARROW = 14 ; Vertical arrow
Global Const $IDC_WAIT = 15 ; Hourglass

Global Const $IDI_APPLICATION = 32512 ; Application icon
Global Const $IDI_ASTERISK = 32516 ; Asterisk icon
Global Const $IDI_EXCLAMATION = 32515 ; Exclamation point icon
Global Const $IDI_HAND = 32513 ; Stop sign icon
Global Const $IDI_QUESTION = 32514 ; Question-mark icon
Global Const $IDI_WINLOGO = 32517 ; Windows logo icon. Windows XP: Application icon
Global Const $IDI_SHIELD = 32518
Global Const $IDI_ERROR = $IDI_HAND
Global Const $IDI_INFORMATION = $IDI_ASTERISK
Global Const $IDI_WARNING = $IDI_EXCLAMATION

; Process Constants
; Indicates the type of shutdown
Global Const $SD_LOGOFF = 0 ; Logoff
Global Const $SD_SHUTDOWN = 1 ; Shutdown
Global Const $SD_REBOOT = 2 ; Reboot
Global Const $SD_FORCE = 4 ; Force
Global Const $SD_POWERDOWN = 8 ; Power down
Global Const $SD_FORCEHUNG = 16 ; Force shutdown if hung
Global Const $SD_STANDBY = 32 ; Standby
Global Const $SD_HIBERNATE = 64 ; Hibernate

; OpenProcess Constants
; in ProcessConstants.au3

; String Constants
; in StringConstants.au3
; Indicates if string operations should be case sensitive

; StringStripWS Constants
; Indicates the type of stripping that should be performed
; in StringConstants.au3

; StringSplit Constants
; in StringConstants.au3

; Token Constants
; in SecurityConstants.au3

; Tray Constants
; in TrayConstants.au3

; Run Constants
Global Const $STDIN_CHILD = 1
Global Const $STDOUT_CHILD = 2
Global Const $STDERR_CHILD = 4
Global Const $STDERR_MERGED = 8
Global Const $STDIO_INHERIT_PARENT = 0x10
Global Const $RUN_CREATE_NEW_CONSOLE = 0x00010000

; Colour Constants
; in ColorConstants.au3

; Mouse Event Constants
Global Const $MOUSEEVENTF_ABSOLUTE = 0x8000 ; Specifies that the dx and dy parameters contain normalized absolute coordinates
Global Const $MOUSEEVENTF_MOVE = 0x0001 ; Specifies that movement occurred
Global Const $MOUSEEVENTF_LEFTDOWN = 0x0002 ; Specifies that the left button changed to down
Global Const $MOUSEEVENTF_LEFTUP = 0x0004 ; Specifies that the left button changed to up
Global Const $MOUSEEVENTF_RIGHTDOWN = 0x0008 ; Specifies that the right button changed to down
Global Const $MOUSEEVENTF_RIGHTUP = 0x0010 ; Specifies that the right button changed to up
Global Const $MOUSEEVENTF_MIDDLEDOWN = 0x0020 ; Specifies that the middle button changed to down
Global Const $MOUSEEVENTF_MIDDLEUP = 0x0040 ; Specifies that the middle button changed to up
Global Const $MOUSEEVENTF_WHEEL = 0x0800 ; Specifies that the wheel has been moved, if the mouse has a wheel
Global Const $MOUSEEVENTF_XDOWN = 0x0080 ; Specifies that an X button was pressed
Global Const $MOUSEEVENTF_XUP = 0x0100 ; Specifies that an X button was released

; Reg Value type Constants
Global Const $REG_NONE = 0
Global Const $REG_SZ = 1
Global Const $REG_EXPAND_SZ = 2
Global Const $REG_BINARY = 3
Global Const $REG_DWORD = 4
Global Const $REG_DWORD_LITTLE_ENDIAN = 4
Global Const $REG_DWORD_BIG_ENDIAN = 5
Global Const $REG_LINK = 6
Global Const $REG_MULTI_SZ = 7
Global Const $REG_RESOURCE_LIST = 8
Global Const $REG_FULL_RESOURCE_DESCRIPTOR = 9
Global Const $REG_RESOURCE_REQUIREMENTS_LIST = 10
Global Const $REG_QWORD = 11
Global Const $REG_QWORD_LITTLE_ENDIAN = 11

; Z order
Global Const $HWND_BOTTOM = 1 ; Places the window at the bottom of the Z order
Global Const $HWND_NOTOPMOST = -2 ; Places the window above all non-topmost windows
Global Const $HWND_TOP = 0 ; Places the window at the top of the Z order
Global Const $HWND_TOPMOST = -1 ; Places the window above all non-topmost windows

; SetWindowPos Constants
Global Const $SWP_NOSIZE = 0x0001
Global Const $SWP_NOMOVE = 0x0002
Global Const $SWP_NOZORDER = 0x0004
Global Const $SWP_NOREDRAW = 0x0008
Global Const $SWP_NOACTIVATE = 0x0010
Global Const $SWP_FRAMECHANGED = 0x0020
Global Const $SWP_DRAWFRAME = 0x0020
Global Const $SWP_SHOWWINDOW = 0x0040
Global Const $SWP_HIDEWINDOW = 0x0080
Global Const $SWP_NOCOPYBITS = 0x0100
Global Const $SWP_NOOWNERZORDER = 0x0200
Global Const $SWP_NOREPOSITION = 0x0200
Global Const $SWP_NOSENDCHANGING = 0x0400
Global Const $SWP_DEFERERASE = 0x2000
Global Const $SWP_ASYNCWINDOWPOS = 0x4000

; Keywords (returned from the IsKeyword() function
Global Const $KEYWORD_DEFAULT = 1
Global Const $KEYWORD_NULL = 2

; language identifiers
; in WinAPIlangConstants.au3

; sublanguage identifiers
; in WinAPIlangConstants.au3

; Sorting IDs. (from WINNT.H)
; in WinAPIlangConstants.au3
; ===============================================================================================================================
