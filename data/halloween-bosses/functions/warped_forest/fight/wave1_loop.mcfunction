tellraw @a[tag=WarpedParty] "[DEBUG] Wave 1 loop"

execute if score currWarpedStage WrpdStge matches 1 as @a[tag=WarpedParty] at @s run function halloween-bosses:warped_forest/fight/summon_wave_t1

execute if score currWarpedStage WrpdStge matches 1 run schedule function halloween-bosses:warped_forest/fight/wave1_loop 20s