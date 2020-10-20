# tag @a[dz=3,dy=5] add warpd_tp_nthr
# tag @a[dz=-3,dy=5] add warpd_tp_nthr

tag @s add warpd_tp_nthr
tag @s add WarpedParty

gamemode adventure @s
advancement grant @s only halloween-basics:enter_warped
advancement revoke @s only halloween-basics:defeat_warped_boss
# /tp -91.32 57.00 -306.49
# execute in minecraft:the_nether run tp @s 0 128 0
# execute in minecraft:the_nether run spawnpoint @s 0 128 0
execute in minecraft:the_nether run tp @s -10564 46 11666
execute in minecraft:the_nether run spawnpoint @s -10564 46 11666

# execute if score isResetWarped rstWrpd matches 1 as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run schedule function halloween-basics:_reset/mobs 1s
execute if score isResetWarped rstWrpd matches 1 run scoreboard players set isResetWarped rstWrpd 0

scoreboard players add numWarpedPlayers wrpdPlyrsCnt 1

tag @a[tag=warpd_tp_nthr] remove warpd_tp_nthr

# this is only for the WARPED boss
execute if score numWarpedPlayers wrpdPlyrsCnt matches 1 run schedule function halloween-bosses:warped_forest/enter_dungeon 10t