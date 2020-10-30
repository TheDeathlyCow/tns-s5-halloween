# tellraw @a[tag=ValleyParty] "fight started"
tag @a[tag=ValleyParty] add SvlyBoss
tag @a[tag=ValleyParty] add svlyInChallenge
scoreboard players set currValleyBossStage svlyCounter 1
effect give @a[tag=SvlyBoss] minecraft:levitation 2 25 true


scoreboard players set timeUntilInvul svlyCounter 800
scoreboard players set isFighting svlyCounter 1

execute at @e[tag=castle_dungeon_marker,limit=1] run function halloween-bosses:nether_castle/boss/fight/awaken

teleport @a[tag=ValleyParty] @e[tag=castle_dungeon_marker,limit=1]