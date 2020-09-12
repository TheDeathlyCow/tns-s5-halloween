# basic setup stuff on load

tellraw @a[gamemode=creative] ["",{"text":"TNS Halloween Basics successfully loaded! Check the repository for updates and for a wiki guide here: ","color":"green"},{"text":"https://github.com/TheDeathlyCow/tns-s5-halloween","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TheDeathlyCow/tns-s5-halloween"}}]

scoreboard objectives remove chestAutoOn
scoreboard objectives add chestAutoOn dummy
scoreboard players set isChestAuto chestAutoOn 0

scoreboard objectives remove wrpdPlyrsCnt
scoreboard objectives add wrpdPlyrsCnt dummy
execute if entity @e[type=player,tag=WarpedParty] store result score numWarpedPlayers wrpdPlyrsCnt
execute unless entity @e[type=player,tag=WarpedParty] run scoreboard players set numWarpedPlayers wrpdPlyrsCnt 0

scoreboard objectives remove rstWrpd
scoreboard objectives add rstWrpd dummy
scoreboard players set isResetWarped rstWrpd 0

scoreboard objectives remove wrpdReset 
scoreboard objectives add wrpdReset trigger


