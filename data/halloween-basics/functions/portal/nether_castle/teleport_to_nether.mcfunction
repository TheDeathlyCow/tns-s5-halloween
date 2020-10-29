# tag @a[dz=3,dy=5] add warpd_tp_nthr
# tag @a[dz=-3,dy=5] add warpd_tp_nthr
# say to the nether
tag @s add ValleyParty

gamemode adventure @s
advancement grant @s only halloween-basics:enter_castle
advancement revoke @s only halloween-basics:defeat_castle
# /tp -91.32 57.00 -306.49
execute in minecraft:the_nether run tp @s 500 128 500
execute in minecraft:the_nether run spawnpoint @s 500 128 500

# execute if score isResetWarped rstWrpd matches 1 as @e[type=minecraft:armor_stand,tag=warped_dungeon_marker] at @s run schedule function halloween-basics:_reset/mobs 1s

scoreboard players add numValleyPlayers svlyPlyrsCnt 1

# this is only for the LAVA boss
# gamerule keepInventory true

tellraw @a ["",{"selector":"@s","bold":true,"color":"dark_purple"},{"text":" has entered the Lost Valley of Souls!","color":"aqua"}]

scoreboard players set @s svlyTime 0