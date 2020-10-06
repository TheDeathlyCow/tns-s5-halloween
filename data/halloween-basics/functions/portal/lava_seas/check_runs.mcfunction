
scoreboard players add @s nmSeasRns 0
execute if score @s nmSeasRns < maxLavaRuns nmSeasRns run execute if score numLavaPlayers seasPlyrsCnt matches ..3 run function halloween-basics:portal/lava_seas/teleport_to_nether
execute if score @s nmSeasRns >= maxLavaRuns nmSeasRns run function halloween-basics:portal/lava_seas/reject_runs
execute if score numLavaPlayers seasPlyrsCnt matches 4.. run function halloween-basics:portal/lava_seas/reject_players