execute at @e[type=minecraft:armor_stand,tag=seas_portal_nether] as @a[dx=0,dz=5,dy=10] run function halloween-basics:portal/lava_seas/confirm_exit

execute as @a[scores={rtrnToOvwldSeas=1}] run function halloween-basics:portal/lava_seas/teleport_to_overworld
execute as @a[scores={rtrnToOvwldSeas=1}] run scoreboard players set @s rtrnToOvwldSeas 0