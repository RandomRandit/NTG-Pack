execute as @e[type=marker,name=fillAir] at @s run fill 63 ~ 63 -64 ~1 -64 air
fill 63 4 63 -64 4 -64 cyan_wool
fill 63 3 63 -64 3 -64 lime_wool
fill 63 2 63 -64 2 -64 yellow_wool
fill 63 1 63 -64 1 -64 orange_wool
fill 63 0 63 -64 0 -64 red_wool

fill -3 64 -3 3 68 3 air

summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}
summon minecraft:armor_stand 0 5 0 {CustomName:"\"struct\"",Invisible:1}

spreadplayers 0.0 0.0 20 48 false @e[type=minecraft:armor_stand,name=struct]

execute as @e[type=minecraft:armor_stand,name=struct] at @s run function main:bh1

execute as @e[type=minecraft:armor_stand,name=struct] at @s if predicate main:halfchance run function main:bh2

kill @e[type=armor_stand,name=struct]
