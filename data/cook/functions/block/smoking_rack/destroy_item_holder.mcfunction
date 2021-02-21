
#count existing ingredients and squash to 8 spawning locations
execute if entity @s[tag=cook_rot_1] positioned ~-0.28 ~-2.1 ~ store result score $temp_0 cook_data if entity @e[tag=cook_smoking_item,distance=..0.2]
execute if entity @s[tag=cook_rot_2] positioned ~ ~-2.1 ~0.28 store result score $temp_0 cook_data if entity @e[tag=cook_smoking_item,distance=..0.2]

#copy item to armor stand
execute if score $temp_0 cook_data matches 1.. run data remove block -29999999 0 1601 Items
execute if score $temp_0 cook_data matches 1.. if entity @s[tag=cook_rot_1] positioned ~-0.4 ~-2.1 ~ run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_smoking_item,distance=..0.4,limit=1,sort=nearest] ArmorItems[3]
execute if score $temp_0 cook_data matches 1.. if entity @s[tag=cook_rot_1] positioned ~-0.4 ~-2.1 ~ run kill @e[tag=cook_smoking_item,distance=..0.4,limit=1,sort=nearest]
execute if score $temp_0 cook_data matches 1.. if entity @s[tag=cook_rot_2] positioned ~ ~-2.1 ~0.4 run data modify block -29999999 0 1601 Items append from entity @e[tag=cook_smoking_item,distance=..0.4,limit=1,sort=nearest] ArmorItems[3]
execute if score $temp_0 cook_data matches 1.. if entity @s[tag=cook_rot_2] positioned ~ ~-2.1 ~0.4 run kill @e[tag=cook_smoking_item,distance=..0.4,limit=1,sort=nearest]
execute if score $temp_0 cook_data matches 1.. run loot give @p[tag=cook_interact] mine -29999999 0 1601 air{drop_contents:true}

#tag
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_has_item

scoreboard players set $in_0 cook_data 1
