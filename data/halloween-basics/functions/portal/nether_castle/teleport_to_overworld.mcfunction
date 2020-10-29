# tag @a[dz=3,dy=5] add warpd_tp_ovwld
# tag @a[dz=-3,dy=5] add warpd_tp_ovwld

# say tp to overworld
tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_red"},{"text":" has left the Lost Valley of Souls!","color":"red"}]

# clear dungeon-specific items
clear @s minecraft:wither_skeleton_skull{CanPlaceOn:["minecraft:end_rod"]}
# clear @s minecraft:netherite_pickaxe{Enchantments:[{id:"minecraft:unbreaking",lvl:5s}],CanDestroy:["minecraft:diamond_block","minecraft:iron_block","minecraft:quartz_block","minecraft:coal_block","minecraft:lapis_block","minecraft:ancient_debris","minecraft:gold_block","minecraft:emerald_block","minecraft:redstone_block"],display:{Name:'{"italic":false,"color":"dark_purple","text":"Ancient Pickaxe"}',Lore:['{"italic":true,"color":"light_purple","text":"A pickaxe forged in the fires of"}','{"italic":true,"color":"light_purple","text":"Red Mountain"}']}}
execute if entity @s[advancements={halloween-basics:defeat_castle=false}] run clear @s minecraft:blaze_powder{display:{Name:'{"italic":false,"color":"gold","text":"Magma Essence"}'},magmaEssence:1b,Enchantments:[{id:'minecraft:fire_aspect',lvl:3s}]}

# clear mineral blocks
scoreboard players remove numValleyPlayers svlyPlyrsCnt 1   
execute if score numValleyPlayers svlyPlyrsCnt matches ..0 run function halloween-basics:_reset/nether_castle
gamemode survival @s
tag @s remove ValleyParty

execute in minecraft:overworld run tp @s -50 70 -50
execute in minecraft:overworld run spawnpoint @s -50 70 -50
tag @s remove svlyInChallenge
tag @s remove SvlyWrpd
tag @s remove svlyWrpdPerfect
tag @s remove SvlyCmsn
tag @s remove svlyCmsnPerfect
tag @s remove SvlySeas
tag @s remove svlySeasPerfect
tag @s remove SvlyBslt
tag @s remove svlyBsltPerfect   

