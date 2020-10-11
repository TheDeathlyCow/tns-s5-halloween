

execute if score currentSeasStage WrpdStge matches 1 run function halloween-bosses:lava_seas/fight/check_stage/stage_1
execute if score currentSeasStage WrpdStge matches 2 run function halloween-bosses:lava_seas/fight/check_stage/stage_2
execute if score currentSeasStage WrpdStge matches 3 run function halloween-bosses:lava_seas/fight/check_stage/stage_3
execute if score currentSeasStage WrpdStge matches 4 run function halloween-bosses:lava_seas/fight/check_stage/stage_4
execute if score currentSeasStage WrpdStge matches 5 run function halloween-bosses:lava_seas/fight/check_stage/stage_5

# execute if score currWarpedStage WrpdStge matches 1 as @e[type=minecraft:armor_stand,tag=wprd_boss_first_pos] at @s run function halloween-bosses:warped_forest/fight/stage_1_loop

# execute if score currWarpedStage WrpdStge matches 2 as @e[type=minecraft:armor_stand,tag=wprd_boss_second_pos] at @s run function halloween-bosses:warped_forest/fight/stage_2_loop

# execute if score currWarpedStage WrpdStge matches 3 as @e[type=minecraft:armor_stand,tag=wprd_boss_third_pos] at @s run function halloween-bosses:warped_forest/fight/stage_3_loop

# execute unless score currWarpedStage WrpdStge matches 0 run schedule function halloween-bosses:warped_forest/fight/loop 1t