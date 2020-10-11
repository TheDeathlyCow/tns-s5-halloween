execute as @e[tag=seas_struct_block] at @s run function halloween-bosses:lava_seas/fight/parkour_switcher/remove_parkour

tellraw @a[tag=LavaParty] [{"text":"<☠ Captain Jack Arrow ☠>","color":"dark_gray","bold":true},{"text":" Avast ye! All hands on deck!","color":"gray","bold":false}]

teleport @e[tag=seasBoss] ~ ~ ~

function halloween-basics:spawn/tier1/skeleton_crewmate
function halloween-basics:spawn/tier1/skeleton_crewmate
function halloween-basics:spawn/tier1/skeleton_crewmate
function halloween-basics:spawn/tier1/skeleton_crewmate
function halloween-basics:spawn/tier1/melee_skeleton
function halloween-basics:spawn/tier1/melee_skeleton

function halloween-basics:spawn/tier2/skeleton_boatswain
function halloween-basics:spawn/tier2/skeleton_boatswain
function halloween-basics:spawn/tier2/melee_skeleton
function halloween-basics:spawn/tier2/melee_skeleton

tag @e[tag=halloweenMob,type=minecraft:skeleton,distance=..5] add SeasStage4

scoreboard players set currentSeasStage WrpdStge 4

playsound minecraft:music_disc.pigstep master @a[tag=LavaParty] ~ ~ ~ 

