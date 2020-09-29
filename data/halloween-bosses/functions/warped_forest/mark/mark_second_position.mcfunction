

kill @e[type=minecraft:armor_stand,tag=wprd_boss_second_pos]

execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["wprd_boss_second_pos","wrpd_boss_marker"]}
