
#modify data
data merge entity @s {ItemRotation:0b}

#toggle open/closed state
scoreboard players set $temp_0 cook_data 0
execute if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,distance=..8] run scoreboard players set $temp_0 cook_data 1

execute if score $temp_0 cook_data matches 1 if entity @s[tag=cook_open] run tag @s add cook_toggle
execute if score $temp_0 cook_data matches 1 run tag @s add cook_open
execute if score $temp_0 cook_data matches 1 run tag @s[tag=cook_toggle] remove cook_open
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_toggle

#modify state
execute if score $temp_0 cook_data matches 1 if entity @s[tag=!cook_open] run data modify entity @s Item.tag.CustomModelData set value 6429085
execute if score $temp_0 cook_data matches 1 if entity @s[tag=cook_open] run data modify entity @s Item.tag.CustomModelData set value 6429086

#item add/remove
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_open,tag=!cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] at @s run function cook:block/oven/interact_create_holder
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_open,tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] at @s run function cook:block/oven/interact_destroy_holder

#interaction
execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=!cook_has_item] run data remove entity @s Item.tag.display.Name

#end loop
scoreboard players set $in_0 cook_data -1
