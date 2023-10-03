<?php
//*****************************************
// Author: icyinferno
// E-mail: 1cy1nferno109@gmail.com
// Copyright ©2009, IcyInferno Productions 
//*****************************************
require_once 'db_login.php';

session_start();

if(htmlspecialchars($_POST['Submit']) == 'Login') {
 	if(htmlspecialchars($_POST['UID']) == web_username && 
	   htmlspecialchars($_POST['PWD'])== web_password) {
		  $_SESSION['PHP_AUTH_USER']=sha1(md5(web_username));
		  $_SESSION['PHP_AUTH_PWD']=sha1(md5(web_password));
		  $_SESSION['PHP_AUTH_IP']=sha1(md5($_SERVER['REMOTE_ADDR']));
		  $_SESSION["PHP_AUTH_SORT"] = 5;
		  $_SESSION["PHP_AUTH_ORDER"]  = 1;
		  $_SESSION["PHP_AUTH_PAGE"] = 0;
		  header("Location:admin.php");
		  exit();
 		}
	 else {
	 	header("HTTP/1.0 401 Unauthorized");
		echo '<div align="center">' . "Invalid login" . " [" . $_SERVER['REMOTE_ADDR'] . "]" . '</div>';
		exit;
 	}
}
?>

<head>
<title>Login</title>
<link rel="icon" HREF="IMGs/favicon.ico">
<link rel="stylesheet" type="text/css" href="style.css">
</head>

<body>
<p>&nbsp;</p>
<table width="300" bPHP_AUTH_ORDER="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC"><tr>
<form name="form1" method="post" action="index.php">
<td><table width="100%" bPHP_AUTH_ORDER="0" cellpadding="3" cellspacing="1" bgcolor="#FFFFFF"><tr>
<td colspan="3"><strong><u>Login </u></strong></td></tr><tr>
<td width="78">Username:</td><td width="6">&nbsp;</td>
<td width="294"><input name="UID" type="text" id="UID"></td>
</tr><tr><td>Password:</td><td>&nbsp;</td>
<td><input name="PWD" type="password" id="PWD"></td>
</tr><tr><td>&nbsp;</td><td>&nbsp;</td>
<td><input type="submit" name="Submit" value="Login"></td>
</tr></table></td></form></tr></table>
</body>
</html>