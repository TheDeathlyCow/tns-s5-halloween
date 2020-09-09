


execute unless score numWarpedPlayers wrpdPlyrsCnt matches ..1 run function halloween-basics:teleport_to_overworld
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 run scoreboard players enable @a[tag=WarpedParty] wrpdReset 
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 run scoreboard players set @a[tag=WarpedParty] wrpdReset 1
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 if score @a[tag=WarpedParty,limit=1] wrpdReset matches 0 run tellraw @a[tag=WarpedParty] [{"text":"WARNING!","color":"dark_red","bold":true},{"text":" You are the last player in the dungeon party! Leaving WILL reset the mansion and destroy all items in chests. Click ","color":"red","bold":false},{"text":"here","color":"gold","bold":false,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger wrpdReset set 1"}},{"text":" if you are ok with that and ready to leave.","color":"red","bold":false}]
execute if score numWarpedPlayers wrpdPlyrsCnt matches ..1 as @a[tag=WarpedParty] run function halloween-basics:portal/warped_forest/confirmation_loop
