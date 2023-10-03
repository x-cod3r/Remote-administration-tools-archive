<?php
$Username = ""; //Username
$PasswordDB = ""; //Password
$Host = ""; // 
$Database = "slickrat"; //Database name
$ip=$_SERVER['REMOTE_ADDR']; // DoNT TOUCH
$Date = date("H:i:s d-M-Y");  // Dont Touch unless you know what you are doing.
$password = "" ; //Connection Password
mysql_connect($Host, $Username, $PasswordDB) or die(mysql_error());
mysql_select_db($Database) or die();
?>