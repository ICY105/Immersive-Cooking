
#modify data
data merge entity @s {ItemRotation:0b}

#open/close
scoreboard players set $temp_0 cook_data 0
execute if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,predicate=!cook:holding_dye,distance=..8] run scoreboard players set $temp_0 cook_data 1

execute if score $temp_0 cook_data matches 1 if entity @s[tag=cook_open] run tag @s add cook_toggle
execute if score $temp_0 cook_data matches 1 run tag @s add cook_open
execute if score $temp_0 cook_data matches 1 run tag @s[tag=cook_toggle] remove cook_open
execute if score $temp_0 cook_data matches 1 run tag @s remove cook_toggle

execute if score $temp_0 cook_data matches 1 store result score $temp_1 cook_data run data get entity @s Item.tag.CustomModelData
execute if score $temp_0 cook_data matches 1 if entity @s[tag=cook_open] run scoreboard players add $temp_1 cook_data 1
execute if score $temp_0 cook_data matches 1 if entity @s[tag=!cook_open] run scoreboard players remove $temp_1 cook_data 1
execute if score $temp_0 cook_data matches 1 store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_1 cook_data

#add/remove item
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_open,tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_dye] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/cabinet/destroy_item_holder
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_open,tag=!cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_dye,nbt={SelectedItem:{}}] run function cook:block/cabinet/create_item_holder

#change color
execute if entity @p[tag=cook_interact,predicate=cook:holding_dye,distance=..8] run function cook:block/cabinet/change_color

#end loop
scoreboard players set $in_0 cook_data -1
