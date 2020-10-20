# say dead
tellraw @a[tag=BasaltParty] {"text":"The Heart of the Volcano has been defeated!","color":"gold","bold":true}
tellraw @a[tag=BasaltParty] {"text":"When you are ready, press button to leave.","color":"gray","italic":true}

execute as @a[tag=BasaltParty] at @s run playsound minecraft:entity.blaze.death master @s ~ ~ ~ 1 0.3

scoreboard players set currentBasaltStage WrpdStge -1
# scoreboard players set numKeys seasKeys 0
advancement grant @a[tag=BasaltParty] only halloween-basics:defeat_basalt_boss
bossbar remove minecraft:bslt_heart

# execute at @e[tag=seas_boss_stage4_spawn] run setblock ~ ~ ~ minecraft:stone_button[face=floor]
# execute at @e[tag=seas_boss_stage4_spawn] run setblock ~ ~-2 ~ command_block{Command:"function halloween-bosses:lava_seas/exit"} replace
# execute at @e[type=minecraft:armor_stand,tag=exit_door] run fill ~ ~ ~ ~ ~2 ~ minecraft:air replace minecraft:chain[axis=z]