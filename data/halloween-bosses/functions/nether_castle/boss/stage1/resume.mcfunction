data merge entity @e[type=minecraft:wither,tag=svlyBoss,limit=1] {Invulnerable:0b,NoAI:0b}
tellraw @a[tag=SvlyBoss] [{"text":"<☠ Angel of the Lost River ☠>","color":"dark_purple"},{"text":" Oh finally, I was getting bored waiting for you lot!","color":"aqua"}]
scoreboard players set timeUntilInvul svlyCounter 600
scoreboard players set isFighting svlyCounter 1