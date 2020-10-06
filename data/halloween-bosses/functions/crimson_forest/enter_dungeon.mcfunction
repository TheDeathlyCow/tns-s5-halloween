
# say stuff??
execute as @e[type=minecraft:armor_stand,tag=dir_chest] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=time_chest] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=time_dispenser] at @s run setblock ~ ~ ~ air
execute as @e[type=minecraft:armor_stand,tag=dir_dispenser] at @s run setblock ~ ~ ~ air

execute as @e[type=minecraft:armor_stand,tag=dir_chest] at @s run setblock ~ ~ ~ chest[facing=north]{Items:[{Slot:13b,id:"minecraft:compass",Count:1b,tag:{display:{Name:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'},direction_compass:1b,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:1b,LodestonePos:{X:-9455,Y:60,Z:10082}}}]} replace
execute as @e[type=minecraft:armor_stand,tag=time_chest] at @s run setblock ~ ~ ~ chest[facing=south]{Items:[{Slot:13b,id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"Time","color":"gold","bold":true,"italic":false}'},time_clock:1b,Enchantments:[{}]}}]} replace
execute as @e[type=minecraft:armor_stand,tag=time_dispenser] at @s run setblock ~ ~ ~ dropper[facing=east]{CustomName:'{"text":"Time","color":"gold","bold":true,"italic":false}'}
execute as @e[type=minecraft:armor_stand,tag=dir_dispenser] at @s run setblock ~ ~ ~ dropper[facing=east]{CustomName:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'}


execute as @e[type=minecraft:armor_stand,tag=cmsn_secret] at @s run setblock ~ ~ ~ minecraft:air
execute as @e[type=minecraft:armor_stand,tag=cmsn_secret,distance=..500] at @s run kill @e[type=item,distance=..2]
execute as @e[type=minecraft:armor_stand,tag=cmsn_secret] at @s run setblock ~ ~ ~ barrel[facing=north]{LootTable:"halloween-bosses:chests/crimson_secret"}
# advancement grant @p 

# function halloween-bosses:crimson_forest/start_checker

execute at @e[type=minecraft:armor_stand,tag=exit_door] run fill ~ ~ ~ ~ ~2 ~ minecraft:chain[axis=z] replace minecraft:air
execute at @e[type=minecraft:armor_stand,tag=time_dispenser] run fill ~ ~-1 ~1 ~ ~1 ~2 minecraft:chain[axis=z] replace minecraft:air

execute at @e[tag=its_a_lie] run setblock ~ ~ ~ cake[bites=0]