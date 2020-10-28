
execute at @e[tag=svly_seas_shulker] if block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/seas/enter_challenge

execute at @e[tag=svly_seas_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run tellraw @a[tag=ValleyParty] {"text":"The Lava Jumper challenge has already been completed!","color":"red"}
