
scoreboard players add @s nmBsltRns 0
execute if score @s nmBsltRns >= maxBasaltRuns nmBsltRns run function halloween-basics:portal/basalt_caves/reject_runs
execute if score numBasaltPlayers bsltPlyrsCnt matches 4.. run function halloween-basics:portal/basalt_caves/reject_players
execute if score @s nmBsltRns < maxBasaltRuns nmBsltRns run execute if score numBasaltPlayers bsltPlyrsCnt matches ..3 run function halloween-basics:portal/basalt_caves/teleport_to_nether
