tellraw @a[tag=SvlyWrpd] {"text":"Incorrect!","color":"red"}
# maybe replace with actual coordinates?
teleport @a[tag=SvlyWrpd] @e[tag=svly_wrpd_entrance,limit=1]

execute as @a[tag=SvlyWrpd] at @s run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.3
execute at @e[tag=svly_wrpd_shade_spawn,limit=1] as @a[tag=SvlyWrpd] run function halloween-bosses:nether_castle/wrpd/spawn_shades

title @a[tag=SvlyWrpd] title {"text":"The Warped Portals","color":"dark_aqua","bold":true}
title @a[tag=SvlyWrpd] subtitle {"text":"Go where only the blind can see","color":"aqua"}
tellraw @a[tag=SvlyWrpd] {"text":"Go where only the blind can see...","color":"aqua"}

tag @a[tag=svlyWrpdPerfect] remove svlyWrpdPerfect