DroidJack v4.4 - Android Remote Administration Tool

Author:
--------
L.R Sanjeevi (c) 2015.

Terms & Conditions:
--------------------
www.droidjack.net/Terms.html
Please read, understand and agree before using the software. By using the software you agree that you comply with the terms and conditions of the software.

Change logs v4.4:
-----------------
* Retrieve GPS location instantly.
* Fixed flag issue.
* Faster login process.

Setup Instructions:
--------------------
1) Register a dynamic dns from no-ip or dnsdynamic.com
2) Choose a port (Example: 1337), forward the chosen port (1337) and 1334 (default) so u need to port forward 2 ports!
3) Generate the APK with the chosen port (1337) and ur dynamic dns and other details!
4) Do not scan it on virustotal or such sites so that it remains FUD longer.

Detailed Tutorial:
-------------------
				WAN Connectivity (Via Internet)
				-------------------------------
1) Enter no-ip address in dynamic DNS and your port (Example: 1337) in port while generating the APK.
2) Update the no-ip using no-ip DUC.
3) Open your chosen port (1337) and port 1334 (default) (Both TCP and UDP).
********************* OPTIONAL STEPS *********************
4) Listen to port 1334 (default) in DroidJack.
5) Check with www.canyouseeme.org whether your port 1334 (default) is open. (Also check if port 1334 (default) is shown open when not listening to port 1334 (default) from DroidJack. This is just to make sure no other software is using the default port 1334 (default).
**********************************************************
6) Listen to your chosen port (1337) in DroidJack.
7) Check with www.canyouseeme.org whether your port (1337) is open. (Also check if your port (1337) is shown open when not listening to your port (1337) from DroidJack. This is just to make sure no other software is using your chosen port (1337).
8) Install the APK in your phone and open the app.
9) Connect to the internet via mobile data or from another WiFi with different internet IP. 

				LAN Connectivity
				-----------------
1) Enter your computer's LAN IPV4 address (Type ipconfig in CMD and use the ipv4 address) in dynamic DNS and your port (Example: 1337) in port while generating the APK.
2) Listen to your chosen port (1337) in DroidJack.
3) Make sure no other software is using your port (1337) and port 1334 (default).
4) Install the APK in your phone and open the app.
5) Connect to the same LAN where your computer is connected via WiFi or any LAN mode.


F.A.Q:
-------

1) I am not able to login to the application!
Ans) Username and password are both case sensitive. If still it doesn't login you probably have changed the OS or you are trying to login from a different PC so try to login from the PC where you generated the UID or send the new UID along with your username and password.

2) I am able to login but the application minimizes to system tray or the UI is not loaded properly!
Ans) Close the application and reopen it after sometime. If problem persists for many times then flush your IP address and get a new IP address (You can do this by switching off your modem and turning it back on after few seconds or by using any VPN).

3) I am not getting a connection from the device though I am sure I have installed and opened the app on the device!
Ans) Check if you are trying to connect via WAN or LAN and follow the appropriate tutorial. If problem still exists then disable your firewall or add an exception in firewall.

4) I am able to get a connection from the device but none of the features work!
Ans) Make sure your default port (1334) is open for both TCP and UDP and make sure the port isn't used by any other application. Follow the tutorial again.

5) I have used the stealth mode but app icon is visible!
Ans) The app needs to be opened once at least then it will automatically hide the icon. In some devices after a reboot the icon will disappear.

6) I am getting an error when I try to bind with an app or game!
Ans) Try binding with a different app or game. Some apps or games will have checks when modifying so it will not allow modifications.

7) I have bound with an app and the app seems to work fine but I am not getting a connection!
Ans) Once the bound app is installed and opened, the device needs to disconnect from the internet and connect back again, then it will connect to the client.

8) Can I use a different port instead of port 1334 (default port)?
Ans) No. Port 1334 must be opened only for DroidJack.

9) Certain country flags are not displayed!
Ans) Use the "Detailed Info" feature and send me the country name. I will fix it with the next update.

10) Phone numbers for some devices are displayed as "Not Registered"!
Ans) It is because the phone number is not registered with the device. So it is not accessible via API.

11) How is idle time calculated?
Ans) Idle time is calculated when screen is turned off.

12) I am not able to upload files to the device!
Ans) Check if you have write access on that folder. You can see that by selecting the folder.

13) I am not able to delete SMS messages!
Ans) In Android 4.4 and above this feature will not work due to API restrictions.

14) How to open an app using the App Manager?
Ans) Double click on the icon to open the app on the device.

15) How to get the current GPS location?
Ans) Use the "Current GPS" feature. After sometime use the "Last Checked In" feature. It may take very long if the phone is not moving or is in a country where GPS is not good enough.

16) Remote Eyes is not working or is taking forever!
Ans) During first usage of Remote Eyes you need to set the quality first from Remote Eyes -> Settings.

17) How to use the Update/Install App feature?
Ans) You need to upload the APK to a host with direct download link and paste this link in the text box.

18) The connection between my client and device is slow or is buggy!
Ans) Use the "Reset DJ Server" feature.

19) Some features were working but after opening a feature it froze and no other feature is working after that!
Ans) Reset the data transfer port by clicking on "Status: " label (Next to port number text box there will be a label saying "Status: ").

20) What kind of names are allowed in "Change Package Name" feature?
Ans) The package should should all be lowercase. It can contain only alphabets and numbers. It can have a dot in between words but not at the beginning or end. (Example: It can have the package name as "hello.world" but not as "hello.world."


Feel free to contact me for support and suggest your ideas.