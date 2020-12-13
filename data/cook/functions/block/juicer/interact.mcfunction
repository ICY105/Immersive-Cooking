
#modify data
data merge entity @s {ItemRotation:0b}

#add/remove food
scoreboard players set $in_0 cook_data 0
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_has_liquid] if entity @p[tag=cook_interact,nbt={SelectedItem:{id:"minecraft:glass_bottle"}},distance=..8] run function cook:block/juicer/destroy_liquid_holder
execute if score $in_0 cook_data matches 0 if entity @s[tag=!cook_has_item,tag=!cook_has_liquid] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=cook:holding_ingrediant,distance=..8] run function cook:block/juicer/create_item_holder
execute if score $in_0 cook_data matches 0 if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] run function cook:block/juicer/destroy_item_holder


#crafting
scoreboard players set @s[tag=!cook_has_item] cook_data 0
scoreboard players add @s[tag=cook_has_item] cook_data 1
execute if score @s cook_data matches 2..10 positioned ~ ~-0.55 ~-0.1 as @e[tag=cook_juicer_item,distance=..0.2] at @s run tp @s ~ ~-0.01 ~ ~90 ~
execute if score @s cook_data matches 10.. run function cook:block/juicer/complete_recipe
execute if score @s cook_data matches 10.. run scoreboard players set @s cook_data 0

#end loop
scoreboard players set $in_0 cook_data -1
