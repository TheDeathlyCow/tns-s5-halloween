
function halloween-basics:portal/warped_forest/check_teleport_to_overworld
function halloween-basics:portal/warped_forest/check_teleport_to_nether

function halloween-basics:portal/crimson_forest/check_teleport_to_overworld
function halloween-basics:portal/crimson_forest/check_teleport_to_nether

function halloween-basics:portal/lava_seas/check_teleport_to_overworld
function halloween-basics:portal/lava_seas/check_teleport_to_nether

function halloween-basics:portal/basalt_caves/check_teleport_to_overworld
function halloween-basics:portal/basalt_caves/check_teleport_to_nether

execute if score numWarpedPlayers wrpdPlyrsCnt matches ..-1 run scoreboard players set numWarpedPlayers wrpdPlyrsCnt 0
execute if score numCrimsonPlayers cmsnPlyrsCnt matches ..-1 run scoreboard players set numCrimsonPlayers cmsnPlyrsCnt 0
execute if score numLavaPlayers seasPlyrsCnt matches ..-1 run scoreboard players set numLavaPlayers seasPlyrsCnt 0
execute if score numBasaltPlayers bsltPlyrsCnt matches ..-1 run scoreboard players set numLavaPlayers seasPlyrsCnt 0


# schedule function halloween-basics:portal/portal_loop 1t