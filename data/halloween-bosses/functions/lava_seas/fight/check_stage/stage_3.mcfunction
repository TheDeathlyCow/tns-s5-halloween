teleport @e[tag=seasBoss] @e[tag=seas_boss_stage3_spawn,limit=1]
execute as @e[tag=seas_boss_stage3_spawn] at @s if entity @a[tag=LavaParty,distance=..3] run execute as @e[tag=seas_boss_stage4_spawn] at @s run function halloween-bosses:lava_seas/fight/next_stage/stage_4