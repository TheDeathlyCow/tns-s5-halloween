# this function resets all chests within a 500 block radius of execution

# set all chests to air and clear dropped items from unopened chests
execute as @e[type=minecraft:armor_stand,tag=chest_marker,distance=..500] at @s run setblock ~ ~ ~ minecraft:air 
execute as @e[type=minecraft:armor_stand,tag=chest_marker,distance=..500] at @s run kill @e[type=item,distance=..2]

#replace the chests with new chests
execute as @e[type=minecraft:armor_stand,tag=tier1_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest{LootTable:"halloween-basics:chests/tier1_chest"}
execute as @e[type=minecraft:armor_stand,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest{LootTable:"halloween-basics:chests/tier2_chest"}
execute as @e[type=minecraft:armor_stand,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest{LootTable:"halloween-basics:chests/tier3_chest"}
execute as @e[type=minecraft:armor_stand,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest{LootTable:"halloween-basics:chests/tier4_chest"}