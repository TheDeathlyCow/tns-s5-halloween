execute at @e[tag=svly_piglin1_room2] run function halloween-basics:spawn/tier1/piglin_warrior
execute at @e[tag=svly_piglin2_room2] run function halloween-basics:spawn/tier2/piglin_brute
execute at @e[tag=svly_piglin3_room2] run function halloween-basics:spawn/tier3/piglin_boss

execute at @e[tag=svly_piglin1_room2] as @e[type=piglin_brute,distance=..20] run tag @s add svly_cmsn_room2

execute at @e[tag=svly_cmsn_room1_door] run fill ~ ~ ~ ~ ~2 ~ air
execute at @e[tag=svly_cmsn_room1_door] run playsound minecraft:block.wooden_door.open master @a[distance=..15] ~ ~ ~

scoreboard players set cmsnRoom svlyCounter 2