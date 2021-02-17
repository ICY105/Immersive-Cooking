
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:0}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:2}

#item add/remove
scoreboard players set $in_0 cook_data 0
scoreboard players operation $in_1 cook_data = @s cook_data
execute if score $in_0 cook_data matches 0 if score @s cook_data matches 60.. if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,distance=..8,nbt={SelectedItem:{id:"minecraft:bowl"}}] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/cooking_pot/fill_bowl
execute if score $in_0 cook_data matches 0 if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/cooking_pot/interact_destroy_holder
execute if score $in_0 cook_data matches 0 if score @s cook_data matches ..60 if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] run function cook:block/cooking_pot/interact_create_holder

#interaction
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{spoon:1b} }}] positioned ~ ~-1.5 ~ as @e[tag=cook_pot_item,distance=..0.05] at @s run tp @s ~ ~ ~ ~90 ~

execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=!cook_has_item] run data remove entity @s Item.tag.display.Name

#end loop
scoreboard players set $in_0 cook_data -1
