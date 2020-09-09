
execute if score @s wrpdReset matches 1 run function halloween-basics:portal/warped_forest/teleport_to_overworld
execute if score @s wrpdReset matches 1 run function halloween-basics:_reset/warped_dungeon
execute if score @s wrpdReset matches 1 run scoreboard players set @s wrpdReset 0

schedule function halloween-basics:portal/warped_forest/confirmation_loop