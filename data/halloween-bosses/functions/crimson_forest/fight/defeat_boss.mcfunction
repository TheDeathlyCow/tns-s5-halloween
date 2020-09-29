tellraw @a[tag=CrimsonParty] {"text":"The Piglin King has been defeated!","color":"gold","bold":true}

execute as @a[tag=CrimsonParty] at @s run playsound minecraft:entity.zoglin.death hostile @s ~ ~ ~ 1 0.3 1

scoreboard players set numTokens tknsNdd 0
advancement grant @a[tag=WarpedParty] only halloween-basics:defeat_crimson_boss
bossbar remove minecraft:piglin_king