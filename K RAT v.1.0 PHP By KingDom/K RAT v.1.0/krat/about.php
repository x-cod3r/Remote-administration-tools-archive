<?php
session_start();
include('Information.php');
if (isset($_SESSION['login'])) {
    if (!$_SESSION['login'] == '1') {
        header('location: index.php');
    }
} else {
    header('location: index.php');
}
?>
<html>
    <head>
        <link rel="stylesheet" href="style.css" type="text/css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
    </head>
    <body>
        <section class="header">
            <img src="image/header.png" />
        </section>
        <section class="menu">
            <a href="panel.php"><i class="fa fa-user"></i> Users List</a>
            <a href="commands.php"><i class="fa fa-terminal"></i> Commands</a>
            <a href="about.php"><i class="fa fa-info"></i> About</a>
            <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a>
        </section>
        <section class="about">
            <section class="m">
                <h>About</h> - K Remote Admin Tool .<br><br>
                <h>Coder</h> : KingDom - الممَلكة .<br>
                <h>Skype</h> : KingDomSc .<br>
                Language : <h>PHP</h>, <h>HTML</h>, <h>CSS3</h>, <h>JavaScript</h> .
                <section class="ico">
                    <i class="fa fa-info"></i>
                </section>
            </section>
        </section>
    </body>
</html>