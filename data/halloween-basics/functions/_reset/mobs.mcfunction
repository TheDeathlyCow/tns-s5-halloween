# This should be called when players enter a dungeon to prevent despawning and lag.
# Only affects mob markers within a 500 block radius of execution (should be enough for one dungeon without interfering with other dungeons).

# tp all mobs into the void
# execute at @e[tag=halloweenMob,distance=..500] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mob_kill_cleaner"]}
tag @e[tag=halloweenMob,distance=..500] add clean_up
tag @e[tag=halloweenBoss,distance=..500] add clean_up
execute at @s run tp @e[tag=clean_up] ~ ~-260 ~
kill @e[tag=clean_up]

# say reset mobs
# execute at @e[type=minecraft:armor_stand,tag=mob_kill_cleaner,distance=..500] run kill @e[type=minecraft:item,distance=..1]
# kill @e[type=minecraft:armor_stand,tag=mob_kill_cleaner]

# tp @e[tag=halloweenBoss,distance=..500] ~ ~-1000 ~

# ====== summon new mobs at their markers ======

# vindicators
execute as @e[type=minecraft:armor_stand,tag=tier1_vindicator,distance=..500] at @s run function halloween-basics:spawn/tier1/vindicator
execute as @e[type=minecraft:armor_stand,tag=tier2_vindicator,distance=..500] at @s run function halloween-basics:spawn/tier2/vindicator
execute as @e[type=minecraft:armor_stand,tag=tier3_vindicator,distance=..500] at @s run function halloween-basics:spawn/tier3/vindicator

# endermites
execute as @e[type=minecraft:armor_stand,tag=tier1_endermite,distance=..500] at @s run function halloween-basics:spawn/tier1/endermite
execute as @e[type=minecraft:armor_stand,tag=tier2_endermite,distance=..500] at @s run function halloween-basics:spawn/tier2/endermite

# witches
execute as @e[type=minecraft:armor_stand,tag=tier1_witch,distance=..500] at @s run function halloween-basics:spawn/tier1/witch
execute as @e[type=minecraft:armor_stand,tag=tier2_witch,distance=..500] at @s run function halloween-basics:spawn/tier2/witch

# ravagers
execute as @e[type=minecraft:armor_stand,tag=tier2_ravager,distance=..500] at @s run function halloween-basics:spawn/tier2/ravager
execute as @e[type=minecraft:armor_stand,tag=tier3_ravager,distance=..500] at @s run function halloween-basics:spawn/tier3/ravager

# pillagers
execute as @e[type=minecraft:armor_stand,tag=tier1_pillager,distance=..500] at @s run function halloween-basics:spawn/tier1/pillager
execute as @e[type=minecraft:armor_stand,tag=tier2_pillager,distance=..500] at @s run function halloween-basics:spawn/tier2/pillager

# lava spirits
execute as @e[type=minecraft:armor_stand,tag=tier1_fire_spirit,distance=..500] at @s run function halloween-basics:spawn/tier1/fire_spirit
execute as @e[type=minecraft:armor_stand,tag=tier2_magma_spirit,distance=..500] at @s run function halloween-basics:spawn/tier2/magma_spirit
execute as @e[type=minecraft:armor_stand,tag=tier3_volcanic_spirit,distance=..500] at @s run function halloween-basics:spawn/tier3/volcanic_spirit

# piglins 
execute as @e[type=minecraft:armor_stand,tag=tier1_piglin_warrior,distance=..500] at @s run function halloween-basics:spawn/tier1/piglin_warrior
execute as @e[type=minecraft:armor_stand,tag=tier2_piglin_brute,distance=..500] at @s run function halloween-basics:spawn/tier2/piglin_brute
execute as @e[type=minecraft:armor_stand,tag=tier3_piglin_boss,distance=..500] at @s run function halloween-basics:spawn/tier3/piglin_boss

# skeleton
execute as @e[type=minecraft:armor_stand,tag=tier1_skeleton_crewmate,distance=..500] at @s run function halloween-basics:spawn/tier1/skeleton_crewmate
execute as @e[type=minecraft:armor_stand,tag=tier2_skeleton_boatswain,distance=..500] at @s run function halloween-basics:spawn/tier2/skeleton_boatswain
execute as @e[type=minecraft:armor_stand,tag=tier3_skeleton_quartermaster,distance=..500] at @s run function halloween-basics:spawn/tier3/skeleton_quartermaster

# warped shades
execute as @e[type=minecraft:armor_stand,tag=tier1_warped_shade,distance=..500] at @s run function halloween-basics:spawn/tier1/warped_shade
execute as @e[type=minecraft:armor_stand,tag=tier2_warped_shade,distance=..500] at @s run function halloween-basics:spawn/tier2/warped_shade
execute as @e[type=minecraft:armor_stand,tag=tier3_warped_shade,distance=..500] at @s run function halloween-basics:spawn/tier3/warped_shade

# ===== ensure all mobs are persistent ======
#this is only cos i forgot to add the tag and im too lazy to go back over and fix it for everyone
execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}