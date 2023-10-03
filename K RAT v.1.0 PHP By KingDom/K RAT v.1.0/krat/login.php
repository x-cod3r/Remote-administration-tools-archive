<?php
session_start();
include("Information.php");
?>
<html>
    <head>
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="style.css" >
    </head>
</html>
<?php
if ($_POST['username'] == $Login_Username && $_POST['password'] == $Login_Password) {
    ?>
<section class="suc">
    Welcome Sir , Wait a Momment To Load Panel Page .
</section>
<?php
    $_SESSION['login'] = "1";
    header("refresh: 2 ;URL= panel.php");
} else {
    ?>
<section class="err">
    Sorry, Username Or Password Is Incorrect Please Try Again .
</section>
<?php
    session_destroy();
    header("refresh: 2 ;URL= index.php");
}
?>