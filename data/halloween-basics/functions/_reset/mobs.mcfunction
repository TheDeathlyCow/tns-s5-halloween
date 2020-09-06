# This should be called when players enter a dungeon to prevent despawning and lag.

# kill all previous mobs and make sure their item drops are gone
execute at @e[tag=halloweenMob] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mob_kill_cleaner"]}
execute at @s run kill @e[tag=halloweenMob,distance=..500]
execute at @e[type=minecraft:armor_stand,tag=mob_kill_cleaner] run kill @e[type=minecraft:item,distance=..1]
kill @e[type=minecraft:armor_stand,tag=mob_kill_cleaner]

# ====== summon new mobs at their markers ======

# vindicators
execute as @e[type=minecraft:armor_stand,tag=tier1_vindicator] at @s run function halloween-basics:spawn/tier1/vindicator
execute as @e[type=minecraft:armor_stand,tag=tier2_vindicator] at @s run function halloween-basics:spawn/tier2/vindicator
execute as @e[type=minecraft:armor_stand,tag=tier3_vindicator] at @s run function halloween-basics:spawn/tier3/vindicator

# endermites
execute as @e[type=minecraft:armor_stand,tag=tier1_endermite] at @s run function halloween-basics:spawn/tier1/endermite
execute as @e[type=minecraft:armor_stand,tag=tier2_endermite] at @s run function halloween-basics:spawn/tier2/endermite

# witches
execute as @e[type=minecraft:armor_stand,tag=tier1_witch] at @s run function halloween-basics:spawn/tier1/witch
execute as @e[type=minecraft:armor_stand,tag=tier2_witch] at @s run function halloween-basics:spawn/tier2/witch

# ravagers
execute as @e[type=minecraft:armor_stand,tag=tier2_ravager] at @s run function halloween-basics:spawn/tier2/ravager
execute as @e[type=minecraft:armor_stand,tag=tier3_ravager] at @s run function halloween-basics:spawn/tier3/ravager

# pillagers
execute as @e[type=minecraft:armor_stand,tag=tier1_pillager] at @s run function halloween-basics:spawn/tier1/pillager
execute as @e[type=minecraft:armor_stand,tag=tier2_pillager] at @s run function halloween-basics:spawn/tier2/pillager

# lava spirits
execute as @e[type=minecraft:armor_stand,tag=tier1_fire_spirit] at @s run function halloween-basics:spawn/tier1/fire_spirit
execute as @e[type=minecraft:armor_stand,tag=tier2_magma_spirit] at @s run function halloween-basics:spawn/tier2/magma_spirit
execute as @e[type=minecraft:armor_stand,tag=tier3_volcanic_spirit] at @s run function halloween-basics:spawn/tier3/volcanic_spirit

# piglins 
execute as @e[type=minecraft:armor_stand,tag=tier1_piglin_warrior] at @s run function halloween-basics:spawn/tier1/piglin_warrior
execute as @e[type=minecraft:armor_stand,tag=tier2_piglin_brute] at @s run function halloween-basics:spawn/tier2/piglin_brute
execute as @e[type=minecraft:armor_stand,tag=tier3_piglin_boss] at @s run function halloween-basics:spawn/tier3/piglin_boss

# ===== ensure all mobs are persistent ======
#this is only cos i forgot to add the tag and im too lazy to go back over and fix it for everyone
execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}