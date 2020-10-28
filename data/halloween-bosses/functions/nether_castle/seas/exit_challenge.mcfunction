tellraw @a[tag=SvlySeas] {"text":"Place the skull on an end rod to summon the Angel of the Lost River...","italic":true,"color":"aqua"}
tellraw @a[tag=SvlySeas] [{"text":"<Pirate Skeletons> ","color":"dark_gray","bold":true},{"text":"Arrrgghh!","color":"white"}]
advancement grant @a[tag=SvlySeas] only halloween-basics:svly/seas_challenge
execute as @a[tag=SvlySeas] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 1

execute as @a[tag=SvlySeas] at @e[tag=svly_seas_pirate1] run function halloween-basics:spawn/tier1/skeleton_crewmate
execute as @a[tag=SvlySeas] at @e[tag=svly_seas_pirate1] run function halloween-basics:spawn/tier1/melee_skeleton

execute as @a[tag=SvlySeas] at @e[tag=svly_seas_pirate2] run function halloween-basics:spawn/tier2/skeleton_boatswain
execute as @a[tag=SvlySeas] at @e[tag=svly_seas_pirate2] run function halloween-basics:spawn/tier2/melee_skeleton

execute as @a[tag=SvlySeas] at @e[tag=svly_seas_pirate3] run function halloween-basics:spawn/tier3/skeleton_quartermaster
execute as @a[tag=SvlySeas] at @e[tag=svly_seas_pirate3] run function halloween-basics:spawn/tier3/melee_skeleton

execute as @e[name="☠ Skeleton Quartermaster ☠"] run data merge entity @s {DeathLootTable:"halloween-basics:entities/pirate"}

execute at @e[tag=svly_seas_door,limit=1] run function halloween-bosses:nether_castle/seas/open_door
execute at @e[tag=svly_seas_entrance] run function halloween-bosses:nether_castle/seas/close_entrance

advancement grant @a[tag=svlySeasPerfect] only halloween-basics:svly/perfect_seas
tag @a[tag=svlySeasPerfect] remove svlySeasPerfect
tag @a[tag=svlyInChallenge] remove svlyInChallenge
tag @a[tag=SvlySeas] remove SvlySeas

scoreboard players set svlySeasActivated svlyCounter 1