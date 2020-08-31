
#modify data
data merge entity @s {ItemRotation:0b}

#add/remove food
execute if entity @s[tag=!cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] run function cook:block/mortar/create_item_holder
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] run function cook:block/mortar/destroy_item_holder

#crafing
execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{pestle:1b} }}] run scoreboard players add @s cook_data 1

execute if score @s cook_data matches 6.. positioned ~ ~-0.75 ~-0.1 as @e[tag=cook_mortar_item,distance=..0.05] at @s run function cook:block/mortar/complete_recipe 
execute if score @s cook_data matches 6.. run scoreboard players set @s cook_data 0

#end loop
scoreboard players set $in_0 cook_data -1
