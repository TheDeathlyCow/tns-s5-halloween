tellraw @a[tag=ValleyParty] {"text":"This gate is closing!","color":"aqua"}

execute as @a[tag=ValleyParty] run scoreboard players add @s nmSvlyRns 1

execute as @a[tag=ValleyParty] run function halloween-basics:portal/nether_castle/teleport_to_overworld 