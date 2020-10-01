scoreboard players add cmsnCurrStage cmsnBssStg 1

effect give @e[tag=cmsnBoss,limit=1] resistance 15 50 false
tellraw @a[tag=CrimsonParty] [{"text":"<♛ Piglin King ♛> ","color":"dark_red","bold":false},{"text":"Arise my minions, destroy these intruders!","color":"gold","bold":false}]

effect give @a[tag=CrimsonParty] blindness 5 0 true

execute as @a[tag=CrimsonParty] at @s run playsound minecraft:entity.zombie_villager.converted hostile @s ~ ~ ~ 1 0.7

execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run function halloween-basics:spawn/tier1/piglin_warrior
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run function halloween-basics:spawn/tier1/piglin_warrior
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run function halloween-basics:spawn/tier1/piglin_warrior
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run function halloween-basics:spawn/tier2/piglin_brute
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run function halloween-basics:spawn/tier2/piglin_brute

execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 3.. run function halloween-basics:spawn/tier3/piglin_boss
execute as @a[tag=CrimsonParty] at @e[type=minecraft:armor_stand,tag=cmsn_minion] run execute if score cmsnCurrStage cmsnBssStg matches 3.. run function halloween-basics:spawn/tier3/piglin_boss