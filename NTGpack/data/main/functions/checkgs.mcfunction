execute if block 0 255 0 minecraft:air run scoreboard players set @e[type=marker,name=gameLogic] playerCount 0
execute if block 0 255 0 minecraft:air run execute as @a[scores={pcr=2..}] run execute store result score @e[type=marker,name=gameLogic,limit=1] pcr run scoreboard players remove @s pcr 0
execute if block 0 255 0 minecraft:air run execute as @a[scores={pcr=2..}] run scoreboard players set @s pcr 0
execute if block 0 255 0 minecraft:air run execute as @a run scoreboard players add @e[type=marker,name=gameLogic] playerCount 1 
execute if block 0 255 0 minecraft:air run execute as @e[type=marker,name=gameLogic,limit=1] run execute if score @s pcr <= @s playerCount run setblock 0 254 0 air
execute if block 0 255 0 minecraft:air run execute as @e[type=marker,name=gameLogic,limit=1] run scoreboard players operation @s playerNeed = @s pcr
execute if block 0 255 0 minecraft:air run execute as @e[type=marker,name=gameLogic,limit=1] run execute store result score @s playerNeedActual run scoreboard players operation @s playerNeed -= @s playerCount
execute if block 0 255 0 minecraft:air run title @a actionbar [{"score":{"name":"@e[name=gameLogic,type=marker,limit=1]","objective":"playerNeedActual"},"color":"yellow","bold":true,"italic":true},{"text":" more player(s) needed till start.","color":"green","bold":false,"italic":false}]
execute if block 0 254 0 minecraft:air run function main:startgame
execute if block 0 255 0 minecraft:barrier run scoreboard players set @e[type=marker,name=gameLogic] playerCount 0 
execute if block 0 255 0 minecraft:barrier run execute as @a[team=main] run scoreboard players add @e[type=marker,name=gameLogic] playerCount 1 
execute if block 0 255 0 minecraft:barrier run execute as @e[type=marker,name=gameLogic,limit=1] run execute if score @s playerCount matches 1 run setblock 0 254 0 barrier
execute if block 0 254 0 minecraft:barrier run function main:endgame
schedule function main:checkgs 1s