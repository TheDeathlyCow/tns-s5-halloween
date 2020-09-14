

execute at @e[type=minecraft:armor_stand,tag=warped_portal_overworld] as @e[type=minecraft:player,dz=2,dy=10] run function halloween-basics:portal/warped_forest/check_runs
execute at @e[type=minecraft:armor_stand,tag=warped_portal_overworld] as @e[type=minecraft:player,dz=-2,dy=10] run function halloween-basics:portal/warped_forest/check_runs