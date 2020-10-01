
execute as @a[tag=CrimsonParty] at @s if block ~ ~-1 ~ minecraft:petrified_oak_slab[type=double] run tag @s add wrong_block
execute as @a[tag=CrimsonParty] at @s if block ~ ~-2 ~ minecraft:petrified_oak_slab[type=double] run tag @s add wrong_block


execute as @a[tag=wrong_block] at @s run tp @s @e[tag=walking_puzzle_door,sort=nearest,limit=1]
execute as @a[tag=wrong_block] at @s run effect give @s poison 5 3
execute as @a[tag=wrong_block] at @s run playsound minecraft:block.note_block.didgeridoo hostile @s ~ ~ ~ 1 0.5
tellraw @a[tag=wrong_block] {"text":"Incorrect!","color":"red"}

tag @a[tag=wrong_block] remove wrong_block