# tag @a[dz=3,dy=5] add warpd_tp_nthr
# tag @a[dz=-3,dy=5] add warpd_tp_nthr

tag @s add BasaltParty

gamemode adventure @s
advancement grant @s only halloween-basics:enter_basalt
advancement revoke @s only halloween-basics:defeat_basalt_boss
# /tp -91.32 57.00 -306.49
execute in minecraft:the_nether run tp @s 200 128 200
execute in minecraft:the_nether run spawnpoint @s 200 128 200

# execute if score isResetWarped rstWrpd matches 1 as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run schedule function halloween-basics:_reset/mobs 1s

scoreboard players add numBasaltPlayers bsltPlyrsCnt 1

# this is only for the LAVA boss
gamerule keepInventory true
execute if score numBasaltPlayers bsltPlyrsCnt matches 1 run scoreboard players set currentBasaltStage WrpdStge 0