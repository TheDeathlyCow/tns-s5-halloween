# teleport @e[tag=seasBoss] ~ ~100 ~
teleport @e[tag=seasBoss] ~ ~ ~
execute if entity @s[tag=seas_boss_stage4_spawn] run data merge entity @e[tag=seasBoss,limit=1] {HandItems:[{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"Captain\'s Sabre","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"Personal Sabre of Captain Jack Arrow"}']},Enchantments:[{id:"minecraft:sharpness",lvl:4s},{id:"minecraft:looting",lvl:4s},{id:"minecraft:sweeping",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:8,Operation:0,UUID:[I;520365743,2120696250,-1647392530,-1236461993],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.6,Operation:0,UUID:[I;1003228828,-509590371,-1265524294,-1364887103],Slot:"mainhand"}]}},{}],HandDropChances:[2.000F,0.085F]}
execute if entity @s[tag=seas_stage4_archer] run data merge entity @e[tag=seasBoss,limit=1] {HandItems:[{id:"minecraft:bow",Count:1b,tag:{display:{Name:'{"text":"Captain\'s Bow","color":"dark_gray","bold":true,"italic":false}',Lore:['{"text":"Personal Bow of Captain Jack Arrow"}']},Enchantments:[{id:"minecraft:power",lvl:5s}]}},{}]}

execute as @e[tag=seas_stage4,sort=furthest,limit=4] at @s run function halloween-bosses:lava_seas/pick_position/summon_mimmick
execute if score numLavaPlayers seasPlyrsCnt matches 2.. run effect give @e[type=minecraft:wither_skeleton,tag=seasMimmick] minecraft:resistance 999999 0
execute if score numLavaPlayers seasPlyrsCnt matches 3.. run effect give @e[type=minecraft:wither_skeleton,tag=seasMimmick] minecraft:regeneration 999999 1

scoreboard players set seasStage4Timer tickTimer 600