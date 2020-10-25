
execute at @e[tag=svly_wrpd_shulker] if block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/wrpd/enter_challenge

execute at @e[tag=svly_wrpd_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run tellraw @a[tag=ValleyParty] {"text":"The Warped Portals challenge has already been completed!","color":"red"}
