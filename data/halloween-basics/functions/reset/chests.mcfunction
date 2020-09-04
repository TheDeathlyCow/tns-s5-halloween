# this function resets all chests within a 500 block radius of execution

# set all chests to air and clear dropped items from unopened chests
execute as @e[type=minecraft:armor_stand,tag=chest_marker,distance=..500] at @s run setblock ~ ~ ~ minecraft:air 
execute as @e[type=minecraft:armor_stand,tag=chest_marker,distance=..500] at @s run kill @e[type=item,distance=..2]

# replace the chests with new chests

# replace north facing chests
execute as @e[type=minecraft:armor_stand,tag=chest_north,tag=tier1_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=north]{LootTable:"halloween-basics:chests/tier1_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_north,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=north]{LootTable:"halloween-basics:chests/tier2_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_north,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=north]{LootTable:"halloween-basics:chests/tier3_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_north,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=north]{LootTable:"halloween-basics:chests/tier4_chest"}

# replace south facing chests
execute as @e[type=minecraft:armor_stand,tag=chest_south,tag=tier1_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]{LootTable:"halloween-basics:chests/tier1_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_south,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]{LootTable:"halloween-basics:chests/tier2_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_south,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]{LootTable:"halloween-basics:chests/tier3_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_south,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=south]{LootTable:"halloween-basics:chests/tier4_chest"}

# replace west facing chests
execute as @e[type=minecraft:armor_stand,tag=chest_west,tag=tier1_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=west]{LootTable:"halloween-basics:chests/tier1_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_west,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=west]{LootTable:"halloween-basics:chests/tier2_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_west,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=west]{LootTable:"halloween-basics:chests/tier3_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_west,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=west]{LootTable:"halloween-basics:chests/tier4_chest"}

# replace east facing chests
execute as @e[type=minecraft:armor_stand,tag=chest_east,tag=tier1_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=east]{LootTable:"halloween-basics:chests/tier1_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_east,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=east]{LootTable:"halloween-basics:chests/tier2_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_east,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=east]{LootTable:"halloween-basics:chests/tier3_chest"}
execute as @e[type=minecraft:armor_stand,tag=chest_east,tag=tier2_chest,distance=..500] at @s run setblock ~ ~ ~ minecraft:chest[facing=east]{LootTable:"halloween-basics:chests/tier4_chest"}