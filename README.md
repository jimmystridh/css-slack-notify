# css-slack-notify
Counterstrike: Source Dedicated Server notifications to Slack

To develop

1. Download SteamCMD https://developer.valvesoftware.com/wiki/SteamCMD
2. start it, run login anonymous
3. app_update 232330 -beta prerelease validate
4. download https://www.metamodsource.net/downloads/mmsource-1.10.6-windows.zip or the linux version
5. download and install sourcemod https://www.sourcemod.net/downloads.php
6. download https://code.google.com/archive/p/sourcemod-curl-extension/downloads
7. apply the patch mentioned here https://forums.alliedmods.net/showpost.php?p=2272167&postcount=129
8. clone this repository into addons/sourcemod/scripting
9. start the dedicated server with srcds -game cstrike +map de_dust -maxplayers 16 +log on
10. compile with spcomp.exe -iinclude -o ..\plugins\forstalang22.smx forstalang22.sp
11. refresh plugins using sm plugins refresh from the server console
12. sm plugins list (note the number)
13. sm plugins reload #, e.g. sm plugins reload 14
