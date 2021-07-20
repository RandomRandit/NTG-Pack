execute as @e[type=marker,name=constFillAir] at @s run fill 63 ~ 63 -64 ~1 -64 air
execute as @a at @s run title @s[y=32.0,distance=0..2.5] actionbar {"text":"The Build Height Limit Is 32 Blocks","color":"red"}
execute if block 0 255 0 minecraft:barrier run function main:inventory
execute if block 0 255 0 minecraft:barrier run function main:etm
execute if block 0 255 0 minecraft:barrier run function main:sword
execute if block 0 255 0 minecraft:barrier run function main:acm
execute if block 0 255 0 minecraft:barrier run function main:armor
execute if block 0 255 0 minecraft:barrier run function main:shear
execute if block 0 255 0 minecraft:barrier run function main:blocks
function main:tmarl
effect give @a jump_boost 10 2 true
effect give @a speed 10 2 true
effect give @a slow_falling 10 0 true
effect give @a saturation 10 0 true
effect give @a glowing 10 0 true
stopsound @a * minecraft:entity.item.pickup
scoreboard players enable @a pcr
execute if block 0 255 0 minecraft:barrier run execute as @a[scores={death2=1..}] run function main:death2