execute at @e[type=minecraft:armor_stand,tag=warped_portal_nether] as @e[type=minecraft:player,dx=0,dz=5,dy=10] run function halloween-basics:portal/warped_forest/confirm_exit

execute as @a[scores={rtrnToOvwldWrpd=1}] run function halloween-basics:portal/warped_forest/teleport_to_overworld
execute as @a[scores={rtrnToOvwldWrpd=1}] run scoreboard players set @s rtrnToOvwldWrpd 0