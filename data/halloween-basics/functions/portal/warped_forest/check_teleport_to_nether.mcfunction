execute at @e[type=minecraft:armor_stand,tag=warped_portal_overworld] as @e[type=minecraft:player,dz=3,dy=5] if entity @s run function halloween-basics:portal/warped_forest/check_runs
execute at @e[type=minecraft:armor_stand,tag=warped_portal_overworld] as @e[type=minecraft:player,dz=-3,dy=5] if entity @s run function halloween-basics:portal/warped_forest/check_runs

