# say dead
tellraw @a[tag=CrimsonParty] {"text":"The Piglin King has been defeated!","color":"gold","bold":true}

execute as @a[tag=CrimsonParty] at @s run playsound minecraft:entity.zoglin.death hostile @s ~ ~ ~ 1 0.3 1

scoreboard players set numTokens tknsNdd 0
advancement grant @a[tag=CrimsonParty] only halloween-basics:defeat_crimson_boss
bossbar remove minecraft:piglin_king

execute at @e[type=minecraft:armor_stand,tag=exit_door] run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:chain[axis=z]