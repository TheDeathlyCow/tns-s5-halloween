
execute if score cmsnRoom svlyCounter matches 1 unless entity @e[type=minecraft:piglin_brute,tag=svly_cmsn_room1] as @a[tag=SvlyCmsn] run function halloween-bosses:nether_castle/cmsn/go_to/room2 
execute if score cmsnRoom svlyCounter matches 2 unless entity @e[type=minecraft:piglin_brute,tag=svly_cmsn_room2] as @a[tag=SvlyCmsn] run function halloween-bosses:nether_castle/cmsn/go_to/room3
execute if score cmsnRoom svlyCounter matches 3 unless entity @e[type=minecraft:piglin_brute,tag=svly_cmsn_room3] as @a[tag=SvlyCmsn] run function halloween-bosses:nether_castle/cmsn/go_to/room4

execute as @a[tag=SvlyCmsn] if score @s svlyDeaths matches 1.. run function halloween-bosses:nether_castle/cmsn/reset

# execute if entity @a[tag=SvlyWrpd] at @e[tag=svly_wrpd_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/wrpd/exit_challenge
