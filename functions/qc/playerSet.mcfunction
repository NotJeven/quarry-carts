tp @a[score_inGame_min=-1,score_inGame=-1] 1033 51 -7 0 30
spawnpoint @a[score_inGame_min=-1,score_inGame=-1] 1033 51 -7
gamemode adventure @a[score_inGame_min=-1,score_inGame=-1]
clear @a[score_inGame_min=-1,score_inGame=-1]
# effects
effect @a[score_inGame_min=-1,score_inGame=-1] minecraft:night_vision 999999 0 true
effect @a[score_inGame_min=-1,score_inGame=-1] minecraft:saturation 999999 0 true
effect @a[score_inGame_min=-1,score_inGame=-1] minecraft:weakness 999999 200 true
effect @a[score_inGame_min=-1,score_inGame=-1] minecraft:instant_health 999999 200 true
# display
tellraw @a[score_inGame_min=-1,score_inGame=-1] [{"text":"Map:      "},{"text":"Quarry Carts","color":"yellow"}]
tellraw @a[score_inGame_min=-1,score_inGame=-1] [{"text":"Author:  "},{"text":"Jeven","color":"yellow"}]
tellraw @a[score_inGame_min=-1,score_inGame=-1] [{"text":"Version: "},{"text":"v0.10","color":"yellow"}]
tellraw @a[score_inGame_min=-1,score_inGame=-1] {"text":""}
tellraw @a[score_inGame_min=-1,score_inGame=-1] [{"text":"Learn more about "},{"text":"Quarry Carts","color":"purple","underlined":"true","clickEvent":{"action":"open_url","value":"http://jevenlabs.net/qc"},"hoverEvent":{"action":"show_text","value":"Quarry Carts website ->"}},{"text":"."}]
title @a[score_inGame_min=-1,score_inGame=-1] times 20 60 20
title @a[score_inGame_min=-1,score_inGame=-1] subtitle [{"text":"Quarry Carts","color":"yellow"},{"text":" by ","color":"white"},{"text":"Jeven","color":"yellow"}]
title @a[score_inGame_min=-1,score_inGame=-1] title ""
# set scores
scoreboard teams leave @a[score_inGame_min=-1,score_inGame=-1]
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] displayCooldown -100
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] left 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needItem 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] midJoin 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needSword 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needBow 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needShovel 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needHelm 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needChest 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needChest 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needLeg 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] needBoot 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] respawn 0
scoreboard players set @a[score_inGame_min=-1,score_inGame=-1] inGame 0