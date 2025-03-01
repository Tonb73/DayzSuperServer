@echo off
:start
::Server name
set serverName=Dayz_NewMag
::Server files location
set serverLocation="E:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZCherno.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% "-mod=@CF;@Community-Online-Tools;@Dabs Framework;@DayZ-Expansion-Bundle;@DayZ-Expansion-Licensed;@Dynamic AI Missions for DayZ Expansion AI;@Advanced Weapon Scopes;@Building Fortifications;@Early Winter or late Fall in Chernarus;@Namalsk Survival;@RepaireRadiator;@Survivor Animations;@DayZ Horse;@DayZ-Dog;@Tactical Flava;@AirRaid;@GoreZ;@Doc's Car Fixes" -profiles=profiles -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start