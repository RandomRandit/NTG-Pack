execute as @a run execute store result score @s blockCheck run clear @s minecraft:black_wool 0
item replace entity @a[scores={blockCheck=0}] hotbar.7 with minecraft:black_wool{CanPlaceOn:["#wool"],HideFlags:16,display:{Name:'{"text":"Wool","bold":"true","color":"black"}'}} 64
clear @a[scores={blockCheck=65..}] black_wool
give @a[scores={blockCheck=1..63}] black_wool{CanPlaceOn:["#wool"],HideFlags:16,display:{Name:'{"text":"Wool","bold":"true","color":"black"}'}}