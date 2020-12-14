
#food replace
execute if entity @s[tag=cook_replace_food] run function cook:player/replace_food

#bonus saturation
execute if score $base.timer_20 du_data matches 0 if score @s cook_food matches 3.. run function cook:player/bonus_saturation

#place plate/bowl
execute if entity @s[tag=du_right_click] run function cook:player/use_item
execute if score @s cook_data matches 1.. run scoreboard players remove @s cook_data 1

#recipes
execute if entity @s[tag=cook_crafted] run function cook:player/craft/craft

#manual
execute if score $base.timer_20 du_data matches 10 if entity @s[tag=!cook_has_manual] run function give:items/cooking_manual
execute if score $base.timer_20 du_data matches 10 if data entity @s Inventory[{tag:{cook_manual:1b}}] run tag @s add cook_has_manual
execute if score $base.timer_20 du_data matches 10 store result score $temp_0 cook_data run data get entity @s SelectedItem.tag{cook_manual:1b}.version
execute if score $base.timer_20 du_data matches 10 if score $temp_0 cook_data matches 1..2 run clear @s minecraft:written_book{cook_manual:1b}
execute if score $base.timer_20 du_data matches 10 if score $temp_0 cook_data matches 1..2 run function give:items/cooking_manual

#food bag
execute if score @s cook_coas matches 1.. unless predicate du:entity/is_sneaking if entity @s[nbt={SelectedItem:{tag:{ food_bag:1b,items:[{}] }}},nbt=!{foodLevel:20}] run function cook:player/tools/eat_from_bag
execute if entity @s[tag=!cook_open_bag,tag=!du_moving] if predicate du:entity/is_sneaking if entity @s[nbt={SelectedItem:{tag:{ food_bag:1b }}}] run function cook:player/tools/open_bag
execute if entity @s[tag=cook_open_bag] run function cook:player/tools/bag_tick

#scores
scoreboard players set @s cook_coas 0
