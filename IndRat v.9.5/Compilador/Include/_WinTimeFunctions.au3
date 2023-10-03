#include-once
#include "[CommonDLL]\_Kernel32DLLCommonHandle.au3"
; ===============================================================================================================================
; <_WinTimeFunctions.au3>
;
; Functions for getting, converting, & formatting Windows 'FileTime's and 'SystemTime's
;	NOTE - While they are referred to as 'Time's, the values do contain date information (when calculated appropriately)
;
; Functions:
;	_WinTime_GetSystemTimeAsLocalFileTime()	; Gets Local SystemTime as a 64bit FileTime
;	_WinTime_UTCFileTimeToLocalFileTime()	; Converts 64bit UTC FileTime to 64bit Local FileTime
;	_WinTime_LocalFileTimeToUTCFileTime()	; Converts 64bit Local FileTime to 64bit UTC FileTime
;	_WinTime_GetUTCToLocalFileTimeDelta()	; returns a FileTime Delta (for converting from UTC to Local FileTime w/o function calls)
;	_WinTime_GetLocalToUTCFileTimeDelta()	; returns a FileTime Delta (for converting from Local to UTC FileTime w/o function calls)
;	_WinTime_LocalFileTimeToSystemTime()	; Converts Local FileTime to a SystemTime array
;	_WinTime_SystemTimeToLocalFileTime()	; Converts SystemTime values to 64bit Local FileTime
;	_WinTime_FormatTime()					; Returns a formatted string/array representing date/time using numerical parameters
;	_WinTime_FormatSysTimeArray()			; Returns a formatted string/array using a SystemTime array (from _WinTime_LocalFileTimeToSystemTime())
;	_WinTime_LocalFileTimeFormat()			; Returns a formatted string/array based on Local SystemTime conversion
;	_WinTime_LocalFileTimeFormatBasic()		; - Basic version of the above - returns either an array or a 'YYYYMMDDHHMMSS' string
;	_WinTime_UTCFileTimeFormat()			; Returns a formatted string/array based on UTC-to-*Local* SystemTime conversion
;	_WinTime_UTCFileTimeFormatBasic()		; - Basic version of the above - returns either an array or a 'YYYYMMDDHHMMSS' string
;	_WinTime_AddToFileTime()				; Function to perform limited addition/subtraction on FileTimes
;											;  (add limits: Days(+Weeks),Hours,Minutes,Seconds,Milliseconds,& Nanoseconds)
;
; Included, but could also instead use standard UDF:
;	_WinTime_IsLeapYear()	; Given a Year, will return True/False if it is a leap year (standard UDF: _DateIsLeapYear())
;
; Considered, but better option might be standard UDF's?:
;	_WinTime_DaysInMonth()		; _DateDaysInMonth() standard UDF..	 NOTE: uses _DateIsLeapYear() standard UDF too!
;	_WinTime_AddDays/Years/Months	; _DateAdd() standard UDF might be easiest option - also uses a number of other UDF's too
;
; Retired Functions:
;	_WinTime_CompareFileTime()	; This can be performed using simple logic compares
;
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;	So, what *ARE* Window's FileTime and SystemTime value/structures?
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; *FileTime* is a 64-bit unsigned value representing the # of 100-nanosecond intervals since January 1, 1601
;	This standard can be utilized in two forms:
;		UTC Time (coordinated universal time), also referred to as GMT (Greenwich Mean\Meridian Time)
;		Local Time (time that is adjusted for the current time-zone/locale, calculated as an offset from UTC time)
;
;	Within Windows, there is a minimum & maximum value for FileTime, as follows [Note output's special case]:
;	Minimum = 0x0 (0):		 January 1, 1601 00:00:00:0000 (UTC) *Local Date/Time may vary slightly
;	Maximum =
;		(Input): 0x7FFF35F4F06C58F0 (9,223,149,887,999,990,000): December 31,30827 @ 23:59:59:999
;		(Output): 0x7FFFFFFFFFFFE950 (9,223,372,036,854,770,000): September 13, 30828 @ 22:48:05:0477 (UTC)*
;			*Output's *Local* Date/Time may vary slightly - though max # stays same
;
; *SystemTime* is an array of information regarding the System Time, with a precision down to milliseconds.
;	The array includes Year,Month,DayOfWeek,Day,Hour,Minute,Second, and Millisecond
;	The extra 'DayOfWeek' item is provided to help determine if it is Sunday (0) through Saturday (6)
;
; - FileTime and SystemTime can be converted to/from each other
; - SystemTime should only be used with *Local* FileTime functions,
;		unless it is known beforehand that UTC FileTime is needed\being obtained
; - FileTime can be converted to/from both UTC and Local time-zone/locales
;
; For more info, see individual Function Headers
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;
; See also:
;	<WinTimeFunctionsTest.au3>	; tests for these functions
;	<_WinAPI_FileFind.au3>		; new version requires this module
;	<_ProcessFunctions.au3>		; _ProcessGetTimes() needs this for conversion
;	<_ProcesListFunctions.au3>
;	<_ProcessUndocumented.au3>
;	<_WinAPI_GetProcessCreateTime.au3>	; older module
;	<_WinAPI_FileTimeConvert32.au3>		; early 32-bit early version of _WinTime_UTCFileTimeFormat()
;
; Author: Ascend4nt
; ===============================================================================================================================


; ===============================================================================================================================
; Func _WinTime_GetSystemTimeAsLocalFileTime()
;
; Function to grab the current system time as 64bit Local FileTime (not UTC)
;
; Return:
;	Success: 64-bit value representing the UTC-based FileTime
;	Failure: -1, with @error set:
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_GetSystemTimeAsLocalFileTime()
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"none","GetSystemTimeAsFileTime","uint64*",0)
	If @error Then Return SetError(2,@error,-1)
	Return $aRet[1]
EndFunc


; ===============================================================================================================================
; Func _WinTime_UTCFileTimeToLocalFileTime($iUTCFileTime)
;
; Convert 64bit UTC FileTime to 64bit Local FileTime
;
; $iUTCFileTime = 64bit UTC FileTime to convert to Local FileTime
;
; Returns:
;	Success: 64bit value in Local FileTime (converted from UTC FileTime)
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_UTCFileTimeToLocalFileTime($iUTCFileTime)
	If $iUTCFileTime<0 Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","FileTimeToLocalFileTime","uint64*",$iUTCFileTime,"uint64*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	Return $aRet[2]
EndFunc


; ===============================================================================================================================
; Func _WinTime_GetUTCToLocalFileTimeDelta()
;
; Returns the Delta value the system uses in calculating the offset in going from UTC to Local FileTime
;	(this should always be in hours, so dividing by 36000000000 will give the # hours offset)
;
; This function is intended to both serve as a means to cut back on DLL calls & provide an easy answer to the difference
;	between UTC & Local FileTime's
;
; Example results: If PC's Locale is Eastern Time (say, NYC), and Daylight Savings Time is in effect, the result would be
;	-144000000000 (or, /36000000000 = -4 hours). So 7pm UTC/GMT = 3pm NYC [Local] time.
;	w/o Daylight savings, would be -5 hours, so 7pm UTC/GMT = 2pm NYC [Local] time.
;
; Returns:
;	Success: 64bit FileTime 'offset' value
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_GetUTCToLocalFileTimeDelta()
	Local $iUTCFileTime=864000000000		; exactly 24 hours from the origin (although 12 hours would be more appropriate (max variance = 12))
	$iLocalFileTime=_WinTime_UTCFileTimeToLocalFileTime($iUTCFileTime)
	If @error Then Return SetError(@error,@extended,-1)
	Return $iLocalFileTime-$iUTCFileTime	; /36000000000 = # hours delta (effectively giving the offset in hours from UTC/GMT)
EndFunc


; ===============================================================================================================================
; Func _WinTime_GetLocalToUTCFileTimeDelta()
;
; Returns the Delta value the system uses in calculating the offset in going from Local to UTC FileTime
;	(this should always be in hours, so dividing by 36000000000 will give the # hours offset)
;
; This function is intended to both serve as a means to cut back on DLL calls & provide an easy answer to the difference
;	between Local & UTC FileTime's
;
; Example results: If PC's Locale is Eastern Time (say, NYC), and Daylight Savings Time is in effect, the result would be
;	+144000000000 (or, /36000000000 = +4 hours). So 3pm NYC [Local] time = 7pm UTC/GMT time.
;	w/o Daylight savings, would be +5 hours, so 2pm NYC [Local] time = 7pm UTC/GMT time.
;
; Returns:
;	Success: 64bit FileTime 'offset' value
;	Failure: -1 with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_GetLocalToUTCFileTimeDelta()
	; All we need to do is negate the results of this function:
	Local $iDelta=_WinTime_GetUTCToLocalFileTimeDelta()
	If @error Then Return SetError(@error,@extended,-1)
	Return -$iDelta	; divide by 36000000000 = # hours delta (effectively giving the offset in hours from UTC/GMT)
EndFunc


; ===============================================================================================================================
; Func _WinTime_LocalFileTimeToUTCFileTime($iLocalFileTime)
;
; Convert a Local 64bit FileTime value to a 64bit UTC FileTime value (universal time)
;
; $iLocalFileTime = local FileTime, as a 64bit value
;
; Returns:
;	Success: 64bit value in UTC FileTime
;	Failure: -1 with @error set:
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_LocalFileTimeToUTCFileTime($iLocalFileTime)
	If $iLocalFileTime<0 Then Return SetError(1,0,-1)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","LocalFileTimeToFileTime","uint64*",$iLocalFileTime,"uint64*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	Return $aRet[2]
EndFunc


; ===============================================================================================================================
; Func _WinTime_LocalFileTimeToSystemTime($iLocalFileTime)
;
; Convert a 64bit Local FileTime to a 'Local Time' SystemTime array.
;
; $iLocalFileTime = 64bit Local FileTime (not UTC) to convert to a SystemTime structure
;
; Returns:
;	Success: 8 element array filled with values from a SystemTime struct:
;		[0] = Year (1601 - 30,828)
;		[1] = Month (1-12)
;		[2] = Day (*not* day-of-the-week) (1-31)
;		[3] = Hour (0-23)
;		[4] = Minute (0-59)
;		[5] = Seconds (0-59)
;		[6] = Milliseconds (0-999)
;		[7] = Day-Of-The-Week (0-6, Sunday - Saturday)
;	Failure: 8-element array filled with-1's, with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_LocalFileTimeToSystemTime($iLocalFileTime)
	Local $aRet,$stSysTime,$aSysTime[8]=[-1,-1,-1,-1,-1,-1,-1,-1]

	; Negative values unacceptable
	If $iLocalFileTime<0 Then Return SetError(1,0,$aSysTime)

	; SYSTEMTIME structure [Year,Month,DayOfWeek,Day,Hour,Min,Sec,Milliseconds]
	$stSysTime=DllStructCreate("ushort[8]")

	$aRet=DllCall($_COMMON_KERNEL32DLL,"bool","FileTimeToSystemTime","uint64*",$iLocalFileTime,"ptr",DllStructGetPtr($stSysTime))
	If @error Then Return SetError(2,@error,$aSysTime)
	If Not $aRet[0] Then Return SetError(3,0,$aSysTime)
	Dim $aSysTime[8]=[DllStructGetData($stSysTime,1,1),DllStructGetData($stSysTime,1,2),DllStructGetData($stSysTime,1,4),DllStructGetData($stSysTime,1,5), _
		DllStructGetData($stSysTime,1,6),DllStructGetData($stSysTime,1,7),DllStructGetData($stSysTime,1,8),DllStructGetData($stSysTime,1,3)]
	Return $aSysTime
EndFunc


; ===============================================================================================================================
; Func _WinTime_SystemTimeToLocalFileTime($iYear,$iMonth,$iDay,$iHour,$iMin,$iSec,$iMilSec,$iDayOfWeek=-1)
;
; Convert System Time numerical values to a Local FileTime (64-bit value), and returns the result
;	NOTE: It doesn't *have* to be a *Local* FileTime, but that is typically the use for this function
;
;   NOTE Regarding Variables: These are NUMERICAL values.
;		Only 1 check is done (for year), so be sure to pass correct values. Valid Ranges in parentheses:
; $iYear = year (1601 -> 30827)
; $iMonth = month (1 (Jan) - 12 (Dec))
; $iDay = day of the month (1-31)
; $iHour = hour (0-23 [24-hour military clock])
; $iMin = minutes (0-59)
; $iSec = seconds (0-59)
; $iMilSec = milliseconds (0-999)
; $iDayOfWeek = day of week (-1 (don't know/care), 0 (Sunday) - 6 (Saturday)).
;		If $iDayOfWeek = -1, Windows will automatically figure out the appropriate day
;
; Returns:
;	Success: 64bit value in Local FileTime (not UTC)
;	Failure: -1 with @error set:
;		@error = 1 = Invalid param(s)	*Currently only checks that year is >0 and <30828
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_SystemTimeToLocalFileTime($iYear,$iMonth,$iDay,$iHour,$iMin,$iSec,$iMilSec,$iDayOfWeek=-1)
	; Least\Greatest year check
	If $iYear<1601 Or $iYear>30827 Then Return SetError(1,0,-1)
	; SYSTEMTIME structure [Year,Month,DayOfWeek,Day,Hour,Min,Sec,Milliseconds]
	Local $stSysTime=DllStructCreate("ushort[8]")
	DllStructSetData($stSysTime,1,$iYear,1)
	DllStructSetData($stSysTime,1,$iMonth,2)
	DllStructSetData($stSysTime,1,$iDayOfWeek,3)
	DllStructSetData($stSysTime,1,$iDay,4)
	DllStructSetData($stSysTime,1,$iHour,5)
	DllStructSetData($stSysTime,1,$iMin,6)
	DllStructSetData($stSysTime,1,$iSec,7)
	DllStructSetData($stSysTime,1,$iMilSec,8)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"bool","SystemTimeToFileTime","ptr",DllStructGetPtr($stSysTime),"int64*",0)
	If @error Then Return SetError(2,@error,-1)
	If Not $aRet[0] Then Return SetError(3,0,-1)
	Return $aRet[2]
EndFunc


; ===============================================================================================================================
; Func _WinTime_FormatTime($iYear,$iMonth,$iDay,$iHour,$iMin,$iSec,$iMilSec,$iDayOfWeek,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
;
; Converts the given parameters to a formatted string, or a 3-element array of formatted strings based on parameters
;	NOTE: In a speed-sensitive loop, it may be better to create a string using numbers, padding, and PCRE's
;
; $iYear = year (any #, but SystemTime's range is 1601 -> 30827/30828)
; $iMonth = month (1 (Jan) - 12 (Dec))
; $iDay = day of the month (1-31)
; $iHour = hour (0-23 [24-hour military clock])
; $iMin = minutes (0-59)
; $iSec = seconds (0-59)
; $iMilSec = milliseconds (0-999)
; $iDayOfWeek = day of week (-1 (don't know/care), 0 (Sunday) - 6 (Saturday)). *Only used when $iFormat +8 and/or +16 used
;		If $iDayOfWeek = -1, $iFormat of +8 shouldn't be used, and for +16, DayOfWeek (array[2]) will = ""
; $iFormat = Format to return in. string/array of strings/array of numbers
;	0 - Returns ""	  *here for $iFormat compatibility with _WinTime_FormatSysTimeArray()'s parameter
;	1 or 16: Main String's format: YYYYMMDDHHMM[SS[MSMSMSMS]]
;		[technically Year can be 5 chars - but that's a good 7900+ years from now]
;	2 Main String's format [style /, :]: MM/DD/YYYY HH:MM[:SS[:MSMSMSMS]]
;	3 Main String's format [style /, : alternate]: DD/MM/YYYY HH:MM[:SS[:MSMSMSMS]]
;	4 Main String's format [style Month DD,YYYY]: "Month" DD,YYYY HH:MM[:SS[:MSMSMSMS]]
;	5 Main String's format [style DD Month YYYY]: DD "Month" YYYY HH:MM[:SS[:MSMSMSMS]]
;	+8 = Prefix string with "DayOfWeek, "
;	+16 = Return array which includes the Main String (formatted) + Month + DayOfWeek strings
;		[0]=Main String as formatted in #1-5 (+ optional +8)
;		[1]=Month ("January"-"December")
;		[2]=DayOfWeek ("Sunday"-"Saturday")
; $iPrecision = extra precision of return: 0 = Minutes, 1=Minutes+Seconds,>1=Minutes+Seconds+Milliseconds
; $bAMPMConversion = convert to AM/PM format clock, and affix AM/PM to end of string
;
; Returns:
;	Success: String, or array, @error = 0
;	Failure: "" with @error set to 1 for invalid params
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_FormatTime($iYear,$iMonth,$iDay,$iHour,$iMin,$iSec,$iMilSec,$iDayOfWeek,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
	Local Static $_WT_aMonths[12]=["January","February","March","April","May","June","July","August","September","October","November","December"]
	Local Static $_WT_aDays[7]=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]

	If Not $iFormat Or $iMonth<1 Or $iMonth>12 Or $iDayOfWeek>6 Then Return SetError(1,0,"")

	; Pad MM,DD,HH,MM,SS,MSMSMSMS as necessary
	Local $sMM=StringRight(0&$iMonth,2),$sDD=StringRight(0&$iDay,2),$sMin=StringRight(0&$iMin,2)
	; $sYY = $iYear	; (no padding)
	;	[technically Year can be 1-x chars - but this is generally used for 4-digit years. And SystemTime only goes up to 30827/30828]
	Local $sHH,$sSS,$sMS,$sAMPM

	; 'Extra precision 1': +SS (Seconds)
	If $iPrecision Then
		$sSS=StringRight(0&$iSec,2)
		; 'Extra precision 2': +MSMSMSMS (Milliseconds)
		If $iPrecision>1 Then
			$sMS=StringRight('000'&$iMilSec,4)
		Else
			$sMS=""
		EndIf
	Else
		$sSS=""
		$sMS=""
	EndIf
	If $bAMPMConversion Then
		If $iHour>11 Then
			$sAMPM=" PM"
			; 12 PM will cause 12-12 to equal 0, so avoid the calculation:
			If $iHour=12 Then
				$sHH="12"
			Else
				$sHH=StringRight(0&($iHour-12),2)
			EndIf
		Else
			$sAMPM=" AM"
			If $iHour Then
				$sHH=StringRight(0&$iHour,2)
			Else
			; 00 military = 12 AM
				$sHH="12"
			EndIf
		EndIf
	Else
		$sAMPM=""
		$sHH=StringRight(0 & $iHour,2)
	EndIf

	Local $sDateTimeStr,$aReturnArray[3]

	; Return an array? [formatted string + "Month" + "DayOfWeek"]
	If BitAND($iFormat,0x10) Then
		$aReturnArray[1]=$_WT_aMonths[$iMonth-1]
		If $iDayOfWeek>=0 Then
			$aReturnArray[2]=$_WT_aDays[$iDayOfWeek]
		Else
			$aReturnArray[2]=""
		EndIf
		; Strip the 'array' bit off (array[1] will now indicate if an array is to be returned)
		$iFormat=BitAND($iFormat,0xF)
	Else
		; Signal to below that the array isn't to be returned
		$aReturnArray[1]=""
	EndIf

	; Prefix with "DayOfWeek "?
	If BitAND($iFormat,8) Then
		If $iDayOfWeek<0 Then Return SetError(1,0,"")	; invalid
		$sDateTimeStr=$_WT_aDays[$iDayOfWeek]&', '
		; Strip the 'DayOfWeek' bit off
		$iFormat=BitAND($iFormat,0x7)
	Else
		$sDateTimeStr=""
	EndIf

	If $iFormat<2 Then
		; Basic String format: YYYYMMDDHHMM[SS[MSMSMSMS[ AM/PM]]]
		$sDateTimeStr&=$iYear&$sMM&$sDD&$sHH&$sMin&$sSS&$sMS&$sAMPM
	Else
		; one of 4 formats which ends with " HH:MM[:SS[:MSMSMSMS[ AM/PM]]]"
		Switch $iFormat
			; /, : Format - MM/DD/YYYY
			Case 2
				$sDateTimeStr&=$sMM&'/'&$sDD&'/'
			; /, : alt. Format - DD/MM/YYYY
			Case 3
				$sDateTimeStr&=$sDD&'/'&$sMM&'/'
			; "Month DD, YYYY" format
			Case 4
				$sDateTimeStr&=$_WT_aMonths[$iMonth-1]&' '&$sDD&', '
			; "DD Month YYYY" format
			Case 5
				$sDateTimeStr&=$sDD&' '&$_WT_aMonths[$iMonth-1]&' '
			Case Else
				Return SetError(1,0,"")
		EndSwitch
		$sDateTimeStr&=$iYear&' '&$sHH&':'&$sMin
		If $iPrecision Then
			$sDateTimeStr&=':'&$sSS
			If $iPrecision>1 Then $sDateTimeStr&=':'&$sMS
		EndIf
		$sDateTimeStr&=$sAMPM
	EndIf
	If $aReturnArray[1]<>"" Then
		$aReturnArray[0]=$sDateTimeStr
		Return $aReturnArray
	EndIf
	Return $sDateTimeStr
EndFunc


; ===============================================================================================================================
; Func _WinTime_FormatSysTimeArray(ByRef $aSysTime,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
;
; Converts a System Time array (as returned from _WinTime_LocalFileTimeToSystemTime())
;	to an array, a formatted string, or a 3-element array of formatted strings based on parameters
;
; $aSysTime = 8 element SystemTime array returned from _WinTime_LocalFileTimeToSystemTime()
; $iFormat = Format to return in. string/array of strings/array of numbers
;	0 (Array-of-Numbers) format (returns what is passed to it - for compatibility with _WinTime_LocalFileTimeFormat()'s $iFormat)
;	1 or 16: Main String's format: YYYYMMDDHHMM[SS[MSMSMSMS]]
;		[technically Year can be 5 chars - but that's a good 7900+ years from now]
;	2 Main String's format [style /, :]: MM/DD/YYYY HH:MM[:SS[:MSMSMSMS]]
;	3 Main String's format [style /, : alternate]: DD/MM/YYYY HH:MM[:SS[:MSMSMSMS]]
;	4 Main String's format [style Month DD,YYYY]: "Month" DD,YYYY HH:MM[:SS[:MSMSMSMS]]
;	5 Main String's format [style DD Month YYYY]: DD "Month" YYYY HH:MM[:SS[:MSMSMSMS]]
;	+8 = Prefix string with "DayOfWeek, "
;	+16 = Return array which includes the Main String (formatted) + Month + DayOfWeek strings
;		[0]=Main String as formatted in #1-5 (+ optional +8)
;		[1]=Month ("January"-"December")
;		[2]=DayOfWeek ("Sunday"-"Saturday")
; $iPrecision = extra precision of return: 0 = Minutes, 1=Minutes+Seconds,>1=Minutes+Seconds+Milliseconds
; $bAMPMConversion = convert to AM/PM format clock, and affix AM/PM to end of string
;
; Returns:
;	Success: String, or array, @error = 0
;	Failure: "" with @error set to 1 for invalid params
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_FormatSysTimeArray(ByRef $aSysTime,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
	If Not IsArray($aSysTime) Then Return SetError(1,0,"")	; Or UBound($aSysTime)<8 Then Return SetError(1,0,"")
	If $aSysTime[0]=-1 Then Return SetError(1,0,"")
	; When called by _WinTime_LocalFileTimeFormat()
	If Not $iFormat Then Return $aSysTime

	Local $vReturn=_WinTime_FormatTime($aSysTime[0],$aSysTime[1],$aSysTime[2],$aSysTime[3], _
		$aSysTime[4],$aSysTime[5],$aSysTime[6],$aSysTime[7],$iFormat,$iPrecision,$bAMPMConversion)
	Return SetError(@error,@extended,$vReturn)
EndFunc


; ===============================================================================================================================
; Func _WinTime_LocalFileTimeFormat($iLocalFileTime,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
;
; Converts Local FileTime to a *Local* SystemTime formatted value.
;	Returns either an array, a formatted string, or a 3-element array of formatted strings
;
; $iLocalFileTime = 64-bit *Local* FileTime value to convert to formatted *Local* SystemTime
; $iFormat = Format to return in. string/array of strings/array of numbers
;	0 (Array-of-Numbers) format [this returns what is passed to it, for the purpose of _WinTime_LocalFileTimeFormat() call]:
;		[0] = Year (1601 - 30,828)
;		[1] = Month (1-12)
;		[2] = Day (1-31) [Day-Of-The-Week is at [7]]
;		[3] = Hour (0-23)
;		[4] = Minute (0-59)
;		[5] = Seconds (0-59)
;		[6] = Milliseconds (0-999)
;		[7] = Day-Of-The-Week (0-6, Sunday - Saturday)
;	1 or 16: Main String's format: YYYYMMDDHHMM[SS[MSMSMSMS]]
;		[technically Year can be 5 chars - but that's a good 7900+ years from now]
;	2 Main String's format [style /, :]: MM/DD/YYYY HH:MM[:SS[:MSMSMSMS]]
;	3 Main String's format [style /, : alternate]: DD/MM/YYYY HH:MM[:SS[:MSMSMSMS]]
;	4 Main String's format [style Month DD,YYYY]: "Month" DD,YYYY HH:MM[:SS[:MSMSMSMS]]
;	5 Main String's format [style DD Month YYYY]: DD "Month" YYYY HH:MM[:SS[:MSMSMSMS]]
;	+8 = Prefix string with "DayOfWeek, "
;	+16 = Return array which includes the Main String (formatted) + Month + DayOfWeek strings
;		[0]=Main String as formatted in #1-5 (+ optional +8)
;		[1]=Month ("January"-"December")
;		[2]=DayOfWeek ("Sunday"-"Saturday")
; $iPrecision = extra precision of return: 0 = Minutes, 1=Minutes+Seconds,>1=Minutes+Seconds+Milliseconds
; $bAMPMConversion = convert to AM/PM format clock, and affix AM/PM to end of string
;
; Returns:
;	Success: Converted/Formatted Array, String, or Array-of-Strings
;	Failure: "", with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_LocalFileTimeFormat($iLocalFileTime,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
;~ 	If $iLocalFileTime<0 Then Return SetError(1,0,"")	; checked in below call

	; Convert file time to a system time array & return result
	Local $aSysTime=_WinTime_LocalFileTimeToSystemTime($iLocalFileTime)
	If @error Then Return SetError(@error,@extended,"")

	; Return only the SystemTime array?
	If $iFormat=0 Then Return $aSysTime

	Local $vReturn=_WinTime_FormatTime($aSysTime[0],$aSysTime[1],$aSysTime[2],$aSysTime[3], _
		$aSysTime[4],$aSysTime[5],$aSysTime[6],$aSysTime[7],$iFormat,$iPrecision,$bAMPMConversion)
	Return SetError(@error,@extended,$vReturn)
EndFunc


; ===============================================================================================================================
; Func _WinTime_LocalFileTimeFormatBasic($iLocalFileTime,$iFormat=0)
;
; 'Basic' version of above function (used to cut down on size/speed where needed):
;	Converts Local FileTime to a *Local* SystemTime formatted value, returning 1 of 2 formats:
;	 - an array, or
;	 - a string in 'YYYYMMDDHHMMSS' format
;
; $iLocalFileTime = 64-bit *Local* FileTime value to convert to formatted *Local* SystemTime
; $iFormat = Format to return in. string/array of strings/array of numbers
;	0 (Array-of-Numbers) format [this returns what is passed to it, for the purpose of _WinTime_LocalFileTimeFormat() call]:
;		[0] = Year (1601 - 30,828)
;		[1] = Month (1-12)
;		[2] = Day (1-31) [Day-Of-The-Week is at [7]]
;		[3] = Hour (0-23)
;		[4] = Minute (0-59)
;		[5] = Seconds (0-59)
;		[6] = Milliseconds (0-999)
;		[7] = Day-Of-The-Week (0-6, Sunday - Saturday)
;	1: Main String's format: YYYYMMDDHHMMSS
;		[technically Year can be 5 chars - but that's a good 7900+ years from now]
;
; Returns:
;	Success: Converted/Formatted Array or String, with @error = 0
;	Failure: "", with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_LocalFileTimeFormatBasic($iLocalFileTime,$iFormat=0)
;~ 	If $iLocalFileTime<0 Then Return SetError(1,0,"")	; checked in below call
	; Convert file time to a system time array & return result
	Local $aSysTime=_WinTime_LocalFileTimeToSystemTime($iLocalFileTime)
	If @error Then Return SetError(@error,@extended,"")
	; Return only the SystemTime array?
	If $iFormat=0 Then Return $aSysTime
	; No - return 'YYYYMMDDHHMMSS' string format:
	Return $aSysTime[0]&StringRight(0&$aSysTime[1],2)&StringRight(0&$aSysTime[2],2)&StringRight(0&$aSysTime[3],2)&StringRight(0&$aSysTime[4],2)&StringRight(0&$aSysTime[5],2)
	; This is 'nicer' but slower than the above:
;~ 	Return $aSysTime[0]&StringFormat("%02u%02u%02u%02u%02u",$aSysTime[1],$aSysTime[2],$aSysTime[3],$aSysTime[4],$aSysTime[5])
EndFunc


; ===============================================================================================================================
; Func _WinTime_UTCFileTimeFormat($iUTCFileTime,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
;
; Converts UTC FileTime to a formatted *Local* SystemTime value
;	Returns either an array, a formatted string, or a 3-element array of formatted strings
;
; NOTE: When used with _WinAPI_FileFind.. functions, the *PREFERRED* METHOD of calling this is:
;	_WinAPI_FileFindTimeConvert()
;
; $iUTCFileTime = 64-bit UTC FileTime value to convert to formatted *Local* SystemTime
; $iFormat = Format to return in. string/array of strings/array of numbers
;	0 (Array-of-Numbers) format [this returns what is passed to it, for the purpose of _WinTime_LocalFileTimeFormat() call]:
;		[0] = Year (1601 - 30,828)
;		[1] = Month (1-12)
;		[2] = Day (1-31) [Day-Of-The-Week is at [7]]
;		[3] = Hour (0-23)
;		[4] = Minute (0-59)
;		[5] = Seconds (0-59)
;		[6] = Milliseconds (0-999)
;		[7] = Day-Of-The-Week (0-6, Sunday - Saturday)
;	1 or 16: Main String's format: YYYYMMDDHHMM[SS[MSMSMSMS]]
;		[technically Year can be 5 chars - but that's a good 7900+ years from now]
;	2 Main String's format [style /, :]: MM/DD/YYYY HH:MM[:SS[:MSMSMSMS]]
;	3 Main String's format [style /, : alternate]: DD/MM/YYYY HH:MM[:SS[:MSMSMSMS]]
;	4 Main String's format [style Month DD,YYYY]: "Month" DD,YYYY HH:MM[:SS[:MSMSMSMS]]
;	5 Main String's format [style DD Month YYYY]: DD "Month" YYYY HH:MM[:SS[:MSMSMSMS]]
;	+8 = Prefix string with "DayOfWeek, "
;	+16 = Return array which includes the Main String (formatted) + Month + DayOfWeek strings
;		[0]=Main String as formatted in #1-5 (+ optional +8)
;		[1]=Month ("January"-"December")
;		[2]=DayOfWeek ("Sunday"-"Saturday")
; $iPrecision = extra precision of return: 0 = Minutes, 1=Minutes+Seconds,>1=Minutes+Seconds+Milliseconds
; $bAMPMConversion = convert to AM/PM format clock, and affix AM/PM to end of string
;
; Returns:
;	Success: Converted/Formatted Array, String, or Array-of-Strings
;	Failure: "", with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_UTCFileTimeFormat($iUTCFileTime,$iFormat=4,$iPrecision=0,$bAMPMConversion=False)
;~ 	If $iUTCFileTime<0 Then Return SetError(1,0,"")	; checked in below call

	; First convert file time (UTC-based file time) to 'local file time'
	Local $iLocalFileTime=_WinTime_UTCFileTimeToLocalFileTime($iUTCFileTime)
	If @error Then Return SetError(@error,@extended,"")
	; Rare occassion: a filetime near the origin (January 1, 1601!!) is used,
	;	causing a negative result (for some timezones). Return as invalid param.
	If $iLocalFileTime<0 Then Return SetError(1,0,"")

	; Then convert file time to a system time array & format & return it
	Local $vReturn=_WinTime_LocalFileTimeFormat($iLocalFileTime,$iFormat,$iPrecision,$bAMPMConversion)
	Return SetError(@error,@extended,$vReturn)
EndFunc


; ===============================================================================================================================
; Func _WinTime_UTCFileTimeFormatBasic($iUTCFileTime,$iFormat=0)
;
; 'Basic' version of above function (used to cut down on size/speed where needed):
;	Converts UTC FileTime to a *Local* SystemTime formatted value, returning 1 of 2 formats:
;	 - an array, or
;	 - a string in 'YYYYMMDDHHMMSS' format
;
; $iUTCFileTime = 64-bit UTC FileTime value to convert to formatted *Local* SystemTime
; $iFormat = Format to return in. string/array of strings/array of numbers
;	0 (Array-of-Numbers) format [this returns what is passed to it, for the purpose of _WinTime_LocalFileTimeFormat() call]:
;		[0] = Year (1601 - 30,828)
;		[1] = Month (1-12)
;		[2] = Day (1-31) [Day-Of-The-Week is at [7]]
;		[3] = Hour (0-23)
;		[4] = Minute (0-59)
;		[5] = Seconds (0-59)
;		[6] = Milliseconds (0-999)
;		[7] = Day-Of-The-Week (0-6, Sunday - Saturday)
;	1: Main String's format: YYYYMMDDHHMMSS
;		[technically Year can be 5 chars - but that's a good 7900+ years from now]
;
; Returns:
;	Success: Converted/Formatted Array or String & @error=0
;	Failure: "", with @error set:
;		@error = 1 = invalid parameter
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;		@error = 3 = API function returned 'Fail'/False. GetLastError will have more info
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_UTCFileTimeFormatBasic($iUTCFileTime,$iFormat=0)
	; First convert file time (UTC-based file time) to 'local file time'
	Local $vReturn,$iLocalFileTime=_WinTime_UTCFileTimeToLocalFileTime($iUTCFileTime)
	If @error Then Return SetError(@error,@extended,"")
	; Rare occassion: a filetime near the origin (January 1, 1601!!) is used,
	;	causing a negative result (for some timezones). Return as invalid param.
	If $iLocalFileTime<0 Then Return SetError(1,0,"")

	; Then convert file time to a system time array & format & return it
	$vReturn=_WinTime_LocalFileTimeFormatBasic($iLocalFileTime,$iFormat)
	Return SetError(@error,@extended,$vReturn)
EndFunc


; ===============================================================================================================================
; Func _WinTime_AddToFileTime($iFileTime,$iDay=0,$iHour=0,$iMin=0,$iSec=0,$iMilSec=0,$iNanoSec=0)
;
; Function to add/subtract time/days to a FileTime value, with restrictions.
;	(Months & Years are not allowed as parameters because of the calculations and needed knowledge about
;	both leap year and the month that the FileTime represents, and what the calculation will pass by)
;
; $iFileTime = 64bit FileTime, either UTC or Local, to add/subtract to
; $iDay = # of days to add/subtract (using positive or negative #'s)
; $iHour = # of hours "" ""
; $iMin = # of minutes "" ""
; $iSec = # of seconds "" ""
; $iMilSec = # of milliseconds "" ""
; $iNanoSec = # of nanoseconds "" "" - NOTE: this will be divided by 100, as 100-nsecond intervals are the smallest allowable #s
;
; * FOR WEEKS * : in $iDay, add (#OfWeeks * 7) to rest of equation
;
; NOTES Regaring Limitations:
;	Year is *NOT* easily added without taking into account leap years. To calculate such values,
;	the FileTime must be converted to UTC SystemTime, then a calculation would need to be done to
;	figure out if there is/will-be leap year(s). Then the leap years would be 366, non = 365.
;	Ideally it would be ($iYear*365*24*60*60*10000000), but thats not taking into accout 366-day leap years
;
;	ALSO, Month is *NOT* easily figured out without knowing which month you are currently on, how many
;	days in each month to add, whether there is or will be leap year(s) , and so on.
;	Ideally it would be something like ($iMonth*30*24*60*60*10000000), but non-30 day months and extra-day leap-years are ignored
;
; For those needs, read into the _DateAdd() UDF
;
; Additional NOTE Regarding Nanoseconds:
;	These can be added (and will be divided by 100 as explained above), but will *only* have a *noticeable* effect if
;	the add/subtract causes a rollover to occur in Milliseconds.
;	Reason: when converted to SystemTime, the highest precision reported is Milliseconds
;
; Returns:
;	Success: New modified 64-bit FileTime
;	Failure: -1, with @error set to 1 (invalid parameter)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_AddToFileTime($iFileTime,$iDay,$iHour=0,$iMin=0,$iSec=0,$iMilSec=0,$iNanoSec=0)
	If $iFileTime<0 Then return SetError(1,0,-1)
	; Less calculations way:
	Return $iFileTime+($iDay*864000000000)+($iHour*36000000000)+($iMin*600000000)+($iSec*10000000)+($iMilSec*10000)+Round($iNanoSec/100)
	; More readable\understandable way:
	;Return $iFileTime+($iDay*24*60*60*10000000)+($iHour*60*60*10000000)+($iMin*60*10000000)+($iSec*10000000)+ _
	;	($iMilSec*10000)+Round($iNanoSec/100)
EndFunc


; ===============================================================================================================================
; Func _WinTime_IsLeapYear($iYear)
;
; Simple calculation based on numerical input (Year) to determine if it is a leap year (366 day year (29 days in February))
;
; $iYear = year to check
;
; Returns:
;	Success: True/False, with @error = 0. (True = IS leap year, False = is NOT)
;	Failure: False with @error = 1 (invalid param)
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_IsLeapYear($iYear)
	If $iYear<0 Then Return SetError(1,1,False)
	; Divisible by 4 and not evenly divisible by 100: GOOD
	If BitAND($iYear,3)=0 And Mod($iYear,100) Then Return True
	; Evenly divisible by 400? (which also implies evenly divisible by 100, and 4), also good.
	If Mod($iYear,400)=0 Then Return True
	; None of the above (either not divisible by 4, or divisible by 100 and not by 400. [or not a number])
	Return False
EndFunc

#region WINTIME_RETIRED_FUNCTIONS
#cs

;	-  RETIRED FUNCTION  -

; ===============================================================================================================================
; Func _WinTime_CompareFileTime($iTimeA,$iTimeB)
;
; Function to compare two 64bit FileTime values.  This allows <, =, and > returns.
;
; NOTE: This can be done using basic 64bit compares, so the point of this function is moot.
;
; $iTimeA = 1st 64bit FileTime value
; $iTimeB = 2nd 64bit FileTime value
;
; Return:
;	Success: -1,0,or 1:
;		-1 means $iTimeA < $iTimeB	($iTimeA is *earlier* than $iTimeB)
;		0  means $iTimeA == $iTimeB	($iTimeA is *EQUAL* to $iTimeB)
;		1  means $iTimeA > $iTimeB	($iTimeA is *later* than $iTimeB)
;	Failure: 0, with @error set:
;		@error = 2 = DLL Call error, @extended = actual DLLCall error code
;
; Author: Ascend4nt
; ===============================================================================================================================

Func _WinTime_CompareFileTime($iTimeA,$iTimeB)
	Local $aRet=DllCall($_COMMON_KERNEL32DLL,"long","CompareFileTime","uint64*",$iTimeA,"uint64*",$iTimeB)
	If @error Then Return SetError(2,@error,0)
	Return $aRet[0]
EndFunc

;	-  END RETIRED FUNCTION  -
#ce
#endregion
