# say test check
execute at @e[tag=bslt_boss_entrance,limit=1] if entity @a[tag=BasaltParty,distance=..6] run function halloween-bosses:basalt_caves/start_fight 

# execute if score numCrimsonPlayers cmsnPlyrsCnt matches 1.. run execute if score numTokens tknsNdd matches ..1 run schedule function halloween-bosses:crimson_forest/start_checker 2t