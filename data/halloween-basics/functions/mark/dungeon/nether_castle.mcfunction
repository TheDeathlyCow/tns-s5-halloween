
kill @e[type=minecraft:armor_stand,tag=castle_dungeon_marker]
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,PersistenceRequired:1b,Tags:["castle_dungeon_marker"],Marker:1b}