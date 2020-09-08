tag @a[dz=3,dy=5] add warpd_tp_ovwld
tag @a[dz=-3,dy=5] add warpd_tp_ovwld

gamemode survival @a[tag=warpd_tp_ovwld]
team leave @a[tag=warpd_tp_ovwld]
tag @a[tag=warpd_tp_ovwld,tag=WarpedParty] remove WarpedParty
execute in minecraft:overworld run tp @a[tag=warpd_tp_ovwld] 0 70 0

tag @a[tag=warpd_tp_ovwld] remove warpd_tp_ovwld