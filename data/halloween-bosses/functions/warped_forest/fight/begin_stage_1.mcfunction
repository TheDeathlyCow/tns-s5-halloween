tellraw @a[tag=WarpedParty] {"text":"The Warped Spirit is being summoned! Destroy all the spirit shards before it's too late!","color":"dark_purple"}

playsound minecraft:entity.skeleton_horse.death hostile @a[tag=WarpedParty] ~ ~ ~ 100 0.5 1
execute as @e[tag=summonerEnderman] at @s run particle minecraft:dust 0.7020 0.4 1.0 1 ~ ~0.1 ~ 0.7 0.1 0.7 1 100
kill @e[type=minecraft:enderman,tag=summonerEnderman]

summon slime ~ ~ ~ {PersistenceRequired:1b,Invulnerable:0b,CustomNameVisible:1b,NoAI:1b,Health:200f,Size:0,Tags:["halloweenBoss","wrpdShardOne"],CustomName:'{"text":"Warped Spirit Soul Shard","color":"dark_purple","bold":true}',Attributes:[{Name:generic.max_health,Base:200},{Name:generic.knockback_resistance,Base:100},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:4}],ActiveEffects:[{Id:10b,Amplifier:1b,Duration:999999,ShowParticles:0b},{Id:11b,Amplifier:2b,Duration:300}]}
playsound minecraft:entity.wither.spawn hostile @a[tag=WarpedParty] ~ ~ ~ 1 0.3

function halloween-bosses:warped_forest/fight/stage_1_loop
schedule function halloween-bosses:warped_forest/fight/wave1_loop 15s