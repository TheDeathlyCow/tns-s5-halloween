bossbar add warped_soul_shard "Warped Spirit Soul Shard"
bossbar set minecraft:warped_soul_shard color purple
bossbar set minecraft:warped_soul_shard style notched_12
bossbar set minecraft:warped_soul_shard max 240
bossbar set minecraft:warped_soul_shard players @a[tag=WarpedParty]

scoreboard players set currWarpedStage WrpdStge 1

execute as @e[type=minecraft:armor_stand,tag=wprd_boss_first_pos] at @s run function halloween-bosses:warped_forest/fight/begin_stage_1
