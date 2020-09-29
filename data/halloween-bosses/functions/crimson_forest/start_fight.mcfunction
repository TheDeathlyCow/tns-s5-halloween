bossbar add mansion_ghost "Ghost of the Mansion"
bossbar set minecraft:mansion_ghost color red
bossbar set minecraft:mansion_ghost style notched_6
bossbar set minecraft:mansion_ghost max 200
bossbar set minecraft:mansion_ghost players @a[tag=CrimsonParty]

execute at @e[type=minecraft:armor_stand,tag=time_dispenser] run fill ~ ~-1 ~1 ~ ~1 ~2 minecraft:air replace minecraft:iron_bars

execute as @e[type=minecraft:armor_stand,tag=cmsn_boss_spawn] at @s run function halloween-bosses:crimson_forest/fight/begin_stage_1
