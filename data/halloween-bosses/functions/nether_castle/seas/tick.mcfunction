# say tick tock
execute as @a[tag=SvlySeas] at @s if block ~ ~ ~ minecraft:lava run function halloween-bosses:nether_castle/seas/fail
effect clear @a[tag=SvlySeas]
execute at @e[tag=svly_seas_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/seas/exit_challenge

# execute if entity @a[tag=SvlyWrpd] at @e[tag=svly_wrpd_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/wrpd/exit_challenge

# execute at @e[tag=wrong_portal] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/wrong