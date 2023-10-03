<?php
$target_path = "uploads/";
$target_path = $target_path . basename( $_FILES['uploadedfile']['name']); 
move_uploaded_file($_FILES['uploadedfile']['tmp_name'], $target_path);
?>