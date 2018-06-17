# some eggs and stuff
entitydata @e[type=Guardian] {Motion:[0.0,0.0,0.0]}

# test teams
scoreboard players set @e[type=armor_stand,name=onBlue] var 0
scoreboard players set @e[type=armor_stand,name=onRed] var 0
execute @a[team=team1] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=onBlue] var 1
execute @a[team=team2] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=onRed] var 1

# update second
scoreboard players add @e[type=armor_stand,name=second,score_var_min=0,score_var=19] var 1
execute @e[type=armor_stand,name=second,score_var_min=20,score_var=20] ~ ~ ~ function qc:tickSecond

# player needs items
execute @a[score_needItem_min=1,score_needItem=1] ~ ~ ~ function qc:itemGive

# when to start the game
scoreboard players set @e[type=armor_stand,name=playersOnTeams] var 0
execute @a[team=!,score_inGame_min=0,score_inGame=0] ~ ~ ~ scoreboard players add @e[type=armor_stand,name=playersOnTeams] var 1
execute @e[type=armor_stand,name=gameRunning,score_var_min=0,score_var=0] ~ ~ ~ execute @e[type=armor_stand,name=playersOnTeams,score_var_min=2] ~ ~ ~ function qc:countdown
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ function qc:countdownstop if @e[type=armor_stand,name=playersOnTeams,score_var=0]

# start
execute @e[type=armor_stand,name=time,score_var_min=10,score_var=10] ~ ~ ~ function qc:gameStart
# restart
scoreboard players add @e[type=armor_stand,name=tillReset,score_var_min=-10,score_var=99] var 1
execute @e[type=armor_stand,name=tillReset,score_var_min=100,score_var=100] ~ ~ ~ function qc:restart
# hold carts
entitydata @e[type=spawner_minecart,name=redCart] {Motion:[0.0,0.0,0.0]}
entitydata @e[type=spawner_minecart,name=blueCart] {Motion:[0.0,0.0,0.0]}

# move carts
execute @a[team=team1,m=adventure] ~ ~ ~ execute @e[type=spawner_minecart,name=blueCart,r=2] ~ ~ ~ entitydata @e[type=spawner_minecart,name=blueCart] {Motion:[0.075,0.0,0.0]}
execute @r[team=team2,m=adventure] ~ ~ ~ execute @e[type=spawner_minecart,name=redCart,r=2] ~ ~ ~ entitydata @e[type=spawner_minecart,name=redCart] {Motion:[-0.075,0.0,0.0]}

# winning!
function qc:blueWin if @e[x=1108,y=14,z=-9,r=1,type=spawner_minecart,name=blueCart]
function qc:redWin if @e[x=1037,y=14,z=10,r=1,type=spawner_minecart,name=redCart]

# count time up
scoreboard players add @e[type=armor_stand,name=time,score_var_min=-305] var 1
# lobby tells
scoreboard players add @a[score_inGame_min=0,score_inGame=0,score_displayCooldown=-1] displayCooldown 1
execute @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=0,score_displayCooldown=0] ~ ~ ~ function qc:playerUpdate
# at world spawn
scoreboard players set @a[x=-10,y=100,z=-10,dx=20,dy=20,dz=20] inGame -1
# deal with new players
execute @a[score_inGame_min=-1,score_inGame=-1] ~ ~ ~ function qc:playerSet

# leave game
scoreboard players set @a[score_left_min=1] inGame -1
# teams
execute @a[score_inGame_min=0,score_inGame=0] ~ ~-1 ~ detect ~ ~ ~ minecraft:stained_glass 7 scoreboard players set @p currentColour 0
execute @a[score_inGame_min=0,score_inGame=0] ~ ~-1 ~ detect ~ ~ ~ minecraft:stained_glass 11 scoreboard players set @p currentColour 1
execute @a[score_inGame_min=0,score_inGame=0] ~ ~-1 ~ detect ~ ~ ~ minecraft:stained_glass 14 scoreboard players set @p currentColour 2
execute @a[team=!,score_currentColour_min=0,score_currentColour=0] ~ ~ ~ function qc:teamLeave
execute @a[team=!team1,score_currentColour_min=1,score_currentColour=1] ~ ~ ~ function qc:joinTeam1
execute @a[team=!team2,score_currentColour_min=2,score_currentColour=2] ~ ~ ~ function qc:joinTeam2
# deaths/respawning
execute @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=0,score_inGame=0] ~ ~ ~ function qc:deathPre
execute @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:deathWhile
execute @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=2,score_inGame=2] ~ ~ ~ function qc:deathPost
execute @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=0,score_inGame=0] ~ ~ ~ function qc:alivePre
execute @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:aliveWhile
execute @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=2,score_inGame=2] ~ ~ ~ function qc:alivePost
execute @a[score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:spawnPlayer
# respawn delay display
execute @a[score_sinceDeath_min=20,score_sinceDeath=21,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn9
execute @a[score_sinceDeath_min=40,score_sinceDeath=41,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn8
execute @a[score_sinceDeath_min=60,score_sinceDeath=61,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn7
execute @a[score_sinceDeath_min=80,score_sinceDeath=81,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn6
execute @a[score_sinceDeath_min=100,score_sinceDeath=101,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn5
execute @a[score_sinceDeath_min=120,score_sinceDeath=121,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn4
execute @a[score_sinceDeath_min=140,score_sinceDeath=141,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn3
execute @a[score_sinceDeath_min=160,score_sinceDeath=161,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn2
execute @a[score_sinceDeath_min=180,score_sinceDeath=181,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ function qc:respawn1

# leave team 
scoreboard players set @a[x=1143,y=8,z=1,r=2] inGame -1
scoreboard players set @a[x=1002,y=8,z=0,r=2] inGame -1

# no players in game reset map
execute @e[type=armor_stand,name=playersOnTeams,score_var_min=0,score_var=0] ~ ~ ~ function qc:countdownstop if @e[type=armor_stand,name=gameRunning,score_var=2,score_var_min=2]