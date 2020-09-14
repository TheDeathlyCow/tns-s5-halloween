

kill @e[type=minecraft:armor_stand,tag=enderman_east]

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["enderman_east","mob_marker"]}
