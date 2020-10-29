execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/wrpd/close_entrance
execute at @e[tag=svly_cmsn_entrance] run function halloween-bosses:nether_castle/cmsn/close_entrance
execute at @e[tag=svly_seas_entrance] run function halloween-bosses:nether_castle/seas/close_entrance
execute at @e[tag=svly_bslt_entrance] run function halloween-bosses:nether_castle/bslt/close_entrance

execute at @e[tag=svly_wrpd_shulker] run data merge block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]}
execute at @e[tag=svly_cmsn_shulker] run data merge block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]}
execute at @e[tag=svly_seas_shulker] run data merge block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]}
execute at @e[tag=svly_bslt_shulker] run data merge block ~ ~ ~ {Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]}


scoreboard players set cmsnRoom svlyCounter 0

execute at @e[tag=svly_wrpd_door,limit=1] run function halloween-bosses:nether_castle/wrpd/close_door
execute at @e[tag=svly_cmsn_door,limit=1] run function halloween-bosses:nether_castle/cmsn/close_door
execute at @e[tag=svly_seas_door,limit=1] run function halloween-bosses:nether_castle/seas/close_door
execute at @e[tag=svly_bslt_door,limit=1] run function halloween-bosses:nether_castle/bslt/close_door


tag @a[tag=SvlyWrpd] remove SvlyWrpd
tag @a[tag=SvlyCmsn] remove SvlyCmsn
tag @a[tag=svlyCmsnPerfect] remove svlyCmsnPerfect
tag @a[tag=svlyWrpdPerfect] remove svlyWrpdPerfect
tag @a[tag=SvlyBslt] remove SvlyBslt

execute as @e[type=minecraft:armor_stand,tag=castle_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=castle_dungeon_marker] at @s run function halloween-basics:_reset/mobs

execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}

scoreboard players set currValleyBossStage svlyCounter 0
scoreboard players set completeValleyChallenges svlyCounter 0

execute as @e[tag=svly_skull] run tag @s add svly_no_skull
execute at @e[tag=svly_skull] run setblock ~ ~ ~ air

execute at @e[tag=svly_cmsn_room1_door] run fill ~ ~ ~ ~ ~2 ~ stripped_dark_oak_log[axis=x]
execute at @e[tag=svly_cmsn_room2_door] run fill ~ ~ ~ ~ ~2 ~ stripped_dark_oak_log[axis=x]
execute at @e[tag=svly_cmsn_room3_door] run fill ~ ~ ~ ~ ~2 ~ stripped_dark_oak_log[axis=x]

# time leaderboard stuff
# function halloween-bosses:nether_castle/reset_time
# maybe we set everyone's svlyTime to 0 here then have the reset_time call in a defeat boss function

tellraw @a {"text":"The Lost Valley of Souls has been reset!","color":"red"}