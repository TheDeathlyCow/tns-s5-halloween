

scoreboard objectives add WrpdStge dummy
scoreboard players set currWarpedStage WrpdStge 0

kill @e[type=minecraft:enderman,tag=summonerEnderman]
execute at @e[type=minecraft:armor_stand,tag=enderman_east] run summon enderman ~ ~ ~ {DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[90F,-20F],Tags:["halloweenMob","summonerEnderman"]}
execute at @e[type=minecraft:armor_stand,tag=enderman_south] run summon enderman ~ ~ ~ {DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[180F,-20F],Tags:["halloweenMob","summonerEnderman"]}
execute at @e[type=minecraft:armor_stand,tag=enderman_west] run summon enderman ~ ~ ~ {DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[-90F,-20F],Tags:["halloweenMob","summonerEnderman"]}
execute at @e[type=minecraft:armor_stand,tag=enderman_north] run summon enderman ~ ~ ~ {DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[0F,-20F],Tags:["halloweenMob","summonerEnderman"]}