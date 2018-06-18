scoreboard players set @a[team=!team2,score_currentColour_min=2,score_currentColour=2] displayCooldown -100
title @a[team=!team2,score_currentColour_min=2,score_currentColour=2] times 10 80 10
title @a[team=!team2,score_currentColour_min=2,score_currentColour=2] subtitle [{"text":"Welcome to ","color":"white"},{"text":"RED","color":"red"},{"text":".","color":"white"}]
title @a[team=!team2,score_currentColour_min=2,score_currentColour=2] title ""
playsound entity.horse.armor master @a[team=!team2,score_currentColour_min=2,score_currentColour=2] ~ ~ ~ 100 1 1
clear @a[team=!team2,score_currentColour_min=2,score_currentColour=2]
scoreboard teams join team2 @a[team=!team2,score_currentColour_min=2,score_currentColour=2]
execute @e[type=armor_stand,name=gameRunning,score_var_min=2,score_var=2] ~ ~ ~ scoreboard players set @a[team=!,score_inGame_min=0,score_inGame=0] midJoin 1
