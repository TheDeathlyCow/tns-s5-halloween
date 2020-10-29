tellraw @a[tag=SvlyBslt] {"text":"Place the skull on an end rod to summon the Angel of the Lost River...","italic":true,"color":"aqua"}

teleport @a[tag=SvlyBslt] @e[tag=svly_bslt_exit_room,limit=1]
advancement grant @a[tag=SvlyBslt] only halloween-basics:svly/bslt_challenge
execute as @a[tag=SvlyBslt] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

execute as @a[tag=SvlyBslt] at @e[tag=svly_bslt_spirit1] run function halloween-basics:spawn/tier1/fire_spirit
execute as @a[tag=SvlyBslt] at @e[tag=svly_bslt_spirit2] run function halloween-basics:spawn/tier2/magma_spirit
execute as @a[tag=SvlyBslt] at @e[tag=svly_bslt_spirit3] run function halloween-basics:spawn/tier3/volcanic_spirit

execute as @e[tag=halloweenMob] run data merge entity @s {PersistenceRequired:1b}

execute as @a[tag=SvlyBslt] if score @s svlyBsltTimer matches ..1600 run advancement grant @s only halloween-basics:svly/perfect_bslt
tag @a[tag=SvlyBslt] remove SvlyBslt

execute at @e[tag=svly_bslt_door,limit=1] run function halloween-bosses:nether_castle/bslt/open_door
execute at @e[tag=svly_bslt_entrance] run function halloween-bosses:nether_castle/bslt/close_entrance


# execute at @e[tag=svly_cmsn_entrance] run fill ~2 ~ ~1 ~2 ~6 ~-1 air replace black_concrete

tag @a[tag=svlyInChallenge] remove svlyInChallenge
