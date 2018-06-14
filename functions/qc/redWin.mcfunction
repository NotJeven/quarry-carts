kill @e[type=MinecartSpawner]
title @a times 10 80 10
title @a subtitle [{text:"RED",color:red},{text:" victory!",color:white}]
title @a title ""
execute @e[type=Item,name=gameEnd] ~1 ~ ~ fill ~14 ~ ~ ~ ~ ~ minecraft:redstone_block


# end game function
