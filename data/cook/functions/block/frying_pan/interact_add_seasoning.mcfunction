
#store data
scoreboard players set $temp_0 cook_data 0
execute as @e[tag=cook_pan_liquid,distance=..0.1] unless data entity @s Item.tag.seasoning_items[3] run function cook:block/frying_pan/interact_add_seasoning_2

#cleanup
tag @s add cook_has_seasoning
execute if score $temp_0 cook_data matches -1 as @p[tag=cook_interact] run function cook:utils/take_one_selected_item
scoreboard players set $temp_0 cook_data -1
