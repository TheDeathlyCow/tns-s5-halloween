
tellraw @a[tag=SvlyCmsn] {"text":"Try again!","color":"red"}
teleport @e[tag=svly_cmsn_room1] ~ ~-256 ~
teleport @e[tag=svly_cmsn_room2] ~ ~-256 ~
teleport @e[tag=svly_cmsn_room3] ~ ~-256 ~
kill @e[tag=svly_cmsn_room1]
kill @e[tag=svly_cmsn_room2]
kill @e[tag=svly_cmsn_room3]
scoreboard players set cmsnRoom svlyCounter 1
scoreboard players set @a[tag=SvlyCmsn] svlyDeaths 0
tag @a[tag=svlyCmsnPerfect] remove svlyCmsnPerfect

execute at @e[tag=svly_cmsn_room1_door] run fill ~ ~ ~ ~ ~2 ~ stripped_dark_oak_log[axis=x]
execute at @e[tag=svly_cmsn_room2_door] run fill ~ ~ ~ ~ ~2 ~ stripped_dark_oak_log[axis=x]
execute at @e[tag=svly_cmsn_room3_door] run fill ~ ~ ~ ~ ~2 ~ stripped_dark_oak_log[axis=x]