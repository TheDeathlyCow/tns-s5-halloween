# say picking mimmicks
teleport @e[tag=seasMimmick] ~ ~-300 ~
effect give @a[tag=LavaParty] minecraft:blindess 2 0
tellraw @a[tag=LavaParty] [{"text":"<☠ Captain Jack Arrow ☠>","color":"dark_gray","bold":true},{"text":" Arrrgh! Which do me be?","color":"gray","bold":false}]
execute as @e[tag=seas_stage4,sort=random,limit=1] at @s run function halloween-bosses:lava_seas/pick_position/move


