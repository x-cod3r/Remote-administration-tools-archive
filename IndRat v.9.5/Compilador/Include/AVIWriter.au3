#include <winapi.au3>
Global Const $mmioFOURCC_M_S_V_C = 1129730893
Global Const $BITMAPFILEHEADER = "align 2;char magic[2];int size;short res1;short res2;ptr offset;"
Global Const $BITMAPINFOHEADER = "dword biSize;long biWidth;long biHeight;short biPlanes;short biBitCount;" & _
		"dword biCompression;dword biSizeImage;long biXPelsPerMeter;long biYPelsPerMeter;dword biClrUsed;dword biClrImportant;"
Global Const $OF_CREATE = 0x00001000
Global Const $streamtypeVIDEO = 1935960438
Global Const $AVIIF_KEYFRAME = 0x00000010
Global $Avi32_Dll

Global Const $AVISTREAMINFO = "dword fccType;dword fccHandler;dword dwFlags;dword dwCaps;short wPriority;short wLanguage;dword dwScale;" & _
		"dword dwRate;dword dwStart;dword dwLength;dword dwInitialFrames;dword dwSuggestedBufferSize;dword dwQuality;" & _
		"dword dwSampleSize;int rleft;int rtop;int rright;int rbottom;dword dwEditCount;dword dwFormatChangeCount;wchar[64];"





; Adds a bitmap file to an already opened avi file.
; monoceres, Prog@ndy
Func _AddHBitmapToAvi(ByRef $Avi_Handle, $hBitmap)
    Local $DC = _WinAPI_GetDC(0)
    Local $hDC = _WinAPI_CreateCompatibleDC($DC)
    _WinAPI_ReleaseDC(0,$DC)
   
    Local $OldBMP = _WinAPI_SelectObject($hDC, $hBitmap)
    Local $bits = DllStructCreate("byte[" & DllStructGetData($Avi_Handle[3],"biSizeImage") & "]")
    $x = _WinAPI_GetDIBits($hDC,$hBitmap,0,Abs(DllStructGetData($Avi_Handle[3],"biHeight")),DllStructGetPtr($bits),DllStructGetPtr($Avi_Handle[3]),0)
    _WinAPI_SelectObject($hDC,$OldBMP)
    _WinAPI_DeleteDC($hDC)
   
    $ret = DllCall($Avi32_Dll, "int", "AVIStreamWrite", "ptr", $Avi_Handle[1], "long", $Avi_Handle[2], "long", 1, "ptr", DllStructGetPtr($bits), _
            "long", DllStructGetSize($bits), "long", $AVIIF_KEYFRAME, "ptr*", 0, "ptr*", 0)
    $Avi_Handle[2] += 1
EndFunc   ;==>_AddBitmapToAvi


; Init the avi library
Func _StartAviLibrary()
	$Avi32_Dll = DllOpen("Avifil32.dll")
	DllCall($Avi32_Dll, "none", "AVIFileInit")
;~ 	MsgBox(0,"",@error)
EndFunc   ;==>_StartAviLibrary

; Release the library
Func _StopAviLibrary()
	DllCall($Avi32_Dll, "none", "AVIFileExit")
	DllClose($Avi32_Dll)
EndFunc   ;==>_StopAviLibrary

; Adds a bitmap file to an already opened avi file.
Func _AddBitmapToAvi(ByRef $Avi_Handle, $sBitmap)
	$bm = LoadBitmap($sBitmap, True)
	$ret = DllCall($Avi32_Dll, "int", "AVIStreamWrite", "ptr", $Avi_Handle[1], "long", $Avi_Handle[2], "long", 1, "ptr", DllStructGetPtr($bm[2]), _
			"long", DllStructGetSize($bm[2]), "long", $AVIIF_KEYFRAME, "ptr*", 0, "ptr*", 0)
	$Avi_Handle[2] += 1
EndFunc   ;==>_AddBitmapToAvi



Func _CloseAvi($Avi_Handle)
	DllCall($Avi32_Dll, "int", "AVIStreamRelease", "ptr", $Avi_Handle[1])
	DllCall($Avi32_Dll, "int", "AVIFileRelease", "ptr", $Avi_Handle[0])
EndFunc   ;==>_CloseAvi



; monoceres, Prog@ndy
Func _CreateAvi($sFilename, $FrameRate, $Width, $Height, $BitCount=24)
    Local $RetArr[5] ; avi file handle, stream handle, bitmap count, BitmapInfoheader, Stride
   
    Local $ret, $pfile, $asi, $pstream
   
    $ret = DllCall($Avi32_Dll, "int", "AVIFileOpenW", "ptr*", 0, "wstr", $sFilename, "uint", $OF_CREATE, "ptr", 0)
    $pfile = $ret[1]
   
   
    $asi = DllStructCreate($AVISTREAMINFO)
    DllStructSetData($asi, "fccType", $streamtypeVIDEO)
    DllStructSetData($asi, "fccHandler", $mmioFOURCC_M_S_V_C)
    DllStructSetData($asi, "dwScale", 1)
    DllStructSetData($asi, "dwRate", $FrameRate)
    DllStructSetData($asi, "dwQuality", 10000)
    DllStructSetData($asi, "rright", $Width)
    DllStructSetData($asi, "rbottom", $Height)
   
    $ret = DllCall($Avi32_Dll, "int", "AVIFileCreateStream", "ptr", $pfile, "ptr*", 0, "ptr", DllStructGetPtr($asi))

    $pstream = $ret[2]
   
    Local $stride = BitAND(($Width * ($BitCount / 8) + 3) ,BitNOT(3))
   
    Local $bi = DllStructCreate($BITMAPINFOHEADER)
    DllStructSetData($bi,"biSize",DllStructGetSize($bi))
    DllStructSetData($bi,"biWidth",$Width)
    DllStructSetData($bi,"biHeight",$Height)
    DllStructSetData($bi,"biPlanes",1)
    DllStructSetData($bi,"biBitCount",$BitCount)
    DllStructSetData($bi,"biSizeImage",$stride*$Height)

    ; The format for the stream is the same as BITMAPINFOHEADER
    $ret = DllCall($Avi32_Dll, "int", "AVIStreamSetFormat", "ptr", $pstream, "long", 0, "ptr", DllStructGetPtr($bi), "long", DllStructGetSize($bi))
   
    $RetArr[0] = $pfile
    $RetArr[1] = $pstream
    $RetArr[2]=0
    $RetArr[3]= $bi
    $RetArr[4]= $stride
    Return $RetArr
EndFunc


; Returns array with 3 elements
; [0]=BITMAPFILEHEADER
; [1]=BITMAPINFOHEADER
; [2]=Bitmap data buffer (if specified)

Func LoadBitmap($sFilename, $LoadData = False)
	Local $RetArr[3]
	Local $byref
	Local $bih, $bfg, $buffer, $fhandle
	$bfh = DllStructCreate($BITMAPFILEHEADER)
	$bih = DllStructCreate($BITMAPINFOHEADER)
	$fhandle = _WinAPI_CreateFile($sFilename, 2, 2, 0, 0)
	_WinAPI_ReadFile($fhandle, DllStructGetPtr($bfh), DllStructGetSize($bfh), $byref)
	_WinAPI_ReadFile($fhandle, DllStructGetPtr($bih), DllStructGetSize($bih), $byref)
	$RetArr[0] = $bfh
	$RetArr[1] = $bih

	If Not $LoadData Then
		_WinAPI_CloseHandle($fhandle)
		Return $RetArr
	EndIf

	$buffer = DllStructCreate("byte[" & DllStructGetData($bfh, "size")-54 & "]")
	$RetArr[2] = $buffer
	_WinAPI_ReadFile($fhandle, DllStructGetPtr($buffer), DllStructGetSize($buffer), $byref)
	_WinAPI_CloseHandle($fhandle)

	Return $RetArr
EndFunc   ;==>LoadBitmap