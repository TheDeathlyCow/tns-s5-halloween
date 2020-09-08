
gamerule keepInventory true
gamerule showDeathMessages false
kill @s
execute at @s 
tellraw @a ["",{"selector":"@s"},{"text":" drowned in the "},{"text":"River of Lost Souls","color":"aqua","bold":"true"},{"text":"."}]
gamerule showDeathMessages true
# gamerule keepInventory false

# apparently delaying the resetting of keepInventory by 1 tick lets players keep their items
schedule function halloween-basics:portal/reset_gamerule 1t 