summon wither ~ ~20 ~ {CustomNameVisible:1b,Health:600f,Invul:200,Tags:["halloweenBoss","svlyBoss"],CustomName:'{"text":"☠ Angel of the Lost River ☠","color":"aqua","bold":true}',ActiveEffects:[{Id:11b,Amplifier:1b,Duration:999999},{Id:28b,Amplifier:1b,Duration:99999}],Attributes:[{Name:generic.max_health,Base:600}]}

execute if score numValleyPlayers svlyPlyrsCnt matches 2 run data merge entity @e[tag=svlyBoss,limit=1] {Health:800f,Attributes:[{Name:generic.max_health,Base:800}]}
execute if score numValleyPlayers svlyPlyrsCnt matches 3 run data merge entity @e[tag=svlyBoss,limit=1] {Health:1000f,Attributes:[{Name:generic.max_health,Base:1000}]}
execute if score numValleyPlayers svlyPlyrsCnt matches 4 run data merge entity @e[tag=svlyBoss,limit=1] {Health:1200f,Attributes:[{Name:generic.max_health,Base:1200}]} 
execute if score numValleyPlayers svlyPlyrsCnt matches 5 run data merge entity @e[tag=svlyBoss,limit=1] {Health:1400f,Attributes:[{Name:generic.max_health,Base:1400}]} 

execute store result score svlyBossHealth svlyCounter run data get entity @e[tag=svlyBoss,limit=1] Health

tellraw @a[tag=SvlyBoss] [{"text":"<☠ Angel of the Lost River ☠>","color":"dark_purple"},{"text":" All rise for the symphony of Death!","color":"aqua"}]