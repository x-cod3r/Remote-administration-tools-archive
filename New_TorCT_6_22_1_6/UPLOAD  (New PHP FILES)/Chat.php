<?php
$fn= $_GET['c'];
$del = $_GET['del'];

 
if($del == "DeliteChat")
{
$f = fopen("Chat.txt", "w");
fwrite($f, ""); 

}
elseif ($fn != "")
{
  $f = fopen("Chat.txt", "a");

    // Write text 
fwrite($f, $fn ."\n"); 

}






    // Close the text file
    fclose($f);


?>

