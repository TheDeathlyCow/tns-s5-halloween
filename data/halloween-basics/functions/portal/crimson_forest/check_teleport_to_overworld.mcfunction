execute at @e[type=minecraft:armor_stand,tag=crimson_portal_nether] as @e[type=minecraft:player,dx=5,dz=0,dy=10] run function halloween-basics:portal/crimson_forest/confirm_exit

execute as @a[scores={rtrnToOvwldCmsn=1}] run function halloween-basics:portal/crimson_forest/teleport_to_overworld
execute as @a[scores={rtrnToOvwldCmsn=1}] run scoreboard players set @s rtrnToOvwldCmsn 0