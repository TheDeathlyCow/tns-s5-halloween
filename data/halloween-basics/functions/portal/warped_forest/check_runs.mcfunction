scoreboard players add @s nmWrpdRns 0
execute if score @s nmWrpdRns < maxWarpedRuns nmWrpdRns run execute if score numWarpedPlayers wrpdPlyrsCnt matches ..3 run function halloween-basics:portal/warped_forest/teleport_to_nether
execute if score @s nmWrpdRns >= maxWarpedRuns nmWrpdRns run function halloween-basics:portal/warped_forest/reject_runs
execute if score numWarpedPlayers wrpdPlyrsCnt matches 4.. run function halloween-basics:portal/warped_forest/reject_players