# tag @a[dz=3,dy=5] add warpd_tp_ovwld
# tag @a[dz=-3,dy=5] add warpd_tp_ovwld

tag @s add cmsn_tp_ovwld

# clear dungeon-specific items
clear @s minecraft:compass{display:{Name:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'},direction_compass:1b,LodestoneDimension:"minecraft:the_nether",LodestoneTracked:1b}
clear @s minecraft:clock{display:{Name:'{"text":"Time","color":"gold","bold":true,"italic":false}'},time_clock:1b}

execute if entity @s[advancements={halloween-basics:defeat_crimson_boss=false}] run clear @s minecraft:gold_ingot{display:{Name:'{"italic":false,"color":"gold","text":"Piglin Gold"}'},Enchantments:[{id:"minecraft:fire_aspect",lvl:5s}]}

gamemode survival @s
tag @s remove CrimsonParty
scoreboard players remove numCrimsonPlayers cmsnPlyrsCnt 1
execute if score numCrimsonPlayers cmsnPlyrsCnt matches ..0 run function halloween-basics:_reset/crimson_dungeon

execute in minecraft:overworld run tp @s 50 70 50
execute in minecraft:overworld run spawnpoint @s 50 70 50

tag @a[tag=cmsn_tp_ovwld] remove cmsn_tp_ovwld