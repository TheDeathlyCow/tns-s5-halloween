

execute if score currentSeasStage WrpdStge matches 1 run function halloween-bosses:lava_seas/fight/check_stage/stage_1
execute if score currentSeasStage WrpdStge matches 2 run function halloween-bosses:lava_seas/fight/check_stage/stage_2
execute if score currentSeasStage WrpdStge matches 3 run function halloween-bosses:lava_seas/fight/check_stage/stage_3
execute if score currentSeasStage WrpdStge matches 4 run function halloween-bosses:lava_seas/fight/check_stage/stage_4
execute if score currentSeasStage WrpdStge matches 5 run function halloween-bosses:lava_seas/fight/check_stage/stage_5

scoreboard players remove seasStage4Timer tickTimer 1
execute if score seasStage4Timer tickTimer matches 0 run function halloween-bosses:lava_seas/pick_position/next_position