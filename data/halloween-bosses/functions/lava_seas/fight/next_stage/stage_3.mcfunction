tellraw @a[tag=LavaParty] [{"text":"<☠ Captain Jack Arrow ☠>","color":"dark_gray","bold":true},{"text":" Up here you scurvy dog!","color":"gray","bold":false}]

teleport @e[tag=seasBoss] ~ ~ ~

execute as @e[tag=stage3_archer] at @s run function halloween-basics:spawn/tier2/skeleton_boatswain
execute as @e[tag=stage3_archer] at @s run function halloween-basics:spawn/tier1/skeleton_crewmate

# tag @e[tag=halloweenMob,type=minecraft:skeleton,distance=..5] add SeasStage3

execute as @e[tag=seas_struct_block] at @s run function halloween-bosses:lava_seas/fight/parkour_switcher/add_parkour

# maybe add some particles to the parkour? or sounds?

scoreboard players set currentSeasStage WrpdStge 3