
function halloween-basics:portal/portal_loop

function halloween-basics:traps/crimson_forest/fake_floor

execute if score numTokens tknsNdd matches 2 run function halloween-bosses:crimson_forest/fight/loop

# ===== start checkers =====
execute if score numCrimsonPlayers cmsnPlyrsCnt matches 1.. run execute if score numTokens tknsNdd matches ..1 run function halloween-bosses:crimson_forest/start_checker

# ===== timer stuff =====
scoreboard players remove scareCountDown tickTimer 1
execute if score scareCountDown tickTimer matches 0 run function halloween-basics:traps/crimson_forest/clear_scare