
tellraw @a ["",{"text":"<☠ Captain Jack Arrow ☠> ","bold":false,"color":"dark_red"},{"text":"Arrrrghhh! Who goes there?!!","bold":false,"color":"white"}]

summon wither_skeleton ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"halloween-bosses:entities/captain",PersistenceRequired:1b,Health:300f,IsImmuneToZombification:1b,Tags:["seasBoss","halloweenBoss"],CustomName:'{"text":"☠ Captain Jack Arrow ☠","color":"dark_red","bold":true}',HandItems:[{id:"minecraft:golden_sword",Count:1b,tag:{display:{Name:'{"text":"Piglin King\'s Sword","color":"#E3690B","bold":true,"italic":false}',Lore:['{"text":"Blade of the Piglin King","color":"gold","italic":true}']},Unbreakable:1b,Enchantments:[{id:"minecraft:sharpness",lvl:5s},{id:"minecraft:fire_aspect",lvl:5s},{id:"minecraft:sweeping",lvl:3s},{id:"minecraft:unbreaking",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:6,Operation:0,UUID:[I;-627156691,2117095372,-1208154551,1378262181],Slot:"mainhand"},{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-0.8,Operation:0,UUID:[I;446963467,-1200273837,-1969416019,-1794936489],Slot:"mainhand"}]}},{}],HandDropChances:[-327.670F,0.085F],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:'{"text":"Piglin King\'s Boots","color":"dark_red","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:feather_falling",lvl:5s},{id:"minecraft:projectile_protection",lvl:5s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;741361601,-1386265201,-1744455355,-2100251964],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;1138098240,-397522270,-1309259934,1477595232],Slot:"feet"}]}},{id:"minecraft:chainmail_leggings",Count:1b,tag:{display:{Name:'{"text":"Piglin King\'s Leggings","color":"dark_red","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:4s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:unbreaking",lvl:3s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:4,Operation:0,UUID:[I;-2019611958,137513162,-1833653044,856832486],Slot:"legs"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-291047401,1379680527,-1960948276,-840485781],Slot:"legs"}]}},{id:"minecraft:netherite_chestplate",Count:1b,tag:{display:{Name:'{"text":"Piglin King\'s Cuirass","color":"dark_red","italic":false}'},Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:projectile_protection",lvl:4s},{id:"minecraft:unbreaking",lvl:3s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.luck",Name:"generic.luck",Amount:1,Operation:0,UUID:[I;-438629343,-1304671586,-1295659472,-1979504840],Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;1757264076,1351109929,-1292538560,-1851648516],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-1631017349,851331258,-1155054405,-391896092],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1513820963,1261978299,-1959260084,-1949619116],Slot:"chest"}]}},{id:"minecraft:golden_helmet",Count:1b,tag:{display:{Name:'{"text":"Piglin Crown","color":"gold","italic":false}',Lore:['{"text":"Crown of the fallen Piglin King","color":"red","italic":true}']},Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:respiration",lvl:3s},{id:"minecraft:aqua_affinity",lvl:1s},{id:"minecraft:unbreaking",lvl:10s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-192358243,-923253869,-1334968669,546353919],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1909290326,1593329646,-1951998185,-803197252],Slot:"head"}]}}],ArmorDropChances:[2.000F,2.000F,2.000F,-327.670F],ActiveEffects:[{Id:10b,Amplifier:0b,Duration:999999,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:999999}],Attributes:[{Name:generic.max_health,Base:300},{Name:generic.follow_range,Base:25},{Name:generic.knockback_resistance,Base:10},{Name:generic.armor,Base:0},{Name:generic.armor_toughness,Base:0},{Name:generic.attack_knockback,Base:0}]}

function halloween-bosses:lava_seas/fight/next_stage/stage_1