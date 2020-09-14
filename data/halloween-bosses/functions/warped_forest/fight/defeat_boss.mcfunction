tellraw @a[tag=WarpedParty] {"text":"The Warped Spirit has been defeated, this gate has been closed!","color":"dark_purple"}
execute at @e[tag=wprd_boss_third_pos] run playsound minecraft:entity.wither.hurt hostile @a[tag=WarpedParty] ~ ~ ~ 1 0

execute at @a[tag=WarpedParty] run playsound minecraft:entity.wither.death hostile @p ~ ~ ~ 1 0.3 

scoreboard players set currWarpedStage WrpdStge 0
advancement grant @a[tag=WarpedParty] only halloween-basics:defeat_warped_boss
bossbar remove minecraft:warped_soul_shard