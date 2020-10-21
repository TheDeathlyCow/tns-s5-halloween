
setblock ~ ~-1 ~ command_block{Command:"function halloween-bosses:basalt_caves/exit"}
setblock ~ ~ ~ smooth_stone
setblock ~ ~1 ~ stone_button[face=floor]

execute align xz run summon firework_rocket ~0.5 ~1 ~0.5 {Life:0,LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:1b,Colors:[I;16772874]}]}}}}