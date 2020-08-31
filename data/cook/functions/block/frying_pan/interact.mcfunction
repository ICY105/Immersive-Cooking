
#modify data
execute if entity @s[tag=cook_rot_1] run data merge entity @s {ItemRotation:2}
execute if entity @s[tag=cook_rot_2] run data merge entity @s {ItemRotation:4}
execute if entity @s[tag=cook_rot_3] run data merge entity @s {ItemRotation:6}
execute if entity @s[tag=cook_rot_4] run data merge entity @s {ItemRotation:0}

#add/remove food
execute if entity @s[tag=!cook_done] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,predicate=!cook:holding_ingrediant,distance=..8] run function cook:block/frying_pan/interact_destroy_holder
execute if entity @s[tag=!cook_done] if entity @p[tag=cook_interact,predicate=cook:holding_ingrediant] run function cook:block/frying_pan/interact_create_holder

execute if entity @s[tag=cook_done] if entity @p[tag=cook_interact,predicate=du:entity/is_sneaking,distance=..8,nbt={SelectedItem:{ tag:{plate:1b} }}] run function cook:block/frying_pan/fill_plate

#interaction
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{spatula:1b} }}] positioned ~ ~-0.56 ~ as @e[tag=cook_pan_item,distance=..0.25,sort=nearest,limit=1] at @s run tp @e[tag=cook_pan_item,distance=..0.25,sort=furthest,limit=1] ~ ~0.03 ~
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{spatula:1b} }}] positioned ~ ~-0.56 ~ as @e[tag=cook_pan_item,distance=..0.25] at @s run tp @s ~ ~-0.03 ~
execute if entity @s[tag=cook_has_item] if entity @p[tag=cook_interact,predicate=!du:entity/is_sneaking,nbt={SelectedItem:{ tag:{spatula:1b} }}] if score @s cook_food matches -20.. run scoreboard players add @s cook_food 5

execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_data 0
execute if entity @s[tag=!cook_has_item] run scoreboard players set @s cook_food 0
execute if entity @s[tag=!cook_has_item] run data remove entity @s Item.tag.display.Name

#end loop
scoreboard players set $in_0 cook_data -1
