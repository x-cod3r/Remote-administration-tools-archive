<?php

$action = $_GET['action'];
$data = $_GET['data'];


if ($action == "write"){
$open = fopen("data.txt", 'a');
fwrite($open, "
\n".$data."
\n");
fclose($open);
}


if($action == "read"){
echo file_get_contents("data.txt");
}



if ($action == "delete"){
unlink("data.txt");
$new = fopen("data.txt", 'a');
fwrite($new, "
\n");
fclose($new);
}

?>