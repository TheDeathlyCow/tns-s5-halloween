tellraw @a[tag=BasaltParty] {"text":"This gate is closing!","color":"dark_gray"}

execute as @a[tag=BasaltParty] run scoreboard players add @s nmBsltRns 1

execute as @a[tag=BasaltParty] run function halloween-basics:portal/basalt_caves/teleport_to_overworld 