bossbar add bslt_heart {"text":"The Heart of the Volcano","color":"gold"}
bossbar set minecraft:bslt_heart color red
bossbar set minecraft:bslt_heart style notched_6
bossbar set minecraft:bslt_heart max 600
bossbar set minecraft:bslt_heart players @a[tag=BasaltParty]


execute as @e[type=minecraft:armor_stand,tag=bslt_boss_spawn] at @s run function halloween-bosses:basalt_caves/fight/awaken

# scoreboard players set seasStage4Timer tickTimer -1

# execute at @e[type=minecraft:armor_stand,tag=time_dispenser] run fill ~ ~-1 ~1 ~ ~1 ~2 minecraft:air replace minecraft:chain

# execute as @e[type=minecraft:armor_stand,tag=cmsn_boss_spawn] at @s run function halloween-bosses:crimson_forest/fight/awaken
