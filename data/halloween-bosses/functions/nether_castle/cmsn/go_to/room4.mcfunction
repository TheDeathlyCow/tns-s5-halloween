
execute at @e[tag=svly_cmsn_shulker] align xz run summon firework_rocket ~0.5 ~ ~0.5 {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16756223]}]}}}}

execute at @e[tag=svly_cmsn_room3_door] run fill ~ ~ ~ ~ ~2 ~ air
execute at @e[tag=svly_cmsn_room3_door] run playsound minecraft:block.wooden_door.open master @a[distance=..15] ~ ~ ~

scoreboard players set cmsnRoom svlyCounter 4