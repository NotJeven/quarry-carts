# set const
scoreboard players set -20 const -20
scoreboard players set 1 const 1
# stops clock
execute @e[type=Item,name=initClock] ~ ~1 ~ setblock ~ ~ ~ minecraft:redstone_block
# starts map
execute @e[type=Item,name=objectiveInit] ~1 ~ ~ fill ~14 ~ ~ ~ ~ ~1 minecraft:redstone_block
execute @e[type=Item,name=teamInit] ~1 ~ ~ fill ~14 ~ ~ ~ ~ ~ minecraft:redstone_block
execute @e[type=Item,name=varSet] ~1 ~ ~ fill ~14 ~ ~ ~ ~ ~ minecraft:redstone_block
# starts clock
execute @e[type=Item,name=update] ~ ~ ~1 setblock ~ ~ ~ minecraft:redstone_block
# deal with player
scoreboard players set @gameInit inGame -1