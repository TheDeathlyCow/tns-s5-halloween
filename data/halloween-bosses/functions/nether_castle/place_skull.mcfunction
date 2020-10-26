tag @s remove svly_no_skull
summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Trail:1b,Colors:[I;10287359]}]}}}}

scoreboard players add completeValleyChallenges svlyCounter 1
tellraw @a[tag=ValleyParty] ["",{"text":"Skull ","color":"aqua"},{"score":{"name":"completeValleyChallenges","objective":"svlyCounter"},"color":"aqua"},{"text":" of 4 placed!","color":"aqua"}]

execute if score completeValleyChallenges svlyCounter matches 4 run function halloween-bosses:nether_castle/boss/start_fight