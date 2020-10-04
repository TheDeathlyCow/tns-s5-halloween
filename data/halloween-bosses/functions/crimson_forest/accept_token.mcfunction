scoreboard players add numTokens tknsNdd 1

# setblock ~ ~ ~ air
# setblock ~ ~ ~ minecraft:dropper[facing=east]

playsound minecraft:block.anvil.destroy master @a[distance=..10] ~ ~ ~

particle minecraft:explosion ~ ~ ~ 1 1 1 4 5

execute if score numTokens tknsNdd matches 2.. run function halloween-bosses:crimson_forest/start_fight

execute at @e[type=minecraft:armor_stand,tag=dir_dispenser] run data merge block ~ ~ ~ {CustomName:'{"text":"Direction","color":"aqua","bold":true,"italic":false}'}
execute at @e[type=minecraft:armor_stand,tag=time_dispenser] run data merge block ~ ~ ~ {CustomName:'{"text":"Time","color":"gold","bold":true,"italic":false}'}
