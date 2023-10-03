<?php
$fn= $_GET['Proces'];


 $f = fopen("FnProcess.txt", "w");
if ($fn != "")
{
  

    // Write text 
fwrite($f, $fn); 
}




    // Close the text file
    fclose($f);


?>

