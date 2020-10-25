execute at @e[type=minecraft:armor_stand,tag=bslt_portal_nether] as @a[dx=5,dz=0,dy=10] run function halloween-basics:portal/basalt_caves/confirm_exit

execute as @a[scores={rtrnToOvwldBslt=1}] run function halloween-basics:portal/basalt_caves/teleport_to_overworld
execute as @a[scores={rtrnToOvwldBslt=1}] run scoreboard players set @s rtrnToOvwldBslt 0