# tag @a[dz=3,dy=5] add warpd_tp_ovwld
# tag @a[dz=-3,dy=5] add warpd_tp_ovwld

tag @s add seas_tp_ovwld

# clear dungeon-specific items
clear @s minecraft:tripwire_hook{display:{Name:'{"text":"Key to Captain\'s Quarters","italic":false}'},cptKey:1b}

execute if entity @s[advancements={halloween-basics:defeat_lava_boss=false}] run clear @s minecraft:gold_nugget{display:{Name:'{"italic":false,"color":"gold","text":"Booty"}'},Enchantments:[{id:"minecraft:looting",lvl:10s}]}

gamemode survival @s
tag @s remove LavaParty
scoreboard players remove numLavaPlayers seasPlyrsCnt 1
execute if score numLavaPlayers seasPlyrsCnt matches ..0 run function halloween-basics:_reset/lava_seas

execute in minecraft:overworld run tp @s -50 70 -50
execute in minecraft:overworld run spawnpoint @s -50 70 -50

tag @a[tag=seas_tp_ovwld] remove seas_tp_ovwld