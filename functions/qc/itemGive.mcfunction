clear @a[score_needItem_min=1,score_needItem=1]
give @a[score_needItem_min=1,score_needItem=1] minecraft:iron_sword 1 0 {Unbreakable:1}
give @a[score_needItem_min=1,score_needItem=1] minecraft:bow 1 0 {Unbreakable:1}
give @a[score_needItem_min=1,score_needItem=1] minecraft:wooden_shovel 1 0 {CanDestroy:["minecraft:dirt"],Unbreakable:1}
give @a[score_needItem_min=1,score_needItem=1] minecraft:dirt 20 1 {CanPlaceOn:["minecraft:stone","minecraft:dirt","minecraft:planks"]}
give @a[score_needItem_min=1,score_needItem=1] minecraft:arrow 32 0
replaceitem entity @a[score_needItem_min=1,score_needItem=1] slot.armor.head minecraft:chainmail_helmet 1 0 {Unbreakable:1}
replaceitem entity @a[team=team2,score_needItem_min=1,score_needItem=1] slot.armor.chest minecraft:leather_chestplate 1 0 {display:{color:14745600},Unbreakable:1}
replaceitem entity @a[team=team1,score_needItem_min=1,score_needItem=1] slot.armor.chest minecraft:leather_chestplate 1 0 {display:{color:225},Unbreakable:1}
replaceitem entity @a[score_needItem_min=1,score_needItem=1] slot.armor.legs minecraft:chainmail_leggings 1 0 {Unbreakable:1}
replaceitem entity @a[score_needItem_min=1,score_needItem=1] slot.armor.feet minecraft:chainmail_boots 1 0 {Unbreakable:1}
# give sentry
replaceitem entity Thungon slot.inventory.0 minecraft:spawn_egg 1 68 {display:{Name:"Mini-Sentry",Lore:["Sometimes, you need a little less gun."]}}
replaceitem entity Vanman229 slot.inventory.0 minecraft:spawn_egg 1 86 {display:{Name:"Sentry",Lore:["I built that!"]}}
replaceitem entity vivalazebra_ slot.inventory.0 minecraft:potion 1 16385 {disply:{Name:"Medigun",Lore:["MEDIC!"]}}
replaceitem entity Jeven_ slot.inventory.0 minecraft:bow 1 1 {ench:[{id:50,lvl:1}],display:{Name:"Flamethrower",Lore:["MMMPHHHMMM!"]}}
replaceitem entity NotJeven slot.inventory.0 minecraft:bow 1 1 {ench:[{id:50,lvl:1}],display:{Name:"Flamethrower",Lore:["MMMPHHHMMM!"]}}
scoreboard players reset @a[score_needItem_min=1,score_needItem=1] needItem