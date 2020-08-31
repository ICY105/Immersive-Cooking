
#count existing ingredients and squash to 8 spawning locations
execute positioned ~ ~-1 ~ store result score $temp_0 cook_data if entity @e[tag=cook_mixing_bowl_item,distance=..0.05]

#copy item to armor stand
execute if score $temp_0 cook_data matches 1.. run data remove block -29999999 0 1601 Items
execute if score $temp_0 cook_data matches 1.. positioned ~ ~-1 ~ run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_mixing_bowl_item,distance=..0.05,limit=1] ArmorItems[3]
execute if score $temp_0 cook_data matches 1.. positioned ~ ~-1 ~ run kill @e[tag=cook_mixing_bowl_item,distance=..0.05,limit=1]
execute if score $temp_0 cook_data matches 1.. run loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}

#tag
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_has_item
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_done
