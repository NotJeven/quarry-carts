# clear minisentry
execute @e[name=Thungon,score_sinceDeath=0] ~ ~ ~ kill @e[type=Guardian]
execute @e[name=Jeven_,score_sinceDeath=0] ~ ~ ~ kill @e[type=Guardian]
# set gamemode
gamemode spectator @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1]
# clear the clears
clear @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] minecraft:arrow
clear @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] minecraft:dirt
# need items?
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needSword 1 {Inventory:[{id:"minecraft:iron_sword"}]}
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needBow 1 {Inventory:[{id:"minecraft:bow"}]}
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needShovel 1 {Inventory:[{id:"minecraft:wooden_shovel"}]}
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needHelm 1 {Inventory:[{id:"minecraft:chainmail_helmet"}]}
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needChest 1 {Inventory:[{id:"minecraft:leather_chestplate"}]}
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needLeg 1 {Inventory:[{id:"minecraft:chainmail_leggings"}]}
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needBoot 1 {Inventory:[{id:"minecraft:chainmail_boots"}]}
# Fix items lost
give @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needSword=0] minecraft:iron_sword 1 0 {Unbreakable:1}
give @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needBow=0] minecraft:bow 1 0 {Unbreakable:1}
give @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needShovel=0] minecraft:wooden_shovel 1 0 {CanDestroy:["minecraft:dirt"],Unbreakable:1}
replaceitem entity @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needHelm=0] slot.armor.head minecraft:chainmail_helmet 1 0 {Unbreakable:1}
replaceitem entity @a[team=team2,score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needChest=0] slot.armor.chest minecraft:leather_chestplate 1 0 {display:{color:14745600},Unbreakable:1}
replaceitem entity @a[team=team1,score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needChest=0] slot.armor.chest minecraft:leather_chestplate 1 0 {display:{color:225},Unbreakable:1}
replaceitem entity @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needLeg=0] slot.armor.legs minecraft:chainmail_leggings 1 0 {Unbreakable:1}
replaceitem entity @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1,score_needBoot=0] slot.armor.feet minecraft:chainmail_boots 1 0 {Unbreakable:1}
# give dirt/arrows
give @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] minecraft:arrow 32 0
give @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] minecraft:dirt 20 1 {CanPlaceOn:["minecraft:stone","minecraft:dirt","minecraft:planks"]}
# reset give scores
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needSword 0
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needBow 0
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needShovel 0
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needHelm 0 
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needChest 0
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needLeg 0 
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] needBoot 0
# reset
scoreboard players set @a[score_sinceDeath=0,score_respawn_min=0,score_respawn=0,score_inGame_min=1,score_inGame=1] respawn 1


