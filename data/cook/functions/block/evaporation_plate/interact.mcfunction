
#modify data
data merge entity @s {ItemRotation:0b}

#add/remove food
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] run function cook:block/evaporation_plate/interact_destroy_holder
execute if score $in_0 cook_data matches 0 if entity @p[tag=cook_interact,predicate=cook:holding_ingrediant,distance=..8] run function cook:block/evaporation_plate/interact_add_liquid

#end loop
scoreboard players set $in_0 cook_data -1
