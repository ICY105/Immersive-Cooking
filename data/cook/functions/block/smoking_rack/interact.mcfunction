
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:0}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:2}

#add/remove food
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @s[tag=!cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] run function cook:block/smoking_rack/create_item_holder
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/smoking_rack/destroy_item_holder

#interaction
execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=!cook_has_item] run data remove entity @s Item.tag.display.Name

#end loop
scoreboard players set $in_0 cook_data -1
