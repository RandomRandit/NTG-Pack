execute as @a run execute store result score @s shearCheck run clear @s minecraft:shears 0
item replace entity @a[scores={shearCheck=0}] hotbar.6 with minecraft:shears{CanDestroy:["#wool"],Enchantments:[{id:effieciency,lvl:3}],Unbreakable:1,display:{Name:'{"text":"Wool Eater","bold":"true"}'},HideFlags:15}
clear @a[scores={shearCheck=2}] shears