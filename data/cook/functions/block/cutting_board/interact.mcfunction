
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:0}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:2}

#add/remove food
execute if entity @s[tag=!cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] run function cook:block/cutting_board/create_item_holder
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] run function cook:block/cutting_board/destroy_item_holder

#crafing
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{knife:1b} }}] run scoreboard players add @s cook_data 1

execute if score @s cook_data matches 6.. positioned ~ ~-0.75 ~-0.1 as @e[tag=cook_cutting_board_item,distance=..0.05] at @s run function cook:block/cutting_board/complete_recipe 
execute if score @s cook_data matches 6.. run scoreboard players set @s cook_data 0


#end loop
scoreboard players set $in_0 cook_data -1
