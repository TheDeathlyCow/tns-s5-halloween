tellraw @a[tag=WarpedParty] "[DEBUG] stage 3 start"

summon slime ~ ~ ~ {Invulnerable:0b,CustomNameVisible:1b,NoAI:1b,Health:240f,Size:0,Tags:["halloweenBoss","wrpdShardThree"],CustomName:'{"text":"Warped Spirit Soul Shard","color":"dark_purple","bold":true}',Attributes:[{Name:generic.max_health,Base:240},{Name:generic.knockback_resistance,Base:100},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:4}]}

function halloween-bosses:warped_forest/fight/stage_3_loop