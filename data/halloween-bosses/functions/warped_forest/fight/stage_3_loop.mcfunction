
execute as @e[tag=wrpdShardThree] store result bossbar minecraft:warped_soul_shard value run data get entity @s Health

execute unless entity @e[tag=wrpdShardThree] run function halloween-bosses:warped_forest/fight/defeat_boss

execute if entity @e[tag=wrpdShardThree] run schedule function halloween-bosses:warped_forest/fight/stage_3_loop 1t