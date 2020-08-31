
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:0}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:2}
execute if entity @s[tag=cook_rot_3] run data merge entity @s {ItemRotation:4}
execute if entity @s[tag=cook_rot_4] run data merge entity @s {ItemRotation:6}

#item add/remove tool
execute if entity @s[tag=!cook_frying_pan] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,distance=..8,nbt={SelectedItem:{ tag:{frying_pan:1b} }}] at @s run function cook:block/frying_pan/place
execute if entity @s[tag=cook_frying_pan,tag=!cook_has_item,tag=!cook_has_liquid] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] at @s run function cook:block/oven/retrieve_stove_tool

#interaction
execute if entity @s[tag=cook_frying_pan] run function cook:block/frying_pan/interact 

execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=!cook_has_item] run data remove entity @s Item.tag.display.Name

#end loop
scoreboard players set $in_0 cook_data -1
