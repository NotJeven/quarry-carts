tp @playerSet 1033 51 -7 0 30
spawnpoint @playerSet 1033 51 -7
gamemode adventure @playerSet
clear @playerSet
# effects
effect @playerSet minecraft:night_vision 999999 0 true
effect @playerSet minecraft:saturation 999999 0 true
effect @playerSet minecraft:weakness 999999 200 true
effect @playerSet minecraft:instant_health 999999 200 true
# display
tellraw @playerSet [{text:"Map: "},{text:"Quarry Carts",color:yellow}]
tellraw @playerSet [{text:"Author: "},{text:"Jeven",color:yellow}]
tellraw @playerSet [{text:"Version: "},{text:"v0.4",color:yellow}]
tellraw @playerSet {text:""}
tellraw @playerSet [{text:"Learn more about "},{text:"Quarry Carts",color:purple,underlined:true,clickEvent:{action:open_url,value:http://jevenlabs.net/qc},hoverEvent:{action:show_text,value:"Visit Quarry Carts website."}},{text:"."}]
title @playerSet times 20 60 20
title @playerSet subtitle [{text:"By Jeven"}]
title @playerSet title [{text:"Quarry Carts",color:yellow}]
# set scores
scoreboard teams leave @playerSet
scoreboard players set @playerSet displayCooldown -100
scoreboard players set @playerSet left 0
scoreboard players set @playerSet needItem 0
scoreboard players set @playerSet midJoin 0
scoreboard players set @playerSet needSword 0
scoreboard players set @playerSet needBow 0
scoreboard players set @playerSet needShovel 0
scoreboard players set @playerSet needHelm 0
scoreboard players set @playerSet needChest 0
scoreboard players set @playerSet needChest 0
scoreboard players set @playerSet needLeg 0
scoreboard players set @playerSet needBoot 0
scoreboard players set @playerSet respawn 0
scoreboard players set @playerSet inGame 0