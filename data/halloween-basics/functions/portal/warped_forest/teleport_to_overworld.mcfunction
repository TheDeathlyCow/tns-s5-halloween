# tag @a[dz=3,dy=5] add warpd_tp_ovwld
# tag @a[dz=-3,dy=5] add warpd_tp_ovwld

tag @s add warpd_tp_ovwld

gamemode survival @a[tag=warpd_tp_ovwld]
tag @a[tag=warpd_tp_ovwld,tag=WarpedParty] remove WarpedParty
scoreboard players remove numWarpedPlayers wrpdPlyrsCnt 1
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..0 run function halloween-basics:_reset/warped_dungeon

execute in minecraft:overworld run tp @a[tag=warpd_tp_ovwld] 0 70 0
execute in minecraft:overworld run spawnpoint @a[tag=warpd_tp_ovwld] 0 70 0

tag @a[tag=warpd_tp_ovwld] remove warpd_tp_ovwld