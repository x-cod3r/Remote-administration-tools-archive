<?php
include('password.php');
$fn= $_GET['Function'];
$Suser = $_GET['SpecialUser'];
$GetPass = $_GET['Pass'];


if ($ClientPassword == "True")
{
if ($GetPass == $password)
{
 $f = fopen("Fn.txt", "w");
if ($Suser == "False")
{
  

    // Write text 
fwrite($f, $fn); 
fwrite($f, '*=*[]'); 
}
else
{
fwrite($f, $fn); 
fwrite($f, '|'); 
fwrite($f, $Suser);
}





    // Close the text file
    fclose($f);
	header ("location: index.php");

}




}
else
{
 $f = fopen("Fn.txt", "w");
if ($Suser == "False")
{
  

    // Write text 
fwrite($f, $fn); 
fwrite($f, '*=*[]'); 
}
else
{
fwrite($f, $fn); 
fwrite($f, '|'); 
fwrite($f, $Suser);
}





    // Close the text file
    fclose($f);
	header ("location: index.php");
}
?>


