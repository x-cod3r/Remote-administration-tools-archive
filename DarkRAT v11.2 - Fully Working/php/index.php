<?php
$action = $_GET['action'];
$data = $_GET['data'];

//This will delete log when program reads command
if ($action == "delete"){
unlink("log.txt");
$new = fopen("log.txt", 'a');
fclose($new);
}


//This will write data to log.txt
if ($action == "write"){
unlink("log.txt");
$open = fopen("log.txt", 'a');
fwrite($open, $data);
fclose($open);
}


//This will read data from log.txt
if ($action == "read"){
echo file_get_Contents("log.txt");
}



?>