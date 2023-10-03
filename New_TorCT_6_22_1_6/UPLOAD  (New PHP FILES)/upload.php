<?php
$DelOrNot = $_GET['D'];

if ($DelOrNot == "true")
{

unlink('Upload/1.png');
unlink('Upload/2.png');
}else{

$uploadDir = 'Upload/'; 
$uploadFile = $uploadDir . basename($_FILES['file']['name']);
if (is_uploaded_file($_FILES['file']['tmp_name'])) 
{
    echo "File ". $_FILES['file']['name'] ." is successfully uploaded!\r\n";
    if (move_uploaded_file($_FILES['file']['tmp_name'], $uploadFile)) 
    {
        echo "File is successfully stored! ";
    }
    else print_r($_FILES);
}
else 
{
    echo "Upload Failed!";
    print_r($_FILES);
}
}
?>