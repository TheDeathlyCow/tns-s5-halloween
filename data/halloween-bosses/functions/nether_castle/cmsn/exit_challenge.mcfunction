tellraw @a[tag=SvlyCmsn] {"text":"Place the skull on an end rod to summon the Angel of the Lost River...","italic":true,"color":"aqua"}

teleport @a[tag=SvlyCmsn] @e[tag=svly_cmsn_exit_room,limit=1]
advancement grant @a[tag=SvlyCmsn] only halloween-basics:svly/cmsn_challenge
execute as @a[tag=SvlyCmsn] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

tag @a[tag=SvlyCmsn] remove SvlyCmsn

execute at @e[tag=svly_cmsn_door,limit=1] run function halloween-bosses:nether_castle/cmsn/open_door
execute at @e[tag=svly_cmsn_entrance] run function halloween-bosses:nether_castle/cmsn/close_entrance

advancement grant @a[tag=svlyCmsnPerfect] only halloween-basics:svly/perfect_cmsn
tag @a[tag=svlyCmsnPerfect] remove svlyCmsnPerfect

scoreboard players set cmsnRoom svlyCounter 0