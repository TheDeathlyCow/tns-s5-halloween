
scoreboard players set numTokens tknsNdd 0
bossbar remove minecraft:piglin_king

execute as @e[type=minecraft:armor_stand,tag=crimson_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=crimson_dungeon_marker] at @s run function halloween-basics:_reset/mobs
scoreboard players set isResetCrimson rstCmsn 1


tellraw @a ["",{"text":"The Crimson Mansion was reset!","color":"red"}]