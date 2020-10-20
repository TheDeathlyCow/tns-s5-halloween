bossbar remove minecraft:bslt_heart
gamerule keepInventory false
scoreboard players set currentBasaltStage WrpdStge -1

execute as @e[type=minecraft:armor_stand,tag=basalt_dungeon_marker] at @s run function halloween-basics:_reset/chests
execute as @e[type=minecraft:armor_stand,tag=basalt_dungeon_marker] at @s run function halloween-basics:_reset/mobs
execute as @e[type=minecraft:armor_stand,tag=basalt_dungeon_marker] at @s run function halloween-basics:_reset/bslt_ores

execute as @e[type=minecraft:armor_stand,tag=bslt_miner] run data merge entity @s {HandItems:[{id:"minecraft:netherite_pickaxe",Count:1b,tag:{Enchantments:[{id:"minecraft:unbreaking",lvl:5s}],CanDestroy:["minecraft:diamond_block","minecraft:iron_block","minecraft:quartz_block","minecraft:coal_block","minecraft:lapis_block","minecraft:ancient_debris","minecraft:gold_block","minecraft:emerald_block","minecraft:redstone_block"],display:{Name:'{"italic":false,"color":"dark_purple","text":"Ancient Pickaxe"}',Lore:['{"italic":true,"color":"light_purple","text":"A pickaxe forged in the fires of"}','{"italic":true,"color":"light_purple","text":"Red Mountain"}']}}}]}
# execute as @e[type=minecraft:armor_stand,tag=bslt_miner] run data merge entity @s {HandItems:[{id:"minecraft:netherite_pickaxe",Count:1b,tag:{CanDestroy:["minecraft:coal_block","minecraft:diamond_block","minecraft:emerald_block","minecraft:gold_block","minecraft:iron_block","minecraft:quartz_block","minecraft:redstone_block","minecraft:lapis_block","minecraft:ancient_debris"],display:{Name:'{"text":"Ancient Pickaxe","color":"dark_purple","italic":false}',Lore:['{"text":"A pickaxe forged in the fires of","color":"light_purple","italic":true}','{"text":"Red Mountain","color":"light_purple","italic":true}']},Enchantments:[{id:"minecraft:unbreaking",lvl:5s}]}},{}]}

tellraw @a ["",{"text":"The Basalt Caverns were reset!","color":"red"}] 