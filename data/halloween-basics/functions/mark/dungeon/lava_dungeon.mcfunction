
kill @e[type=minecraft:armor_stand,tag=lava_dungeon_marker]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["lava_dungeon_marker"]}