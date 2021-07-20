team join dead @a[team=!main,team=!dead]
team join dead @a[scores={deaths=5..}]
team join dead @a[scores={rejoin=1..}]
gamemode spectator @a[team=dead]
scoreboard players set @a[team=dead] deaths 0
scoreboard players set @a[team=dead] rejoin 0