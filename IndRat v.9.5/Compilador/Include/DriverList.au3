#include <[Includes]\_DriverList.au3>
; ===============================================================================================================================
; <DriverList.au3>
;
;	Example use of <_DriverList.au3>
;
; Author: Ascend4nt
; ===============================================================================================================================
#include <Array.au3>

$aDrivers=_DriverList()
If @error Then Exit ConsoleWrite("_DriverList call failed, @error="&@error&", @extended="&@extended&@CRLF)
For $i=1 To $aDrivers[0][0]
	$aDrivers[$i][5]='0x'&Hex($aDrivers[$i][5])
Next
$aDrivers[0][0]='Driver Name'
$aDrivers[0][1]='Driver Path'
$aDrivers[0][2]='Base Address'
$aDrivers[0][3]='Module Size'
$aDrivers[0][4]='Load Count'
$aDrivers[0][5]='Flags'
$aDrivers[0][6]='Index'
_ArrayDisplay($aDrivers,"Drivers")
