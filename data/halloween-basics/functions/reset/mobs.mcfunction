# This should be called when players enter a dungeon to prevent despawning and lag.

# kill all previous mobs and make sure their item drops are gone
execute at @e[tag=halloweenMob] run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["mob_kill_cleaner"]}
kill @e[tag=halloweenMob]
execute at @e[type=minecraft:armor_stand,tag=mob_kill_cleaner] run kill @e[type=minecraft:item,distance=..1]
kill @e[type=minecraft:armor_stand,tag=mob_kill_cleaner]

# summon new mobs at their markers
execute as @e[type=minecraft:armor_stand,tag=tier1_vindicator] at @s run function halloween-basics:spawn/tier1/vindicator
execute as @e[type=minecraft:armor_stand,tag=tier2_vindicator] at @s run function halloween-basics:spawn/tier2/vindicator
execute as @e[type=minecraft:armor_stand,tag=tier3_vindicator] at @s run function halloween-basics:spawn/tier3/vindicator
