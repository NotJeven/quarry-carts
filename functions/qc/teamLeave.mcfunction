scoreboard players set @a[team=!,score_currentColour_min=0,score_currentColour=0] displayCooldown -100
title @a[team=!,score_currentColour_min=0,score_currentColour=0] times 10 80 10
title @a[team=!,score_currentColour_min=0,score_currentColour=0] subtitle [{"text":"You are a ","color":"white"},{"text":"TRAITOR","color":"gray"},{"text":"!","color":"white"}]
title @a[team=!,score_currentColour_min=0,score_currentColour=0] title ""
playsound entity.enderdragon.flap master @a[team=!,score_currentColour_min=0,score_currentColour=0] 0 100 0 100 .7 1
scoreboard teams leave @a[team=!,score_currentColour_min=0,score_currentColour=0]


