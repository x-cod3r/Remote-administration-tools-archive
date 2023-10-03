#AutoIt3Wrapper_Au3Check_Parameters=-d -w 1 -w 2 -w 3 -w- 4 -w 5 -w 6 -w- 7 ; Uncomment this line to Au3Check!
#include-once
; #INDEX# =======================================================================================================================
; Title .........: _GUIResourcePic
; Version .......: 1.8.2012.2600b
; AutoIt Version.: 3.3.8.1
; Language.......: English
; Description ...: Load image (.bmp, .jpg, .png, .gif {animated} and other formats.) resources from .exe, .dll, .ocx, .cpl...
; Author ........: João Carlos (jscript)
; Remarks .......: Based on http://www.codeproject.com/script/Articles/ViewDownloads.aspx?aid=1776 and Prog@ndy work concept!
; ===============================================================================================================================

; #CURRENT# =====================================================================================================================
; _GUICtrlPic_Create
; _GUICtrlPic_Delete
; _GUICtrlPic_Release
; _GUICtrlPic_SetImage
; _GUICtrlPic_SetState
; _GUICtrlPic_GetInfo
; ===============================================================================================================================

; #INTERNAL_USE_ONLY# ===========================================================================================================
; __GRP_GetGifInfo
; __GRP_BuildList
; __GRP_DrawFrame
; __GRP_hImgToCtrl
; __GRP_DeleteObj
; __GRP_CreateTimer
; __GRP_KillTimer
; __GRP_SetTimer
; __GRP_ReleaseGIF
; __GRP_WM_DESTROY
; __GRP_ShutDown
; __GRP_GetCtrlIndex
; __GRP_GetGifFrameDelays
; __GRP_GetGifLoopCount
; __GRP_GetFileNameType
; __GRP_FreeMem
; __GRP_LoadResource
; ===== From other authors. =====
; __GDIPCreateBitmapFromScan0	;
; _GDIPlus_ImageLoadFromHGlobal	;
; _MemGlobalAllocFromBinary		;
; _MemGlobalAllocFromMem		;
; ===============================================================================================================================

; Thanks to asdf8 for add this! =================================================================================================
#Obfuscator_Ignore_Funcs= __GRP_BuildList, __GRP_DrawFrame, __GRP_SetTimer, __GDIPCreateBitmapFromScan0, _MemGlobalAllocFromMem
#Obfuscator_Ignore_Variables= $vGRP_TEMP, $avGRP_CTRLIDS, $iGRP_MSG
; ===============================================================================================================================

; #INCLUDES# ====================================================================================================================
#include <StructureConstants.au3>
#include <WindowsConstants.au3>
#include <StaticConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiImageList.au3>
#include <GDIPlus.au3>
#include <Memory.au3>
#include <WinApi.au3>
#include <Array.au3>
; ===============================================================================================================================

; #VARIABLES# ===================================================================================================================
; State
Global Const $GUI_GIFSTART = 64 ; If image is GIF animated, start/resume animation!
Global Const $GUI_GIFSTOP = 128 ; If image is GIF animated, stop/pause animation!

; Style (GIS = Gif Image Styles)
Global Const $GIS_ASPECTRATIOFIX = 0x2000 ; Fix the image size based on aspect ratio.
Global Const $GIS_HALFTRANSPARENCY = 0x4014 ; The images are rendered with the window background color. This Style is default.
Global Const $GIS_FULLTRANSPARENCY = 0x40015 ; The frames are rendered in full transparency independent of the background color of the window!
;							Note: This Style consumes more CPU because the exstyle $WS_EX_TRANSPARENT is added to each frame in real time!
;							Not valid if the image does not have transparency!

; Default Style to _GUICtrlPic_Create()!
Global Const $GIS_SS_DEFAULT_PIC = BitOR($GIS_HALFTRANSPARENCY, $SS_NOTIFY)

; ExStyle (GIS_EX = Gif Image Extended Styles)
Global $GIS_EX_DEFAULTRENDER = 0x21 ; To use _GUIImageList_Draw in rendering of images, use less CPU. This ExStyle is default!
Global $GIS_EX_CTRLSNDRENDER = 0x22 ; The frames is render using GUICtrlSendMsg, but consumes much more CPU!!!
;							 Note: If you use this ExStyle, only $GRP_FULLTRANSPARENCY is used for rendering images!

; Control and GIF variables
Global $avGRP_CTRLIDS[1][20]
Global $vGRP_TEMP, $iGRP_MSG = 0
Global $pGRP_tGUID = DllStructCreate($tagGUID)

; GDIP image property types constants
Global Const $iGRP_ptTypeByte = 1
Global Const $iGRP_ptTypeShort = 3
Global Const $iGRP_ptTypeLong = 4
Global Const $iGRP_ptLoopCount = 0x5101
Global Const $iGRP_ptFrameDelay = 0x5100
Global Const $tGRP_PropTagItem = "long id; long length; int Type; ptr value"

; Open DLLs to acelerate execution!
Global Const $hGRP_GDI32 = DllOpen("gdi32.dll")
Global Const $hGRP_USER32 = DllOpen("user32.dll")
Global Const $hGRP_COMCTL32 = DllOpen("comctl32.dll")
; ===============================================================================================================================

; #EXIT_REGISTER# ===============================================================================================================
OnAutoItExitRegister("__GRP_ShutDown")
; ===============================================================================================================================

; #FUNCTION# ====================================================================================================================
; Name...........: _GUICtrlPic_Create
; Description ...: Creates a Picture control for the GUI.
; Syntax ........: _GUICtrlPic_Create( sFileName, iLeft, iTop [, iWidth [, iHeight [, iStyle [, sExStyle ]]]]]] )
; Parameters ....: FileName 	- Filename of the picture, binary or resource to be loaded.
;								Supported types: BMP, JPG, PNG, GIF(animated). Can be an URL path too.
;								For a resource file, use the parameter in this format:
;									   "MyFile.ext|RessourceName|ResourceType".
;                  Left			- The left side of the control. If -1 is used then left will be computed according to GUICoordMode.
;                  Top			- The top of the control. If -1 is used then top will be computed according to GUICoordMode.
;                  Width		- [optional] The width of the control (default is the previously used width).
;                  Height		- [optional] The height of the control (default is the previously used height).
;                  $iStyle      - [optional] Defines the style of the control. Default is -1.
;                  $sExStyle    - [optional] Defines the extended style of the control. Default is -1.
; Return values .: Success 		- Returns the identifier (controlID) of the new control.
;				   Failure 		- Returns 0 if picture cannot be created.
; Author ........: JScript (João Carlos - FROM Brazil)
; Modified.......:
; Remarks .......: 1 - To update the picture after the dialog box is displayed just use _GUICtrlPic_SetImage().
;                  2 - If you want to have a picture having the same size as the file content just use Width=Height=0.
;                  3 - To set or change information in the control see _GUICtrlPic_Set...() functions.
;                  4 - Default resizing is $GUI_DOCKSIZE.
;                  5 - If a picture is set as a background picture, as the other controls will overlap, it's important to disable
;                      the pic control and create it after the others controls: GUICtrlSetState( controlID, $GUI_DISABLE ).
;                  6 - The extended style $GUI_WS_EX_PARENTDRAG can be used to allow the dragging of the parent window for windows
;                      that don't have a titlebar. Just use: GUICtrlSetStyle( controlID, -1, $GUI_WS_EX_PARENTDRAG ).
;                  7 - The background is set to transparent. GUICtrlSetBkColor() has effect on this pic control.
;				   8 - The resource type: $RT_ICON is not supported.
;				   9 - For a resource file, use the "FileName" parameter in this format: "MyFile.ext|RessourceName|ResourceType".
;				  10 - The INTERNALID parameter should only be used by the _GUICtrlPic_SetImage()!
;				  11 - Styles and ExStyles info:
;					If you define Widht and Heigth of image, to fix the size based on aspect ratio, use $GIS_ASPECTRATIOFIX Style.
;					$GIS_HALFTRANSPARENCY = The images are rendered with the window background color. This Style is default.
;					$GIS_FULLTRANSPARENCY = Frames are rendered in full transparency independent of the background color of the window!
;						Note: This Style consumes more CPU because the exstyle $WS_EX_TRANSPARENT is added to each frame in real time!
;						Not valid if the image does not have transparency!
;					To combine styles with the default style use BitOr($GIS_SS_DEFAULT_PIC, newstyle,...).
;					$GIS_EX_DEFAULTRENDER = To use _GUIImageList_Draw in rendering of images, use less CPU. This ExStyle is default!
;					$GIS_EX_CTRLSNDRENDER = The frames is render using GUICtrlSendMsg, but consumes much more CPU!!!
;						Note: If you use this ExStyle, only $GRP_FULLTRANSPARENCY is used for rendering images!
; Related .......:
; Link ..........;
; Example .......; _GUICtrlPic_Create("..\GUI\mslogo.jpg", 50, 50, 200, 50)
; ===============================================================================================================================
Func _GUICtrlPic_Create($sFileName, $iLeft = 0, $iTop = 0, $iWidth = -1, $iHeight = -1, $iStyle = -1, $iExStyle = -1, $INTERNALID = 0)
	Local $iCtrlID, $hCtrlID, $aCtrlStyle, $aCtrlExStyle, $iCtrlSize = 0x40 ; SS_REALSIZECONTROL = 0x40
	Local $hOImage, $pDimensionIDs, $iTransparency = 1, $iFrameCount, $aiFrameDelays, $iLoopCount, $hWndForm = 0
	Local $iIndex, $iOWidth, $iOHeight, $iReSize = 1, $asImgType, $tCtrlInfo, $iResizeMode
	Local $t_Style, $t_ExStyle, $iDefaultRender = 1, $iTransMode = 0, $hHGMem

	; If set image into native control!
	If $INTERNALID Then
		; If not a valid controlID return 0.
		If Not GUICtrlGetHandle($INTERNALID) Then Return SetError(0, 0, 0)
		$iCtrlID = $INTERNALID
	EndIf

	;----> Initialize GDI+ library only if not alread started!
	If $ghGDIPDll = 0 Then _GDIPlus_Startup()
	;<----

	; Processing the [FileName] parameter.
	If Not __GRP_GetFileNameType($sFileName, $hOImage, $hHGMem) Then Return SetError(0, 0, 0)

	; Returns file format GUID and image format name of an image.
	$asImgType = _GDIPlus_ImageGetRawFormat($hOImage)
	$asImgType = $asImgType[1]

	If $asImgType = "GIF" Then
		; __GRP_GetGifInfo( Byref param )
		If Not __GRP_GetGifInfo($pDimensionIDs, $hOImage, $iFrameCount, $iLoopCount, $aiFrameDelays, $iTransparency) Then
			__GRP_FreeMem($hOImage, $hHGMem)
			Return SetError(0, 0, 0)
		EndIf
	EndIf

	; Processing the Styles.
	If $iStyle = -1 Then $iStyle = $GIS_SS_DEFAULT_PIC
	If $iExStyle = -1 Then $iExStyle = $WS_EX_TRANSPARENT

	; $GIS_FULLTRANSPARENCY is used, frames are rendered in full transparency independent of the background color of the window!
	If BitAND($iStyle, $GIS_FULLTRANSPARENCY) = $GIS_FULLTRANSPARENCY Then
		If $iTransparency Then $iTransMode = 1
		$t_Style = BitOR($iStyle, $GIS_FULLTRANSPARENCY)
		; Remove Style.
		$iStyle = BitXOR($iStyle, $GIS_FULLTRANSPARENCY)
	EndIf

	; Check if $GIS_EX_CTRLSNDRENDER is used, the frames is render using GUICtrlSendMsg, but consumes much more CPU!!!
	; Note: If you use this ExStyle, only $GRP_FULLTRANSPARENCY is used for rendering images!
	If BitAND($iExStyle, $GIS_EX_CTRLSNDRENDER) = $GIS_EX_CTRLSNDRENDER Then
		$iDefaultRender = 0
		If $iTransparency Then $iTransMode = 1
		$t_ExStyle = BitOR($iExStyle, $GIS_EX_CTRLSNDRENDER)
		; Remove Style.
		$iExStyle = BitXOR($iExStyle, $GIS_EX_CTRLSNDRENDER)
	EndIf

	; Get image file dimensions.
	$iOWidth = _GDIPlus_ImageGetWidth($hOImage)
	$iOHeight = _GDIPlus_ImageGetHeight($hOImage)

	; Processing the image dimensions...
	Select
		; If you want to have a picture control having the same size as the file content just use width=height=0.
		Case ($iWidth = 0 And $iHeight = 0) Or ($iWidth = -1 And $iHeight = -1) Or ($iWidth = $iOWidth And $iHeight = $iOHeight)
			$iReSize = 0
			$iCtrlSize = 0x800 ; SS_REALSIZEIMAGE = 0x800
			$iWidth = $iOWidth
			$iHeight = $iOHeight
			If BitAND($iStyle, $GIS_ASPECTRATIOFIX) = $GIS_ASPECTRATIOFIX Then
				$t_Style = BitOR($iStyle, $GIS_ASPECTRATIOFIX)
				; Remove Style.
				$iStyle = BitXOR($iStyle, $GIS_ASPECTRATIOFIX)
			EndIf

			; Fix Aspect Ratio if Style $GIS_ASPECTRATIOFIX is used.
		Case BitAND($iStyle, $GIS_ASPECTRATIOFIX) = $GIS_ASPECTRATIOFIX
			Local $iAspectW = Int($iOWidth * $iHeight / $iOHeight)
			Local $iAspectH = Int($iOHeight * $iWidth / $iOWidth)
			Switch ($iAspectW > $iWidth)
				Case True
					$iHeight = $iAspectH
				Case False
					$iWidth = $iAspectW
			EndSwitch
			$t_Style = BitOR($iStyle, $GIS_ASPECTRATIOFIX)
			; Remove Style.
			$iStyle = BitXOR($iStyle, $GIS_ASPECTRATIOFIX)
	EndSelect

	;----> Remove some $GIS_XXX Styles!
	If BitAND($iStyle, $GIS_HALFTRANSPARENCY) = $GIS_HALFTRANSPARENCY Then $iStyle = BitXOR($iStyle, $GIS_HALFTRANSPARENCY)
	If BitAND($iExStyle, $GIS_EX_DEFAULTRENDER) = $GIS_EX_DEFAULTRENDER Then $iExStyle = BitXOR($iExStyle, $GIS_EX_DEFAULTRENDER)
	;<----

	;----> Control ID to show GIF image and interact with other functions.
	Switch $INTERNALID
		Case 0
			$iCtrlID = GUICtrlCreateLabel("", $iLeft, $iTop, $iWidth, $iHeight, BitOR($iStyle, $iCtrlSize, $SS_BITMAP), $iExStyle)
			; The automatic resizing event can be disabled if GUIEventOptions(Option) is set to 1.
			$iResizeMode = Opt("GUIResizeMode")
			Select
				Case Opt("GUIEventOptions") = 0 And $iResizeMode = 0
					GUICtrlSetResizing(-1, 768) ; Default resizing is $GUI_DOCSIZE = 768
				Case $iResizeMode > 0
					GUICtrlSetResizing(-1, $iResizeMode)
			EndSelect
		Case Else
			GUICtrlSetPos($iCtrlID, Default, Default, $iWidth, $iHeight)
			GUICtrlSetStyle($iCtrlID, BitOR($iStyle, $iCtrlSize, $SS_BITMAP), $iExStyle)
	EndSwitch
	; To GIF transparency work!
	GUICtrlSetBkColor($iCtrlID, $GUI_BKCOLOR_TRANSPARENT)

	; Get styles of control!
	$hCtrlID = GUICtrlGetHandle($iCtrlID)
	$aCtrlStyle = DllCall($hGRP_USER32, "long", "GetWindowLong", "hwnd", $hCtrlID, "int", -16) ; -16 = $GWL_STYLE
	$aCtrlExStyle = DllCall($hGRP_USER32, "long", "GetWindowLong", "hwnd", $hCtrlID, "int", -20) ; -20 = $GWL_EXSTYLE
	;<----

	; Get window handle for use with __GRP_CreateTimer function.
	$hWndForm = _WinAPI_GetParent($hCtrlID)

	;----> Fills ctrl info structure.
	If IsBinary($sFileName) Then $sFileName = "Binary"
	$tCtrlInfo = DllStructCreate("hwnd CtrlHandle;int Style;int ExStyle;wchar FileName[" & StringLen($sFileName) & "];" & _
			"long Left;long Top;long Width;long Height;long OWidht;long OHeight;int tStyle;int tExStyle;wchar Function[15];long HGMEM")
	DllStructSetData($tCtrlInfo, "CtrlHandle", $hCtrlID)
	DllStructSetData($tCtrlInfo, "Style", $aCtrlStyle[0])
	DllStructSetData($tCtrlInfo, "ExStyle", $aCtrlExStyle[0])
	DllStructSetData($tCtrlInfo, "FileName", $sFileName)
	DllStructSetData($tCtrlInfo, "Left", $iLeft)
	DllStructSetData($tCtrlInfo, "Top", $iTop)
	; Control size.
	DllStructSetData($tCtrlInfo, "Width", $iWidth)
	DllStructSetData($tCtrlInfo, "Height", $iHeight)
	; Original image size.
	DllStructSetData($tCtrlInfo, "OWidht", $iOWidth)
	DllStructSetData($tCtrlInfo, "OHeight", $iOHeight)
	; Save internal Styles!
	DllStructSetData($tCtrlInfo, "tStyle", $t_Style)
	DllStructSetData($tCtrlInfo, "tExStyle", $t_ExStyle)
	; Save build/draw function name, initial is __GRP_BuildList!
	DllStructSetData($tCtrlInfo, "Function", "__GRP_BuildList")
	; Save HGlobal MEM to release after.
	DllStructSetData($tCtrlInfo, "HGMEM", $hHGMem)
	;<----
	;----> Fills array with the control data!
	$iIndex = $avGRP_CTRLIDS[0][0] + 1
	ReDim $avGRP_CTRLIDS[$iIndex + 1][20]
	$avGRP_CTRLIDS[0][0] = $iIndex
	$avGRP_CTRLIDS[$iIndex][0] = $iCtrlID ; control ID
	$avGRP_CTRLIDS[$iIndex][1] = $tCtrlInfo ; control info structure.
	$avGRP_CTRLIDS[$iIndex][2] = $hOImage
	$avGRP_CTRLIDS[$iIndex][3] = $pDimensionIDs
	$avGRP_CTRLIDS[$iIndex][4] = $iFrameCount
	$avGRP_CTRLIDS[$iIndex][5] = $aiFrameDelays
	$avGRP_CTRLIDS[$iIndex][6] = $iLoopCount * $iFrameCount ; Repeat count
	$avGRP_CTRLIDS[$iIndex][7] = 0 ; First frame
	$avGRP_CTRLIDS[$iIndex][8] = $iDefaultRender ; Render to use.
	$avGRP_CTRLIDS[$iIndex][9] = $iReSize ; Resize=1 true, 0 false
	$avGRP_CTRLIDS[$iIndex][10] = $iTransMode ; Mode to render transparency!
	$avGRP_CTRLIDS[$iIndex][11] = 0 ; Flag to fill ImageList first! 0=empty
	$avGRP_CTRLIDS[$iIndex][12] = $hWndForm
	$avGRP_CTRLIDS[$iIndex][13] = 0 ; _WinAPI_GetDC($hCtrlID)
	$avGRP_CTRLIDS[$iIndex][14] = 0 ; _GUIImageList_Create() or DllStructCreate()
	$avGRP_CTRLIDS[$iIndex][15] = 0 ; Callback identifier, need this for the Kill Timer.
	$avGRP_CTRLIDS[$iIndex][16] = 0 ; Pointer to a callback identifier, need this for the __GRP_SetTimer.
	$avGRP_CTRLIDS[$iIndex][17] = 0 ; Flag to checks if the timer needs to be set to avoid unnecessary use of CPU!
	$avGRP_CTRLIDS[$iIndex][18] = $iTransparency ; Transparency flag.
	$avGRP_CTRLIDS[$iIndex][19] = 0 ; GUI background color, used by _GUIImageList_Create.
	; Check if gif is animated...
	Switch $iFrameCount
		Case 0
			; Resize the picture with quality, thanks to the asdf8!
			; http://www.autoitscript.com/forum/topic/100167-guiresourcepicau3-udf-supports-gif-animation-using-gdi/page__st__20#entry1004411
			If $iReSize Then
				Local $hOBitmap = __GDIPCreateBitmapFromScan0($iWidth, $iHeight, 0, $GDIP_PXF32ARGB, 0)
				Local $hGraphic = _GDIPlus_ImageGetGraphicsContext($hOBitmap)
				DllCall($ghGDIPDll, "uint", "GdipSetInterpolationMode", "hwnd", $hGraphic, "int", 7) ; high-quality, bicubic interpolation.
				_GDIPlus_GraphicsDrawImageRect($hGraphic, $hOImage, 0, 0, $iWidth, $iHeight)
				_GDIPlus_ImageDispose($hOImage)
				_GDIPlus_GraphicsDispose($hGraphic)
				$hOImage = $hOBitmap
				$avGRP_CTRLIDS[$iIndex][2] = $hOImage
			EndIf
			; Shows the single frame in the control.
			__GRP_hImgToCtrl($iCtrlID, $hOImage, $pDimensionIDs, 0)
		Case Else
			; Get the min and max value of Frame Delays.
			Local $iLowTime = _ArrayMin($aiFrameDelays, 1, 0), $iHiTime = _ArrayMax($aiFrameDelays, 1, 0)
			; If they are different, set flag to change timer in real time!
			If $iLowTime <> $iHiTime Then $avGRP_CTRLIDS[$iIndex][17] = 1

			Switch $iDefaultRender
				Case 1
					$avGRP_CTRLIDS[$iIndex][13] = _WinAPI_GetDC($hCtrlID)
					$avGRP_CTRLIDS[$iIndex][14] = _GUIImageList_Create($iWidth, $iHeight, 5, 0, $iFrameCount, 0)
				Case 0
					Local $HBITMAP[$iFrameCount]
					$avGRP_CTRLIDS[$iIndex][14] = $HBITMAP
			EndSwitch
			; First build a list / array of image frames to speed up drawing!
			__GRP_CreateTimer($hWndForm, $iLowTime, "__GRP_BuildList", $iIndex)
	EndSwitch

	; If the window is closed, ensures that the memory is released if the control has not been deleted by _GUICtrlPic_Delete function!
	If Not $iGRP_MSG Then
		GUIRegisterMsg($WM_DESTROY, "__GRP_WM_DESTROY")
		$iGRP_MSG = 1
		;BOOL WINAPI SetProcessWorkingSetSize(
		;	_In_  HANDLE hProcess,
		;	_In_  SIZE_T dwMinimumWorkingSetSize,
		;	_In_  SIZE_T dwMaximumWorkingSetSize
		;);
		Local $hHandle = _WinAPI_GetCurrentProcess()
		DllCall("kernel32.dll", "int", "SetProcessWorkingSetSize", "hwnd", $hHandle, "int", -1, "int", -1)
		_WinAPI_CloseHandle($hHandle)
	EndIf

	; Free the memory allocated for the control struct!
	$tCtrlInfo = 0
	;<----
	Return SetError(0, 0, $iCtrlID)
EndFunc   ;==>_GUICtrlPic_Create

; #FUNCTION# ====================================================================================================================
; Name...........: _GUICtrlPic_Delete
; Description ...: Deletes a control returned by _GUICtrlPic_Create.
; Syntax.........: _GUICtrlPic_Delete( controlID )
; Parameters ....: controlID		- The control identifier (controlID) as returned by a _GUICtrlPic_Create function.
; Return values .: Success 	 		- Returns 1.
;				   Failure 	 		- Returns 0.
; Author ........: João Carlos (jscript)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......; _GUICtrlPic_Delete($iCtrlID)
; ===============================================================================================================================
Func _GUICtrlPic_Delete($iCtrlID)
	Local $iIndex

	$iIndex = __GRP_GetCtrlIndex($iCtrlID)
	If Not $iIndex Then Return 0

	; If image is GIF animated...
	__GRP_ReleaseGIF($iIndex)

	For $i = $iIndex To UBound($avGRP_CTRLIDS) - 2
		For $j = 0 To 19
			$avGRP_CTRLIDS[$i][$j] = $avGRP_CTRLIDS[$i + 1][$j]
		Next
	Next
	ReDim $avGRP_CTRLIDS[$avGRP_CTRLIDS[0][0]][20]
	$avGRP_CTRLIDS[0][0] -= 1

	Return GUICtrlDelete($iCtrlID)
EndFunc   ;==>_GUICtrlPic_Delete

; #FUNCTION# ====================================================================================================================
; Name...........: _GUICtrlPic_Release
; Description ...: Frees memory used by the control without deleting it!
; Syntax.........: _GUICtrlPic_Release( controlID )
; Parameters ....: controlID		- The control identifier (controlID) as returned by a _GUICtrlPic_Create function.
; Return values .: Success 	 		- Returns 1.
;				   Failure 	 		- Returns 0.
; Author ........: João Carlos (jscript)
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......; _GUICtrlPic_Release($iCtrlID)
; ===============================================================================================================================
Func _GUICtrlPic_Release($iCtrlID)
	Local $iIndex

	$iIndex = __GRP_GetCtrlIndex($iCtrlID)
	If Not $iIndex Then Return 0

	; If image is GIF animated...
	__GRP_ReleaseGIF($iIndex)

	Return 1
EndFunc   ;==>_GUICtrlPic_Release

; #FUNCTION# ====================================================================================================================
; Name...........: _GUICtrlPic_SetImage
; Description ...: Sets the picture or resource to use for a control.
; Syntax.........: _GUICtrlPic_SetImage( controlID, FileName [, FixSize ]])
; Parameters ....: controlID	- The control identifier (controlID) as returned by a _GUICtrlPic_Create function.
;                  FileName 	- Filename of the picture, binary or resource to be loaded.
;								Supported types: BMP, JPG, PNG, GIF(animated). Can be an URL path too.
;								For a resource file, use the parameter in this format:
;									   "MyFile.ext|RessourceName|ResourceType".
;                  FixSize		- [optional] fix the original size of image.
; Return values .: Success 		- Returns 1
;				   Failure 		- Returns 0.
; Author ........: João Carlos (jscript)
; Modified.......:
; Remarks .......: 1 - You can use this function in the following static controls: GUICtrlCreatePic() or GUICtrlCreateLabel()
;				   2 - If you want to have a picture control having the same size as the file content just use FixSize=True.
;				   3 - The resource type: $RT_ICON is not supported.
; Related .......:
; Link ..........;
; Example .......; _GUICtrlPic_SetImage($iCtrlID, $sFileName)
; ===============================================================================================================================
Func _GUICtrlPic_SetImage($iCtrlID, $sFileName, $lFixSize = False)
	Local $hOImage, $pDimensionIDs, $iTransparency = 1, $iTransMode = 0
	Local $iFrameCount, $aiFrameDelays, $iLoopCount, $asImgType
	Local $iWidth = -1, $iHeight = -1, $iOWidth, $iOHeight, $iReSize = 1, $tCtrlInfo
	Local $iIndex, $iStyle, $iExStyle, $hHGMem

	If $iCtrlID = -1 Then $iCtrlID = _WinAPI_GetDlgCtrlID(GUICtrlGetHandle(-1))

	$iIndex = __GRP_GetCtrlIndex($iCtrlID)
	If Not $iIndex Then ; Was passed a native control to set image!
		Local $aCtrlPos, $hCtrlID

		$hCtrlID = GUICtrlGetHandle($iCtrlID)
		If Not $hCtrlID Then Return SetError(0, 0, 0)
		$aCtrlPos = WinGetPos($hCtrlID)
		If @error Then Return SetError(0, 0, 0)

		; If you want to have a picture control having the same size as the file content just use FixSize=True.
		If $lFixSize Then
			$aCtrlPos[2] = 0
			$aCtrlPos[3] = 0
		EndIf
		; Get styles of control!
		$iStyle = DllCall($hGRP_USER32, "long", "GetWindowLong", "hwnd", $hCtrlID, "int", -16) ; -16 = $GWL_STYLE
		$iExStyle = DllCall($hGRP_USER32, "long", "GetWindowLong", "hwnd", $hCtrlID, "int", -20) ; -20 = $GWL_EXSTYLE

		Return SetError(0, _GUICtrlPic_Create($sFileName, $aCtrlPos[0], $aCtrlPos[1], $aCtrlPos[2], $aCtrlPos[3], $iStyle[0], $iExStyle[0], $iCtrlID), 1)
	EndIf

	; Processing the [FileName] parameter.
	If Not __GRP_GetFileNameType($sFileName, $hOImage, $hHGMem) Then Return SetError(0, 0, 0)

	; If image is GIF animated...
	__GRP_ReleaseGIF($iIndex)

	; Returns file format GUID and image format name of an image.
	$asImgType = _GDIPlus_ImageGetRawFormat($hOImage)
	$asImgType = $asImgType[1]

	If $asImgType = "GIF" Then
		; __GRP_GetGifInfo( Byref param )
		If Not __GRP_GetGifInfo($pDimensionIDs, $hOImage, $iFrameCount, $iLoopCount, $aiFrameDelays, $iTransparency) Then
			_GDIPlus_ImageDispose($hOImage)
			Return SetError(0, 0, 0)
		EndIf
	EndIf

	; ctrl info structure.
	$tCtrlInfo = $avGRP_CTRLIDS[$iIndex][1]

	; Processing the Styles.
	$iStyle = DllStructGetData($tCtrlInfo, "tStyle")
	$iExStyle = DllStructGetData($tCtrlInfo, "tExStyle")

	; If $GIS_FULLTRANSPARENCY is used, frames are rendered in full transparency independent of the background color of the window!
	; Check if $GIS_EX_CTRLSNDRENDER is used, the frames is render using GUICtrlSendMsg, but consumes much more CPU!!!
	; Note: If you use this ExStyle, only $GRP_FULLTRANSPARENCY is used for rendering images!
	If BitAND($iStyle, $GIS_FULLTRANSPARENCY) = $GIS_FULLTRANSPARENCY Or _
			BitAND($iExStyle, $GIS_EX_CTRLSNDRENDER) = $GIS_EX_CTRLSNDRENDER Then
		If $iTransparency Then $iTransMode = 1
	EndIf

	; Get image file dimensions.
	$iOWidth = _GDIPlus_ImageGetWidth($hOImage)
	$iOHeight = _GDIPlus_ImageGetHeight($hOImage)
	; Get control dimensions.
	$iWidth = DllStructGetData($tCtrlInfo, "Width")
	$iHeight = DllStructGetData($tCtrlInfo, "Height")

	; Processing the image dimensions...
	Select
		; If you want to have a picture control having the same size as the file content just use FixSize=True.
		Case $lFixSize
			$iReSize = 0
			$iWidth = $iOWidth
			$iHeight = $iOHeight
			GUICtrlSetPos($iCtrlID, Default, Default, $iWidth, $iHeight)

			; Fix Aspect Ratio if Style $GIS_ASPECTRATIOFIX is used.
		Case BitAND($iStyle, $GIS_ASPECTRATIOFIX) = $GIS_ASPECTRATIOFIX
			Local $iAspectW = Int($iOWidth * $iHeight / $iOHeight)
			Local $iAspectH = Int($iOHeight * $iWidth / $iOWidth)
			Switch ($iAspectW > $iWidth)
				Case True
					$iHeight = $iAspectH
				Case False
					$iWidth = $iAspectW
			EndSwitch
	EndSelect

	;----> Fills ctrl info structure.
	;DllStructSetData($tCtrlInfo, "CtrlHandle", $hCtrlID)
	If Not IsBinary($sFileName) Then DllStructSetData($tCtrlInfo, "FileName", $sFileName)
	;DllStructSetData($tCtrlInfo, "Style", $aCtrlStyle[0])
	;DllStructSetData($tCtrlInfo, "ExStyle", $aCtrlExStyle[0])
	;DllStructSetData($tCtrlInfo, "Left", $iLeft)
	;DllStructSetData($tCtrlInfo, "Top", $iTop)
	; Control size.
	DllStructSetData($tCtrlInfo, "Width", $iWidth)
	DllStructSetData($tCtrlInfo, "Height", $iHeight)
	; Original image size.
	DllStructSetData($tCtrlInfo, "OWidht", $iOWidth)
	DllStructSetData($tCtrlInfo, "OHeight", $iOHeight)
	; Save build/draw function name, initial is __GRP_BuildList!
	DllStructSetData($tCtrlInfo, "Function", "__GRP_BuildList")
	; Save HGlobal MEM to release after.
	DllStructSetData($tCtrlInfo, "HGMEM", $hHGMem)
	;<----
	;----> Fills array with the control data!
	;$avGRP_CTRLIDS[$iIndex][0] = $iCtrlID ; control ID
	;$avGRP_CTRLIDS[$iIndex][1] = $tCtrlInfo ; control info structure.
	$avGRP_CTRLIDS[$iIndex][2] = $hOImage
	$avGRP_CTRLIDS[$iIndex][3] = $pDimensionIDs
	$avGRP_CTRLIDS[$iIndex][4] = $iFrameCount
	$avGRP_CTRLIDS[$iIndex][5] = $aiFrameDelays
	$avGRP_CTRLIDS[$iIndex][6] = $iLoopCount * $iFrameCount ; Repeat count
	$avGRP_CTRLIDS[$iIndex][7] = 0 ; First frame
	;$avGRP_CTRLIDS[$iIndex][8] = $iDefaultRender ; Render to use.
	$avGRP_CTRLIDS[$iIndex][9] = $iReSize ; Resize=1 true, 0 false
	$avGRP_CTRLIDS[$iIndex][10] = $iTransMode
	$avGRP_CTRLIDS[$iIndex][11] = 0 ; Flag to fill ImageList first! 0=empty
	;$avGRP_CTRLIDS[$iIndex][12] = $hWndForm
	$avGRP_CTRLIDS[$iIndex][13] = 0 ; _WinAPI_GetDC($hCtrlID) only if $iDefaultRender = 1.
	$avGRP_CTRLIDS[$iIndex][14] = 0 ; _GUIImageList_Create
	;$avGRP_CTRLIDS[$iIndex][15] = 0 ; Callback identifier, need this for the Kill Timer.
	;$avGRP_CTRLIDS[$iIndex][16] = 0 ; Pointer to a callback identifier, need this for the __GRP_SetTimer.
	$avGRP_CTRLIDS[$iIndex][17] = 0 ; Flag to checks if the timer needs to be set to avoid unnecessary use of CPU!
	$avGRP_CTRLIDS[$iIndex][18] = $iTransparency ; Transparency flag.
	$avGRP_CTRLIDS[$iIndex][19] = 0 ; GUI background color, used by _GUIImageList_Create.

	Local $iState = GUICtrlGetState($iCtrlID)
	GUICtrlSetState($iCtrlID, $GUI_HIDE)

	; Check if gif is animated...
	Switch $iFrameCount
		Case 0
			; Resize the picture with quality, thanks to the asdf8!
			; http://www.autoitscript.com/forum/topic/100167-guiresourcepicau3-udf-supports-gif-animation-using-gdi/page__st__20#entry1004411
			If $iReSize Then
				Local $hOBitmap = __GDIPCreateBitmapFromScan0($iWidth, $iHeight, 0, $GDIP_PXF32ARGB, 0)
				Local $hGraphic = _GDIPlus_ImageGetGraphicsContext($hOBitmap)
				DllCall($ghGDIPDll, "uint", "GdipSetInterpolationMode", "hwnd", $hGraphic, "int", 7) ; high-quality, bicubic interpolation.
				_GDIPlus_GraphicsDrawImageRect($hGraphic, $hOImage, 0, 0, $iWidth, $iHeight)
				_GDIPlus_ImageDispose($hOImage)
				_GDIPlus_GraphicsDispose($hGraphic)
				$hOImage = $hOBitmap
				$avGRP_CTRLIDS[$iIndex][2] = $hOImage
			EndIf
			; Shows the single frame in the control.
			__GRP_hImgToCtrl($iCtrlID, $hOImage, $pDimensionIDs, 0)
		Case Else
			; Get the min and max value of Frame Delays.
			Local $iLowTime = _ArrayMin($aiFrameDelays, 1, 0), $iHiTime = _ArrayMax($aiFrameDelays, 1, 0)
			; If they are different, set flag to change timer in real time!
			If $iLowTime <> $iHiTime Then $avGRP_CTRLIDS[$iIndex][17] = 1

			Switch $avGRP_CTRLIDS[$iIndex][8] ; $iDefaultRender
				Case 1
					$avGRP_CTRLIDS[$iIndex][13] = _WinAPI_GetDC(DllStructGetData($tCtrlInfo, "CtrlHandle"))
					$avGRP_CTRLIDS[$iIndex][14] = _GUIImageList_Create(DllStructGetData($tCtrlInfo, "Width"), DllStructGetData($tCtrlInfo, "Height"), 5, 0, $iFrameCount, 0)
				Case 0
					Local $HBITMAP[$iFrameCount]
					$avGRP_CTRLIDS[$iIndex][14] = $HBITMAP
			EndSwitch
			; First build a list / array of image frames to speed up drawing!
			__GRP_CreateTimer($avGRP_CTRLIDS[$iIndex][12], $iLowTime, "__GRP_BuildList", $iIndex)
	EndSwitch

	GUICtrlSetState($iCtrlID, $iState)

	; Free the memory allocated for the control struct!
	$tCtrlInfo = 0
	;<----
	Return SetError(0, 0, 1)
EndFunc   ;==>_GUICtrlPic_SetImage

; #FUNCTION# ====================================================================================================================
; Name...........: _GUICtrlPic_SetState
; Description ...: Changes the state of a control returned by a _GUICtrlPic_Create.
; Syntax.........: _GUICtrlPic_SetState( controlID, state )
; Parameters ....: controlID 	- The control identifier (controlID) as returned by a _GUICtrlPic_Create function.
;                  state		- See the State values below.
; Return values .: Success 		- Returns 1
;				   Failure 		- Returns 0.
; Author ........: João Carlos (jscript)
; Modified.......:
; Remarks .......: Suported state values:
;                  ___________________________________________________________________________________________________
;                  $GUI_SHOW 	 -> Control will be visible.
;                  $GUI_HIDE 	 -> Control will not be visible.
;                  $GUI_ENABLE 	 -> Control will be enabled. If image is GIF animated, start animation!
;                  $GUI_DISABLE  -> Control will be disable. If image is GIF animated, stop animation!
;                  $GUI_GIFSTART -> If image is GIF animated, start/resume animation!
;                  $GUI_GIFSTOP  -> If image is GIF animated, stop/pause animation!
;                  ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;                  State values can be summed up as: $GUI_DISABLE + $GUI_HIDE sets the control in an disabled and hidden state.
; Related .......:
; Link ..........;
; Example .......; _GUICtrlPic_SetState($iCtrlID, $GUI_HIDE)
; ===============================================================================================================================
Func _GUICtrlPic_SetState($iCtrlID, $iState)
	Local $iIndex, $iCtrlState, $aiDelay

	If $iCtrlID = -1 Then $iCtrlID = _WinAPI_GetDlgCtrlID(GUICtrlGetHandle(-1))

	$iIndex = __GRP_GetCtrlIndex($iCtrlID)
	If Not $iIndex Then Return 0

	$iCtrlState = GUICtrlGetState($iCtrlID)

	If (BitAND($iState, $GUI_SHOW) = $GUI_SHOW And BitAND($iCtrlState, $GUI_HIDE) = $GUI_HIDE) Or _
			(BitAND($iState, $GUI_ENABLE) = $GUI_ENABLE And BitAND($iCtrlState, $GUI_DISABLE) = $GUI_DISABLE) Then
		; If image is GIF animated, creates a new timer based on Frame Delay.
		If $avGRP_CTRLIDS[$iIndex][4] Then
			$aiDelay = $avGRP_CTRLIDS[$iIndex][5]
			__GRP_CreateTimer($avGRP_CTRLIDS[$iIndex][12], $aiDelay[$avGRP_CTRLIDS[$iIndex][7]], DllStructGetData($avGRP_CTRLIDS[$iIndex][1], "Function"), $iIndex)
			$aiDelay = 0
		Else
			; Show the last frame in the control.
			__GRP_hImgToCtrl($iCtrlID, $avGRP_CTRLIDS[$iIndex][2], $avGRP_CTRLIDS[$iIndex][3], $avGRP_CTRLIDS[$iIndex][7])
		EndIf
	EndIf

	If BitAND($iState, $GUI_HIDE) = $GUI_HIDE And BitAND($iCtrlState, $GUI_SHOW) = $GUI_SHOW Then
		; If image is GIF animated, kill timer...
		If $avGRP_CTRLIDS[$iIndex][4] Then __GRP_KillTimer($avGRP_CTRLIDS[$iIndex][12], $iIndex)
	EndIf

	If BitAND($iState, $GUI_DISABLE) = $GUI_DISABLE And BitAND($iCtrlState, $GUI_ENABLE) = $GUI_ENABLE Then
		; If image is GIF animated, kill timer...
		If $avGRP_CTRLIDS[$iIndex][4] Then __GRP_KillTimer($avGRP_CTRLIDS[$iIndex][12], $iIndex)
		; Show the last frame in the control.
		__GRP_hImgToCtrl($iCtrlID, $avGRP_CTRLIDS[$iIndex][2], $avGRP_CTRLIDS[$iIndex][3], $avGRP_CTRLIDS[$iIndex][7])
	EndIf

	Return GUICtrlSetState($iCtrlID, $iState)
EndFunc   ;==>_GUICtrlPic_SetState

; #FUNCTION# ====================================================================================================================
; Name ..........: _GUICtrlPic_GetInfo
; Description ...: Get image info!
; Syntax ........: _GUICtrlPic_GetInfo( sFileName )
; Parameters ....: FileName 	- Filename of the picture, binary, resource or control ID returned by _GUICtrlPic_Create()
;								Supported types: BMP, JPG, PNG, GIF(animated). Can be an URL path too.
;								For a resource file, use the parameter in this format:
;									   "MyFile.ext|RessourceName|ResourceType".
; Return values .: Returns an array with image info. The array returned is one-dimensional and is made up as follows:
;						$avArray[0] = Original Width
;						$avArray[1] = Original Height
;						$avArray[2] = Handle to an image object
;						$avArray[3] = Frame Count
;						$avArray[4] = Loop Count
;						$avArray[5] = Transparency
; Author ........: João Carlos (jscript)
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: _GUICtrlPic_GetInfo($sFileName)
; ===============================================================================================================================
Func _GUICtrlPic_GetInfo($sFileName)
	Local $hOImage, $pDimensionIDs = 0, $iFrameCount = 0, $iLoopCount = 0, $aiFrameDelays
	Local $iIndex, $iOWidth, $iOHeight, $asImgType, $tCtrlInfo, $iTransparency = 1
	Local $avArray[6], $hHGMem

	If $sFileName = -1 Then $sFileName = _WinAPI_GetDlgCtrlID(GUICtrlGetHandle(-1))

	$iIndex = __GRP_GetCtrlIndex($sFileName)
	If $iIndex Then
		$tCtrlInfo = $avGRP_CTRLIDS[$iIndex][1]
		$avArray[0] = DllStructGetData($tCtrlInfo, "OWidht")
		$avArray[1] = DllStructGetData($tCtrlInfo, "OHeight")
		$avArray[2] = $avGRP_CTRLIDS[$iIndex][2] ; hOImage
		$avArray[3] = $avGRP_CTRLIDS[$iIndex][4] ; FrameCount
		$avArray[4] = $avGRP_CTRLIDS[$iIndex][6] ; Repeat count
		$avArray[5] = $avGRP_CTRLIDS[$iIndex][18] ; Transparency
		$tCtrlInfo = 0
		Return $avArray
	EndIf

	;----> Initialize GDI+ library only if not alread started!
	If $ghGDIPDll = 0 Then _GDIPlus_Startup()
	;<----

	; Processing the [FileName] parameter.
	If Not __GRP_GetFileNameType($sFileName, $hOImage, $hHGMem) Then Return SetError(0, 0, 0)

	; Returns file format GUID and image format name of an image.
	$asImgType = _GDIPlus_ImageGetRawFormat($hOImage)
	$asImgType = $asImgType[1]

	If $asImgType = "GIF" Then
		; __GRP_GetGifInfo( Byref param )
		If Not __GRP_GetGifInfo($pDimensionIDs, $hOImage, $iFrameCount, $iLoopCount, $aiFrameDelays, $iTransparency) Then
			_GDIPlus_ImageDispose($hOImage)
			Return SetError(0, 0, 0)
		EndIf
	EndIf

	; Get image file dimensions.
	$iOWidth = _GDIPlus_ImageGetWidth($hOImage)
	$iOHeight = _GDIPlus_ImageGetHeight($hOImage)
	_GDIPlus_ImageDispose($hOImage)

	$avArray[0] = $iOWidth
	$avArray[1] = $iOHeight
	$avArray[2] = $hOImage
	$avArray[3] = $iFrameCount
	$avArray[4] = $iLoopCount
	$avArray[5] = $iTransparency
	Return $avArray
EndFunc   ;==>_GUICtrlPic_GetInfo

; ===================================================== #INTERNAL_USE_ONLY# =====================================================
; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_GetGifInfo
; Description ...: Get GIF general informations.
; Syntax ........: __GRP_GetGifInfo(Byref $pDimensionIDs, Byref $hOImage, Byref $iFrameCount, _Byref $iLoopCount, Byref $aiFrameDelays,
;                  Byref $iTransparency)
; Parameters ....: $pDimensionIDs       - [in/out] A pointer value.
;                  $hOImage             - [in/out] A handle value.
;                  $iFrameCount         - [in/out] An integer value.
;                  $iLoopCount          - [in/out] An integer value.
;                  $aiFrameDelays       - [in/out] An array of integers.
;                  $iTransparency       - [in/out] An integer value.
; Return values .: 0 if error!
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_GetGifInfo(ByRef $pDimensionIDs, ByRef $hOImage, ByRef $iFrameCount, ByRef $iLoopCount, ByRef $aiFrameDelays, ByRef $iTransparency)
	Local $aiDimensionsCount, $aiFrameCount, $aGetPixel

	;----> Processing the gif image
	; Get a pointer to the GUID struct.
	$pDimensionIDs = DllStructGetPtr($pGRP_tGUID)

	; Gets the number of frame dimensions in an Image object.
	$aiDimensionsCount = DllCall($ghGDIPDll, "int", "GdipImageGetFrameDimensionsCount", "ptr", $hOImage, "int*", 0)
	If @error Or Not $aiDimensionsCount[2] Then Return 0

	; Gets the identifiers for the frame dimensions of an Image object
	DllCall($ghGDIPDll, "int", "GdipImageGetFrameDimensionsList", "ptr", $hOImage, "ptr", $pDimensionIDs, "int", $aiDimensionsCount[2])
	If @error Then Return 0

	; Gets the number of frames in a specified dimension of an Image object
	$aiFrameCount = DllCall($ghGDIPDll, "int", "GdipImageGetFrameCount", "int", $hOImage, "ptr", $pDimensionIDs, "int*", 0)
	If @error Or Not $aiFrameCount[3] Then Return 0
	$iFrameCount = $aiFrameCount[3]

	If $iFrameCount Then
		$aiFrameDelays = __GRP_GetGifFrameDelays($hOImage, $iFrameCount)
		$iLoopCount = __GRP_GetGifLoopCount($hOImage)
	Else
		$iFrameCount = 0 ; Not animation!
	EndIf

	; Check if gif image is transparent.
	$aGetPixel = DllCall($ghGDIPDll, "dword", "GdipBitmapGetPixel", "ptr", $hOImage, "int", 0, "int", 0, "dword*", 0)
	If Not @error Or $aGetPixel[0] = 0 Then
		If BitShift($aGetPixel[4], 24) Then $iTransparency = 0 ; No transparent
	EndIf
	;<----
	Return 1
EndFunc   ;==>__GRP_GetGifInfo

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_BuildList
; Description ...: First build a list / array of image frames to speed up drawing!
; Syntax ........: __GRP_BuildList($hWnd, $Msg, $iIndex, $dwTime)
; Parameters ....: $hWnd, $Msg, $iIDTimer, $dwTime
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_BuildList($hWnd, $Msg, $iIndex, $dwTime)
	#forceref $hWnd, $Msg, $iIndex, $dwTime
	;------------------------------
	; Note: $iIndex = $iIDTimer !!!
	;------------------------------

	;If Not _WinAPI_IsWindowVisible($avGRP_CTRLIDS[$iIndex][12]) Then Return 0
	$dwTime = DllCall($hGRP_USER32, "bool", "IsWindowVisible", "hwnd", $hWnd)
	If Not $dwTime[0] Then Return 0

	; Flag to fill ImageList first! 0=empty
	Switch $avGRP_CTRLIDS[$iIndex][11]
		Case 0 To $avGRP_CTRLIDS[$iIndex][4]
			Local $hOBitmap, $hGraphic, $hHBitmap, $tCtrlInfo

			; Select ActiveFrame in this hImage object specified by a dimension and an index.
			DllCall($ghGDIPDll, "int", "GdipImageSelectActiveFrame", "ptr", $avGRP_CTRLIDS[$iIndex][2], "ptr", $avGRP_CTRLIDS[$iIndex][3], "int", $avGRP_CTRLIDS[$iIndex][7])

			; Check if resize flag is true
			Switch $avGRP_CTRLIDS[$iIndex][9] ; Resize flag: 1 true, 0 false
				Case 1
					$tCtrlInfo = $avGRP_CTRLIDS[$iIndex][1]
					; Creates a Bitmap object based on  size and format information.
					$hOBitmap = __GDIPCreateBitmapFromScan0(DllStructGetData($tCtrlInfo, "Width"), DllStructGetData($tCtrlInfo, "Height"), 0, $GDIP_PXF32ARGB, 0)
					$hGraphic = _GDIPlus_ImageGetGraphicsContext($hOBitmap)
					DllCall($ghGDIPDll, "uint", "GdipSetInterpolationMode", "hwnd", $hGraphic, "int", 7)
					_GDIPlus_GraphicsDrawImageRect($hGraphic, $avGRP_CTRLIDS[$iIndex][2], 0, 0, DllStructGetData($tCtrlInfo, "Width"), DllStructGetData($tCtrlInfo, "Height"))
					_GDIPlus_GraphicsDispose($hGraphic)
					; Create a handle to a bitmap from a bitmap object used to render frames!
					$hHBitmap = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hOBitmap)
					_GDIPlus_ImageDispose($hOBitmap)
					$tCtrlInfo = 0
				Case 0
					; Create a handle to a bitmap from a bitmap object used to render frames!
					$hHBitmap = _GDIPlus_BitmapCreateHBITMAPFromBitmap($avGRP_CTRLIDS[$iIndex][2])
			EndSwitch

			; Fills the structure with the Image data!
			Switch $avGRP_CTRLIDS[$iIndex][8]
				Case 1
					If $avGRP_CTRLIDS[$iIndex][18] And Not $avGRP_CTRLIDS[$iIndex][19] Then
						Local $hDC = _WinAPI_GetDC($avGRP_CTRLIDS[$iIndex][12])
						Local $aCall = DllCall($hGRP_GDI32, "dword", "GetBkColor", "handle", $hDC)
						_GUIImageList_SetBkColor($avGRP_CTRLIDS[$iIndex][14], $aCall[0])
						_WinAPI_ReleaseDC($avGRP_CTRLIDS[$iIndex][12], $hDC)
						$avGRP_CTRLIDS[$iIndex][19] = $aCall[0]
					EndIf
					;_GUIImageList_Add($avGRP_CTRLIDS[$iIndex][14], $hHBitmap)
					DllCall($hGRP_COMCTL32, "int", "ImageList_Add", _
							"handle", $avGRP_CTRLIDS[$iIndex][14], _ ; Handle to the control
							"handle", $hHBitmap, _ ; Handle to the bitmap that contains the image or images.
							"handle", 0) ; Mask = 0
					__GRP_DeleteObj($hHBitmap);_WinAPI_DeleteObject($hHBitmap)
				Case 0
					$vGRP_TEMP = $avGRP_CTRLIDS[$iIndex][14]
					If IsArray($vGRP_TEMP) Then
						$vGRP_TEMP[$avGRP_CTRLIDS[$iIndex][7]] = $hHBitmap
						$avGRP_CTRLIDS[$iIndex][14] = $vGRP_TEMP
					Else
						__GRP_DeleteObj($hHBitmap);_WinAPI_DeleteObject($hHBitmap)
					EndIf
					$hHBitmap = 0
			EndSwitch
			; Increment flag...
			$avGRP_CTRLIDS[$iIndex][11] += 1
		Case Else
			__GRP_KillTimer($hWnd, $iIndex)
			$vGRP_TEMP = $avGRP_CTRLIDS[$iIndex][5]
			DllStructSetData($avGRP_CTRLIDS[$iIndex][1], "Function", "__GRP_DrawFrame")
			Return __GRP_CreateTimer($hWnd, $vGRP_TEMP[$avGRP_CTRLIDS[$iIndex][7]], "__GRP_DrawFrame", $iIndex)
	EndSwitch

	__GRP_DrawFrame($hWnd, $Msg, $iIndex, $dwTime)
EndFunc   ;==>__GRP_BuildList

; #INTERNAL_USE_ONLY#============================================================================================================
; Name...........: __GRP_DrawFrame
; Description ...: To provides Animation Timer functionality.
; Syntax.........: __GRP_DrawFrame()
; Parameters ....: $hWnd, $Msg, $iIDTimer, $dwTime
; Return values .:
; Author ........: JScript
; Modified.......:
; Remarks .......: Based on Prog@ndy work concept!
; Related .......:
; Link ..........:
; Example .......; __GRP_DrawFrame($hWnd, $Msg, $iIndex, $dwTime)
; ===============================================================================================================================
Func __GRP_DrawFrame($hWnd, $Msg, $iIndex, $dwTime)
	#forceref $hWnd, $Msg, $iIndex, $dwTime
	;------------------------------
	; Note: $iIndex = $iIDTimer !!!
	;------------------------------

	;----> ControlID array sample.
	#cs
		$avGRP_CTRLIDS[$iIndex][0] = $iCtrlID ; control ID
		$avGRP_CTRLIDS[$iIndex][1] = $tCtrlInfo ; control info structure.
		$avGRP_CTRLIDS[$iIndex][2] = $hOImage
		$avGRP_CTRLIDS[$iIndex][3] = $pDimensionIDs
		$avGRP_CTRLIDS[$iIndex][4] = $iFrameCount
		$avGRP_CTRLIDS[$iIndex][5] = $aiFrameDelays
		$avGRP_CTRLIDS[$iIndex][6] = $iLoopCount * $iFrameCount ; Repeat count
		$avGRP_CTRLIDS[$iIndex][7] = 0 ; First frame
		$avGRP_CTRLIDS[$iIndex][8] = $iDefaultRender ; Render to use.
		$avGRP_CTRLIDS[$iIndex][9] = $iReSize ; Resize=1 true, 0 false
		$avGRP_CTRLIDS[$iIndex][10] = $iTransMode ; Mode to render transparency!
		$avGRP_CTRLIDS[$iIndex][11] = 0 ; Flag to fill ImageList first! 0=empty
		$avGRP_CTRLIDS[$iIndex][12] = $hWndForm
		$avGRP_CTRLIDS[$iIndex][13] = 0 ; _WinAPI_GetDC($hCtrlID)
		$avGRP_CTRLIDS[$iIndex][14] = 0 ; _GUIImageList_Create
		$avGRP_CTRLIDS[$iIndex][15] = 0 ; Callback identifier, need this for the Kill Timer.
		$avGRP_CTRLIDS[$iIndex][16] = 0 ; Pointer to a callback identifier, need this for the __GRP_SetTimer.
		$avGRP_CTRLIDS[$iIndex][17] = 0 ; Flag to checks if the timer needs to be set to avoid unnecessary use of CPU!
		$avGRP_CTRLIDS[$iIndex][18] = $iTransparency ; Transparency flag.
		$avGRP_CTRLIDS[$iIndex][19] = 0 ; GUI background color.
	#ce
	;<----

	; Mode to render transparency: set $WS_EX_TRANSPARENT in control!!!
	If $avGRP_CTRLIDS[$iIndex][10] Then
		GUICtrlSetStyle($avGRP_CTRLIDS[$iIndex][0], -1, BitOR(DllStructGetData($avGRP_CTRLIDS[$iIndex][1], "ExStyle"), $WS_EX_TRANSPARENT))
	EndIf

	; Send GIF frame to control ID returned by _GUICtrlPic_Create() function.
	Switch $avGRP_CTRLIDS[$iIndex][8]
		Case 1
			;_GUIImageList_Draw($avGRP_CTRLIDS[$iIndex][14], $avGRP_CTRLIDS[$iIndex][7], $avGRP_CTRLIDS[$iIndex][13], 0, 0, 1)
			DllCall($hGRP_COMCTL32, "bool", "ImageList_Draw", _
					"handle", $avGRP_CTRLIDS[$iIndex][14], _	; $hWnd
					"int", $avGRP_CTRLIDS[$iIndex][7], _		; $iIndex
					"handle", $avGRP_CTRLIDS[$iIndex][13], _ ; $hDC
					"int", 0, "int", 0, "uint", 0) ; X, Y
		Case 0
			$vGRP_TEMP = $avGRP_CTRLIDS[$iIndex][14]
			If IsArray($vGRP_TEMP) Then
				__GRP_DeleteObj(GUICtrlSendMsg($avGRP_CTRLIDS[$iIndex][0], 0x0172, 0, $vGRP_TEMP[$avGRP_CTRLIDS[$iIndex][7]])) ; $STM_SETIMAGE = 0x0172, $IMAGE_BITMAP = 0
			EndIf
	EndSwitch

	; Checks if the timer needs to be set to avoid unnecessary use of CPU!
	If $avGRP_CTRLIDS[$iIndex][17] Then
		$vGRP_TEMP = $avGRP_CTRLIDS[$iIndex][5]
		; Adjust Frame Timer based on Frame Delay.
		__GRP_SetTimer($hWnd, $vGRP_TEMP[$avGRP_CTRLIDS[$iIndex][7]], $iIndex) ; __GRP_SetTimer($hWnd, DllStructGetData($avGRP_CTRLIDS[$iIndex][5], 1, $avGRP_CTRLIDS[$iIndex][7]), $iIndex)
	EndIf

	; Increment frame number.
	$avGRP_CTRLIDS[$iIndex][7] += 1

	; If FrameNumber = FrameCounter, reset FrameNumber to 0.
	If $avGRP_CTRLIDS[$iIndex][7] > ($avGRP_CTRLIDS[$iIndex][4] - 1) Then
		$avGRP_CTRLIDS[$iIndex][7] = 0
	EndIf

	; Loop count.
	If $avGRP_CTRLIDS[$iIndex][6] Then
		$avGRP_CTRLIDS[$iIndex][6] -= 1
		If Not $avGRP_CTRLIDS[$iIndex][6] Then
			__GRP_KillTimer($hWnd, $iIndex)
			__GRP_hImgToCtrl($avGRP_CTRLIDS[$iIndex][0], $avGRP_CTRLIDS[$iIndex][2], $avGRP_CTRLIDS[$iIndex][3], $avGRP_CTRLIDS[$iIndex][7])
		EndIf
	EndIf

	;---->  If you wish to delete the GIF using the native function, use the code snippet below!
	If Not GUICtrlGetHandle($avGRP_CTRLIDS[$iIndex][0]) Then
		__GRP_ReleaseGIF($iIndex)
	EndIf
	;<----
EndFunc   ;==>__GRP_DrawFrame

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_hImgToCtrl
; Description ...: Show images or Select and show individual Frames from a Multiple-Frame Image.
; Syntax ........: __GRP_hImgToCtrl($iCtrlID, $hOImage, $pDimensionIDs, $iFrame)
; Parameters ....: $iCtrlID             - Control ID returned by _GUICtrlPic_Create() function.
;                  $hOImage             - Handle to the GIF image object.
;                  $pDimensionIDs       - Pointer to a GUID that specifies the frame dimension.
;                  $iFrame              - Frame index.
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......: Based on Prog@ndy work concept!
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_hImgToCtrl($iCtrlID, $hOImage, $pDimensionIDs, $iFrame)
	Local $hHBitmap

	; Select ActiveFrame in this hImage object specified by a dimension and an index.
	If $pDimensionIDs And $iFrame Then
		DllCall($ghGDIPDll, "int", "GdipImageSelectActiveFrame", "ptr", $hOImage, "ptr", $pDimensionIDs, "int", $iFrame)
	EndIf

	; Create a handle to a bitmap from a bitmap object
	$hHBitmap = _GDIPlus_BitmapCreateHBITMAPFromBitmap($hOImage)

	; Send image to control ID returned by _GUICtrlPic_Create() function.
	__GRP_DeleteObj(GUICtrlSendMsg($iCtrlID, 0x0172, 0, $hHBitmap)) ; $STM_SETIMAGE = 0x0172, $IMAGE_BITMAP = 0
	__GRP_DeleteObj($hHBitmap)
EndFunc   ;==>__GRP_hImgToCtrl

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_DeleteObj
; Description ...: Deletes a logical pen, brush, font, bitmap, region, or palette.
; Syntax ........: __GRP_DeleteObj($hObj)
; Parameters ....: $hObj                - A handle value.
; Return values .: None
; Author ........: Paul Campbell (PaulIA)
; Modified ......: JScript
; Remarks .......: Do not delete a drawing object while it is still  selected  into  a  device  context.  When  a  pattern  brush
;                  is deleted the bitmap associated with the brush is not deleted. The bitmap must be deleted independently.
; Related .......:
; Link ..........: @@MsdnLink@@ DeleteObject
; Example .......: No
; ===============================================================================================================================
Func __GRP_DeleteObj($hObj)
	DllCall($hGRP_GDI32, "bool", "DeleteObject", "handle", $hObj)
EndFunc   ;==>__GRP_DeleteObj

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_CreateTimer
; Description ...: Creates a timer with the specified time-out value used by GIF animation.
; Syntax ........: __GRP_CreateTimer($hWnd, $iElapse, $sTimerFunc, $iIndex)
; Parameters ....: $hWnd                - Handle to the window to be associated with the timer.
;                  $iElapse             - Specifies the time-out value, in milliseconds.
;                  $sTimerFunc          - Function name to be notified when the time-out value elapses.
;                  $iIndex              - An integer value.
; Return values .: Success - Integer identifying the new timer
;                  Failure - 0
; Author ........: JScript
; Modified.......:
; Remarks .......: Based on _Timer_SetTimer() by Gary Frost
; Related .......: __GRP_KillTimer(
; Link ..........; @@MsdnLink@@ SetTimer
; Example .......: No
; ===============================================================================================================================
Func __GRP_CreateTimer($hWnd, $iElapse, $sTimerFunc, $iIndex)
	Local $hCallBack = 0, $pTimerFunc = 0, $aResult[1] = [0]

	$hCallBack = DllCallbackRegister($sTimerFunc, "none", "hwnd;int;uint_ptr;dword")
	$pTimerFunc = DllCallbackGetPtr($hCallBack)

	$aResult = DllCall($hGRP_USER32, "uint_ptr", "SetTimer", "hwnd", $hWnd, "uint_ptr", $iIndex, "uint", $iElapse, "ptr", $pTimerFunc)
	If @error Or $aResult[0] = 0 Then
		DllCallbackFree($hCallBack)
		Return SetError(@error, @extended, 0)
	EndIf
	$avGRP_CTRLIDS[$iIndex][15] = $hCallBack ; Callback identifier, need this for the Kill Timer.
	$avGRP_CTRLIDS[$iIndex][16] = $pTimerFunc ; Pointer to a callback identifier, need this for the __GRP_SetTimer.

	Return $aResult[0]
EndFunc   ;==>__GRP_CreateTimer

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_KillTimer
; Description ...: Destroys the specified GIF animation timer.
; Syntax ........: __GRP_KillTimer($hWnd, $iIndex)
; Parameters ....: $hWnd                - Handle to the window associated with the specified timer.
;										This value must be the same as the hWnd value passed to the __GRP_CreateTimer function.
;                  $iIndex              - An integer value.
; Return values .: Success - True
;                  Failure - False
; Author ........: JScript
; Modified.......:
; Remarks .......: The __GRP_KillTimer( function does not remove WM_TIMER messages already posted to the message queue
;				   Based on _Timer_KillTimer() by Gary Frost
; Related .......: _Timer_SetTimerEx
; Link ..........: @@MsdnLink@@ KillTimer
; Example .......: No
; ===============================================================================================================================
Func __GRP_KillTimer($hWnd, $iIndex)
	Local $aResult[1] = [0], $hCallBack = 0

	$aResult = DllCall($hGRP_USER32, "bool", "KillTimer", "hwnd", $hWnd, "uint_ptr", $iIndex) ;-> = $iIDTimer
	;If @error Or $aResult[0] = 0 Then Return SetError(@error, @extended, False)
	$hCallBack = $avGRP_CTRLIDS[$iIndex][15]
	If $hCallBack <> 0 Then DllCallbackFree($hCallBack)
	; Reset identifiers.
	$avGRP_CTRLIDS[$iIndex][15] = 0
	$avGRP_CTRLIDS[$iIndex][16] = 0

	Return $aResult[0] <> 0
EndFunc   ;==>__GRP_KillTimer

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_SetTimer
; Description ...: Replace a new time-out value used by GIF animation.
; Syntax ........: __GRP_SetTimer($hWnd, $iElapse, $iIndex)
; Parameters ....: $hWnd                - Handle to the window to be associated with the timer.
;                  $iElapse             - Specifies the time-out value, in milliseconds.
;                  $iIndex              - An integer value.
; Return values .: Success 				- 1
;                  Failure 				- 0
; Author ........: JScript
; Modified.......:
; Remarks .......: Based on _Timer_SetTimer() by Gary Frost
; Related .......: __GRP_KillTimer(
; Link ..........; @@MsdnLink@@ SetTimer
; Example .......: No
; ===============================================================================================================================
Func __GRP_SetTimer($hWnd, $iElapse, $iIndex)
	DllCall($hGRP_USER32, "uint_ptr", "SetTimer", "hwnd", $hWnd, "uint_ptr", $iIndex, _ ;-> = $iIDTimer
			"int", $iElapse, "ptr", $avGRP_CTRLIDS[$iIndex][16]) ;-> =$pTimerFunc

	;If @error Or $aResult[0] = 0 Then Return SetError(@error, @extended, 0)
	Return 1
EndFunc   ;==>__GRP_SetTimer

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_ReleaseGIF
; Description ...: Frees memory used by the control.
; Syntax ........: __GRP_ReleaseGIF($iIndex)
; Parameters ....: $iIndex              - An integer value.
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_ReleaseGIF($iIndex)
	Local $hHGMem

	; If image is GIF animated...
	If $avGRP_CTRLIDS[$iIndex][4] Then
		; First kill timer to avoid conflit!!!
		__GRP_KillTimer($avGRP_CTRLIDS[$iIndex][12], $iIndex)
		; Release resources to free memory.
		Switch $avGRP_CTRLIDS[$iIndex][8]
			Case 1
				_WinAPI_ReleaseDC($avGRP_CTRLIDS[$iIndex][12], $avGRP_CTRLIDS[$iIndex][13])
				_GUIImageList_Destroy($avGRP_CTRLIDS[$iIndex][14])
			Case 0
				Local $HBITMAP = $avGRP_CTRLIDS[$iIndex][14] ; $HBITMAP.
				For $i = 0 To $avGRP_CTRLIDS[$iIndex][4] - 1 ; FrameCount.
					__GRP_DeleteObj($HBITMAP[$i])
				Next
				$HBITMAP = 0
		EndSwitch
	EndIf
	; Release HGlobal MEM and image object!
	$hHGMem = DllStructGetData($avGRP_CTRLIDS[$iIndex][1], "HGMEM")
	__GRP_FreeMem($avGRP_CTRLIDS[$iIndex][2], $hHGMem)
EndFunc   ;==>__GRP_ReleaseGIF

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_WM_DESTROY
; Description ...: If the window is closed, ensures that the memory is released if the control has not been deleted by _GUICtrlPic_Delete function!
; Syntax ........: __GRP_WM_DESTROY($hWnd)
; Parameters ....: $hWnd                - A handle value.
; Return values .: $GUI_RUNDEFMSG
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_WM_DESTROY($hWnd)
	Local $iIndex = 1

	While $iIndex <= $avGRP_CTRLIDS[0][0]
		If $avGRP_CTRLIDS[$iIndex][12] = $hWnd Then
			; If image is GIF animated...
			__GRP_ReleaseGIF($iIndex)

			For $i = $iIndex To UBound($avGRP_CTRLIDS) - 2
				For $j = 0 To 19
					$avGRP_CTRLIDS[$i][$j] = $avGRP_CTRLIDS[$i + 1][$j]
				Next
			Next
			ReDim $avGRP_CTRLIDS[$avGRP_CTRLIDS[0][0]][20]

			$avGRP_CTRLIDS[0][0] -= 1
			$iIndex -= 1
			ContinueLoop
		EndIf
		$iIndex += 1
	WEnd

	Return $GUI_RUNDEFMSG
EndFunc   ;==>__GRP_WM_DESTROY

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_ShutDown
; Description ...: Function to be called when AutoIt exits.
; Syntax ........: __GRP_ShutDown()
; Parameters ....:
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_ShutDown()
	;----> Clean up resources used by Microsoft Windows GDI+.
	If $avGRP_CTRLIDS[0][0] Then
		For $iIndex = 1 To $avGRP_CTRLIDS[0][0]
			; If image is GIF animated...
			__GRP_ReleaseGIF($iIndex)
		Next
	EndIf
	_GDIPlus_Shutdown()
	DllClose($hGRP_GDI32)
	DllClose($hGRP_USER32)
	DllClose($hGRP_COMCTL32)
	;<----
	Exit
EndFunc   ;==>__GRP_ShutDown

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_GetCtrlIndex
; Description ...: Return array index based on $iCtrlID.
; Syntax ........: __GRP_GetCtrlIndex($iCtrlID)
; Parameters ....: $iCtrlID             - Control returned by _GUICtrlPic_Create.
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_GetCtrlIndex($iCtrlID)
	If $avGRP_CTRLIDS[0][0] Then
		For $iIndex = 1 To $avGRP_CTRLIDS[0][0]
			If $avGRP_CTRLIDS[$iIndex][0] = $iCtrlID Then
				Return $iIndex
			EndIf
		Next
	EndIf
	Return 0
EndFunc   ;==>__GRP_GetCtrlIndex

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_GetGifFrameDelays
; Description ...:
; Syntax ........: __GRP_GetGifFrameDelays($hOImage, $iFrameCount)
; Parameters ....: $hOImage             - A handle value.
;                  $iFrameCount         - An integer value.
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......: Based on Prog@ndy work concept!
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_GetGifFrameDelays($hOImage, $iFrameCount)
	Local $aPropSize, $tPropItem, $aPropItem, $tSize, $tProp, $iDelay
	Local $tFrameDelay[$iFrameCount]

	; Gets the size, in bytes, of a specified property item of this Image object.
	$aPropSize = DllCall($ghGDIPDll, "int", "GdipGetPropertyItemSize", "ptr", $hOImage, "dword", $iGRP_ptFrameDelay, "uint*", 0)

	If $aPropSize[0] = 0 Then
		; Create Property-ItemStruct and save enough memory for its data
		$tPropItem = DllStructCreate($tGRP_PropTagItem & ";byte[" & $aPropSize[3] & "]")

		; Gets a specified property item (piece of metadata) from this Image object.
		$aPropItem = DllCall($ghGDIPDll, "int", "GdipGetPropertyItem", _
				"ptr", $hOImage, _
				"dword", $iGRP_ptFrameDelay, _
				"dword", $aPropSize[3], _
				"ptr", DllStructGetPtr($tPropItem))

		If $aPropItem[0] <> 0 Then Return SetError(1, 0, 0)

		$tSize = DllStructGetData($tPropItem, "length")
		Switch DllStructGetData($tPropItem, "Type")
			Case $iGRP_ptTypeByte
				$tProp = DllStructCreate("byte[" & $tSize & "]", DllStructGetData($tPropItem, "value"))
			Case $iGRP_ptTypeShort
				$tProp = DllStructCreate("short[" & Ceiling($tSize / 2) & "]", DllStructGetData($tPropItem, "value"))
			Case $iGRP_ptTypeLong
				$tProp = DllStructCreate("long[" & Ceiling($tSize / 4) & "]", DllStructGetData($tPropItem, "value"))
		EndSwitch

		; Fill output array delay.
		For $iIndex = 0 To $iFrameCount - 1
			$iDelay = DllStructGetData($tProp, 1, $iIndex + 1) * 10 ; Frame delay values should be multiply by 10!!!

			; Make some corrections to prevent excessive CPU usage!
			If Not $iDelay Or $iDelay < 50 Then
				$iDelay = 50
			EndIf

			; Set output frame delay.
			$tFrameDelay[$iIndex] = $iDelay
		Next
	EndIf
	Return $tFrameDelay
EndFunc   ;==>__GRP_GetGifFrameDelays

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_GetGifLoopCount
; Description ...:
; Syntax ........: __GRP_GetGifLoopCount($hOImage)
; Parameters ....: $hOImage             - A handle value.
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......: Based on Prog@ndy work concept!
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_GetGifLoopCount($hOImage)
	Local $tPropItem, $tProp, $iSize, $aPropItem, $aPropSize, $iCount

	; Gets the size, in bytes, of a specified property item of this Image object.
	$aPropSize = DllCall($ghGDIPDll, "int", "GdipGetPropertyItemSize", "ptr", $hOImage, "dword", $iGRP_ptLoopCount, "uint*", 0)

	If $aPropSize[0] <> 0 Then Return 0

	; Create Property-ItemStruct and save enough memory for its data
	$tPropItem = DllStructCreate($tGRP_PropTagItem & ";byte[" & $aPropSize[3] & "]")

	; Gets a specified property item (piece of metadata) from this Image object.
	$aPropItem = DllCall($ghGDIPDll, "int", "GdipGetPropertyItem", _
			"ptr", $hOImage, _
			"dword", $iGRP_ptLoopCount, _
			"dword", $aPropSize[3], _
			"ptr", DllStructGetPtr($tPropItem))

	If $aPropItem[0] <> 0 Then Return SetError(1, 0, 0)

	$iSize = DllStructGetData($tPropItem, "length")
	Switch DllStructGetData($tPropItem, "Type")
		Case $iGRP_ptTypeByte
			$tProp = DllStructCreate("byte[" & $iSize & "]", DllStructGetData($tPropItem, "value"))
		Case $iGRP_ptTypeShort
			$tProp = DllStructCreate("short[" & Ceiling($iSize / 2) & "]", DllStructGetData($tPropItem, "value"))
		Case $iGRP_ptTypeLong
			$tProp = DllStructCreate("long[" & Ceiling($iSize / 4) & "]", DllStructGetData($tPropItem, "value"))
	EndSwitch
	$iCount = DllStructGetData($tProp, 1, 1)
	If $iCount < 0 Then $iCount = 0

	Return $iCount
EndFunc   ;==>__GRP_GetGifLoopCount

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_GetFileNameType
; Description ...: Processing the [FileName] parameter.
; Syntax ........: __GRP_GetFileNameType(Byref $sFileName, Byref $hOImage)
; Parameters ....: $sFileName           - [in/out] A string value.
;                  $hOImage             - [in/out] A handle to image object.
; Return values .: Success 				- Handle to the new image object
;				   Failure 				- Returns 0 and @error is set.
; Author ........: JScript
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_GetFileNameType($sFileName, ByRef $hOImage, ByRef $hHGMem)

	; Processing the [FileName] parameter.
	Select
		Case IsBinary($sFileName)
			$hHGMem = _MemGlobalAllocFromBinary($sFileName)
			$hOImage = _GDIPlus_ImageLoadFromHGlobal($hHGMem)
			If @error Then
				__GRP_FreeMem($hOImage, $hHGMem)
				Return SetError(1, 0, 0)
			EndIf
			Return SetError(0, 0, 1)

			; If is URL path...
		Case StringInStr($sFileName, "/", 0, 1)
			$sFileName = InetRead($sFileName)
			If @error Then Return SetError(2, 0, 0)

			$hHGMem = _MemGlobalAllocFromBinary($sFileName)
			$hOImage = _GDIPlus_ImageLoadFromHGlobal($hHGMem)
			If @error Then
				__GRP_FreeMem($hOImage, $hHGMem)
				Return SetError(2, 0, 0)
			EndIf
			Return SetError(0, 0, 1)

			; If is resource image: "MyFile.ext|RessourceName|ResourceType".
		Case StringInStr($sFileName, "|", 0, 1)
			Local $asFile = StringSplit($sFileName, "|")
			If $asFile[0] < 3 Or Not FileExists($asFile[1]) Then Return SetError(3, 0, 0)

			$sFileName = __GRP_LoadResource($asFile[1], $asFile[2], $asFile[3])
			If @error Then Return SetError(3, 0, 0)

			$hHGMem = _MemGlobalAllocFromBinary(Binary($sFileName))
			$hOImage = _GDIPlus_ImageLoadFromHGlobal($hHGMem)
			If @error Then
				__GRP_FreeMem($hOImage, $hHGMem)
				Return SetError(3, 0, 0)
			EndIf
			Return SetError(0, 0, 1)

			; Only full path file name!
		Case Else
			If Not StringInStr($sFileName, "\") Then $sFileName = @ScriptDir & "\" & $sFileName
			If StringInStr($sFileName, ".\") Then $sFileName = StringReplace($sFileName, ".\", @ScriptDir & "\")
			If Not FileExists($sFileName) Then Return SetError(4, 0, 0)

			$hHGMem = 0
			$hOImage = _GDIPlus_ImageLoadFromFile($sFileName)
			If @error Then
				__GRP_FreeMem($hOImage, $hHGMem)
				Return SetError(4, 0, 0)
			EndIf
			Return SetError(0, 0, 1)
	EndSelect

	Return SetError(5, 0, 0)
EndFunc   ;==>__GRP_GetFileNameType

; #INTERNAL_USE_ONLY# ===========================================================================================================
; Name ..........: __GRP_FreeMem
; Description ...:
; Syntax ........: __GRP_FreeMem(Byref $hOImage, Byref $hMem)
; Parameters ....: $hOImage              - [in/out] A handle value.
;                  $hMem                - [in/out] A handle value.
; Return values .: None
; Author ........: Your Name
; Modified ......:
; Remarks .......:
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_FreeMem(ByRef $hOImage, ByRef $hMem)
	_GDIPlus_ImageDispose($hOImage)
	If $hMem Then _MemGlobalFree($hMem)
	$hOImage = 0
	$hMem = 0
EndFunc   ;==>__GRP_FreeMem

; #FUNCTION# ====================================================================================================================
; Name ..........: __GRP_LoadResource
; Description ...:
; Syntax ........: __GRP_LoadResource($sFileName, $vResName[, $iResType = 10])
; Parameters ....: $sFileName           - A string value.
;                  $vResName            - A variant value.
;                  $iResType            - [optional] An integer value. Default is 10.
; Return values .: None
; Author ........: JScript
; Modified ......:
; Remarks .......: From: http://edn.embarcadero.com/article/26384
;					BOOL SaveResourceToFile(char *fn, char *res)
;					{ HRSRC hrsrc = FindResource(HInstance,res,RT_RCDATA);
;						if (hrsrc == NULL) return FALSE;
;						DWORD size = SizeofResource(HInstance,hrsrc);
;						HGLOBAL hglob = LoadResource(HInstance,hrsrc);
;  						LPVOID rdata = LockResource(hglob);
;						HANDLE hFile =
;						CreateFile(fn,GENERIC_WRITE,0,NULL,CREATE_ALWAYS,FILE_ATTRIBUTE_NORMAL,NULL);
;						DWORD writ; WriteFile(hFile,rdata,size,&writ,NULL);
;						CloseHandle(hFile);
;						return TRUE;
;					}
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================
Func __GRP_LoadResource($sFileName, $vResName, $iResType = 10)
	Local $hInstance, $InfoBlock, $MemBlock, $pMemPtr
	Local $ResStruct, $bResSize, $bResource

	;--->
	$hInstance = DllCall("Kernel32.dll", "ptr", "LoadLibraryW", "wstr", $sFileName)
	If @error Or $hInstance[0] = 0 Then Return SetError(1, 0, 0)
	$hInstance = $hInstance[0]

	$InfoBlock = DllCall("kernel32.dll", "ptr", "FindResourceW", "ptr", $hInstance, "wstr", $vResName, "long", $iResType)
	If @error Or $InfoBlock[0] = 0 Then Return SetError(2, 0, 0)
	$InfoBlock = $InfoBlock[0]

	$bResSize = DllCall("kernel32.dll", "dword", "SizeofResource", "ptr", $hInstance, "ptr", $InfoBlock)
	If @error Or $bResSize[0] = 0 Then Return SetError(3, 0, 0)
	$bResSize = $bResSize[0]

	$MemBlock = DllCall("kernel32.dll", "ptr", "LoadResource", "ptr", $hInstance, "ptr", $InfoBlock)
	If @error Or $MemBlock[0] = 0 Then Return SetError(4, 0, 0)
	$MemBlock = $MemBlock[0]

	$pMemPtr = DllCall("kernel32.dll", "ptr", "LockResource", "ptr", $MemBlock)
	If @error Or $pMemPtr[0] = 0 Then
		DllCall("Kernel32.dll", "BOOL", "FreeResource", "ptr", $MemBlock)
		Return SetError(5, 0, 0)
	EndIf
	$pMemPtr = $pMemPtr[0]

	$ResStruct = DllStructCreate("byte[" & $bResSize & "]", $pMemPtr)
	If @error Then Return SetError(6, 0, 0)
	;<---

	$bResSize = DllStructGetSize($ResStruct)
	$bResource = DllStructGetData($ResStruct, 1)

	$ResStruct = 0
	DllCall("Kernel32.dll", "BOOL", "FreeResource", "ptr", $MemBlock)
	DllCall("Kernel32.dll", "BOOL", "FreeResource", "ptr", $hInstance)

	Return SetError(0, $bResSize, $bResource)
EndFunc   ;==>__GRP_LoadResource

; #FUNCTION# ====================================================================================================================
; Name...........: __GDIPCreateBitmapFromScan0
; Description ...: Creates a Bitmap object based on an array of bytes along with size and format information.
; Syntax.........: __GDIPCreateBitmapFromScan0( Width, Height[, Stride = 0[, PixelFormat = 0x0026200A[, Scan0 = 0]]])
; Parameters ....: $iWidth 			- The bitmap width, in pixels.
;                  $iHeight 		- The bitmap height, in pixels.
;                  $iStride 		- Integer that specifies the byte offset between the beginning of one scan line and the next.
;								This is usually (but not necessarily) the number of bytes in the pixel format,
;								(for example, 2 for 16 bits per pixel) multiplied by the width of the bitmap.
;								The value passed to this parameter must be a multiple of four.
;                  $iPixelFormat 	- Specifies the format of the pixel data. Same as _GDIPlus_BitmapCloneAre() parameter.
;                  $pScan0			- Pointer to an array of bytes that contains the pixel data. The caller is responsible for
;   							allocating and freeing the block of memory pointed to by this parameter.
; Return values .: Success      	- Returns a handle to a new Bitmap object
;                  Failure      	- 0 and either:
;                  				@error and @extended are set if DllCall failed
;                  				$GDIP_STATUS contains a non zero value specifying the error code
; Remarks .......: After you are done with the object, call _GDIPlus_ImageDispose to release the object resources!
; Related .......: _GDIPlus_ImageDispose
; Link ..........; @@MsdnLink@@ GdipCreateBitmapFromScan0
; Example .......; __GDIPCreateBitmapFromScan0($iWidth, $iHeight)
; ===============================================================================================================================
Func __GDIPCreateBitmapFromScan0($iWidth, $iHeight, $iStride = 0, $iPixelFormat = 0x0026200A, $pScan0 = 0)
	Local $aResult = DllCall($ghGDIPDll, "uint", "GdipCreateBitmapFromScan0", "int", $iWidth, "int", $iHeight, _
			"int", $iStride, "int", $iPixelFormat, "ptr", $pScan0, "int*", 0)

	If @error Then Return SetError(@error, @extended, 0)
	Return $aResult[6]
EndFunc   ;==>__GDIPCreateBitmapFromScan0

; #FUNCTION# ====================================================================================================================
; Name...........: _GDIPlus_ImageLoadFromHGlobal
; Description ...: Creates an Image object based on movable HGlobal memory block
; Syntax.........: _GDIPlus_ImageLoadFromHGlobal($hGlobal)
; Parameters ....: $hGlobal - Handle of a movable HGlobal memory block
; Return values .: Success      - Pointer to a new Image object
;                  Failure      - 0 and either:
;                  |@error and @extended are set if DllCall failed:
;                  | -@error = 1 if could not create IStream
;                  | -@error = 2 if DLLCall to create image failed
;                  |$GDIP_STATUS contains a non zero value specifying the error code
; Author ........: ProgAndy
; Modified.......: JScript
; Remarks .......: After you are done with the object, call _GDIPlus_ImageDispose to release the object resources.
;                  The HGLOBAL will be owned by the image and freed automatically when the image is disposed.
; Related .......: _GDIPlus_ImageLoadFromStream, _GDIPlus_ImageDispose
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _GDIPlus_ImageLoadFromHGlobal($hGlobal)
	Local $aResult = DllCall("ole32.dll", "int", "CreateStreamOnHGlobal", "handle", $hGlobal, "bool", True, "ptr*", 0)
	If @error Or $aResult[0] <> 0 Or $aResult[3] = 0 Then Return SetError(1, @error, 0)
	Local $hImage = DllCall($ghGDIPDll, "uint", "GdipLoadImageFromStream", "ptr", $aResult[3], "int*", 0)
	Local $error = @error
	Local $tVARIANT = DllStructCreate("word vt;word r1;word r2;word r3;ptr data; ptr")
	DllCall("oleaut32.dll", "long", "DispCallFunc", "ptr", $aResult[3], "dword", 8 + 8 * @AutoItX64, "dword", 4, "dword", 23, _
			"dword", 0, "ptr", 0, "ptr", 0, "ptr", DllStructGetPtr($tVARIANT))
	If $error Then Return SetError(2, $error, 0)
	If $hImage[2] = 0 Then Return SetError(3, 0, $hImage[2])
	Return $hImage[2]
EndFunc   ;==>_GDIPlus_ImageLoadFromHGlobal

; #FUNCTION# ====================================================================================================================
; Name...........: _MemGlobalAllocFromBinary
; Description ...: Greates a movable HGLOBAL memory block from binary data
; Syntax.........: _MemGlobalAllocFromBinary($bBinary)
; Parameters ....: $bBinary - Binary data
; Return values .: Success      - Handle of a new movable HGLOBAL
;                  Failure      - 0 and set @error:
;                  |1  - no data
;                  |2  - could not allocate memory
;                  |3  - could not set data to memory
; Author ........: ProgAndy
; Modified.......:
; Remarks .......:
; Related .......: _MemGlobalAlloc, _MemGlobalFree, _MemGlobalLock
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _MemGlobalAllocFromBinary(Const $bBinary)
	Local $iLen = BinaryLen($bBinary)
	If $iLen = 0 Then Return SetError(1, 0, 0)
	Local $hMem = _MemGlobalAlloc($iLen, $GMEM_MOVEABLE)
	If @error Or Not $hMem Then Return SetError(2, 0, 0)
	DllStructSetData(DllStructCreate("byte[" & $iLen & "]", _MemGlobalLock($hMem)), 1, $bBinary)
	If @error Then
		_MemGlobalUnlock($hMem)
		_MemGlobalFree($hMem)
		Return SetError(3, 0, 0)
	EndIf
	_MemGlobalUnlock($hMem)
	Return $hMem
EndFunc   ;==>_MemGlobalAllocFromBinary

; #FUNCTION# ====================================================================================================================
; Name...........: _MemGlobalAllocFromMem
; Description ...: Greates a movable HGLOBAL memory block and copies data from memory
; Syntax.........: _MemGlobalAllocFromMem($pSource, $iLength)
; Parameters ....: $pSource  - Pointer to memorybloc to copy from
;                  $iLength  - Length of data to copy
; Return values .: Success      - Handle of a new movable HGLOBAL
;                  Failure      - 0 and set @error:
;                  |1  - invalid $pSource
;                  |2  - invalid $iLength
;                  |3  - could not allocate memory
; Author ........: ProgAndy
; Modified.......:
; Remarks .......:
; Related .......: _MemGlobalAlloc, _MemGlobalFree, _MemGlobalLock
; Link ..........:
; Example .......:
; ===============================================================================================================================
Func _MemGlobalAllocFromMem($pSource, $iLength)
	If Not $pSource Then Return SetError(1, 0, 0)
	If $iLength < 1 Then Return SetError(2, 0, 0)
	Local $hMem = _MemGlobalAlloc($iLength, $GMEM_MOVEABLE)
	If @error Or Not $hMem Then Return SetError(3, 0, 0)
	_MemMoveMemory($pSource, _MemGlobalLock($hMem), $iLength)
	_MemGlobalUnlock($hMem)
	Return $hMem
EndFunc   ;==>_MemGlobalAllocFromMem