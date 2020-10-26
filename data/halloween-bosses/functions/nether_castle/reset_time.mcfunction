scoreboard players operation @s svlyTime /= ticksPerMinute svlyTime
scoreboard players add @s svlyBestTime 0
execute if score @s svlyTime < @s svlyBestTime run function halloween-bosses:nether_castle/save_score

scoreboard players set @s svlyTime 0

# say reset score!