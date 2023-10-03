<?php
date_default_timezone_set('UTC');

$password = 'test';
$host = 'localhost';
$db_username = 'root';
$db_password = '';
$db = 'lokirat2';

$db_conection = @mysql_connect ("$host", "$db_username", "$db_password");
mysql_select_db("$db");
?>