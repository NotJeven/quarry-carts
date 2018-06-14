tp @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] ~ ~ ~ 0 30
# notify respawning
title @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] times 5 20 0
title @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] subtitle [{text:"Respawning in "},{text:"10",color:red},{text:" seconds"}]
title @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] title ""
playsound fire.ignite @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] 0 100 0 100 0 1
# effects
effect @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] minecraft:night_vision 999999 0 true
effect @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] minecraft:saturation 999999 0 true
# reset need scores
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needSword 0 {Inventory:[{id:minecraft:iron_sword}]}
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needBow 0 {Inventory:[{id:minecraft:bow}]}
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needShovel 0 {Inventory:[{id:minecraft:iron_shovel}]}
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needHelm 0 {Inventory:[{id:minecraft:chainmail_helmet}]}
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needChest 0 {Inventory:[{id:minecraft:leather_chestplate}]}
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needLeg 0 {Inventory:[{id:minecraft:chainmail_leggings}]}
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] needBoot 0 {Inventory:[{id:minecraft:chainmail_boots}]}
# end player needing function
scoreboard players set @a[score_sinceDeath_min=1,score_respawn_min=1,score_respawn=1,score_inGame_min=1,score_inGame=1] respawn 2


