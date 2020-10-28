teleport @a[tag=SvlyWrpd] @e[tag=svly_shulker_entrance,limit=1]

execute at @e[tag=svly_wrpd_shulker] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16756223]}]}}}}

execute as @a[tag=SvlyWrpd] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~
execute as @a[tag=SvlyWrpd] at @s run particle minecraft:portal ~ ~ ~ 1 0.5 1 1 100