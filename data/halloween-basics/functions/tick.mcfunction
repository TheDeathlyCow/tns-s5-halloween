
function halloween-basics:portal/portal_loop

function halloween-basics:traps/crimson_forest/fake_floor

execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/loop
execute if score currentSeasStage WrpdStge matches 1.. run function halloween-bosses:lava_seas/fight/loop

execute if entity @a[tag=BasaltParty] at @e[type=minecraft:armor_stand,tag=bslt_secret] as @a[tag=BasaltParty,distance=..4] run advancement grant @s only halloween-basics:basalt_secret

# ===== start checkers =====
execute if score numCrimsonPlayers cmsnPlyrsCnt matches 1.. run execute if score numTokens tknsNdd matches ..1 run function halloween-bosses:crimson_forest/start_checker

execute if score numLavaPlayers seasPlyrsCnt matches 1.. run execute if score numKeys seasKeys matches ..2 run function halloween-bosses:lava_seas/key_checker

execute if score currentBasaltStage WrpdStge matches 0 run execute if entity @a[tag=BasaltParty] run function halloween-bosses:basalt_caves/start_checker
execute if score currentBasaltStage WrpdStge matches 1.. run execute if entity @a[tag=BasaltParty] run function halloween-bosses:basalt_caves/fight/check_health

# ==== auto markers ====
execute if score isCannonAuto chestAutoOn matches 1 run function halloween-basics:mark/auto/cannons
execute if score isChestAuto chestAutoOn matches 1 run function halloween-basics:mark/auto/chest
execute if score isOreAuto chestAutoOn matches 1 run function halloween-basics:mark/auto/ore_vein


# ===== timer stuff =====
scoreboard players remove scareCountDown tickTimer 1
execute if score scareCountDown tickTimer matches 0 run function halloween-basics:traps/crimson_forest/clear_scare

execute at @e[tag=its_a_lie] as @p[tag=CrimsonParty,distance=..7] if block ~ ~ ~ cake[bites=1] run function halloween-basics:traps/crimson_forest/cake_trap


# execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run say hi
# execute as @a[advancements={halloween-basics:wear_crown=false},nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:thorns",lvl:5s},{id:"minecraft:unbreaking",lvl:10s},{id:"minecraft:mending",lvl:1s}],display:{Name:'{"bold":true,"italic":false,"color":"#E3690B","text":"Piglin Crown"}',Lore:['{"italic":true,"color":"gold","text":"Crown of the Piglin King"}']},AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-48898821,1705332631,-1884615471,-194890769],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-194809888,-1377417900,-1517086094,-1079442042],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-994585169,453919889,-2075650524,1573234780],Slot:"head"}]}}]}] run advancement grant @s only halloween-basics:wear_crown