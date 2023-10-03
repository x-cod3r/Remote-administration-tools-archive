<?php
$dirname = "uploads";
$dir = opendir($dirname);
?>
<?php
while(false != ($file = readdir($dir)))
{
if(($file != ".") and ($file != ".."))
{
echo("$file
\n");
}
}
?>