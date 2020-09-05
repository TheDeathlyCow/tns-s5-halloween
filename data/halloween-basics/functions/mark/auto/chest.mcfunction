# this function auto marks chests using named silver fish. silverfish have a name of the format "chest_tier{tierNumber}_{direction}"
# tierNumber can be 1, 2, 3, or 4
# direction can be "north", "south", "east", or "west"

# ===== debug messages =====
# tellraw @a "Executing function halloween-basics:mark/auto/chest.mcfunction"

# ===== mark the chests =====

execute as @e[type=minecraft:silverfish,name="chest_tier1_north"] run function halloween-basics:mark/chest/north/tier1
execute as @e[type=minecraft:silverfish,name="chest_tier2_north"] run function halloween-basics:mark/chest/north/tier2
execute as @e[type=minecraft:silverfish,name="chest_tier3_north"] run function halloween-basics:mark/chest/north/tier3
execute as @e[type=minecraft:silverfish,name="chest_tier4_north"] run function halloween-basics:mark/chest/north/tier4

execute as @e[type=minecraft:silverfish,name="chest_tier1_south"] run function halloween-basics:mark/chest/south/tier1
execute as @e[type=minecraft:silverfish,name="chest_tier2_south"] run function halloween-basics:mark/chest/south/tier2
execute as @e[type=minecraft:silverfish,name="chest_tier3_south"] run function halloween-basics:mark/chest/south/tier3
execute as @e[type=minecraft:silverfish,name="chest_tier4_south"] run function halloween-basics:mark/chest/south/tier4

execute as @e[type=minecraft:silverfish,name="chest_tier1_east"] run function halloween-basics:mark/chest/east/tier1
execute as @e[type=minecraft:silverfish,name="chest_tier2_east"] run function halloween-basics:mark/chest/east/tier2
execute as @e[type=minecraft:silverfish,name="chest_tier3_east"] run function halloween-basics:mark/chest/east/tier3
execute as @e[type=minecraft:silverfish,name="chest_tier4_east"] run function halloween-basics:mark/chest/east/tier4

execute as @e[type=minecraft:silverfish,name="chest_tier1_west"] run function halloween-basics:mark/chest/west/tier1
execute as @e[type=minecraft:silverfish,name="chest_tier2_west"] run function halloween-basics:mark/chest/west/tier2
execute as @e[type=minecraft:silverfish,name="chest_tier3_west"] run function halloween-basics:mark/chest/west/tier3
execute as @e[type=minecraft:silverfish,name="chest_tier4_west"] run function halloween-basics:mark/chest/west/tier4

# ===== kill the silverfish =====

kill @e[type=minecraft:silverfish,name="chest_tier1_north"]
kill @e[type=minecraft:silverfish,name="chest_tier2_north"]
kill @e[type=minecraft:silverfish,name="chest_tier3_north"]
kill @e[type=minecraft:silverfish,name="chest_tier4_north"]

kill @e[type=minecraft:silverfish,name="chest_tier1_south"]
kill @e[type=minecraft:silverfish,name="chest_tier2_south"]
kill @e[type=minecraft:silverfish,name="chest_tier3_south"]
kill @e[type=minecraft:silverfish,name="chest_tier4_south"]

kill @e[type=minecraft:silverfish,name="chest_tier1_east"]
kill @e[type=minecraft:silverfish,name="chest_tier2_east"]
kill @e[type=minecraft:silverfish,name="chest_tier3_east"]
kill @e[type=minecraft:silverfish,name="chest_tier4_east"]

kill @e[type=minecraft:silverfish,name="chest_tier1_west"]
kill @e[type=minecraft:silverfish,name="chest_tier2_west"]
kill @e[type=minecraft:silverfish,name="chest_tier3_west"]
kill @e[type=minecraft:silverfish,name="chest_tier4_west"]

execute if score isChestAuto chestAutoOn matches 1 run schedule function halloween-basics:mark/auto/chest 1t