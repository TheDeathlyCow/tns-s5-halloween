
execute as @e[tag=wrpdShardThree] store result bossbar minecraft:warped_soul_shard value run data get entity @s Health

execute unless entity @e[tag=wrpdShardThree] as @e[tag=warped_dungeon_marker] at @s run execute if score currWarpedStage WrpdStge matches 3 run function halloween-bosses:warped_forest/fight/defeat_boss

execute if score currWarpedStage WrpdStge matches 3 run schedule function halloween-bosses:warped_forest/fight/stage_3_loop 1t