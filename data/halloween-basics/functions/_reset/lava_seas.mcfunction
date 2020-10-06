# scoreboard players set cmsnCurrStage cmsnBssStg 0

scoreboard players set numKeys seasKeys 0
bossbar remove minecraft:lava_captain

execute as @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=lava_dungeon_marker] at @s run function halloween-basics:_reset/mobs
# scoreboard players set isResetCrimson rstCmsn 1


tellraw @a ["",{"text":"Pirates of the Lava Seas was reset!","color":"red"}]