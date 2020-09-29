kill @e[tag=summonerEnderman]

execute at @e[type=minecraft:armor_stand,tag=enderman_north] run summon enderman ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[0F,-20F],Tags:["halloweenMob","summonerEnderman"]}
execute at @e[type=minecraft:armor_stand,tag=enderman_east] run summon enderman ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[90F,-20F],Tags:["halloweenMob","summonerEnderman"]}
execute at @e[type=minecraft:armor_stand,tag=enderman_south] run summon enderman ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[180F,-20F],Tags:["halloweenMob","summonerEnderman"]}
execute at @e[type=minecraft:armor_stand,tag=enderman_west] run summon enderman ~ ~ ~ {PersistenceRequired:1b,Silent:1b,DeathLootTable:"halloween-bosses:entities/empty",Invulnerable:1b,NoAI:1b,Rotation:[-90F,-20F],Tags:["halloweenMob","summonerEnderman"]}

function halloween-bosses:warped_forest/start_checker