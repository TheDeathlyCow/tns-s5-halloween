# tag @a[dz=3,dy=5] add warpd_tp_nthr
# tag @a[dz=-3,dy=5] add warpd_tp_nthr

tag @s add seas_tp_nthr
tag @s add LavaParty

gamemode adventure @s
advancement grant @s only halloween-basics:enter_lava
advancement revoke @s only halloween-basics:defeat_lava_boss
# /tp -91.32 57.00 -306.49
# execute in minecraft:the_nether run tp @s -50 128 -50
# execute in minecraft:the_nether run spawnpoint @s -50 128 -50
execute in minecraft:the_nether run tp @s -10358 35 9700
execute in minecraft:the_nether run spawnpoint @s -10358 35 9700

# execute if score isResetWarped rstWrpd matches 1 as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run schedule function halloween-basics:_reset/mobs 1s

scoreboard players add numLavaPlayers seasPlyrsCnt 1

tag @a[tag=seas_tp_nthr] remove seas_tp_nthr

# this is only for the LAVA boss
execute if score numLavaPlayers seasPlyrsCnt matches 1 run gamerule keepInventory true
execute if score numLavaPlayers seasPlyrsCnt matches 1 run schedule function halloween-bosses:lava_seas/enter_dungeon 10t