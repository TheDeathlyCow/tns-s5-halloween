# basic setup stuff on load

tellraw @a[gamemode=creative] ["",{"text":"TNS Halloween Basics successfully loaded! Check the repository for updates and for a wiki guide here: ","color":"green"},{"text":"https://github.com/TheDeathlyCow/tns-s5-halloween","underlined":true,"color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/TheDeathlyCow/tns-s5-halloween"}}]

scoreboard objectives add chestAutoOn dummy
scoreboard players set isChestAuto chestAutoOn 0