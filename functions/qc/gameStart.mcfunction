# reset titles
title @a[team=!] times 0 0 0
# stop counting seconds
scoreboard players set @e[type=Item,name=second] var -1
# set some scores
scoreboard players set @e[type=Item,name=gameRunning] var 2
scoreboard players set @a[team=!] needItem 1
scoreboard players set @a[team=!] inGame 1
spawnpoint @a[team=!] 1073 22 -13
effect @a[team=!] minecraft:weakness 0
gamemode adventure @a[team=!]
# blue cart
summon MinecartSpawner 1027 19 -12 {CustomName:blueCart,Invulnerable:1,CustomDisplayTile:1,DisplayTile:minecraft:wool,DisplayData:11}
# red cart
summon MinecartSpawner 1118 19 13 {CustomName:redCart,Invulnerable:1,CustomDisplayTile:1,DisplayTile:minecraft:wool,DisplayData:14}
# teleports
tp @a[team=team2] 1141 14 0 90 0
tp @a[team=team1] 1004 14 0 -90 0
function lobbyInfo


# blue wins run this
