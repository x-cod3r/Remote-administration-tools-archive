<?php
session_start();
if (isset($_SESSION['login'])) {
    if ($_SESSION['login'] == "1") {
        header("location: panel.php");
    }
}
?>
<html>
    <head>
        <title>Index</title>
        <link rel="stylesheet" type="text/css" href="style.css">
        <link href='https://fonts.googleapis.com/css?family=Poiret+One&subset=latin,latin-ext,cyrillic' rel='stylesheet' type='text/css'>
    </head>
    <body><br><br>
        <section class="header">
            <img src="image/header.png" />
        </section>
        <section class="Main">
            <form method="post" action="login.php">
                <section class="username">
                    <section class="text">
                        <h style="position: relative; left: -160px; top: -5px;">Username : </h>
                        <br><input type="text" name="username" placeholder="Username.." />
                    </section>
                </section><br>
                <section class="username">
                    <section class="text">
                        <h style="position: relative; left: -160px; top: -5px;">Password : </h>
                        <br><input type="password" name="password" placeholder="Password.." />
                    </section>
                </section><br><br>
                <section class="btn">
                    <a href="#">More Information ?</a>&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="submit" name="submit" value="Login ." />
                </section>
            </section>
            </form>
        
        <section class="fr">
            <section class="inside">
                <h>This Website Created By : <a href="http://www.dev-point.com/vb/members/101526.html">KingDomSc</a> .</h>
            </section>
        </section>
    </body>
</html>