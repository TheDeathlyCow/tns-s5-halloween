tellraw @a[tag=CrimsonParty] {"text":"This gate is closing!","color":"gold"}

execute as @a[tag=CrimsonParty] run scoreboard players add @s nmCmsnRns 1

execute as @a[tag=CrimsonParty] run function halloween-basics:portal/crimson_forest/teleport_to_overworld 