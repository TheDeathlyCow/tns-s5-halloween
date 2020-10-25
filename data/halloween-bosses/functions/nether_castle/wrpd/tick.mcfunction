
execute at @e[tag=svly_blind] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/crown
execute at @e[tag=svly_crown] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/turn
execute at @e[tag=svly_turn] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/right
execute at @e[tag=svly_right] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/button
execute at @e[tag=svly_button] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/burn
execute at @e[tag=svly_burn] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/face
execute at @e[tag=svly_face] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/last
execute at @e[tag=svly_last] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/go_to/shulker

# execute if entity @a[tag=SvlyWrpd] at @e[tag=svly_wrpd_shulker] unless block ~ ~ ~ minecraft:shulker_box{Items:[{Slot:13b,id:"minecraft:wither_skeleton_skull",Count:1b,tag:{CanPlaceOn:["minecraft:end_rod"]}}]} run function halloween-bosses:nether_castle/wrpd/exit_challenge

execute at @e[tag=wrong_portal] as @a[tag=SvlyWrpd,dx=0,dy=3,dz=0] run function halloween-bosses:nether_castle/wrpd/wrong