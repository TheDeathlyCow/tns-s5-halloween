teleport @a[tag=ValleyParty] @e[tag=svly_wrpd_entrance,limit=1]
tag @a[tag=ValleyParty] add SvlyWrpd

execute at @e[tag=svly_wprd_entrance] run spawnpoint @a[tag=SvlyWrpd] ~ ~ ~
execute at @e[tag=svly_wrpd_entrance] run setblock ~1 ~1 ~ air
execute at @e[tag=svly_wrpd_entrance] run setblock ~ ~1 ~ air
execute at @e[tag=svly_wrpd_entrance] run setblock ~-1 ~1 ~ air

execute at @e[tag=svly_cmsn_entrance] run function halloween-bosses:nether_castle/cmsn/close_entrance
execute at @e[tag=svly_seas_entrance] run function halloween-bosses:nether_castle/seas/close_entrance
execute at @e[tag=svly_bslt_entrance] run function halloween-bosses:nether_castle/bslt/close_entrance

# Prompt first riddle
title @a[tag=SvlyWrpd] title {"text":"The Warped Portals","color":"dark_aqua","bold":true}
title @a[tag=SvlyWrpd] subtitle {"text":"Go where only the blind can see","color":"aqua"}
tellraw @a[tag=SvlyWrpd] {"text":"Go where only the blind can see...","color":"aqua"}

tag @a[tag=SvlyWrpd] add svlyInChallenge
tag @a[tag=SvlyWrpd] add svlyWrpdPerfect