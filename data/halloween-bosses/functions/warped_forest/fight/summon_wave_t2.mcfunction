
tellraw @a[tag=WarpedParty] "[DEBUG] Wave 2 summoned at players!"

tp @a[tag=WarpedParty] @e[tag=wave2_tp,limit=1]

effect give @s minecraft:blindness 1 0 true
effect give @s minecraft:nausea 3 0 true

execute at @e[tag=wave2_tp] run summon armor_stand ~2 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave2_marker","mob_marker"]}
execute at @e[tag=wave2_tp] run summon armor_stand ~-2 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave2_marker","mob_marker"]}
execute at @e[tag=wave2_tp] run summon armor_stand ~ ~ ~2 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave2_marker","mob_marker"]}
execute at @e[tag=wave2_tp] run summon armor_stand ~ ~ ~-2 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave2_marker","mob_marker"]}

execute as @e[tag=wave2_marker] at @s run function halloween-basics:spawn/tier2/warped_shade    

kill @e[tag=wave2_marker]