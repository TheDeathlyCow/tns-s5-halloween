# basic setup stuff on load

tellraw @a[gamemode=creative] ["",{"text":"TNS Halloween Basics successfully loaded! Check the repository for updates and for a wiki guide here: ","color":"green"},{"text":"https://github.com/TheDeathlyCow/tns-s5-halloween","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TheDeathlyCow/tns-s5-halloween"}}]

scoreboard objectives add chestAutoOn dummy
scoreboard players set isChestAuto chestAutoOn 0

scoreboard objectives add wrpdPlyrsCnt dummy
scoreboard players add numWarpedPlayers wrpdPlyrsCnt 0

scoreboard objectives add rstWrpd dummy
scoreboard players add isResetWarped rstWrpd 0

scoreboard objectives add nmWrpdRns dummy
scoreboard players add @a nmWrpdRns 0

scoreboard objectives add rtrnToOvwldWrpd trigger