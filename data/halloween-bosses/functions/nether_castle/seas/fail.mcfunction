# say hi
teleport @s @e[tag=svly_seas_entrance,limit=1]
execute at @e[tag=svly_seas_entrance,limit=1] run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.3
# tellraw @s {"text":"\"Failure is not the falling down, but the staying down.\" -Mary Pickford","color":"gold"}
# execute as @e[type=armor_stand,tag=svly_seas_message,sort=random,limit=1] run tag @s add svlySeasThisMessage
execute at @s as @e[type=armor_stand,tag=svly_seas_message,sort=random,limit=1] run function halloween-bosses:nether_castle/seas/random_message
tag @s remove svlySeasPerfect