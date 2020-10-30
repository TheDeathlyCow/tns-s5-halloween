tellraw @a[tag=SvlyBoss] [{"text":"<☠ Angel of the Lost River ☠>","color":"dark_purple"},{"text":" Ahhh........ thank....... you......","color":"aqua"}]
advancement grant @a[tag=SvlyBoss] only halloween-basics:defeat_castle
tag @a[tag=SvlyBoss] remove SvlyBoss
scoreboard players enable @a[tag=ValleyParty] svlyCredits
tellraw @a[tag=ValleyParty] ["",{"text":"Click ","color":"aqua"},{"text":"here","underlined":true,"color":"dark_purple","clickEvent":{"action":"run_command","value":"/trigger svlyCredits set 1"},"hoverEvent":{"action":"show_text","contents":{"text":"Begin Credits"}}},{"text":" when you are ready to leave.","color":"aqua"}]
