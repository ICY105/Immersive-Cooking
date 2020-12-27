
#add tag
tag @s add cook_has_trades

#first trade option
scoreboard players set $math.in_0 du_data 8
function du:math/random

execute if score $math.out_0 du_data matches 0 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 0 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/vanilla
execute if score $math.out_0 du_data matches 0 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 1 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/cinnamon
execute if score $math.out_0 du_data matches 1 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 2 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/nutmeg
execute if score $math.out_0 du_data matches 2 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 3 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/black_pepper
execute if score $math.out_0 du_data matches 3 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 4 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 4 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/saffron
execute if score $math.out_0 du_data matches 4 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 5 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 5 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/ginger
execute if score $math.out_0 du_data matches 5 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 6 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 6 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/chilli_powder
execute if score $math.out_0 du_data matches 6 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 7 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 7 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/cloves
execute if score $math.out_0 du_data matches 7 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

#second trade option
scoreboard players set $math.in_0 du_data 8
function du:math/random

execute if score $math.out_0 du_data matches 0 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 0 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/vanilla
execute if score $math.out_0 du_data matches 0 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 1 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 1 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/cinnamon
execute if score $math.out_0 du_data matches 1 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 2 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 2 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/nutmeg
execute if score $math.out_0 du_data matches 2 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 3 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 3 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/black_pepper
execute if score $math.out_0 du_data matches 3 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 4 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 4 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/saffron
execute if score $math.out_0 du_data matches 4 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 5 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 5 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/ginger
execute if score $math.out_0 du_data matches 5 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 6 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 6 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/chilli_powder
execute if score $math.out_0 du_data matches 6 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]

execute if score $math.out_0 du_data matches 7 run data modify entity @s Offers.Recipes append value {rewardExp:1b,maxUses:3,uses:0,xp:2,priceMultiplier:0.05f,specialPrice:0,demand:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:tropical_fish",Count:1b}}
execute if score $math.out_0 du_data matches 7 run loot replace block -29999999 0 1601 container.0 loot cook:food/seasoning/cloves
execute if score $math.out_0 du_data matches 7 run data modify entity @s Offers.Recipes[-1].sell set from block -29999999 0 1601 Items[0]
