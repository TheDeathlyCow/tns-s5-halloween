teleport @a[tag=ValleyParty] @e[tag=svly_bslt_entrance,limit=1]
tag @a[tag=ValleyParty] add SvlyBslt

# execute at @e[tag=svly_bslt_entrance] run spawnpoint @a[tag=SvlyBslt] ~ ~ ~
execute at @e[tag=svly_bslt_entrance] run setblock ~ ~1 ~1 air
execute at @e[tag=svly_bslt_entrance] run setblock ~ ~1 ~ air
execute at @e[tag=svly_bslt_entrance] run setblock ~ ~1 ~-1 air

execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/wrpd/close_entrance
execute at @e[tag=svly_seas_entrance] run function halloween-bosses:nether_castle/seas/close_entrance
execute at @e[tag=svly_cmsn_entrance] run function halloween-bosses:nether_castle/cmsn/close_entrance

execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}

# Prompt first riddle
title @a[tag=SvlyBslt] title {"text":"The Basalt Maze","color":"dark_gray","bold":true}
title @a[tag=SvlyBslt] subtitle {"text":"Traverse the maze","color":"gray"}
tellraw @a[tag=SvlyBslt] {"text":"Traverse the maze...","color":"gray"}

tag @a[tag=SvlyBslt] add svlyInChallenge

scoreboard objectives add svlyBsltTimer dummy
scoreboard players set @a[tag=SvlyBslt] svlyBsltTimer 0

function halloween-bosses:nether_castle/bslt/go_to/room1