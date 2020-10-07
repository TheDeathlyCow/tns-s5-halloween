# basic setup stuff on load

# wrpd = warped forest
# cmsn = crimson forest
# bslt = basalt deltas
# seas = lava seas
# svly = soul sand valley

function halloween-bosses:lava_seas/setup

tellraw @a[gamemode=creative] ["",{"text":"TNS Halloween Datapack successfully loaded! Check the repository for updates and for a wiki guide here: ","color":"green"},{"text":"https://github.com/TheDeathlyCow/tns-s5-halloween","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TheDeathlyCow/tns-s5-halloween"}}]

scoreboard objectives add chestAutoOn dummy
scoreboard players set isChestAuto chestAutoOn 0

# scoreboard setup for warped dungeon
scoreboard objectives add wrpdPlyrsCnt dummy
scoreboard players add numWarpedPlayers wrpdPlyrsCnt 0

scoreboard objectives add rstWrpd dummy
scoreboard players add isResetWarped rstWrpd 0

scoreboard objectives add nmWrpdRns dummy
scoreboard players add @a nmWrpdRns 0

scoreboard objectives add rtrnToOvwldWrpd trigger

# scoreboard setup for crimson dungeon
scoreboard objectives add cmsnPlyrsCnt dummy
scoreboard players add numCrimsonPlayers cmsnPlyrsCnt 0

scoreboard objectives add rstCmsn dummy
scoreboard players add isResetCrimson rstCmsn 0

scoreboard objectives add nmCmsnRns dummy
scoreboard players add @a nmCmsnRns 0

scoreboard objectives add rtrnToOvwldCmsn trigger

scoreboard objectives add tickTimer dummy

# scoreboard setup for lava seas
scoreboard objectives add seasPlyrsCnt dummy
scoreboard players add numLavaPlayers seasPlyrsCnt 0

scoreboard objectives add nmSeasRns dummy
scoreboard players add @a nmSeasRns 0

scoreboard objectives add rtrnToOvwldSeas trigger

scoreboard objectives add entrdDng dummy