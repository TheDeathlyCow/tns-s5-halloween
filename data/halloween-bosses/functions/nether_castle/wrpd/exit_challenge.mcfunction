tellraw @a[tag=SvlyWrpd] {"text":"Place the skull on an end rod to summon the Angel of the Lost River...","italic":true,"color":"aqua"}

teleport @a[tag=SvlyWrpd] @e[tag=svly_wrpd_exit_room,limit=1]
advancement grant @a[tag=SvlyWrpd] only halloween-basics:svly/wrpd_challenge
execute as @a[tag=SvlyWrpd] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

tag @a[tag=SvlyWrpd] remove SvlyWrpd

execute at @e[tag=svly_wrpd_door,limit=1] run function halloween-bosses:nether_castle/wrpd/open_door
execute at @e[tag=svly_wrpd_entrance] run function halloween-bosses:nether_castle/wrpd/close_entrance

advancement grant @a[tag=svlyWrpdPerfect] only halloween-basics:svly/perfect_wrpd
tag @a[tag=svlyWrpdPerfect] remove svlyWrpdPerfect