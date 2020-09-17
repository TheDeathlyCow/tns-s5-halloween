# tellraw @a "stage 1 loop"

execute as @e[tag=wrpdShardOne] store result bossbar minecraft:warped_soul_shard value run data get entity @s Health

execute unless entity @e[tag=wrpdShardOne] as @e[type=minecraft:armor_stand,tag=wprd_boss_second_pos] at @s run execute if score currWarpedStage WrpdStge matches 1 run function halloween-bosses:warped_forest/fight/begin_stage_2

execute if score currWarpedStage WrpdStge matches 1 run schedule function halloween-bosses:warped_forest/fight/stage_1_loop 1t