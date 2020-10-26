teleport @a[tag=ValleyParty] @e[tag=svly_cmsn_entrance,limit=1]

execute at @e[tag=svly_cmsn_entrance] run spawnpoint @a[tag=SvlyCmsn] ~ ~ ~
execute at @e[tag=svly_cmsn_entrance] run setblock ~ ~1 ~1 air
execute at @e[tag=svly_cmsn_entrance] run setblock ~ ~1 ~ air
execute at @e[tag=svly_cmsn_entrance] run setblock ~ ~1 ~-1 air

execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/wrpd/close_entrance
execute at @e[tag=svly_seas_entrance] run function halloween-bosses:nether_castle/seas/close_entrance
execute at @e[tag=svly_bslt_entrance] run function halloween-bosses:nether_castle/bslt/close_entrance

execute at @e[tag=svly_piglin1] run function halloween-basics:spawn/tier1/piglin_warrior
execute at @e[tag=svly_piglin2] run function halloween-basics:spawn/tier2/piglin_brute
execute at @e[tag=svly_piglin3] run function halloween-basics:spawn/tier3/piglin_boss

execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}

tag @a[tag=ValleyParty] add SvlyCmsn

# Prompt first riddle
title @a[tag=SvlyCmsn] title {"text":"The Piglin Halls","color":"dark_red","bold":true}
title @a[tag=SvlyCmsn] subtitle {"text":"Survive","color":"gold"}
tellraw @a[tag=SvlyCmsn] {"text":"Survive...","color":"gold"}

tag @a[tag=SvlyCmsn] add svlyCmsnPerfect

scoreboard players set @a[tag=SvlyCmsn] svlyDeaths 0

function halloween-bosses:nether_castle/cmsn/go_to/room1