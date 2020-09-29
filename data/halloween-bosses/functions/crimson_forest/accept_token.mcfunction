scoreboard players add numTokens tknsNdd 1

setblock ~ ~ ~ minecraft:dropper[facing=east]

execute if score numTokens tknsNdd matches 2.. run function:halloween-bosses:crimson_forest/start_fight