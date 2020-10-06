scoreboard players add numKeys seasKeys 1

# setblock ~ ~ ~ air
setblock ~ ~ ~ minecraft:dropper[facing=up]

playsound minecraft:block.anvil.destroy master @a[distance=..10] ~ ~ ~

particle minecraft:explosion ~ ~ ~ 1 1 1 4 5

execute if score numKeys seasKeys matches 3.. run function halloween-bosses:lava_seas/start_fight

execute at @e[type=minecraft:armor_stand,tag=key_dispenser] run data merge block ~ ~ ~ {CustomName:'{"text":"Key","color":"dark_purple","bold":true,"italic":false}'}