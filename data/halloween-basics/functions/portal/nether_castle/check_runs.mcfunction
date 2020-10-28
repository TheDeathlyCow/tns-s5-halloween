# say check runs!
scoreboard players add @s nmSvlyRns 0
execute if score @s nmSvlyRns >= maxValleyRuns nmSvlyRns run function halloween-basics:portal/nether_castle/reject_runs
execute if score numValleyPlayers svlyPlyrsCnt matches 5.. run function halloween-basics:portal/nether_castle/reject_players
execute if entity @a[tag=svlyInChallenge] run function halloween-basics:portal/nether_castle/reject_challenge
execute if score @s nmSvlyRns < maxValleyRuns nmSvlyRns unless entity @a[tag=svlyInChallenge] run execute if score numValleyPlayers svlyPlyrsCnt matches ..4 run function halloween-basics:portal/nether_castle/teleport_to_nether
