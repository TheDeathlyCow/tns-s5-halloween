execute at @e[tag=svly_piglin1_room1] run function halloween-basics:spawn/tier1/piglin_warrior
execute at @e[tag=svly_piglin2_room1] run function halloween-basics:spawn/tier2/piglin_brute
execute at @e[tag=svly_piglin3_room1] run function halloween-basics:spawn/tier3/piglin_boss

execute at @e[tag=svly_piglin1_room1] as @e[type=piglin_brute,distance=..20] run tag @s add svly_cmsn_room1

scoreboard players set cmsnRoom svlyCounter 1