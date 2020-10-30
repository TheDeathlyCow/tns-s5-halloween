tag @a[tag=ValleyParty] add SvlyDone
teleport @a[tag=SvlyDone] ~ ~ ~
scoreboard players set timeUntilCredits svlyCounter 120
scoreboard players set creditsTitle svlyCounter 1
title @a[tag=SvlyDone] subtitle {"text":"The Season 5 TNS Halloween Event","bold":false,"color":"gold"}
title @a[tag=SvlyDone] title {"text":"The Nether Crisis","bold":true,"color":"dark_red"}

playsound minecraft:music.credits master @a[distance=..15] ~ ~ ~
scoreboard players enable @a[tag=SvlyDone] svlyExit

tellraw @a[tag=SvlyDone] ["",{"text":"Click ","color":"gray"},{"text":"here","underlined":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger svlyExit set 1"}},{"text":" to skip the credits.","color":"gray"}]
