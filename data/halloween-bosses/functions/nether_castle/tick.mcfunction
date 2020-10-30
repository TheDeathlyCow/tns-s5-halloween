execute if entity @a[tag=SvlyWrpd] run function halloween-bosses:nether_castle/wrpd/tick
execute if entity @a[tag=SvlyCmsn] run function halloween-bosses:nether_castle/cmsn/tick
execute if entity @a[tag=SvlyBoss] run function halloween-bosses:nether_castle/boss/tick
execute if entity @a[tag=SvlySeas] run function halloween-bosses:nether_castle/seas/tick
execute if entity @a[tag=SvlyBslt] run function halloween-bosses:nether_castle/bslt/tick


execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}

# check wither skeleton skulls
# execute if score currValleyBossStage svlyCounter matches 0 unless entity @e[tag=svly_no_skull] run function halloween-bosses:nether_castle/boss/start_fight
execute as @e[tag=svly_no_skull] at @s if block ~ ~ ~ minecraft:wither_skeleton_skull run function halloween-bosses:nether_castle/place_skull
# say ?
execute if entity @a[tag=SvlyDone] run scoreboard players remove timeUntilCredits svlyCounter 1
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 1 run function halloween-bosses:nether_castle/boss/credits/thedeathlycow
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 2 run function halloween-bosses:nether_castle/boss/credits/herb
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 3 run function halloween-bosses:nether_castle/boss/credits/laurae
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 4 run function halloween-bosses:nether_castle/boss/credits/caster
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 5 run function halloween-bosses:nether_castle/boss/credits/jp
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 6 run function halloween-bosses:nether_castle/boss/credits/vultaz
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 7 run function halloween-bosses:nether_castle/boss/credits/scorr
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 8 run function halloween-bosses:nether_castle/boss/credits/sharpies
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 9 run function halloween-bosses:nether_castle/boss/credits/players
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 10 run function halloween-bosses:nether_castle/boss/credits/github
execute if entity @a[tag=SvlyDone] if score timeUntilCredits svlyCounter matches ..0 if score creditsTitle svlyCounter matches 11 run function halloween-bosses:nether_castle/boss/credits/finish_credits

execute as @a[tag=ValleyParty,scores={svlyCredits=1}] at @e[tag=hlwn_credits_room,limit=1] run function halloween-bosses:nether_castle/boss/credits/begin_credits
scoreboard players set @a[scores={svlyCredits=1}] svlyCredits 0

execute as @a[tag=ValleyParty,scores={svlyExit=1}] run function halloween-bosses:nether_castle/boss/credits/finish_credits
scoreboard players set @a[scores={svlyExit=1}] svlyExit 0