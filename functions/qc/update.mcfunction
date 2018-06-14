# some eggs and stuff
entitydata @e[type=Guardian] {Motion:[0.0,0.0,0.0]}
# test teams
testfor @a[team=team1]
SuccessCountObjective:var SuccessCountName:@onBlue
testfor @a[team=team2]
SuccessCountObjective:var SuccessCountName:@onRed
# update second
scoreboard players add @e[type=Item,name=second,score_var_min=0,score_var=19] var 1
execute @tickSecond ~ ~ ~ run tickSecond

# player needs items
execute @a[score_needItem_min=1,score_needItem=1] ~ ~ ~ execute @e[type=Item,name=itemGive] ~1 ~ ~ fill ~14 ~ ~ ~ ~ ~ minecraft:redstone_block

# when to start the game
testfor @a[team=!,score_inGame_min=0,score_inGame=0]
SuccessCountName:@e[type=Item,name=playersOnTeams] SuccessCountObjective:var
execute @e[type=Item,name=gameRunning,score_var_min=0,score_var=0] ~ ~ ~ execute @e[type=Item,name=playersOnTeams,score_var_min=4] ~ ~ ~ run countdown
# start
execute @e[type=Item,name=time,score_var_min=10,score_var=10] ~ ~ ~ execute @e[type=Item,name=gameStart] ~1 ~ ~ fill ~14 ~ ~ ~ ~ ~ minecraft:redstone_block
# restart
scoreboard players add @e[type=Item,name=tillReset,score_var_min=-10,score_var=99] var 1
execute @e[type=Item,name=tillReset,score_var_min=100,score_var=100] ~ ~ ~ run restart
# hold carts
entitydata @e[type=MinecartSpawner,name=redCart] {Motion:[0.0,0.0,0.0]}
entitydata @e[type=MinecartSpawner,name=blueCart] {Motion:[0.0,0.0,0.0]}

# count time up
scoreboard players add @e[type=Item,name=time,score_var_min=-305] var 1
# lobby tells
scoreboard players add @a[score_inGame_min=0,score_inGame=0,score_displayCooldown=-1] displayCooldown 1
execute @playerUpdate ~ ~ ~ run playerUpdate
# at world spawn
scoreboard players set @a[-10,100,-10,dx=20,dy=20,dz=20] inGame -1
# deal with new players
execute @a[score_inGame_min=-1,score_inGame=-1] ~ ~ ~ run playerSet

# leave game
scoreboard players set @a[score_left_min=1] inGame -1
# teams
execute @a[score_inGame_min=0,score_inGame=0] ~ ~-1 ~ detect ~ ~ ~ minecraft:stained_glass 7 scoreboard players set @p currentColour 0
execute @a[score_inGame_min=0,score_inGame=0] ~ ~-1 ~ detect ~ ~ ~ minecraft:stained_glass 11 scoreboard players set @p currentColour 1
execute @a[score_inGame_min=0,score_inGame=0] ~ ~-1 ~ detect ~ ~ ~ minecraft:stained_glass 14 scoreboard players set @p currentColour 2
execute @teamLeave ~ ~ ~ run teamLeave
execute @joinTeam1 ~ ~ ~ run joinTeam1
execute @joinTeam2 ~ ~ ~ run joinTeam2
# deaths/respawning
execute @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=0,score_inGame=0] ~ ~ ~ run deathPre
execute @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] ~ ~ ~ run deathWhile
execute @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=2,score_inGame=2] ~ ~ ~ run deathPost
execute @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=0,score_inGame=0] ~ ~ ~ run alivePre
execute @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] ~ ~ ~ run aliveWhile
execute @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=2,score_inGame=2] ~ ~ ~ run alivePost
execute @a[score_sinceDeath_min=200,score_respawn_min=2,score_respawn=2,score_inGame_min=1,score_inGame=1] ~ ~ ~ run spawnPlayer
# respawn delay display
execute @respawn9 ~ ~ ~ run respawn9
execute @respawn8 ~ ~ ~ run respawn8
execute @respawn7 ~ ~ ~ run respawn7
execute @respawn6 ~ ~ ~ run respawn6
execute @respawn5 ~ ~ ~ run respawn5
execute @respawn4 ~ ~ ~ run respawn4
execute @respawn3 ~ ~ ~ run respawn3
execute @respawn2 ~ ~ ~ run respawn2
execute @respawn1 ~ ~ ~ run respawn1
