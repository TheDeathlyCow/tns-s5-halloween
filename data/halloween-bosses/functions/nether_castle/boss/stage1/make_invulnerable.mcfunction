scoreboard players set svlyFiresLit svlyCounter 0
scoreboard players set isFighting svlyCounter 0
data merge entity @e[type=minecraft:wither,tag=svlyBoss,limit=1] {Invulnerable:1b,NoAI:1b}
tellraw @a[tag=SvlyBoss] [{"text":"<☠ Angel of the Lost River ☠>","color":"dark_purple"},{"text":" You cannot touch me without the Soul Fires!","color":"aqua"}]
execute at @e[tag=svly_fire] run setblock ~ ~ ~ soul_campfire[lit=false]
tag @e[tag=svly_fire] add svly_fire_unlit

give @a[tag=SvlyBoss] flint_and_steel{CanPlaceOn:["minecraft:soul_campfire"],display:{Name:'{"text":"Soul Lighter","italic":false}'},Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]} 1

execute as @a[tag=SvlyBoss] at @e[tag=svly_fire] run function halloween-bosses:nether_castle/boss/stage1/summon_enemies