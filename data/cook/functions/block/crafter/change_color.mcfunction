
scoreboard players set $temp_0 cook_data 6429003

execute as @p[tag=cook_interact,predicate=cook:holding_dye,distance=..8] run data modify storage cook:temp obj set from entity @s SelectedItem

execute if data storage cook:temp obj{id:"minecraft:white_dye"} run scoreboard players add $temp_0 cook_data 5
execute if data storage cook:temp obj{id:"minecraft:orange_dye"} run scoreboard players add $temp_0 cook_data 10
execute if data storage cook:temp obj{id:"minecraft:magenta_dye"} run scoreboard players add $temp_0 cook_data 15
execute if data storage cook:temp obj{id:"minecraft:light_blue_dye"} run scoreboard players add $temp_0 cook_data 20
execute if data storage cook:temp obj{id:"minecraft:yellow_dye"} run scoreboard players add $temp_0 cook_data 25
execute if data storage cook:temp obj{id:"minecraft:lime_dye"} run scoreboard players add $temp_0 cook_data 30
execute if data storage cook:temp obj{id:"minecraft:pink_dye"} run scoreboard players add $temp_0 cook_data 35
execute if data storage cook:temp obj{id:"minecraft:gray_dye"} run scoreboard players add $temp_0 cook_data 40
execute if data storage cook:temp obj{id:"minecraft:light_gray_dye"} run scoreboard players add $temp_0 cook_data 45
execute if data storage cook:temp obj{id:"minecraft:cyan_dye"} run scoreboard players add $temp_0 cook_data 50
execute if data storage cook:temp obj{id:"minecraft:purple_dye"} run scoreboard players add $temp_0 cook_data 55
execute if data storage cook:temp obj{id:"minecraft:blue_dye"} run scoreboard players add $temp_0 cook_data 60
execute if data storage cook:temp obj{id:"minecraft:brown_dye"} run scoreboard players add $temp_0 cook_data 65
execute if data storage cook:temp obj{id:"minecraft:green_dye"} run scoreboard players add $temp_0 cook_data 70
execute if data storage cook:temp obj{id:"minecraft:red_dye"} run scoreboard players add $temp_0 cook_data 75
execute if data storage cook:temp obj{id:"minecraft:black_dye"} run scoreboard players add $temp_0 cook_data 80

execute store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get $temp_0 cook_data

execute as @p[tag=cook_interact,predicate=cook:holding_dye,distance=..8] run function cook:utils/take_one_selected_item
