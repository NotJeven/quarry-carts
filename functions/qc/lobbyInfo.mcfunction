title @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=1,score_displayCooldown=1] times 0 1000000000 0
# countdown time sound
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ execute @e[type=armor_stand,name=time,score_var=0] ~ ~ ~ playsound item.flintandsteel.use master @a ~ ~ ~ 100 0 1

title @e[score_inGame_min=1,score_inGame=1] subtitle [{"text":""},{}]
execute @e[type=armor_stand,name=gameRunning,score_var_min=0,score_var=0] ~ ~ ~ title @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=1,score_displayCooldown=1] subtitle {"text":"Waiting for players","color":"red"}
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ scoreboard players operation gamestart var = @e[type=armor_stand,name=time] var
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ scoreboard players operation gamestart var /= -20 const
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ scoreboard players operation gamestart var += 1 const
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ execute @e[type=armor_stand,name=time,score_var=-20] ~ ~ ~ title @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=1,score_displayCooldown=1] subtitle [{"text":"Game starting in: ","color":"green"},{"score":{"name":"gamestart","objective":"var"}},{"text":" seconds","color":"green"}]
execute @e[type=armor_stand,name=gameRunning,score_var_min=1,score_var=1] ~ ~ ~ execute @e[type=armor_stand,name=time,score_var_min=-19,score_var=0] ~ ~ ~ title @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=1,score_displayCooldown=1] subtitle [{"text":"Game starting in: ","color":"green"},{"score":{"name":"gamestart","objective":"var"}},{"text":" second","color":"green"}]
execute @e[type=armor_stand,name=gameRunning,score_var_min=2,score_var=2] ~ ~ ~ title @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=1,score_displayCooldown=1] subtitle {"text":"Game in progress","color":"green"}
title @a[score_inGame_min=0,score_inGame=0,score_displayCooldown_min=1,score_displayCooldown=1] title ""
