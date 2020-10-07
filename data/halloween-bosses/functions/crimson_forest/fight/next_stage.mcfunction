scoreboard players add cmsnCurrStage cmsnBssStg 1

effect give @e[tag=cmsnBoss,limit=1] resistance 20 50 false
execute at @e[tag=cmsnBoss,limit=1] run particle minecraft:dust 1.0 0.40 0 1.0 ~ ~1.5 ~ 0.3 1.5 0.3 1 750
tp @e[tag=cmsnBoss,limit=1] @e[type=minecraft:armor_stand,tag=cmsn_boss_spawn,limit=1] 
effect give @e[tag=cmsnBoss,limit=1] weakness 20 50 false
effect give @e[tag=cmsnBoss,limit=1] slowness 20 255 false
tellraw @a[tag=CrimsonParty] [{"text":"<♛ Piglin King ♛> ","color":"dark_red","bold":false},{"text":"Arise my minions, destroy these intruders!","color":"gold","bold":false}]

effect give @a[tag=CrimsonParty] blindness 3 0 true

execute as @a[tag=CrimsonParty] at @s run playsound minecraft:entity.zombie_villager.cure hostile @s ~ ~ ~ 1 0.7


execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 1.. run function halloween-basics:spawn/tier1/piglin_warrior
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 1.. run function halloween-basics:spawn/tier1/piglin_warrior

# execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 2 run function halloween-basics:spawn/tier1/piglin_warrior
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 2 run function halloween-basics:spawn/tier2/piglin_brute

execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 3.. run function halloween-basics:spawn/tier2/piglin_brute
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 3.. run function halloween-basics:spawn/tier3/piglin_boss