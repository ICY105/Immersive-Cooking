
execute store result score $temp_1 cook_data run data get entity @s Item.tag.Facing

#count existing ingredients and squash to 8 spawning locations
execute if score $temp_1 cook_data matches 2 positioned ~ ~-0.98 ~0.6 store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]
execute if score $temp_1 cook_data matches 3 positioned ~ ~-0.98 ~-0.6 store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]
execute if score $temp_1 cook_data matches 4 positioned ~0.6 ~-0.98 ~ store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]
execute if score $temp_1 cook_data matches 5 positioned ~-0.6 ~-0.98 ~ store result score $temp_0 cook_data if entity @e[tag=cook_oven_item,distance=..0.05]

#copy item to armor stand
execute if score $temp_0 cook_data matches 1.. run data remove block -29999999 0 1601 Items

execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 2 positioned ~ ~-0.98 ~0.6 run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_oven_item,distance=..0.05,limit=1] HandItems[0]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 2 positioned ~ ~-0.98 ~0.6 run kill @e[tag=cook_oven_item,distance=..0.05,limit=1]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 3 positioned ~ ~-0.98 ~-0.6 run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_oven_item,distance=..0.05,limit=1] HandItems[0]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 3 positioned ~ ~-0.98 ~-0.6 run kill @e[tag=cook_oven_item,distance=..0.05,limit=1]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 4 positioned ~0.6 ~-0.98 ~ run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_oven_item,distance=..0.05,limit=1] HandItems[0]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 4 positioned ~0.6 ~-0.98 ~ run kill @e[tag=cook_oven_item,distance=..0.05,limit=1]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 5 positioned ~-0.6 ~-0.98 ~ run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_oven_item,distance=..0.05,limit=1] HandItems[0]
execute if score $temp_0 cook_data matches 1.. if score $temp_1 cook_data matches 5 positioned ~-0.6 ~-0.98 ~ run kill @e[tag=cook_oven_item,distance=..0.05,limit=1]

execute if score $temp_0 cook_data matches 1.. run loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}

#tag
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_has_item

scoreboard players set $in_0 cook_data 1
