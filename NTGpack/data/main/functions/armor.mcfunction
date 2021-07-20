execute as @a run execute store result score @s armorCheck run clear @s minecraft:leather_helmet 0
item replace entity @a armor.head with minecraft:leather_helmet{Enchantments:[{id:projectile_protection,lvl:5}],Unbreakable:1,display:{Name:'{"text":"Brodie Helmet","bold":"true","color":"blue"}'},HideFlags:7}
clear @a[scores={armorCheck=2}] leather_helmet