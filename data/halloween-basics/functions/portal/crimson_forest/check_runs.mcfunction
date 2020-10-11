scoreboard players add @s nmCmsnRns 0
execute if score @s nmCmsnRns >= maxCrimsonRuns nmCmsnRns run function halloween-basics:portal/crimson_forest/reject_runs
execute if score numCrimsonPlayers cmsnPlyrsCnt matches 3.. run function halloween-basics:portal/crimson_forest/reject_players
execute if score @s nmCmsnRns < maxCrimsonRuns nmCmsnRns run execute if score numCrimsonPlayers cmsnPlyrsCnt matches ..2 run function halloween-basics:portal/crimson_forest/teleport_to_nether