
# execute if score currWarpedStage WrpdStge matches 1 as @e[type=minecraft:armor_stand,tag=wprd_boss_first_pos] at @s run function halloween-bosses:warped_forest/fight/stage_1_loop

# execute if score currWarpedStage WrpdStge matches 2 as @e[type=minecraft:armor_stand,tag=wprd_boss_second_pos] at @s run function halloween-bosses:warped_forest/fight/stage_2_loop

# execute if score currWarpedStage WrpdStge matches 3 as @e[type=minecraft:armor_stand,tag=wprd_boss_third_pos] at @s run function halloween-bosses:warped_forest/fight/stage_3_loop

# execute unless score currWarpedStage WrpdStge matches 0 run schedule function halloween-bosses:warped_forest/fight/loop 1t