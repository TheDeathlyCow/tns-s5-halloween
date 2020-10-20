scoreboard players add currentBasaltStage WrpdStge 1


tellraw @a[tag=BasaltParty] [{"text":"<🔥 The Heart of the Volcano 🔥>","color":"red","bold":true},{"text":" Potions mean nothing to me!","color":"gold","bold":false}]

summon blaze ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:10f,Tags:["halloweenMob"],CustomName:'{"text":"Volcanic Shade","color":"red","bold":true}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:10}]}
summon blaze ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:10f,Tags:["halloweenMob"],CustomName:'{"text":"Volcanic Shade","color":"red","bold":true}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:10}]}
summon blaze ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:10f,Tags:["halloweenMob"],CustomName:'{"text":"Volcanic Shade","color":"red","bold":true}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:10}]}
summon blaze ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:10f,Tags:["halloweenMob"],CustomName:'{"text":"Volcanic Shade","color":"red","bold":true}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:10}]}
summon blaze ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:10f,Tags:["halloweenMob"],CustomName:'{"text":"Volcanic Shade","color":"red","bold":true}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:10}]}
summon blaze ~ ~ ~ {CustomNameVisible:1b,PersistenceRequired:1b,Health:10f,Tags:["halloweenMob"],CustomName:'{"text":"Volcanic Shade","color":"red","bold":true}',ActiveEffects:[{Id:14b,Amplifier:0b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:10}]}

effect clear @a[tag=BasaltParty]
effect give @e[tag=bsltBoss] minecraft:resistance 15 100 false
