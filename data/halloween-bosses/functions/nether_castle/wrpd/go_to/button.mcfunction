teleport @a[tag=SvlyWrpd] @e[tag=svly_button_entrance,limit=1]

title @a[tag=SvlyWrpd] title {"text":"The Warped Portals","color":"dark_aqua","bold":true}
title @a[tag=SvlyWrpd] subtitle {"text":"A fastener of clothes","color":"aqua"}
tellraw @a[tag=SvlyWrpd] {"text":"A fastener of clothes...","color":"aqua"}

execute as @a[tag=SvlyWrpd] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
execute as @a[tag=SvlyWrpd] at @s run particle minecraft:portal ~ ~ ~ 1 0.5 1 1 100