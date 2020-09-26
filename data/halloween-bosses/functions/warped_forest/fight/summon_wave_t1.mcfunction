
tellraw @a[tag=WarpedParty] "[DEBUG] Wave 1 summoned at players!"

tp @a[tag=WarpedParty] @e[tag=wave1_tp,limit=1]

effect give @s minecraft:blindness 1 0 true
effect give @s minecraft:nausea 3 0 true

execute at @e[tag=wave1_tp] run summon armor_stand ~3 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}
execute at @e[tag=wave1_tp] run summon armor_stand ~-3 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}
execute at @e[tag=wave1_tp] run summon armor_stand ~ ~ ~3 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}
execute at @e[tag=wave1_tp] run summon armor_stand ~ ~ ~-3 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave1_marker","mob_marker"]}

# execute as @e[tag=wave1_marker] at @s run 
playsound minecraft:entity.enderman.teleport hostile @s ~ ~ ~ 1 0 1
execute as @e[tag=wave1_marker] at @s run particle minecraft:dust 0.7020 0.4 1.0 1 ~ ~0.1 ~ 0.7 0.1 0.7 1 100

execute as @e[tag=wave1_marker] at @s run function halloween-basics:spawn/tier1/warped_shade 

kill @e[tag=wave1_marker]