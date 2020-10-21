
execute as @e[tag=bsltBoss,type=blaze] at @s store result score bsltBossHP bsltHP run data get entity @s Health
execute as @e[tag=bsltBoss] at @s store result bossbar bslt_heart value run scoreboard players get bsltBossHP bsltHP
execute if score currentBasaltStage WrpdStge matches 1 run execute if score bsltBossHP bsltHP matches ..500 at @e[tag=bslt_boss_spawn] as @a[tag=BasaltParty] run function halloween-bosses:basalt_caves/fight/next_stage
execute if score currentBasaltStage WrpdStge matches 2 run execute if score bsltBossHP bsltHP matches ..400 at @e[tag=bslt_boss_spawn] as @a[tag=BasaltParty] run function halloween-bosses:basalt_caves/fight/next_stage
execute if score currentBasaltStage WrpdStge matches 3 run execute if score bsltBossHP bsltHP matches ..300 at @e[tag=bslt_boss_spawn] as @a[tag=BasaltParty] run function halloween-bosses:basalt_caves/fight/next_stage
execute if score currentBasaltStage WrpdStge matches 4 run execute if score bsltBossHP bsltHP matches ..200 at @e[tag=bslt_boss_spawn] as @a[tag=BasaltParty] run function halloween-bosses:basalt_caves/fight/next_stage
execute if entity @a[tag=BasaltParty] run execute unless entity @e[tag=bsltBoss] as @e[tag=bslt_boss_spawn] at @s run function halloween-bosses:basalt_caves/fight/defeat_boss