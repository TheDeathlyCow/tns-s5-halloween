
execute as @e[type=minecraft:armor_stand,tag=wprd_boss_third_pos] at @s if entity @a[tag=WarpedParty,distance=..10] run function halloween-bosses:warped_forest/start_fight
execute if score numWarpedPlayers wrpdPlyrsCnt matches 1.. run execute if score currWarpedStage WrpdStge matches 0 run schedule function halloween-bosses:warped_forest/start_checker 2t