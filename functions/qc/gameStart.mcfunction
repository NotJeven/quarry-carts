# reset titles
title @a[team=!] times 0 0 0
# stop counting seconds
scoreboard players set @e[type=armor_stand,name=second] var -1
# set some scores
scoreboard players set @e[type=armor_stand,name=gameRunning] var 2
scoreboard players set @a[team=!] needItem 1
scoreboard players set @a[team=!] inGame 1
spawnpoint @a[team=!] 1073 22 -13
effect @a[team=!] minecraft:weakness 0
gamemode adventure @a[team=!]
# blue cart
summon minecraft:spawner_minecart 1027 19 -12 {CustomName:blueCart,Invulnerable:1,CustomDisplayTile:1,DisplayTile:"minecraft:wool",DisplayData:11}
# red cart
summon minecraft:spawner_minecart 1118 19 13 {CustomName:redCart,Invulnerable:1,CustomDisplayTile:1,DisplayTile:"minecraft:wool",DisplayData:14}
# teleports
tp @a[team=team2] 1141 14 0 90 0
tp @a[team=team1] 1004 14 0 -90 0
# clear inst health effect
effect @a minecraft:instant_health 0
function qc:lobbyInfo