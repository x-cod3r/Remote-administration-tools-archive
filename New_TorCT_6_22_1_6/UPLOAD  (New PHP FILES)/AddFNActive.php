<?php
$fn= $_GET['Window'];


 $f = fopen("FnActiveWindow.txt", "w");
if ($fn != "")
{
  

    // Write text 
fwrite($f, $fn); 
}




    // Close the text file
    fclose($f);


?>

