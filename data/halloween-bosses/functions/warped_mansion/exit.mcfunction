execute as @a[tag=WarpedParty] run scoreboard players add @s nmWrpdRns 1
advancement grant @a[tag=WarpedParty] only halloween-basics:defeat_warped_boss
execute as @a[tag=WarpedParty] run function halloween-basics:portal/warped_forest/teleport_to_overworld 