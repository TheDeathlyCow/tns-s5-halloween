
scoreboard players set currWarpedStage WrpdStge 0
bossbar remove minecraft:warped_soul_shard

execute as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run function halloween-basics:_reset/mobs
scoreboard players set isResetWarped rstWrpd 1


tellraw @a ["",{"text":"The Warped Village was reset!","color":"red"}]