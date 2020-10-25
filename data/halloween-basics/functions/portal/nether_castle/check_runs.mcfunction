
scoreboard players add @s nmSvlyRns 0
execute if score @s nmSvlyRns >= maxValleyRuns nmSvlyRns run function halloween-basics:portal/nether_castle/reject_runs
execute if score numValleyPlayers svlyPlyrsCnt matches 4.. run function halloween-basics:portal/nether_castle/reject_players
execute if score @s nmSvlyRns < maxSvlyRuns nmSvlyRns run execute if score numValleyPlayers svlyPlyrsCnt matches ..3 run function halloween-basics:portal/nether_castle/teleport_to_nether
