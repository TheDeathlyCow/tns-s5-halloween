scoreboard players add numTokens tknsNdd 1

setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:dropper[facing=east]

playsound minecraft:block.anvil.destroy master @a[distance=..10] ~ ~ ~

particle minecraft:explosion ~ ~ ~ 1 1 1 4 5

execute if score numTokens tknsNdd matches 2.. run function halloween-bosses:crimson_forest/start_fight