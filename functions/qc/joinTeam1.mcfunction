scoreboard players set @a[team=!team1,score_currentColour_min=1,score_currentColour=1] displayCooldown -100
title @a[team=!team1,score_currentColour_min=1,score_currentColour=1] times 10 80 10
title @a[team=!team1,score_currentColour_min=1,score_currentColour=1] subtitle [{"text":"Welcome to ","color":"white"},{"text":"BLU","color":"blue"},{"text":".","color":"white"}]
title @a[team=!team1,score_currentColour_min=1,score_currentColour=1] title ""
playsound mob.horse.armor master @a[team=!team1,score_currentColour_min=1,score_currentColour=1] 0 100 0 100 1 1
clear @a[team=!team1,score_currentColour_min=1,score_currentColour=1]
scoreboard teams join team1 @a[team=!team1,score_currentColour_min=1,score_currentColour=1]
execute @e[type=armor_stand,name=gameRunning,score_var_min=2,score_var=2] ~ ~ ~ scoreboard players set @a[team=!,score_inGame_min=0,score_inGame=0] midJoin 1
