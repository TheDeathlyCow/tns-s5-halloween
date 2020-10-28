teleport @a[tag=ValleyParty] @e[tag=svly_seas_entrance,limit=1]
tag @a[tag=ValleyParty] add SvlySeas

execute at @e[tag=svly_seas_entrance] run spawnpoint @a[tag=SvlySeas] ~ ~ ~
execute at @e[tag=svly_seas_entrance] run setblock ~1 ~1 ~ air
execute at @e[tag=svly_seas_entrance] run setblock ~ ~1 ~ air
execute at @e[tag=svly_seas_entrance] run setblock ~-1 ~1 ~ air

execute at @e[tag=svly_cmsn_entrance] run function halloween-bosses:nether_castle/cmsn/close_entrance
execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/wrpd/close_entrance
execute at @e[tag=svly_bslt_entrance] run function halloween-bosses:nether_castle/bslt/close_entrance

# Prompt first riddle
title @a[tag=SvlySeas] title {"text":"Lava Jumper","color":"gold","bold":true}
title @a[tag=SvlySeas] subtitle {"text":"Make it to the end","color":"yellow"}
tellraw @a[tag=SvlySeas] {"text":"Make it to the end...","color":"yellow"}
tellraw @a[tag=SvlySeas] {"text":"Note: your potion effects have been cleared.","color":"yellow"}

tag @a[tag=SvlySeas] add svlyInChallenge
tag @a[tag=SvlySeas] add svlySeasPerfect

scoreboard players set svlySeasActivated svlyCounter 0