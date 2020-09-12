
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 run tp @s ~3 ~ ~
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 run tellraw @s [{"text":"You are the last player in the dungeon party! If you leave now, the dungeon will be reset and all items in chests will be deleted. Click ","color":"aqua"},{"text":"here","color":"dark_purple","underlined":true,"hoverEvent":{"action":"show_text","contents":[{"text":"Teleport to Overworld."}]},"clickEvent":{"action":"run_command","value":"/trigger rtrnToOvwldWrpd set 1"}},{"text":" if you are ok with that and want to leave.","color":"aqua"}]
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 run scoreboard players enable @s rtrnToOvwldWrpd

execute unless score numWarpedPlayers wrpdPlyrsCnt matches ..1 run function halloween-basics:portal/warped_forest/teleport_to_overworld