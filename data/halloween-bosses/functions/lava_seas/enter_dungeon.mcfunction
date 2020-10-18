
# say stuff??
gamerule keepInventory true
execute as @e[type=minecraft:armor_stand,tag=key_dispenser] at @s run setblock ~ ~ ~ dropper[facing=east]{CustomName:'{"text":"Key","color":"dark_purple","bold":true,"italic":false}'}
# advancement grant @p 

# function halloween-bosses:crimson_forest/start_checker

# below could be where the boss door goes
# execute at @e[type=minecraft:armor_stand,tag=exit_door] run fill ~ ~ ~ ~ ~2 ~ minecraft:chain[axis=z] replace minecraft:air 
