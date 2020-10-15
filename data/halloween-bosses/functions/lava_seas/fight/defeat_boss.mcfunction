# say dead
tellraw @a[tag=LavaParty] {"text":"Captain Jack Arrow has been defeated!","color":"gold","bold":true}
tellraw @a[tag=LavaParty] {"text":"When you are ready, press the button in the middle of the top platform to leave.","color":"gray","italic":true}

execute as @a[tag=LavaParty] at @s run playsound minecraft:entity.zoglin.death hostile @s ~ ~ ~ 1 0.3 1

scoreboard players set numKeys seasKeys 0
advancement grant @a[tag=LavaParty] only halloween-basics:defeat_lava_boss
bossbar remove minecraft:lava_captain

tag @a[tag=seasFightingStage4] remove seasFightingStage4
scoreboard players set currentSeasStage WrpdStge 0

execute at @e[tag=seas_boss_stage4_spawn] run setblock ~ ~ ~ minecraft:stone_button[face=floor]
execute at @e[tag=seas_boss_stage4_spawn] run setblock ~ ~-2 ~ command_block{Command:"function halloween-bosses:lava_seas/exit"} replace
# execute at @e[type=minecraft:armor_stand,tag=exit_door] run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:chain[axis=z]