execute if entity @a[tag=SvlyWrpd] run function halloween-bosses:nether_castle/wrpd/tick
execute if entity @a[tag=SvlyCmsn] run function halloween-bosses:nether_castle/cmsn/tick
execute if entity @a[tag=SvlyBoss] run function halloween-bosses:nether_castle/boss/tick
execute if entity @a[tag=SvlySeas] run function halloween-bosses:nether_castle/seas/tick
execute if entity @a[tag=SvlyBslt] run function halloween-bosses:nether_castle/bslt/tick


execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}

# check wither skeleton skulls
# execute if score currValleyBossStage svlyCounter matches 0 unless entity @e[tag=svly_no_skull] run function halloween-bosses:nether_castle/boss/start_fight
execute as @e[tag=svly_no_skull] at @s if block ~ ~ ~ minecraft:wither_skeleton_skull run function halloween-bosses:nether_castle/place_skull