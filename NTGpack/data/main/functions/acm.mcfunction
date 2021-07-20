execute as @a run execute store result score @s ammoCheck run clear @s minecraft:arrow 0
execute as @a run execute store result score @s crossbowCheck run clear @s minecraft:crossbow 0
clear @a[scores={crossbowCheck=2..}] crossbow
item replace entity @a[scores={ammoCheck=0,ammoReload=201..}] hotbar.8 with minecraft:arrow{display:{Name:'{"text":"Crossbow Bolt","bold":"true","color":"dark_gray"}'},HideFlags:2} 32
scoreboard players set @a[scores={ammoCheck=1..}] ammoReload 0
scoreboard players add @a[scores={ammoCheck=0}] ammoReload 1
kill @e[type=arrow,nbt={inGround:1b}]
clear @a[scores={crossbowFired=1..}] arrow 1
scoreboard players remove @a[scores={crossbowFired=1..}] crossbowFired 1
item replace entity @a[scores={ammoReload=1..20}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 10
item replace entity @a[scores={ammoReload=21..40}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 9
item replace entity @a[scores={ammoReload=41..60}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 8
item replace entity @a[scores={ammoReload=61..80}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 7
item replace entity @a[scores={ammoReload=81..100}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 6
item replace entity @a[scores={ammoReload=101..120}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 5
item replace entity @a[scores={ammoReload=121..140}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 4
item replace entity @a[scores={ammoReload=141..160}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 3
item replace entity @a[scores={ammoReload=161..180}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 2
item replace entity @a[scores={ammoReload=181..200}] hotbar.0 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 1
item replace entity @a[scores={ammoCheck=1..}] hotbar.0 with crossbow{Enchantments:[{}],display:{Name:'{"text":"Automatic Crossbow","color":"red","bold":true}',Lore:['{"text":"Will Reload Automatically If You Have More Bolts","color":"dark_purple"}']},HideFlags:39,Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-10,Operation:0,UUID:[I;460565544,-1873000901,-1228762081,-1335205476],Slot:"mainhand"}],ChargedProjectiles:[{id:"minecraft:arrow",Count:1b}],Charged:1b}