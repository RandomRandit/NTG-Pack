gamerule doTileDrops false
gamerule naturalRegeneration false
gamerule keepInventory true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
time set 18000
weather thunder
worldborder center 0.0 0.0
worldborder set 128
scoreboard objectives add leaderboard dummy {"text":"The Leaderboard","bold":true,"italic":true,"underlined":true,"color":"dark_red"}]
scoreboard objectives add rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add armorCheck dummy
scoreboard objectives add shearCheck dummy
scoreboard objectives add blockCheck dummy
scoreboard objectives add paneCheck dummy
scoreboard objectives add etrCheck dummy
scoreboard objectives add swordCheck dummy
scoreboard objectives add ammoCheck dummy
scoreboard objectives add crossbowCheck dummy
scoreboard objectives add etReload dummy
scoreboard objectives add ammoReload dummy
scoreboard objectives add crossbowFired minecraft.used:minecraft.crossbow
scoreboard objectives add math dummy
scoreboard objectives add deaths deathCount
scoreboard objectives add death1 deathCount
scoreboard objectives add death2 deathCount
scoreboard objectives add displayLives dummy {"text":"Lives","color":"blue","bold":"true"}
scoreboard objectives add playerCount dummy
scoreboard objectives add pcr trigger
scoreboard objectives add playerNeed dummy
scoreboard objectives add playerNeedActual dummy
scoreboard players set 1 math 1

team add main {"text":"TSIFA","color":"dark_red"}
team add dead {"text":"Dead Player","color":"gray"}

team modify main color green
team modify dead color gray
schedule function main:regeneration 10s
schedule function main:checkgs 20t

say Finished Loading