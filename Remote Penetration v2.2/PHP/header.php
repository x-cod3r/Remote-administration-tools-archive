<?php
//*****************************************
// Author: icyinferno
// E-mail: 1cy1nferno109@gmail.com
// Copyright ©2009, IcyInferno Productions 
//*****************************************
require_once 'db_login.php';

session_start();

if($_SESSION['PHP_AUTH_USER'] != sha1(md5(web_username)) || 
   $_SESSION['PHP_AUTH_PWD'] != sha1(md5(web_password)) || 
   $_SESSION['PHP_AUTH_IP'] != sha1(md5($_SERVER['REMOTE_ADDR'])))
{
	   header("Location:index.php");
	   exit;
 } 
?>