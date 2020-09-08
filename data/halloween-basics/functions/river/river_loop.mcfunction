execute at @e[tag=river_marker] if entity @e[type=player,gamemode=adventure,dx=500,dz=500,dy=0] as @e[type=player,dx=500,dz=500,dy=1] run function halloween-basics:river/drown

schedule function halloween-basics:river/river_loop 1t  