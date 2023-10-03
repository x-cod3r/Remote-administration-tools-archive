<?php
$fn= $_GET['Dir'];


 $f = fopen("FnDir.txt", "w");
if ($fn != "")
{
  

    // Write text 
fwrite($f, $fn); 
}




    // Close the text file
    fclose($f);


?>

