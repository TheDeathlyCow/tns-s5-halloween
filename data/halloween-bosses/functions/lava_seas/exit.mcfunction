tellraw @a[tag=LavaParty] {"text":"This gate is closing!","color":"gold"}

execute as @a[tag=LavaParty] run scoreboard players add @s nmSeasRns 1

execute as @a[tag=LavaParty] run function halloween-basics:portal/lava_seas/teleport_to_overworld 