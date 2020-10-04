bossbar add piglin_king "Piglin King"
bossbar set minecraft:piglin_king color red
bossbar set minecraft:piglin_king style notched_6
bossbar set minecraft:piglin_king max 350
bossbar set minecraft:piglin_king players @a[tag=CrimsonParty]

execute at @e[type=minecraft:armor_stand,tag=time_dispenser] run fill ~ ~-1 ~1 ~ ~1 ~2 minecraft:air replace minecraft:iron_bars

execute as @e[type=minecraft:armor_stand,tag=cmsn_boss_spawn] at @s run function halloween-bosses:crimson_forest/fight/awaken
