tellraw @a[tag=WarpedParty] {"text":"This gate is closing!","color":"aqua"}

execute as @a[tag=WarpedParty] run scoreboard players add @s nmWrpdRns 1

execute as @a[tag=WarpedParty] run function halloween-basics:portal/warped_forest/teleport_to_overworld 