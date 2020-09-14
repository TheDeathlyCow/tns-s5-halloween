
execute as @e[tag=wrpdShardTwo] store result bossbar minecraft:warped_soul_shard value run data get entity @s Health

execute unless entity @e[tag=wrpdShardTwo] as @e[type=minecraft:armor_stand,tag=wprd_boss_third_pos] at @s run function halloween-bosses:warped_forest/fight/begin_stage_3

execute if score currWarpedStage WrpdStge matches 2 run schedule function halloween-bosses:warped_forest/fight/stage_2_loop 1t  