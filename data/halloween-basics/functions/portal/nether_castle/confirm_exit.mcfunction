

execute if entity @s[advancements={halloween-basics:defeat_castle=true}] run tellraw @s [{"text":"The boss has been defeated, so you cannot exit through this portal!","color":"red"}]
execute if entity @s[advancements={halloween-basics:defeat_castle=true}] run tp @s ~2.5 ~-1 ~2.5

execute if score numValleyPlayers svlyPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_castle=true}] run tp @s ~2.5 ~-1 ~2.5
execute if score numValleyPlayers svlyPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_castle=true}] run tellraw @s [{"text":"You are the last player in the dungeon party! If you leave now, the dungeon will be reset and all items in chests will be deleted. Click ","color":"aqua"},{"text":"here","color":"dark_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Overworld."}]},"clickEvent":{"action":"run_command","value":"/trigger rtrnToOvwldSvly set 1"}},{"text":" if you are okay with that and want to leave.","color":"aqua"}]
execute if score numValleyPlayers svlyPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_castle=true}] run scoreboard players enable @s rtrnToOvwldSvly

execute unless score numValleyPlayers svlyPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_castle=true}] run function halloween-basics:portal/nether_castle/teleport_to_overworld