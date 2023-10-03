<?php
$action = $_GET['action'];
$data = $_GET['data'];



if($action == "read"){
echo file_get_contents("online.txt");
}

if($action == "add"){
$open = fopen("online.txt", 'a');
fputs($open, "
\n\r".$data."
\n\r");
fclose($open);
}



if($action == "delete"){
$news=file("online.txt");
$fp = fopen('online.txt', 'w');
foreach ($news as $line) {
  if (strpos($line, $data) !== 0) {
    fwrite($fp, $line);
  }
}
fclose($fp);
}



?>