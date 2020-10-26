execute at @e[type=minecraft:armor_stand,tag=svly_portal_nether] as @a[dx=0,dz=5,dy=10] run function halloween-basics:portal/nether_castle/confirm_exit

execute as @a[scores={rtrnToOvwldSvly=1}] run function halloween-basics:portal/nether_castle/teleport_to_overworld
execute as @a[scores={rtrnToOvwldSvly=1}] run scoreboard players set @s rtrnToOvwldSvly 0