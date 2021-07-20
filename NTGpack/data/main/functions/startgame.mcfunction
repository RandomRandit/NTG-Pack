tellraw @a {"text":"The Game Is Starting","bold":true,"italic":true,"color":"dark_green"}
function main:rebuild
scoreboard players set @a deaths 0
scoreboard players set @a deathOnce 0
scoreboard objectives setdisplay sidebar displayLives
scoreboard players set @a displayLives 5
team join main @a
gamemode adventure @a 
clear @a
scoreboard players set @a ammoReload 200
scoreboard players set @a etReload 100
effect give @a instant_health 1 255 true
effect clear @a resistance
spreadplayers 0 0 64 20 false @a
setblock 0 255 0 barrier
setblock 0 254 0 glass
title @a title {"text":"Fight","bold":true,"italic":true,"color":"red"}