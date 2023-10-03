#include-once
#include <GUIConstants.au3>
#include <GuiConstantsEx.au3>
#include <WindowsConstants.au3>
#include <Array.au3>
#include <IE.au3>
#Region Header
#cs
	Title:   		Google Maps UDF Library for AutoIt3
	Filename:  		Google Maps.au3
	Description: 	A collection of functions for creating and controlling a Google Maps control in AutoIT
	Author:   		seangriffin
	Version:  		V0.4
	Last Update: 	10/06/10
	Requirements: 	AutoIt3 3.2 or higher
	Changelog:		
					---------10/06/10---------- v0.4
					Updated the function "_GUICtrlGoogleMap_Create" to add Javascript for calculating
						directions.  Also had to split $html, because it's definition was too large
						causing a runtime error.
					Changed the Main GUI of the example to include tabs.
					Added a Directions tab in the example, with many Directions related controls.
					Added the functions "_GUICtrlGoogleMap_AddRoute" and "_GUICtrlGoogleMap_GetRoute".
					
					---------08/06/10---------- v0.3
					Improved performance in "_GUICtrlGoogleMap_Create" by moving
						'document.body.scroll = "no"' to the html onload event,	and removing
						_IELoadWait.
					Added 4 new parameters ($map_type, $navigation_style, $scale_style, $map_type_style)
						to "_GUICtrlGoogleMap_Create" for initializing map type	and map controls.
					Added the function "_GUICtrlGoogleMap_SetMapType" for changing map type.
					Added a "Hide Map" checkbox to the example, to demonstrate the use of $gmap_ctrl.
					Changed the $hide_markers_button and $show_markers_button controls in the
						example to a checkbox.
					
					---------08/06/10---------- v0.2
					Added the function "_GUICtrlGoogleEarth_Create".
					
					---------06/06/10---------- v0.1
					Initial release.
					
#ce
#EndRegion Header
#Region Global Variables and Constants
#EndRegion Global Variables and Constants
#Region Core functions
; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_GetLatLng()
; Description ...:	Converts an address into a latitude and longitude array.
; Syntax.........:	_GUICtrlGoogleMap_GetLatLng($address)
; Parameters ....:	$address		- the address (either a location or latitude and longitude) to convert
;									  ie. both "Sydney, New South Wales, Australia" and "-34.397, 150.644" are valid.
; Return values .: 	On Success		- Returns an array with the latitude and longitude of the address. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_GetLatLng($address)
	
	Local $latlng[2]

	$address_part = StringSplit($address, ",")
	_ArrayDelete($address_part, 0)
	
	; if the geocode is a lat long
	if UBound($address_part) = 2 and IsNumber($address_part[0]) = True and IsNumber($address_part[1]) = True Then
		
		$latlng[0] = StringStripWS($address_part[0], 3)
		$latlng[1] = StringStripWS($address_part[1], 3)
	Else
	
		; convert the address to a lat long
		$oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
		$oHTTP.Open("GET","http://maps.google.com/maps/api/geocode/json?address=" & $address & "&sensor=false")
		$oHTTP.Send()
		$HTMLSource = $oHTTP.Responsetext 
		
		$geocode_line = StringSplit($HTMLSource, @LF, 1)
		
		$latlng[0] = $geocode_line[_ArraySearch($geocode_line, """lat"":", 0, 0, 1, 1)]
		$latlng[0] = StringStripWS(StringReplace(StringReplace($latlng[0], """lat"":", ""), ",", ""), 3)
		$latlng[1] = $geocode_line[_ArraySearch($geocode_line, """lng"":", 0, 0, 1, 1)]
		$latlng[1] = StringStripWS(StringReplace(StringReplace($latlng[1], """lng"":", ""), ",", ""), 3)
	EndIf
	
	Return $latlng
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_Create()
; Description ...:	Creates a Google Map control.
; Syntax.........:	_GUICtrlGoogleMap_Create(ByRef $gmap, $left, $top, $width, $height, $address, $zoom = 8, $marker = True, $map_type = 0, $navigation_style = 0, $scale_style = 0, $map_type_style = 0)
; Parameters ....:	$gmap				- The embedded Google Map object, required by the _GUICtrlGoogleMap functions below.
;					$left				- The left side of the control.
;					$top				- The top of the control.
;					$width				- The width of the control.
;					$height				- The height of the control.
;					$address			- An address (either a location or latitude and longitude) to center the map on
;									  	  ie. both "Sydney, New South Wales, Australia" and "-34.397, 150.644" are valid.
;					$zoom				- An initial map zoom level.
;					$marker				- A boolean indicating whether a marker should be created for the above address.
;					$map_type			- 0 = Sets the map type to roadmap
;										  1 = Sets the map type to satellite
;										  2 = Sets the map type to hybrid
;									  	  3 = Sets the map type to terrain
;					$navigation_style	- 0 = Disable the Navigation control
;										  1 = Enable the Navigation control with a small style 
;										  2 = Enable the Navigation control with a zoom pan style 
;									  	  3 = Enable the Navigation control with a android style 
;									  	  4 = Enable the Navigation control with a default style 
;					$scale_style		- 0 = Disable the Scale control
;									  	  1 = Enable the Scale control
;					$map_type_style		- 0 = Disable the MapType control
;									  	  1 = Enable the MapType control with a horizontal bar style 
;									  	  2 = Enable the MapType control with a dropdown menu style 
;									  	  3 = Enable the MapType control with a default style 
; Return values .: 	On Success			- Returns the identifier (controlID) of the new control. 
;                 	On Failure			- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	This function must be used before any other function in the UDF is used.
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_Create(ByRef $gmap, $left, $top, $width, $height, $address, $zoom = 8, $marker = True, $map_type = 0, $navigation_style = 0, $scale_style = 0, $map_type_style = 0)
	
	local Const $map_type_html[4] = [ _
		"mapTypeId: google.maps.MapTypeId.ROADMAP", _
		"mapTypeId: google.maps.MapTypeId.SATELLITE", _
		"mapTypeId: google.maps.MapTypeId.HYBRID", _
		"mapTypeId: google.maps.MapTypeId.TERRAIN"]
	local Const $navigation_style_html[5] = [ _
		"", _
		"navigationControl: true, navigationControlOptions: {style: google.maps.NavigationControlStyle.SMALL}, ", _
		"navigationControl: true, navigationControlOptions: {style: google.maps.NavigationControlStyle.ZOOM_PAN}, ", _
		"navigationControl: true, navigationControlOptions: {style: google.maps.NavigationControlStyle.ANDROID}, ", _
		"navigationControl: true, navigationControlOptions: {style: google.maps.NavigationControlStyle.DEFAULT}, "]
	local Const $scale_style_html[2] = [ _
		"", _
		"scaleControl: true, "]
	local Const $map_type_style_html[4] = [ _
		"", _
		"mapTypeControl: true, mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR}, ", _
		"mapTypeControl: true, mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DROPDOWN_MENU}, ", _
		"mapTypeControl: true, mapTypeControlOptions: {style: google.maps.MapTypeControlStyle.DEFAULT}, "]
	Local $latlng[2]
	
	$latlng = _GUICtrlGoogleMap_GetLatLng($address)

	Local Const $html1 = _
		"<html>" & @CRLF & _
		"<head>" & @CRLF & _
		"<meta name=""viewport"" content=""initial-scale=1.0, user-scalable=no"" />" & @CRLF & _
		"<meta http-equiv=""content-type"" content=""text/html; charset=UTF-8""/>" & @CRLF & _
		"<script type=""text/javascript"" src=""http://maps.google.com/maps/api/js?sensor=false""></script>" & @CRLF & _
		"<script type=""text/javascript"">" & @CRLF & _
		"  var directionDisplay;" & @CRLF & _
		"  var directionsService = new google.maps.DirectionsService();" & @CRLF & _
		"  var map;" & @CRLF & _
  		"  var markersArray = [];" & @CRLF & _
		"  function initialize() {" & @CRLF & _
		"    document.body.scroll = ""no"";" & @CRLF & _
		"    directionsDisplay = new google.maps.DirectionsRenderer();" & @CRLF & _
		"    var latlng = new google.maps.LatLng(" & $latlng[0] & "," & $latlng[1] & ");" & @CRLF & _
		"    var myOptions = {" & @CRLF & _
		"      zoom: " & $zoom & "," & @CRLF & _
		"      center: latlng," & @CRLF & _
		"      disableDefaultUI: true," & @CRLF & _
		$navigation_style_html[$navigation_style] & @CRLF & _
		$scale_style_html[$scale_style] & @CRLF & _
		$map_type_style_html[$map_type_style] & @CRLF & _
		$map_type_html[$map_type] & @CRLF & _
		"    };" & @CRLF & _
		"    map = new google.maps.Map(document.getElementById(""map_canvas""), myOptions);" & @CRLF & _
		"    directionsDisplay.setMap(map);" & @CRLF & _
		"    if (" & StringLower($marker) & ") {" & @CRLF & _
		"      addMarker(" & $latlng[0] & "," & $latlng[1] & ");" & @CRLF & _
		"    }" & @CRLF & _
		"  }" & @CRLF & _
		"  function calcRoute(start, end, travel_mode_num, action) {" & @CRLF & _
		"    var travel_mode = [google.maps.DirectionsTravelMode.DRIVING, google.maps.DirectionsTravelMode.WALKING, google.maps.DirectionsTravelMode.BICYCLING];" & @CRLF & _
		"    var request = {" & @CRLF & _
		"      origin:start," & @CRLF & _
		"      destination:end," & @CRLF & _
		"      travelMode: travel_mode[travel_mode_num]" & @CRLF & _
		"    };" & @CRLF & _
		"    var myout = """";" & @CRLF & _
		"    directionsService.route(request, function(result, status) {" & @CRLF & _
		"      if (status == google.maps.DirectionsStatus.OK) {" & @CRLF & _
		"        if (action == 0) {" & @CRLF & _
		"          directionsDisplay.setDirections(result);" & @CRLF & _
		"        } else {" & @CRLF & _
		"          var myRoute = result.routes[0].legs[0];" & @CRLF & _
		"          myout = myRoute.distance.value + ""~"" + myRoute.duration.value + '\n';" & @CRLF & _
		"          for (var i = 0; i < myRoute.steps.length; i++) {" & @CRLF & _
		"            myout = myout + myRoute.steps[i].instructions + ""~"" + myRoute.steps[i].distance.value + ""~"" + myRoute.steps[i].duration.value + '\n'" & @CRLF & _
		"          }" & @CRLF & _
		"        }" & @CRLF & _
		"      }" & @CRLF & _
		"    });" & @CRLF & _
		"    return myout;" & @CRLF & _
		"  }" & @CRLF


	Local Const $html2 = _
		"  function addMarker(lat, lng, icon_url) {" & @CRLF & _
		"    var location = new google.maps.LatLng(lat, lng);" & @CRLF & _
  		"    marker = new google.maps.Marker({" & @CRLF & _
		"      position: location," & @CRLF & _
		"      map: map," & @CRLF & _
		"      icon: icon_url" & @CRLF & _
		"    });" & @CRLF & _
		"    markersArray.push(marker);" & @CRLF & _
		"  }" & @CRLF & _
		"  function clearMarkers() {" & @CRLF & _
		"    if (markersArray) {" & @CRLF & _
		"      for (i in markersArray) {" & @CRLF & _
		"        markersArray[i].setMap(null);" & @CRLF & _
		"      }" & @CRLF & _
		"    }" & @CRLF & _
		"  }" & @CRLF & _
		"  function showMarkers() {" & @CRLF & _
		"    if (markersArray) {" & @CRLF & _
		"      for (i in markersArray) {" & @CRLF & _
		"        markersArray[i].setMap(map);" & @CRLF & _
		"      }" & @CRLF & _
		"    }" & @CRLF & _
		"  }" & @CRLF & _
		"  function deleteMarkers() {" & @CRLF & _
		"    if (markersArray) {" & @CRLF & _
		"      for (i in markersArray) {" & @CRLF & _
		"        markersArray[i].setMap(null);" & @CRLF & _
		"      }" & @CRLF & _
		"      markersArray.length = 0;" & @CRLF & _
		"    }" & @CRLF & _
		"  }" & @CRLF & _
		"  function viewMarkers() {" & @CRLF & _
		"    if (markersArray) {" & @CRLF & _
		"      var latlngbounds = new google.maps.LatLngBounds();" & @CRLF & _
		"      for (i in markersArray) {" & @CRLF & _
		"        latlngbounds.extend(markersArray[i].getPosition());" & @CRLF & _
		"      }" & @CRLF & _
		"      map.fitBounds(latlngbounds);" & @CRLF & _
		"    }" & @CRLF & _
		"  }" & @CRLF & _
		"  function move_map(lat, lng) {" & @CRLF & _
		"    var latlng = new google.maps.LatLng(lat, lng);" & @CRLF & _
		"    map.setCenter(latlng);" & @CRLF & _
		"  }" & @CRLF & _
		"  function zoom_map(scale) {" & @CRLF & _
		"    map.setZoom(scale);" & @CRLF & _
		"  }" & @CRLF & _
		"</script>" & @CRLF & _
		"</head>" & @CRLF & _
		"<body style=""margin:0px; padding:0px;"" onload=""initialize()"">" & @CRLF & _
		"<div id=""map_canvas"" style=""width:100%; height:100%""></div>" & @CRLF & _
		"</body>" & @CRLF & _
		"</html>"
#cs
		"  function addvat() {" & @CRLF & _
		"    var gert = [""5"",""4""];" & @CRLF & _
		"    var dude;" & @CRLF & _
		"    dude = gert[0];" & @CRLF & _
		"    return dude;" & @CRLF & _
		"  }" & @CRLF & _
#ce
	dim $html = $html1 & $html2

;ConsoleWrite($html)
;Exit

	$gmap = _IECreateEmbedded ()
	$gmap_ctrl = GUICtrlCreateObj($gmap, $left, $top, $width, $height)
	_IENavigate($gmap, "about:blank")
	_IEDocWriteHTML($gmap, $html)
	$gmap.refresh()
	
	Return $gmap_ctrl
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_SetView()
; Description ...:	Sets the center of a Google Map to a new address.
; Syntax.........:	_GUICtrlGoogleMap_SetView($gmap, $address)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
;					$address		- An address (either a location or latitude and longitude) to center the map on
;									  ie. both "Sydney, New South Wales, Australia" and "-34.397, 150.644" are valid.
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_SetView($gmap, $address)

	Local $latlng[2]

	$latlng = _GUICtrlGoogleMap_GetLatLng($address)
	$gmap.document.parentWindow.execScript("move_map(" & $latlng[0] & "," & $latlng[1] & ");")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_ZoomView()
; Description ...:	Zooms the center of a Google Map to a new scale.
; Syntax.........:	_GUICtrlGoogleMap_ZoomView($gmap, $scale)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
;					$scale			- The level/scale to zoom the view to.
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_ZoomView($gmap, $scale)

	$gmap.document.parentWindow.execScript("zoom_map(" & $scale & ");")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_AddMarker()
; Description ...:	Adds a marker to a Google Map.
; Syntax.........:	_GUICtrlGoogleMap_AddMarker($gmap, $address)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
;					$address		- An address (either a location or latitude and longitude) to add the marker to
;									  ie. both "Sydney, New South Wales, Australia" and "-34.397, 150.644" are valid.
;					$icon_url		- (Optional) A URL to an image that will be used for the icon of the marker.
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	This function must be used before any other function in the UDF is used.
;					There is currently a clipping problem with the control, where the video
;					is overdrawn by any other window that overlaps it.  There is no known
;					solution at this time.
;					
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_AddMarker($gmap, $address, $icon_url = "")

	Local $latlng[2]

	$latlng = _GUICtrlGoogleMap_GetLatLng($address)
	$gmap.document.parentWindow.execScript("addMarker(" & $latlng[0] & "," & $latlng[1] & ",'" & $icon_url & "');")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_HideAllMarkers()
; Description ...:	Hides all the markers on a Google Map (previously created by the function "_GUICtrlGoogleMap_AddMarker").
; Syntax.........:	_GUICtrlGoogleMap_HideAllMarkers($gmap)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_HideAllMarkers($gmap)

	$gmap.document.parentWindow.execScript("clearMarkers();")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_ShowAllMarkers()
; Description ...:	Shows all the markers on a Google Map (previously hidden by the function "_GUICtrlGoogleMap_HideAllMarkers").
; Syntax.........:	_GUICtrlGoogleMap_ShowAllMarkers($gmap)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_ShowAllMarkers($gmap)

	$gmap.document.parentWindow.execScript("showMarkers();")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_DeleteAllMarkers()
; Description ...:	Deletes all the markers on a Google Map (previously created by the function "_GUICtrlGoogleMap_AddMarker").
; Syntax.........:	_GUICtrlGoogleMap_DeleteAllMarkers($gmap)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_DeleteAllMarkers($gmap)

	$gmap.document.parentWindow.execScript("deleteMarkers();")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_ViewAllMarkers()
; Description ...:	Sets the view of a Google Map to fit all the markers (previously created by the function "_GUICtrlGoogleMap_AddMarker")..
; Syntax.........:	_GUICtrlGoogleMap_ViewAllMarkers($gmap)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_ViewAllMarkers($gmap)

	$gmap.document.parentWindow.execScript("viewMarkers();")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_SetMapType()
; Description ...:	Sets the type of map displayed.
; Syntax.........:	_GUICtrlGoogleMap_SetMapType($gmap, $map_type)
; Parameters ....:	$gmap			- The Google Map object from the function "_GUICtrlGoogleMap_Create".
;					$map_type		- 0 = Sets the map type to roadmap
;									  1 = Sets the map type to satellite
;									  2 = Sets the map type to hybrid
;									  3 = Sets the map type to terrain
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_SetMapType($gmap, $map_type)

	local Const $map_type_html[4] = [ _
		"google.maps.MapTypeId.ROADMAP", _
		"google.maps.MapTypeId.SATELLITE", _
		"google.maps.MapTypeId.HYBRID", _
		"google.maps.MapTypeId.TERRAIN"]
		
	$gmap.document.parentWindow.execScript("map.setMapTypeId(" & $map_type_html[$map_type] & ");")
	
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_AddRoute()
; Description ...:	Adds a route (visually) to the map.
; Syntax.........:	_GUICtrlGoogleMap_AddRoute($gmap, $start_location, $end_location, $travel_mode = 0)
; Parameters ....:	$gmap				- The Google Map object from the function "_GUICtrlGoogleMap_Create".
;					$start_location 	- The starting location of the route.
;										  Expressed as an address (ie. both "Sydney, New South Wales, Australia").
;					$end_location   	- The ending location of the route.
;										  Expressed as an address (ie. both "Sydney, New South Wales, Australia").
;					$travel_mode		- 0 = Uses a travel mode of DRIVING
;										  1 = Uses a travel mode of WALKING
;										  2 = Uses a travel mode of BICYCLING
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_AddRoute($gmap, $start_location, $end_location, $travel_mode = 0)

	$gmap.document.parentWindow.eval("calcRoute(""" & $start_location & """, """ & $end_location & """, " & $travel_mode & ", 0);")
	Return True
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleMap_GetRoute()
; Description ...:	Gets directions for a route.
; Syntax.........:	_GUICtrlGoogleMap_GetRoute($gmap, $start_location, $end_location, ByRef $distance, ByRef $duration, $travel_mode = 0)
; Parameters ....:	$gmap				- The Google Map object from the function "_GUICtrlGoogleMap_Create".
;					$start_location 	- The starting location of the route.
;										  Expressed as an address (ie. both "Sydney, New South Wales, Australia").
;					$end_location   	- The ending location of the route.
;										  Expressed as an address (ie. both "Sydney, New South Wales, Australia").
;					$distance		   	- The variable to hold the overall distance of the route.
;					$duration		   	- The variable to hold the overall duration of the route.
;					$travel_mode		- 0 = Uses a travel mode of DRIVING
;										  1 = Uses a travel mode of WALKING
;										  2 = Uses a travel mode of BICYCLING
; Return values .: 	On Success		- Returns True. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleMap_GetRoute($gmap, $start_location, $end_location, ByRef $distance, ByRef $duration, $travel_mode = 0)

	Local $route_str, $step[1][3]
	
	$distance = ""
	$duration = ""
	
	; Loop twice because sometimes it takes two calls to get route directions.  I don't know why.
	for $i = 1 to 2
	
		$route_str = $gmap.document.parentWindow.eval("calcRoute(""" & $start_location & """, """ & $end_location & """, " & $travel_mode & ", 1);")
		$route_str = StringStripWS($route_str, 2)
		
		$route_arr = StringSplit($route_str, @LF, 1)
		
		if $route_arr[0] > 1 Then ExitLoop
			
		Sleep(250)
	Next
	
	; If no directions retrieved, then fail.
	if $route_arr[0] = 1 Then Return -1
	
	_ArrayDelete($route_arr, 0)
	
	$leg = StringSplit($route_arr[0], "~", 1)
	$distance = $leg[1]
	$duration = $leg[2]
	_ArrayDelete($route_arr, 0)

	dim $step[UBound($route_arr)][3]

	for $i = 0 to (UBound($route_arr) - 1)
		
		$step_part = StringSplit($route_arr[$i], "~", 1)
		$step[$i][0] = $step_part[1]
		$step[$i][1] = $step_part[2]
		$step[$i][2] = $step_part[3]
	Next

	Return $step
EndFunc

; #FUNCTION# ;===============================================================================
;
; Name...........:	_GUICtrlGoogleEarth_Create()
; Description ...:	Creates a Google Map control.
; Syntax.........:	_GUICtrlGoogleEarth_Create(ByRef $ge, $gmap_api_key, $left, $top, $width, $height, $address, $zoom = 10000, $fly_to_speed = "ge.SPEED_TELEPORT")
; Parameters ....:	$ge				- The embedded Google Earth object, required by the _GUICtrlGoogleEarth functions below.
;					$gmap_api_key	- A valid Google Maps API key (see Remarks below).
;					$left			- The left side of the control.
;					$top			- The top of the control.
;					$width			- The width of the control.
;					$height			- The height of the control.
;					$address		- An address (either a location or latitude and longitude) to center the map on
;									  ie. both "Sydney, New South Wales, Australia" and "-34.397, 150.644" are valid.
;					$zoom			- An initial map zoom level (in meters).
;					$fly_to_speed	- The speed to move to the above address.
;									  The range is 0.0 to 5.0.
;									  Using "ge.SPEED_TELEPORT" will move instantly.
; Return values .: 	On Success		- Returns the identifier (controlID) of the new control. 
;                 	On Failure		- Returns False.
; Author ........:	seangriffin
; Modified.......: 
; Remarks .......:	The Google Earth Plug-in must be installed in your Internet Explorer browser
;					prior to using this function.  To install the plugin, using
;					Internet Explorer visit "http://code.google.com/apis/earth" and follow
;					the instructions provided.
;
;					A Google Maps API key is also required for this function to work.
;					You must obtain your own personal key from Google, and pass it into this
;					function for it to work.  To obtain a key, visit
;					"http://code.google.com/apis/maps/signup.html", and when prompted for
;					your web site URL, supply the URL of "http://localhost".  You will
;					also be asked to sign in with your Google Account details.
; Related .......: 
; Link ..........: 
; Example .......:	Yes
;
; ;==========================================================================================
func _GUICtrlGoogleEarth_Create(ByRef $ge, $gmap_api_key, $left, $top, $width, $height, $address, $zoom = 10000, $fly_to_speed = "ge.SPEED_TELEPORT")
	
	Local $latlng[2]
	
	$latlng = _GUICtrlGoogleMap_GetLatLng($address)
	
	Local Const $html = _
		"<html>" & @CRLF & _
		"<head>" & @CRLF & _
		"   <title>Sample</title>" & @CRLF & _
		"   <script src=""http://www.google.com/jsapi?key=" & $gmap_api_key & """> </script>" & @CRLF & _
		"   <script type=""text/javascript"">" & @CRLF & _
		"      var ge;" & @CRLF & _
		"      google.load(""earth"", ""1"");" & @CRLF & _
		"      function init() {" & @CRLF & _
		"         google.earth.createInstance('map3d', initCB, failureCB);" & @CRLF & _
		"      }" & @CRLF & _
		"      function initCB(instance) {" & @CRLF & _
		"         ge = instance;" & @CRLF & _
		"         ge.getWindow().setVisibility(true);" & @CRLF & _
		"         ge.getOptions().setFlyToSpeed(" & $fly_to_speed & ");" & @CRLF & _
		"         var lookAt = ge.getView().copyAsLookAt(ge.ALTITUDE_RELATIVE_TO_GROUND);" & @CRLF & _
		"         lookAt.setLatitude(" & $latlng[0] & ");" & @CRLF & _
		"         lookAt.setLongitude(" & $latlng[1] & ");" & @CRLF & _
		"         lookAt.setRange(" & $zoom & ");" & @CRLF & _
		"         ge.getView().setAbstractView(lookAt);" & @CRLF & _
		"      }" & @CRLF & _
		"      function failureCB(errorCode) {" & @CRLF & _
		"      }" & @CRLF & _
		"      google.setOnLoadCallback(init);" & @CRLF & _
		"   </script>" & @CRLF & _
		"</head>" & @CRLF & _
		"<body style=""margin:0px; padding:0px;"">" & @CRLF & _
		"   <div id=""map3d"" style=""width:100%; height:100%""></div>" & @CRLF & _
		"</body>" & @CRLF & _
		"</html>"

	$ge = _IECreateEmbedded ()
	$ge_ctrl = GUICtrlCreateObj($ge, $left, $top, $width, $height)
	_IENavigate($ge, "about:blank")
	_IEDocWriteHTML($ge, $html)
	$ge.refresh()
	_IELoadWait($ge)
	$ge.document.body.scroll = "no"
	Return $ge_ctrl
EndFunc
