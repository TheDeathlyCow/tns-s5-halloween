
teleport @e[tag=seasBoss] ~ ~ ~

# function halloween-basics:spawn/tier1/skeleton_crewmate
# function halloween-basics:spawn/tier1/skeleton_crewmate
# function halloween-basics:spawn/tier1/skeleton_crewmate
# function halloween-basics:spawn/tier1/skeleton_crewmate
# function halloween-basics:spawn/tier1/melee_skeleton
# function halloween-basics:spawn/tier1/melee_skeleton

# function halloween-basics:spawn/tier2/skeleton_boatswain
# function halloween-basics:spawn/tier2/skeleton_boatswain
# function halloween-basics:spawn/tier2/melee_skeleton
# function halloween-basics:spawn/tier2/melee_skeleton

# tag @e[tag=halloweenMob,type=minecraft:skeleton,distance=..5] add SeasStage4

scoreboard players set currentSeasStage WrpdStge 4

data merge entity @e[type=minecraft:wither_skeleton,tag=seasBoss,limit=1] {Invulnerable:0b}

execute as @a[distance=..200] at @s run playsound minecraft:music_disc.far master @s ~ ~ ~ 
tag @a[tag=LavaParty] add seasFightingStage4
function halloween-bosses:lava_seas/pick_position/next_position

