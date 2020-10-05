# tellraw @a[tag=WarpedParty] "[DEBUG] Wave 2 loop"

execute if score currWarpedStage WrpdStge matches 2 as @a[tag=WarpedParty] at @s run function halloween-bosses:warped_forest/fight/summon_wave_t2

execute if score currWarpedStage WrpdStge matches 2 run schedule function halloween-bosses:warped_forest/fight/wave2_loop 30s