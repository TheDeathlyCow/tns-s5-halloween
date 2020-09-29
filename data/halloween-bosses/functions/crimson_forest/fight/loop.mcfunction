# put this in a command block
# execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/loop

execute as @e[tag=cmsnBoss] store result bossbar minecraft:piglin_king value run data get entity @s Health

execute unless entity @e[tag=cmsnBoss] as @e[type=minecraft:armor_stand,tag=crimson_dungeon_marker] at @s run execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/defeat_boss