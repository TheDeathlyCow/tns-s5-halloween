# say dead
tellraw @a[tag=LavaParty] {"text":"Captain Jack Arrow has been defeated!","color":"gold","bold":true}

execute as @a[tag=LavaParty] at @s run playsound minecraft:entity.zoglin.death hostile @s ~ ~ ~ 1 0.3 1

scoreboard players set numKeys seasKeys 0
advancement grant @a[tag=LavaParty] only halloween-basics:defeat_lava_boss
bossbar remove minecraft:lava_captain

scoreboard players set currentSeasStage WrpdStge 0
# execute at @e[type=minecraft:armor_stand,tag=exit_door] run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:chain[axis=z]