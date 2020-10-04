
function halloween-basics:portal/portal_loop

function halloween-basics:traps/crimson_forest/fake_floor

execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/loop

# ===== start checkers =====
execute if score numCrimsonPlayers cmsnPlyrsCnt matches 1.. run execute if score numTokens tknsNdd matches ..1 run function halloween-bosses:crimson_forest/start_checker

# ===== timer stuff =====
scoreboard players remove scareCountDown tickTimer 1
execute if score scareCountDown tickTimer matches 0 run function halloween-basics:traps/crimson_forest/clear_scare

scoreboard players remove cmsnThirty tickTimer 1
execute if score cmsnThirty tickTimer matches 0 run function halloween-bosses:crimson_forest/countdown/five_seconds

scoreboard players remove cmsnFive tickTimer 1
execute if score cmsnFive tickTimer matches 0 run function halloween-bosses:crimson_forest/countdown/four_seconds

scoreboard players remove cmsnFour tickTimer 1
execute if score cmsnFour tickTimer matches 0 run function halloween-bosses:crimson_forest/countdown/three_seconds

scoreboard players remove cmsnThree tickTimer 1
execute if score cmsnThree tickTimer matches 0 run function halloween-bosses:crimson_forest/countdown/two_seconds

scoreboard players remove cmsnTwo tickTimer 1
execute if score cmsnTwo tickTimer matches 0 run function halloween-bosses:crimson_forest/countdown/one_seconds

scoreboard players remove cmsnOne tickTimer 1
execute if score cmsnOne tickTimer matches 0 run function halloween-bosses:crimson_forest/exit


# execute as @a[nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet"}]}] run say hi
execute as @a[advancements={halloween-basics:wear_crown=false},nbt={Inventory:[{Slot:103b,id:"minecraft:golden_helmet",tag:{Enchantments:[{id:"minecraft:protection",lvl:5s},{id:"minecraft:fire_protection",lvl:5s},{id:"minecraft:thorns",lvl:5s},{id:"minecraft:unbreaking",lvl:10s},{id:"minecraft:mending",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-48898821,1705332631,-1884615471,-194890769],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-194809888,-1377417900,-1517086094,-1079442042],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-994585169,453919889,-2075650524,1573234780],Slot:"head"}],display:{Lore:['{"italic":true,"color":"gold","text":"Crown of the Piglin King"}'],Name:'{"bold":true,"italic":false,"color":"#E3690B","text":"Piglin Crown"}'}}}]}] run advancement grant @s only halloween-basics:wear_crown