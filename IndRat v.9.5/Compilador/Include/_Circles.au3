#include-once
; ===============================================================================================================================
; <_Circles.au3>
;
; Function to create a Circle or Ellipse GUI (with no controls or interactive elements)
;
; Functions:
;	_CircleGUICreate()	; Creates and returns a Circle GUI
;
; See also:
;	<CircleGUIsExample.au3>	; example use of this module
;	<_GUIBox.au3>		; creates a rubber-band style GUI box(es), or just 'outline' style box(es).
;	<_CrossHairs.au3>	; creates full-screen crosshairs using GUI's
;
; References:
;	'Painting and Drawing Functions (Windows)' @ MSDN:
;		http://msdn.microsoft.com/en-us/library/dd162760%28v=VS.85%29.aspx
;	'Region Functions (Windows)' @ MSDN:
;		http://msdn.microsoft.com/en-us/library/dd162915%28v=VS.85%29.aspx
;
; Author: Ascend4nt
; ===============================================================================================================================


; ==========================================================================================================================
; Func _CircleGUICreate($iX,$iY,$iCircleSzX,$iCircleSzY=Default,$iCircleColor=Default)
;
; Creates a Circle or Ellipse GUI (with no controls or interactive elments).
;	NOTE: If putting a Circle off-screen with transparency, you *must* first show the GUI on-screen
;	 (with 0 invisibility), THEN put it off-screen and readjust the transparency.
;	  Otherwise weird artifacts will show up in the GUI (at least on XP)
;
; $iX = Initial top-of-circle position. If set to keyword 'Default', the circle will be centered on the screen
; $iY = Initial left-side-of-circle position. If set to keyword 'Default', the circle will be centered on the screen
; $iCircleSzX = width of circle
; $iCircleSzY = height of circle/ellipse. If set to 'Default', it will equal $iCircleSzX (making a circle)
; $iCircleColor = color to set the Circle to. 'Default' keyword (default) uses the default background window color
;
; Returns:
;	Success: Window handle and @error=0:
;	Failure: 0 and @error set:
;		@error = 1 = GUICreate() failed, @extended = @error [see AutoIt Help]. May be an invalid parameter
;		@error = 2 = DLLCall failed. If @extended is nonzero, it is set to DLLCall() error [see AutoIt Help].
;					 (otherwise if @extended=0, it is a 'fail' return from an API function)
;
; Author: Ascend4nt
; ==========================================================================================================================

Func _CircleGUICreate($iX,$iY,$iCircleSzX,$iCircleSzY=Default,$iCircleColor=Default)
	Local $hGUI,$hEllipseRgn,$aRet,$iErr
	If $iCircleSzY=Default Then $iCircleSzY=$iCircleSzX
;	Styles: Basic: WS_POPUP (0x80000000), Extended: WS_EX_NOACTIVATE 0x08000000 $WS_EX_TOOLWINDOW (0x80)
	$hGUI=GUICreate("",$iCircleSzX,$iCircleSzY,$iX,$iY,0x80000000,0x08000080)
	If @error Then Return SetError(1,@error,0)
	$hEllipseRgn=DllCall("gdi32.dll","handle","CreateEllipticRgn","int",0,"int",0,"int",$iCircleSzX,"int",$iCircleSzY)
	If Not @error And $hEllipseRgn[0]<>0 Then
		$aRet=DllCall("user32.dll","int","SetWindowRgn","hwnd",$hGUI,"handle",$hEllipseRgn[0],"bool",1)
		If Not @error And $aRet[0] Then
			If $iCircleColor<>Default Then GUISetBkColor($iCircleColor)
			Return $hGUI
		EndIf
	EndIf
	$iErr=@error
	GUIDelete($hGUI)
	Return SetError(2,$iErr,0)
EndFunc
