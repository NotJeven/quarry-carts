kill @e[type=Guardian]
kill @e[type=spawner_minecart]
kill @e[type=Arrow]
clear @a minecraft:arrow
scoreboard players set @a inGame 2
scoreboard players set @e[type=armor_stand,name=time] var -310
scoreboard players set @e[type=armor_stand,name=gameRunning] var 3
scoreboard players set @e[type=armor_stand,name=tillReset] var -10
effect @a minecraft:weakness 999999 200 true
playsound mob.zombie.remedy master @a 0 100 0 100 1 1