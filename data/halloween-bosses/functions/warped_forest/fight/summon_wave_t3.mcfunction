
tellraw @a[tag=WarpedParty] "[DEBUG] Wave 3 summoned at players!"

tp @a[tag=WarpedParty] @e[tag=wave3_tp,limit=1]

effect give @s minecraft:blindness 4 0 true
effect give @s minecraft:nausea 4 0 true
effect give @s minecraft:hunger 4 5 true

execute at @e[tag=wave3_tp] run summon armor_stand ~2 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave3_marker","mob_marker"]}
execute at @e[tag=wave3_tp] run summon armor_stand ~-2 ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave3_marker","mob_marker"]}
execute at @e[tag=wave3_tp] run summon armor_stand ~ ~ ~2 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave2_marker","mob_marker"]}
execute at @e[tag=wave3_tp] run summon armor_stand ~ ~ ~-2 {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wave2_marker","mob_marker"]}

execute as @e[tag=wave3_marker] at @s run function halloween-basics:spawn/tier3/warped_shade 
execute as @e[tag=wave2_marker] at @s run function halloween-basics:spawn/tier2/warped_shade

kill @e[tag=wave3_marker]
kill @e[tag=wave2_marker]

scoreboard objectives add MnionCnt dummy
scoreboard players set numMinions MnionCnt 0
execute store result score numMinions MnionCnt if entity @e[tag=halloweenBossMinion]
execute if score numMinions MnionCnt matches 11.. at @e[tag=wave3_tp] run kill @e[tag=halloweenBossMinion,sort=furthest,limit=4]
scoreboard objectives remove MnionCnt