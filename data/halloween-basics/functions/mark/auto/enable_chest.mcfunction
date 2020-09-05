tellraw @a {"text":"Enabled auto chest marking! Rename a silverfish to chest_tier{tierNumber}_{direction} to mark chest positions. For example: chest_tier1_north.","color":"green"}
scoreboard players set isChestAuto chestAutoOn 1
schedule function halloween-basics:mark/auto/chest 1t