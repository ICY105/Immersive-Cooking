
execute store result score $in_0 cook_data run data get entity @s SelectedItem.tag.CustomModelData

execute if entity @s[y_rotation=135..225] run scoreboard players set $in_1 cook_data 1
execute if entity @s[y_rotation=225.01..315] run scoreboard players set $in_1 cook_data 2
execute if entity @s[y_rotation=-44.99..45] run scoreboard players set $in_1 cook_data 3
execute if entity @s[y_rotation=45.01..135] run scoreboard players set $in_1 cook_data 4

execute if score $in_0 cook_data matches 6429000 run function cook:block/counter/place
execute if score $in_0 cook_data matches 6429001 run function cook:block/cabinet/place
execute if score $in_0 cook_data matches 6429004 run function cook:block/sink/place

execute if score $in_0 cook_data matches 6429085 run function cook:block/oven/place
execute if score $in_0 cook_data matches 6429087..6429094 run function cook:block/cutting_board/place
execute if score $in_0 cook_data matches 6429095 run function cook:block/mortar/place
execute if score $in_0 cook_data matches 6429096 run function cook:block/mixing_bowl/place
execute if score $in_0 cook_data matches 6429097 run function cook:block/smoking_rack/place
execute if score $in_0 cook_data matches 6429098 run function cook:block/cooking_pot/place
execute if score $in_0 cook_data matches 6429102 run function cook:block/tray/place
execute if score $in_0 cook_data matches 6429103 run function cook:block/juicer/place
