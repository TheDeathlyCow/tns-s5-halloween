execute as @e[tag=svly_fire_unlit] at @s if block ~ ~ ~ minecraft:soul_campfire[lit=true] run function halloween-bosses:nether_castle/boss/stage1/light_this_fire

execute if score svlyFiresLit svlyCounter matches 4.. run function halloween-bosses:nether_castle/boss/stage1/resume