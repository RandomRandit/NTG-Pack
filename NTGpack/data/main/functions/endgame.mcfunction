tellraw @a[team=main] ["",{"text":"Congratulations, ","color":"green"},{"selector":"@r[team=main]","color":"gold"},{"text":", You've Won!","color":"green"}]
tellraw @a[team=!main] ["",{"text":"You've lost to ","color":"yellow"},{"selector":"@r[team=main]","color":"dark_red"},{"text":". Better luck next time","color":"yellow"}]
scoreboard players add @a[team=main] leaderboard 1
fill -3 64 -3 3 68 3 barrier hollow
tp @a 0.0 65 0.0
scoreboard players set @a deaths 0
scoreboard players set @a deathOnce 0
scoreboard objectives setdisplay sidebar leaderboard
scoreboard players set @a displayLives 5
team join main @a
gamemode adventure @a 
clear @a
scoreboard players set @a ammoReload 0
scoreboard players set @a etReload 0
effect give @a instant_health 1 255 true
effect give @a resistance 1000000 255 true
setblock 0 255 0 air
setblock 0 254 0 glass