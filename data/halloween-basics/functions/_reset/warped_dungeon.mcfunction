
execute as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run function halloween-basics:_reset/chests
scoreboard players set isResetWarped rstWrpd 1

tellraw @a ["",{"text":"The Warped Mansion was reset!","color":"red"}]