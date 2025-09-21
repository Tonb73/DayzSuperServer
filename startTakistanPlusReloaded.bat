@echo off
:start
::Server name
set serverName=Dayz_NewMag_TakistanReloaded
::Server files location
set serverLocation="E:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZTakistanReloaded.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=2
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort%	"-servermod=@ZombieSpawnTool;@Dynamic AI Missions for DayZ Expansion AI" "-mod=@TerrainIslands;@Dabs Framework;@CF;@Community-Online-Tools;@TakistanPlus;@DayZ Editor Loader;@DayZ-Expansion-Bundle;@DayZ-Expansion-Licensed;@DayzReloaded_Mods;@DayzReloaded_Content;@DayzReloaded_CarPack;@DayzReloaded_TakistanPack;@CJ187-LootChest" -profiles=profilesTakistan -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 0
::Go back to the top and repeat the whole cycle again
goto start