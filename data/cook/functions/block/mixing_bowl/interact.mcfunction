
#modify data
data merge entity @s {ItemRotation:4b}

#add/remove food
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] unless data entity @p[tag=cook_interact] Inventory[35] run function cook:block/mixing_bowl/interact_destroy_holder
execute if score $in_0 cook_data matches 0 if entity @s[tag=!cook_done] if entity @p[tag=cook_interact,predicate=cook:holding_ingrediant] run function cook:block/mixing_bowl/interact_create_holder

#recipes
execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=cook_done] run scoreboard players set @s cook_data 0
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{spoon:1b} }}] run scoreboard players add @s cook_data 1
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{spoon:1b} }}] positioned ~ ~-1 ~ as @e[tag=cook_mixing_bowl_item,distance=..0.05] at @s run tp @s ~ ~ ~ ~90 ~

execute if score @s cook_data matches 10.. run function cook:block/mixing_bowl/complete_recipe

#end loop
scoreboard players set $in_0 cook_data -1
