;===============================================================================
;
; Function Name:    _MediaOpen()
; Description:      Opens a media file.
; Parameter(s):     $s_location     - Location of the media file
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns Media ID needed for the other media functions
;                   On Failure - Returns 0  and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaOpen($s_location, $h_guihandle = 0)
	If Not IsDeclared("i_MediaCount") Then Global $i_MediaCount=0
	$i_MediaCount=$i_MediaCount+1
	DllCall("winmm.dll","int","mciSendString","str","open "&FileGetShortName($s_location)&" alias media"&String($i_MediaCount),"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return String($i_MediaCount)
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaCreate()
; Description:      Creates a new media for recording, capturing etc.
; Parameter(s):     $s_format     - Format of the file.
;                   0 = CD Audio
;                   1 = Digital video
;                   2 = Overlay
;                   3 = sequencer
;                   4 = Vcr
;                   5 = Video disc
;                   6 = Wave Audio
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns Media ID needed for the other media functions
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaCreate($s_format)
	If Not IsDeclared("i_MediaCount") Then Global $i_MediaCount=0
	$i_MediaCount=$i_MediaCount+1
	If $s_format=0 Then
		$s_Use="cdaudio"
	ElseIf $s_format=1 Then
		$s_Use="digitalvideo"
	ElseIf $s_format=2 Then
		$s_Use="overlay"
	ElseIf $s_format=3 Then
		$s_Use="sequencer"
	ElseIf $s_format=4 Then
		$s_Use="vcr"
	ElseIf $s_format=5 Then
		$s_Use="videodisc"
	ElseIf $s_format=6 Then
		$s_Use="waveaudio"
	EndIf
	DllCall("winmm.dll","int","mciSendString","str","open new type "&$s_Use&" alias media"&String($i_MediaCount),"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return String($i_MediaCount)
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaPlay()
; Description:      Plays a opened media file.
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   [optional] $i_From        - Sets time in seconds where to begin playing
;                   [optional] $i_To          - Sets time in seconds where to bstop playing
;                   [optional] $i_Speed       - Sets the speed to play with
;                   [optional] $f_Fast        - When 1 it will play faster then normal
;                   [optional] $f_Slow        - When 1 it will play slower then normal
;                   [optional] $f_Fullscreen  - When 1 movies will play fullscreen
;                   [optional] $f_Repeat      - When 1 it will keep repeating
;                   [optional] $f_Reverse     - When 1 the movie will been played reversed
;                   [optional] $f_Scan        - When 1 plays as fast as possible
;                   The default value of all the optional parameters is 0.
;                   Some file formats dont understand some of the optional functions
;                   Experimate with it.
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaPlay($i_MediaId,$i_From = 0,$i_To = 0,$i_Speed = 0,$f_Fast = 0,$f_Slow = 0,$f_Fullscreen = 0,$f_Repeat=0,$f_Reverse=0,$f_Scan = 0)
	$s_Parameters=""
	If $i_From Then $s_Parameters=$s_Parameters&" from "&$i_From
	If $i_To Then $s_Parameters=$s_Parameters&" to "&$i_To
	If $i_Speed Then $s_Parameters=$s_Parameters&" speed "&$i_Speed
	If $f_Fast Then $s_Parameters=$s_Parameters&" fast"
	If $f_Fullscreen Then $s_Parameters=$s_Parameters&" fullscreen"
	If $f_Repeat Then $s_Parameters=$s_Parameters&" repeat"
	If $f_Reverse Then $s_Parameters=$s_Parameters&" reverse"
	If $f_Scan Then $s_Parameters=$s_Parameters&" scan"
	If $f_Slow Then $s_Parameters=$s_Parameters&" slow"
	DllCall("winmm.dll","int","mciSendString","str","play media"&$i_MediaId&$s_Parameters,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaRecord()
; Description:      Records from a microphone
;                   Stop recording with _MediaStop()
;                   (choose position with _MediaSeek())
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaRecord($i_MediaId)
	DllCall("winmm.dll","int","mciSendString","str","record media"&$i_MediaId,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaCut()
; Description:      Cuts a specified part of the movie to the clipboard.
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   $i_From        - From time in seconds
;                   $i_To          - To time in seconds
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaCut($i_MediaId,$i_From,$i_To)
	DllCall("winmm.dll","int","mciSendString","str","cut media"&$i_MediaId&" from "&$i_From&" to "&$i_To,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaCopy()
; Description:      Copies a specified part of the movie to the clipboard.
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   $i_From        - From time in seconds
;                   $i_To          - To time in seconds
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaCopy($i_MediaId,$i_From,$i_To)
	DllCall("winmm.dll","int","mciSendString","str","copy media"&$i_MediaId&" from "&$i_From&" to "&$i_To,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaPaste()
; Description:      Paste media from the clipboard.
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaPaste($i_MediaId,$i_From,$i_To)
	DllCall("winmm.dll","int","mciSendString","str","paste media"&$i_MediaId,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaDelete()
; Description:      Deletes a specified part of the movie.
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   $i_From        - From time in seconds
;                   $i_To          - To time in seconds
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaDelete($i_MediaId,$i_From,$i_To)
	DllCall("winmm.dll","int","mciSendString","str","delete media"&$i_MediaId&" from "&$i_From&" to "&$i_To,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaCapture()
; Description:      Copies the contents of the frame buffer and stores it in the
;                   specified file.
;                   Stop recording with _MediaStop()
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   $s_Location    - Location where to store the file.
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaCapture($i_MediaId,$s_Location)
	DllCall("winmm.dll","int","mciSendString","str","capture media"&$i_MediaId&" "&FileGetShortName($s_Location),"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaStop()
; Description:      Stops playing/recording of a Media ID
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaStop($i_MediaId)
	DllCall("winmm.dll","int","mciSendString","str","stop media"&$i_MediaId,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaSeek()
; Description:      Moves to a specified Position and stops.
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   $i_Position    - Position in seconds to move to, -1 goes to start
;                   -2 goes to end
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaSeek($i_MediaId,$i_Position)
	If $i_Position = -1 Then
		$s_Position = "end"
	ElseIf $i_Position = -2 Then
		$s_Position = "begin"
	Else
		$s_Position = String($i_Position)
	EndIf
	DllCall("winmm.dll","int","mciSendString","str","seek media"&$i_MediaId&" to "&$s_Position,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaPause()
; Description:      Pauses playing/recording of a Media ID
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaPause($i_MediaId)
	DllCall("winmm.dll","int","mciSendString","str","pause media"&$i_MediaId,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaResume()
; Description:      Resumes playing/recording of a Media ID
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaResume($i_MediaId)
	DllCall("winmm.dll","int","mciSendString","str","resume media"&$i_MediaId,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaSave()
; Description:      Saves a opened Media ID to the selected file
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
;                   $s_Location    - Location to save to (must be full path)
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaSave($i_MediaId,$s_Location)
    DllCall("winmm.dll","int","mciSendString","str","save media"&$i_MediaId&" " & '"'&FileGetShortName($s_Location)&'"',"str","","int",65534,"hwnd",0)
    If @error Then
        SetError(1)
        Return 0
    Else
        Return 1
    EndIf
EndFunc
;===============================================================================
;
; Function Name:    _MediaClose()
; Description:      Closes a existing Media ID
; Parameter(s):     $i_MediaId     - Media ID returned by _MediaOpen()/MediaCreate()
; Requirement(s):   AutoIt
; Return Value(s):  On Success - Returns 1
;                   On Failure - Returns 0 and sets @ERROR = 1
; Author(s):        svennie
;
;===============================================================================
Func _MediaClose($i_MediaId)
	DllCall("winmm.dll","int","mciSendString","str","close media"&$i_MediaId,"str","","int",65534,"hwnd",0)
	If @error Then
		SetError(1)
		Return 0
	Else
		Return 1
	EndIf
EndFunc
