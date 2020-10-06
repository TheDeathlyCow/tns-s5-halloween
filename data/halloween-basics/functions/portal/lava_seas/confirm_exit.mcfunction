

execute if entity @s[advancements={halloween-basics:defeat_lava_boss=true}] run tellraw @s [{"text":"The boss has been defeated, so you cannot exit through this portal!","color":"red"}]
execute if entity @s[advancements={halloween-basics:defeat_lava_boss=true}] run tp @s ~2.5 ~-1 ~2.5

execute if score numLavaPlayers seasPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_lava_boss=true}] run tp @s ~2.5 ~-1 ~2.5
execute if score numLavaPlayers seasPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_lava_boss=true}] run tellraw @s [{"text":"You are the last player in the dungeon party! If you leave now, the dungeon will be reset and all items in chests will be deleted. Click ","color":"red"},{"text":"here","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Overworld."}]},"clickEvent":{"action":"run_command","value":"/trigger rtrnToOvwldSeas set 1"}},{"text":" if you are okay with that and want to leave.","color":"red"}]
execute if score numLavaPlayers seasPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_lava_boss=true}] run scoreboard players enable @s rtrnToOvwldSeas

execute unless score numLavaPlayers seasPlyrsCnt matches ..1 run execute unless entity @s[advancements={halloween-basics:defeat_lava_boss=true}] run function halloween-basics:portal/lava_seas/teleport_to_overworld