tellraw @a[tag=WarpedParty] "[DEBUG] Boss Defeated!"
scoreboard players set currWarpedStage WrpdStge 0
advancement grant @a[tag=WarpedParty] only halloween-basics:defeat_warped_boss
bossbar remove minecraft:warped_soul_shard