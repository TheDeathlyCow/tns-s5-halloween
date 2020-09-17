tellraw @a[tag=WarpedParty] "[DEBUG] stage 2 start"
scoreboard players set currWarpedStage WrpdStge 2

summon slime ~ ~ ~ {DeathLootTable:"halloween-basics:entities/warped_shade",PersistenceRequired:1b,Invulnerable:0b,CustomNameVisible:1b,NoAI:1b,Health:200f,Size:0,Tags:["halloweenBoss","wrpdShardTwo"],CustomName:'{"text":"Warped Spirit Soul Shard","color":"dark_purple","bold":true}',Attributes:[{Name:generic.max_health,Base:200},{Name:generic.knockback_resistance,Base:100},{Name:generic.armor,Base:10},{Name:generic.armor_toughness,Base:4}],ActiveEffects:[{Id:10b,Amplifier:1b,Duration:999999,ShowParticles:0b},{Id:11b,Amplifier:2b,Duration:300}]}
playsound minecraft:entity.wither.hurt hostile @a[tag=WarpedParty] ~ ~ ~ 1 0

function halloween-bosses:warped_forest/fight/stage_2_loop
schedule function halloween-bosses:warped_forest/fight/wave2_loop 15s