
execute as @a[tag=SvlyBslt] run scoreboard players add @s svlyBsltTimer 1
execute at @e[tag=svly_bslt_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/bslt/exit_challenge

# execute if entity @a[tag=SvlyWrpd] at @e[tag=svly_wrpd_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/wrpd/exit_challenge