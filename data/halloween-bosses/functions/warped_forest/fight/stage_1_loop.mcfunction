
execute as @e[tag=wrpdShardOne] store result bossbar minecraft:warped_soul_shard value run data get entity @s Health

execute unless entity @e[tag=wrpdShardOne] as @e[type=minecraft:armor_stand,tag=wprd_boss_second_pos] at @s run function halloween-bosses:warped_forest/fight/begin_stage_2

execute if entity @e[tag=wrpdShardOne] run schedule function halloween-bosses:warped_forest/fight/stage_1_loop 1t