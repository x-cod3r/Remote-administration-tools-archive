<html>
<head>
<title>We will be back soon...</title>
</head>
<body>
<img src="./image/uc_16_web.gif">
<?php
require("./system/config.php.inc");
$query = mysql_query("SELECT * FROM _fail WHERE IP='$ip'");
$count = mysql_num_rows($query);
if ($count == 0) {
 mysql_query("INSERT INTO _fail 
(Peak, IP, Date) VALUES('-.-', '$ip', '$Date' ) ")   
or die();  
}else{} 
?>
</body>
</html>