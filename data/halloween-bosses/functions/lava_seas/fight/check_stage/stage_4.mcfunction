
execute as @e[tag=seasBoss,type=wither_skeleton] at @s store result score captainHealth seasHP run data get entity @s Health
execute as @e[tag=seasBoss] at @s store result bossbar lava_captain value run scoreboard players get captainHealth seasHP
# execute if score captainHealth seasHP matches ..150 as @e[tag=seas_boss_stage3_spawn] at @s run function halloween-bosses:lava_seas/fight/next_stage/stage_3

execute if entity @a[tag=LavaParty] run execute unless entity @e[tag=seasBoss] run function halloween-bosses:lava_seas/fight/defeat_boss

execute at @e[tag=seas_boss_stage4_spawn] run teleport @a[tag=LavaParty,distance=15..] ~ ~ ~
execute at @e[tag=seas_boss_stage4_spawn] run teleport @e[tag=seasBoss,distance=15..] ~ ~ ~