<?php

$action = $_GET['action'];
$data = $_GET['data'];


if ($action == "write"){
unlink("data.txt");
$open = fopen("data.txt", 'a');
fwrite($open, $data);
fclose($open);
}


if($action == "read"){
echo file_get_contents("data.txt");
}



if ($action == "delete"){
unlink("data.txt");
$new = fopen("data.txt", 'a');
fclose($new);
}

?>