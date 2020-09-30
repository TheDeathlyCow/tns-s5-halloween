# tag @a[dz=3,dy=5] add warpd_tp_nthr
# tag @a[dz=-3,dy=5] add warpd_tp_nthr

tag @s add cmsn_tp_nthr
tag @s add CrimsonParty

gamemode adventure @s
advancement grant @s only halloween-basics:enter_crimson
advancement revoke @s only halloween-basics:defeat_crimson_boss
# /tp -91.32 57.00 -306.49
execute in minecraft:the_nether run tp @s 50 128 50
execute in minecraft:the_nether run spawnpoint @s 50 128 50

# execute if score isResetWarped rstWrpd matches 1 as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run schedule function halloween-basics:_reset/mobs 1s
execute if score isResetCrimson rstCmsn matches 1 run scoreboard players set isResetCrimson rstCmsn 0

scoreboard players add numCrimsonPlayers cmsnPlyrsCnt 1

tag @a[tag=cmsn_tp_nthr] remove cmsn_tp_nthr

# this is only for the CRIMSON boss
execute if score numCrimsonPlayers cmsnPlyrsCnt matches 1 run schedule function halloween-bosses:crimson_forest/enter_dungeon 10t