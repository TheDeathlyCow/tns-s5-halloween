# tag @a[dz=3,dy=5] add warpd_tp_ovwld
# tag @a[dz=-3,dy=5] add warpd_tp_ovwld


# clear dungeon-specific items
clear @s minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:unbreaking",lvl:5s}],CanDestroy:["minecraft:diamond_block","minecraft:iron_block","minecraft:quartz_block","minecraft:coal_block","minecraft:lapis_block","minecraft:ancient_debris","minecraft:gold_block","minecraft:emerald_block","minecraft:redstone_block"],display:{Name:'{"italic":false,"color":"dark_purple","text":"Ancient Pickaxe"}',Lore:['{"italic":true,"color":"light_purple","text":"A pickaxe forged in the fires of"}','{"italic":true,"color":"light_purple","text":"Red Mountain"}']}}
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:blaze_powder{display:{Name:'{"italic":false,"color":"gold","text":"Magma Essence"}'},magmaEssence:1b,Enchantments:[{id:'minecraft:fire_aspect',lvl:3s}]}

# clear mineral blocks
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:coal_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:iron_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:diamond_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:emerald_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:gold_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:lapis_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:quartz_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:redstone_block
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:ancient_debris

execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:iron_ingot
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:gold_ingot
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:diamond
execute if entity @s[advancements={halloween-basics:defeat_basalt_boss=false}] run clear @s minecraft:emerald

gamemode survival @s
tag @s remove BasaltParty
scoreboard players remove numBasaltPlayers bsltPlyrsCnt 1
execute if score numBasaltPlayers bsltPlyrsCnt matches ..0 run function halloween-basics:_reset/basalt_dungeon

execute in minecraft:overworld run tp @s -1328 109 -721
execute in minecraft:overworld run spawnpoint @s -1328 109 -721
