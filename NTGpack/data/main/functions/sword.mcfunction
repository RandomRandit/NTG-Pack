execute as @a run execute store result score @s swordCheck run clear @s minecraft:iron_sword 0
item replace entity @a[scores={swordCheck=0}] hotbar.2 with minecraft:iron_sword{Unbreakable:1,display:{Name:'{"text":"Knife","bold":"true"}'},HideFlags:6}
clear @a[scores={swordCheck=2}] iron_sword