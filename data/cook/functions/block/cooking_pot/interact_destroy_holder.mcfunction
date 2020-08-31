
#count existing ingredients and squash to 8 spawning locations
execute positioned ~ ~-1.5 ~ store result score $temp_0 cook_data if entity @e[tag=cook_pot_item,distance=..0.05]

#copy item to armor stand
execute if score $temp_0 cook_data matches 1.. run data remove block -29999999 0 1601 Items
execute if score $temp_0 cook_data matches 1.. positioned ~ ~-1.5 ~ run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_pot_item,distance=..0.05,limit=1] ArmorItems[3]
execute if score $temp_0 cook_data matches 1.. positioned ~ ~-1.5 ~ run kill @e[tag=cook_pot_item,distance=..0.05,limit=1]
execute if score $temp_0 cook_data matches 1.. run loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}

#destroy liquid
execute if score $temp_0 cook_data matches 0 run kill @e[tag=cook_pot_liquid,distance=..0.1]
execute if score $temp_0 cook_data matches 0 if entity @s[tag=cook_has_liquid] run tag @s remove cook_has_liquid

#tag
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_has_item
