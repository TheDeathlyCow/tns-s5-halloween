tellraw @a[tag=BasaltParty] [{"text":"<🔥 The Heart of the Volcano 🔥>","color":"red","bold":true},{"text":" The Volcano awakens!","color":"gold","bold":false}]

summon blaze ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"halloween-bosses:entities/bslt_heart",PersistenceRequired:1b,Health:600f,Tags:["bsltBoss","halloweenBoss"],CustomName:'{"text":"🔥 The Heart of the Volcano 🔥","color":"red","bold":true}',Attributes:[{Name:generic.max_health,Base:600}]}
# execute if score numCrimsonPlayers cmsnPlyrsCnt matches 2 run effect give @e[type=minecraft:piglin_brute,tag=cmsnBoss] weakness 999999 0 true
execute if score numBasaltPlayers bsltPlyrsCnt matches 3.. run effect give @e[type=minecraft:blaze,tag=bsltBoss] minecraft:regeneration 999999 2
execute if score numBasaltPlayers bsltPlyrsCnt matches 2 run effect give @e[type=minecraft:blaze,tag=bsltBoss] minecraft:regeneration 999999 0

function halloween-bosses:basalt_caves/fight/next_stage