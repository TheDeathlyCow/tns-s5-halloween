# tag @a[dz=3,dy=5] add warpd_tp_ovwld
# tag @a[dz=-3,dy=5] add warpd_tp_ovwld

tag @s add cmsn_tp_ovwld

gamemode survival @s
tag @s remove CrimsonPartyw
scoreboard players remove numCrimsonPlayers cmsnPlyrsCnt 1
execute if score numCrimsonPlayers cmsnPlyrsCnt matches ..0 run function halloween-basics:_reset/crimson_dungeon

execute in minecraft:overworld run tp @s 50 70 50
execute in minecraft:overworld run spawnpoint @s 50 70 50

tag @a[tag=cmsn_tp_ovwld] remove cmsn_tp_ovwld