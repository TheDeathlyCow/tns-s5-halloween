# execute at @e[tag=svly_piglin1] run function halloween-basics:spawn/tier1/piglin_warrior
# execute at @e[tag=svly_piglin2] run function halloween-basics:spawn/tier2/piglin_brute
# execute at @e[tag=svly_piglin3] run function halloween-basics:spawn/tier3/piglin_boss

execute at @e[tag=svly_piglin1] as @e[type=piglin_brute,distance=..20] run tag @s add svly_cmsn_room3

scoreboard players set cmsnRoom svlyCounter 3