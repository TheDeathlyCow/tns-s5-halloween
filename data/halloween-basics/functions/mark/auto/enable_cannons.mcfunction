tellraw @a[gamemode=creative] {"text":"Enabled auto chest marking! Rename a silverfish to {starboard/port}_cannon to mark cannon positions..","color":"green"}
scoreboard players set isCannonAuto chestAutoOn 1
# schedule function halloween-basics:mark/auto/chest 1t