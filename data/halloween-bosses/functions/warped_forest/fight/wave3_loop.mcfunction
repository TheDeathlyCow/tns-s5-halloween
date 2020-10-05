# tellraw @a[tag=WarpedParty] "[DEBUG] Wave 3 loop"

execute if score currWarpedStage WrpdStge matches 3 as @a[tag=WarpedParty] at @s run function halloween-bosses:warped_forest/fight/summon_wave_t3

execute if score currWarpedStage WrpdStge matches 3 run schedule function halloween-bosses:warped_forest/fight/wave3_loop 40s