execute if score isFighting svlyCounter matches 1 run scoreboard players remove timeUntilInvul svlyCounter 1
execute if score isFighting svlyCounter matches 1 if score timeUntilInvul svlyCounter matches 0 run function halloween-bosses:nether_castle/boss/stage1/make_invulnerable

execute store result score svlyBossHealth svlyCounter run data get entity @e[type=minecraft:wither,tag=svlyBoss,limit=1] Health

execute if score isFighting svlyCounter matches 0 run function halloween-bosses:nether_castle/boss/stage1/check_fire

execute if entity @a[tag=SvlyBoss] unless entity @e[type=minecraft:wither,tag=svlyBoss] run function halloween-bosses:nether_castle/boss/defeat_boss