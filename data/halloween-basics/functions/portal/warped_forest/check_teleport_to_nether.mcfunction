execute as @e[type=minecraft:armor_stand,tag=warped_portal_overworld] at @s if entity @e[type=minecraft:player,dz=3,dy=5] run function halloween-basics:portal/warped_forest/teleport_to_nether
execute as @e[type=minecraft:armor_stand,tag=warped_portal_overworld] at @s if entity @e[type=minecraft:player,dz=-3,dy=5] run function halloween-basics:portal/warped_forest/teleport_to_nether

execute as @e[type=minecraft:armor_stand,tag=warped_portal_overworld] at @s if entity @e[type=minecraft:player,dz=3,dy=5] run say teleporting
execute as @e[type=minecraft:armor_stand,tag=warped_portal_overworld] at @s if entity @e[type=minecraft:player,dz=-3,dy=5] run say teleporting

