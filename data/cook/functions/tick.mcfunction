
#campfires
execute if score $base.timer_100 du_data matches 0 as @e[tag=du_campfire] at @s if data block ~ ~ ~ Items run function cook:block/campfire/check_items

#evaporation plates
execute if score $base.timer_100 du_data matches 1 as @e[tag=cook_evaporation] at @s run function cook:block/evaporation_plate/tick

#cleanup any abandoned bag entities
execute if score $base.timer_100 du_data matches 2 as @e[tag=cook_bag_interface] at @s unless entity @p[tag=cook_open_bag,distance=..12] run tp @s ~ -300 ~

#check wandering trader
execute if score $base.timer_100 du_data matches 3 as @e[type=wandering_trader,tag=!cook_has_trades] at @s run function cook:entities/add_wandering_trades

#oven
execute if score $base.timer_20 du_data matches 1 as @e[tag=cook_oven,tag=cook_has_item,tag=!cook_open] at @s run function cook:block/oven/tick

#smoking rack
execute if score $base.timer_20 du_data matches 2 as @e[tag=cook_smoking_rack,tag=cook_has_item] at @s run function cook:block/smoking_rack/tick

#cooking pot
execute if score $base.timer_20 du_data matches 3 as @e[tag=cook_pot,tag=cook_has_item] at @s run function cook:block/cooking_pot/tick

#frying pan
execute if score $base.timer_20 du_data matches 4 as @e[tag=cook_frying_pan,tag=cook_has_item] at @s run function cook:block/frying_pan/tick

#frying pan
execute if score $base.timer_20 du_data matches 5 as @e[tag=cook_fermenter] at @s positioned ^ ^ ^-0.5 run function cook:block/fermenter/tick

#smoker
execute if score $base.timer_20 du_data matches 6 as @e[tag=du_furnace] at @s if block ~ ~ ~ minecraft:smoker run function cook:block/smoker/check_items

#player
execute as @a at @s run function cook:player/tick
