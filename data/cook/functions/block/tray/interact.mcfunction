
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:2}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:0}

#add/remove food
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8,nbt=!{SelectedItem:{ tag:{plate:1b} }}] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/tray/interact_destroy_holder
execute if score $in_0 cook_data matches 0 if entity @p[tag=cook_interact,predicate=cook:holding_ingrediant] run function cook:block/tray/interact_create_holder

execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,distance=..8,nbt={SelectedItem:{ tag:{plate:1b} }}] run function cook:block/tray/fill_plate

#end loop
scoreboard players set $in_0 cook_data -1
