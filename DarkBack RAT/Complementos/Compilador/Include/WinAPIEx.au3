#include-once

#include "WinAPICom.au3"
#include "WinAPIDiag.au3"
#include "WinAPIDlg.au3"
#include "WinAPIFiles.au3"
#include "WinAPIGdi.au3"
#include "WinAPILocale.au3"
#include "WinAPIMisc.au3"
#include "WinAPIProc.au3"
#include "WinAPIReg.au3"
#include "WinAPIRes.au3"
#include "WinAPIShellEx.au3"
#include "WinAPIShPath.au3"
#include "WinAPISys.au3"
#include "WinAPITheme.au3"

; #INDEX# =======================================================================================================================
; Title .........: WinAPI Extended UDF Library for AutoIt3
; AutoIt Version : 3.8 / 3.3.8.0
; Language ......: English
; Description ...: Additional variables, constants and functions for the WinAPI.au3
; Author(s) .....: Yashied
; Modified ......: Jpm (Splitted, invidivual include lead to less unused functions)
; Dll(s) ........: Advapi32.dll, Comctl32.dll, Comdlg32.dll, Connect.dll, Credui.dll, Dbghelp.dll
;                  Dwmapi.dll, Gdi32.dll, Gdiplus.dll, Kernel32.dll, Ntdll.dll, Ole32.dll, Oleaut32.dll
;                  Powrprof.dll, Psapi.dll, Sensapi.dll, Sfc.dll, Shell32.dll, Shlwapi.dll, User32.dll
;                  Userenv.dll, Uxtheme.dll, Version.dll, Winmm.dll, Winspool.drv
; Requirements ..: AutoIt v3.3 +, Developed/Tested on Windows XP Pro Service Pack 2 and Windows Vista/7
; ===============================================================================================================================

; #OLD_FUNCTIONS#================================================================================================================
; Old Function/Name                      ; --> New Function/Name/Replacement(s)
; _WinAPI_AboutDlg                       ; --> _WinAPI_ShellAboutDlg
; _WinAPI_CalculatePopupWindowPosition   ; --> _GUICtrlMenu_CalculatePopupWindowPosition
;
; Already included in WinAPI.au3
;
; $tagICONINFO
; _WinAPI_DuplicateHandle
; _WinAPI_FillRect
; _WinAPI_FrameRect
; _WinAPI_GetAsyncKeyState
; _WinAPI_GetForegroundWindow
; _WinAPI_GetLayeredWindowAttributes
; _WinAPI_GetProcAddress
; _WinAPI_GetTextMetrics
; _WinAPI_InvalidateRect
; _WinAPI_PathFindOnPath
; _WinAPI_SetDefaultPrinter
; _WinAPI_SetHandleInformation
; _WinAPI_SetLayeredWindowAttributes
; _WinAPI_SetParent
;
; Already included in StructuresConstants.au3
;
; $tagBITMAPINFO
; $tagBITMAPINFOHEADER
; $tagSTARTUPINFO
; $tagTEXTMETRIC
; $tagWIN32_FIND_DATA
; ===============================================================================================================================
