@echo off
:start
::Server name
set serverName=Dayz_NewMag_ChernorusReloaded
::Server files location
set serverLocation="E:\SteamLibrary\steamapps\common\DayZServer"
::Server Port
set serverPort=2302
::Server config
set serverConfig=serverDZChernoReloaded.cfg
::Logical CPU cores to use (Equal or less than available)
set serverCPU=4
::Sets title for terminal (DONT edit)
title %serverName% batch
::DayZServer location (DONT edit)
cd "%serverLocation%"
echo (%time%) %serverName% started.
::Launch parameters (edit end: -config=|-port=|-profiles=|-doLogs|-adminLog|-netLog|-freezeCheck|-filePatching|-BEpath=|-cpuCount=)
start "DayZ Server" /min "DayZServer_x64.exe" -config=%serverConfig% -port=%serverPort% "-servermod=@ZombieSpawnTool;@Dynamic AI Missions for DayZ Expansion AI" "-mod=@Dabs Framework;@DayZ Editor Loader;@CF;@Community-Online-Tools;@DayZ-Expansion-Bundle;@DayZ-Expansion-Licensed;@DayzReloaded_Mods;@DayzReloaded_CarPack;@DayzReloaded_Content;@BorderGas;@TerrainIslands;@Just Gasmasks!;@Sakhal Houses Adapted;@CJ187-LootChest;@Knock Knock Zombies" -profiles=profilesChernarus -cpuCount=%serverCPU% -dologs -adminlog -netlog -freezecheck
::Time in seconds before kill server process (14400 = 4 hours)
timeout 14390
taskkill /im DayZServer_x64.exe /F
::Time in seconds to wait before..
timeout 10
::Go back to the top and repeat the whole cycle again
goto start