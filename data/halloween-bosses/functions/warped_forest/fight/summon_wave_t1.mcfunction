
tellraw @a[tag=WarpedParty] "[DEBUG] Wave 1 summoned at players!"

tp @a[tag=WarpedParty] @e[tag=wave1_tp,limit=1]

# effect give @s minecraft:blindness 7 0 true
effect give @s minecraft:nausea 7 0 true
effect give @s minecraft:hunger 7 5 true

execute at @e[tag=wave1_tp] run summon armor_stand ~2 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}
execute at @e[tag=wave1_tp] run summon armor_stand ~-2 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}
execute at @e[tag=wave1_tp] run summon armor_stand ~ ~ ~2 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}
execute at @e[tag=wave1_tp] run summon armor_stand ~ ~ ~-2 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}

execute as @e[tag=wave1_marker] at @s run function halloween-basics:spawn/tier1/warped_shade 

kill @e[tag=wave1_marker]