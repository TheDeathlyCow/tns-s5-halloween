tag @a[dz=3,dy=5] add warpd_tp_nthr
tag @a[dz=-3,dy=5] add warpd_tp_nthr

gamemode adventure @a[tag=warpd_tp_nthr]
advancement grant @a[tag=warpd_tp_nthr] only halloween-basics:enter_warped
team join warped_players @a[tag=warpd_tp_nthr]
tag @a[tag=warpd_tp_nthr] add WarpedParty
execute in minecraft:the_nether run tp @a[tag=warpd_tp_nthr] 0 128 0

tag @a[tag=warpd_tp_nthr] remove warpd_tp_nthr