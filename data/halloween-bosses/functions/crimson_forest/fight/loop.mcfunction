# put this in a command block
# execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/loop

# say loop 



execute as @e[tag=cmsnBoss,limit=1] store result bossbar minecraft:piglin_king value run data get entity @s Health

execute as @e[tag=cmsnBoss,limit=1] store result score kingHealth cmsnHP run data get entity @s Health
execute if score kingHealth cmsnHP matches ..100 run execute if score cmsnCurrStage cmsnBssStg matches 0 run function halloween-bosses:crimson_forest/fight/next_stage
execute if score kingHealth cmsnHP matches ..50 run execute if score cmsnCurrStage cmsnBssStg matches 1 run function halloween-bosses:crimson_forest/fight/next_stage
# execute if score kingHealth cmsnHP matches ..87 run execute if score cmsnCurrStage cmsnBssStg matches 2 run function halloween-bosses:crimson_forest/fight/next_stage
# execute if score kingHealth cmsnHP matches ..50 run execute if score cmsnCurrStage cmsnBssStg matches 3 run function halloween-bosses:crimson_forest/fight/next_stage

execute if entity @a[tag=CrimsonParty] run execute as @e[type=minecraft:armor_stand,tag=crimson_dungeon_marker] at @s unless entity @e[tag=cmsnBoss] run execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/defeat_boss
# execute unless entity @e[tag=cmsnBoss] as @e[type=minecraft:armor_stand,tag=crimson_dungeon_marker] at @s run execute if score numTokens tknsNdd matches 2 run function halloween-basics:test