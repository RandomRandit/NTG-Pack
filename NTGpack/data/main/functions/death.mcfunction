scoreboard players remove @a[scores={death1=1..}] displayLives 1
spreadplayers 0 0 64 20 false @a[scores={death1=1..}]
effect give @a[scores={death1=1..}] invisibility 5 0 false
effect give @a[scores={death1=1..}] resistance 5 255 false
effect give @a[scores={death1=1..}] weakness 5 255 false
clear @a[scores={death1=1..}]
scoreboard players set @a[scores={death1=1..}] etReload 100
scoreboard players set @a[scores={death1=1..}] ammoReload 200