bossbar add lava_captain "Captain Jack Arrow"
bossbar set minecraft:lava_captain color red
bossbar set minecraft:lava_captain style notched_6
bossbar set minecraft:lava_captain max 350
bossbar set minecraft:lava_captain players @a[tag=LavaParty]

# execute at @e[type=minecraft:armor_stand,tag=time_dispenser] run fill ~ ~-1 ~1 ~ ~1 ~2 minecraft:air replace minecraft:chain

# execute as @e[type=minecraft:armor_stand,tag=cmsn_boss_spawn] at @s run function halloween-bosses:crimson_forest/fight/awaken
