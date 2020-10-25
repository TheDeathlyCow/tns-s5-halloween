execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/wrpd/close_entrance
execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/cmsn/close_entrance
execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/seas/close_entrance
execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/bslt/close_entrance

execute at @e[tag=svly_wrpd_shulker] run data merge block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]}

execute at @e[tag=svly_wrpd_door,limit=1] run function halloween-bosses:nether_castle/wrpd/close_door

tag @a[tag=SvlyWrpd] remove SvlyWrpd

execute as @e[type=minecraft:armor_stand,tag=svly_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=svly_dungeon_marker] at @s run function halloween-basics:_reset/mobs

scoreboard players set currValleyBossStage svlyCounter 0
scoreboard players set completeValleyChallenges svlyCounter 0

tellraw @a {"text":"The Lost Valley of Souls has been reset!","color":"red"}