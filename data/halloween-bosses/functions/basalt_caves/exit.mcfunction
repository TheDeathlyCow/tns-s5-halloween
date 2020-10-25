tellraw @a[tag=BasaltParty] {"text":"This gate is closing!","color":"dark_gray"}

execute as @a[tag=BasaltParty] run scoreboard players add @s nmBsltRns 1

execute at @e[tag=bslt_exit_button] run function halloween-bosses:basalt_caves/reset_exit_button

execute as @a[tag=BasaltParty] run function halloween-basics:portal/basalt_caves/teleport_to_overworld 