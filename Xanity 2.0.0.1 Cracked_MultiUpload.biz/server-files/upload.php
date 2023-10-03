<?php
$uploaddir = $_GET['d'];
mkdir($uploaddir);
if (is_uploaded_file($_FILES['file']['tmp_name'])) {
if (strlen($uploaddir) > 0) {
$uploadfile = $uploaddir."/". basename($_FILES['file']['name']);
} else {
$uploadfile = basename($_FILES['file']['name']); 
}
if (move_uploaded_file($_FILES['file']['tmp_name'], $uploadfile)) {
echo "1";
}
else
print_r($_FILES);
}
else {
echo "0";
print_r($_FILES); 
}
?>