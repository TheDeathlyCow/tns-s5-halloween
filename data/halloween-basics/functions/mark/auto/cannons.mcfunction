execute as @e[type=minecraft:silverfish,name="starboard_cannon"] at @s run function halloween-basics:mark/cannons/mark_starboard
execute as @e[type=minecraft:silverfish,name="port_cannon"] at @s run function halloween-basics:mark/cannons/mark_port

kill @e[type=minecraft:silverfish,name="starboard_cannon"]
kill @e[type=minecraft:silverfish,name="port_cannon"]