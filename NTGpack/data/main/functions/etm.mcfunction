execute as @e[type=trident,nbt={inGround:1b}] at @s run function main:etd
execute as @a run execute store result score @s etrCheck run clear @s minecraft:trident 0
scoreboard players set @a[scores={etrCheck=1..}] etReload 0
scoreboard players add @a[scores={etrCheck=0}] etReload 1
item replace entity @a[scores={etReload=101..}] hotbar.1 with trident{display:{Name:'{"text":"Exploding Trident","color":"dark_red","bold":true}',Lore:['{"text":"Explodes on contact with blocks or other players","color":"dark_purple"}']},HideFlags:2,Enchantments:[{}],AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:-10,Operation:0,UUID:[I;-1541762785,1034043897,-1348411575,-363144812],Slot:"mainhand"}]}
item replace entity @a[scores={etReload=1..20}] hotbar.1 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 5
item replace entity @a[scores={etReload=21..40}] hotbar.1 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 4
item replace entity @a[scores={etReload=41..60}] hotbar.1 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 3
item replace entity @a[scores={etReload=61..80}] hotbar.1 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 2
item replace entity @a[scores={etReload=81..100}] hotbar.1 with gray_dye{display:{Name:'{"text":"Reloading","color":"gray"}'}} 1