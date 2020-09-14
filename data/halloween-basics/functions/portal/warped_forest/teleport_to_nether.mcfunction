# tag @a[dz=3,dy=5] add warpd_tp_nthr
# tag @a[dz=-3,dy=5] add warpd_tp_nthr

tag @s add warpd_tp_nthr

gamemode adventure @s
advancement grant @s only halloween-basics:enter_warped
advancement revoke @s only halloween-basics:defeat_warped_boss
tag @s add WarpedParty
execute in minecraft:the_nether run tp @s 0 128 0
execute in minecraft:the_nether run spawnpoint @s 0 128 0

execute if score isResetWarped rstWrpd matches 1 run function halloween-bosses:warped_forest/setup
execute if score isResetWarped rstWrpd matches 1 as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run function halloween-basics:_reset/mobs
execute if score isResetWarped rstWrpd matches 1 run scoreboard players set isResetWarped rstWrpd 0

scoreboard players add numWarpedPlayers wrpdPlyrsCnt 1

tag @a[tag=warpd_tp_nthr] remove warpd_tp_nthr