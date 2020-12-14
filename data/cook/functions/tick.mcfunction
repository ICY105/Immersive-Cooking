
#campfires
execute if score $base.timer_100 du_data matches 0 as @e[tag=du_campfire] at @s if data block ~ ~ ~ Items run function cook:block/campfire/check_items

#oven
execute if score $base.timer_20 du_data matches 1 as @e[tag=cook_oven,tag=cook_has_item,tag=!cook_open] at @s run function cook:block/oven/tick

#smoking rack
execute if score $base.timer_20 du_data matches 2 as @e[tag=cook_smoking_rack,tag=cook_has_item] at @s run function cook:block/smoking_rack/tick

#cooking pot
execute if score $base.timer_20 du_data matches 3 as @e[tag=cook_pot,tag=cook_has_item] at @s run function cook:block/cooking_pot/tick

#frying pan
execute if score $base.timer_20 du_data matches 4 as @e[tag=cook_frying_pan,tag=cook_has_item] at @s run function cook:block/frying_pan/tick

#cleanup any abandoned bag entities
execute if score $base.timer_100 du_data matches 0 as @e[tag=cook_bag_interface] at @s unless entity @p[tag=cook_open_bag,distance=..12] run tp @s ~ -300 ~

#player
execute as @a at @s run function cook:player/tick
