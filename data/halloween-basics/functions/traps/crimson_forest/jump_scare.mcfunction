# execute as @a[tag=CrimsonParty,dx=-4,dz=3,dy=1] at @s run function halloween-basics:traps/crimson_forest/jump_scare

effect give @s blindness 2 0 true

summon armor_stand ^ ^0.3 ^2.7 {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["spooky"],Rotation:[180F,0F]}
execute at @e[tag=spooky,sort=nearest,limit=1] run tp @e[tag=spooky,sort=nearest,limit=1] ~ ~ ~ facing entity @s

execute as @e[tag=spooky] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:carved_pumpkin",Count:1b}]}
playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 1
playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 1
playsound minecraft:entity.enderman.death master @s ~ ~ ~ 1 1

scoreboard players set scareCountDown tickTimer 20

# schedule function halloween-basics:traps/crimson_forest/clear_scare 20t