#include-once

; #INDEX# =======================================================================================================================
; Title .........: Constants
; AutoIt Version : 3.2
; Language ......: English
; Description ...: Constants to be included in an AutoIt v3 script.
; Author(s) .....: JLandes, Nutster, CyberSlug, Holger, ...
; ===============================================================================================================================

; #CONSTANTS# ===================================================================================================================

; Tray predefined ID's
Global Const $TRAY_ITEM_EXIT = 3
Global Const $TRAY_ITEM_PAUSE = 4
Global Const $TRAY_ITEM_FIRST = 7

; Tray menu/item state values
Global Const $TRAY_CHECKED = 1
Global Const $TRAY_UNCHECKED = 4
Global Const $TRAY_ENABLE = 64
Global Const $TRAY_DISABLE = 128
Global Const $TRAY_FOCUS = 256
Global Const $TRAY_DEFAULT = 512

; Tray event values
Global Const $TRAY_EVENT_SHOWICON = -3
Global Const $TRAY_EVENT_HIDEICON = -4
Global Const $TRAY_EVENT_FLASHICON = -5
Global Const $TRAY_EVENT_NOFLASHICON = -6
Global Const $TRAY_EVENT_PRIMARYDOWN = -7
Global Const $TRAY_EVENT_PRIMARYUP = -8
Global Const $TRAY_EVENT_SECONDARYDOWN = -9
Global Const $TRAY_EVENT_SECONDARYUP = -10
Global Const $TRAY_EVENT_MOUSEOVER = -11
Global Const $TRAY_EVENT_MOUSEOUT = -12
Global Const $TRAY_EVENT_PRIMARYDOUBLE = -13
Global Const $TRAY_EVENT_SECONDARYDOUBLE = -14

; Indicates the type of Balloon Tip to display
Global Const $TIP_ICONNONE = 0 ; No icon (default)
Global Const $TIP_ICONASTERISK = 1 ; Info icon
Global Const $TIP_ICONEXCLAMATION = 2 ; Warning icon
Global Const $TIP_ICONHAND = 3 ; Error icon
Global Const $TIP_NOSOUND = 16 ; No sound

; TraySetState values
Global Const $TRAY_ICONSTATE_SHOW = 1
Global Const $TRAY_ICONSTATE_HIDE = 2
Global Const $TRAY_ICONSTATE_FLASH = 4
Global Const $TRAY_ICONSTATE_STOPFLASH = 8
Global Const $TRAY_ICONSTATE_RESET = 16
; ===============================================================================================================================
