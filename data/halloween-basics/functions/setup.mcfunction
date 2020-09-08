# basic setup stuff on load

tellraw @a[gamemode=creative] ["",{"text":"TNS Halloween Basics successfully loaded! Check the repository for updates and for a wiki guide here: ","color":"green"},{"text":"https://github.com/TheDeathlyCow/tns-s5-halloween","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TheDeathlyCow/tns-s5-halloween"}}]

scoreboard objectives remove chestAutoOn
scoreboard objectives add chestAutoOn dummy
scoreboard players set isChestAuto chestAutoOn 0

team add warped_players "Warped Mansion Party"
team modify warped_players friendlyFire false
team modify warped_players color dark_aqua
team modify warped_players seeFriendlyInvisibles true

team add castle_players "Lost Valley Castle Party"
team modify warped_players friendlyFire false
team modify warped_players color dark_purple
team modify warped_players seeFriendlyInvisibles true
