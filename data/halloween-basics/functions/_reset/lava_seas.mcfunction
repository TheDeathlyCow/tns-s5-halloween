# scoreboard players set cmsnCurrStage cmsnBssStg 0

scoreboard players set numKeys seasKeys 0
scoreboard players set currentSeasStage WrpdStge 0
bossbar remove minecraft:lava_captain

execute at @e[tag=strider_spawn] unless entity @e[type=minecraft:strider,tag=seasStrider,distance=..2] run summon strider ~ ~ ~ {Tags:["seasStrider"],Saddle:1b}
execute as @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] at @s run function halloween-basics:_reset/mobs
execute as @e[tag=seas_struct_block] at @s run function halloween-bosses:lava_seas/fight/parkour_switcher/remove_parkour
execute at @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] run kill @e[type=item,nbt={Item:{id:"minecraft:stone_button"}},distance=..200]
execute at @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] run kill @e[type=item,nbt={Item:{id:"minecraft:soul_lantern"}},distance=..200]
execute at @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] run kill @e[type=item,nbt={Item:{id:"minecraft:black_banner"}},distance=..200]

execute at @e[tag=seas_quarters,limit=1] run fill ~ ~ ~ ~ ~1 ~ chain[axis=z]

# scoreboard players set isResetCrimson rstCmsn 1


tellraw @a ["",{"text":"Pirates of the Lava Seas was reset!","color":"red"}]