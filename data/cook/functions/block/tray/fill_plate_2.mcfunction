
#add to list
data modify storage cook:temp list append from entity @s HandItems[0]

#get type
execute store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.type
execute if score $temp_0 cook_data matches 1 run scoreboard players add $temp_1 cook_data 1
execute if score $temp_0 cook_data matches 2 run scoreboard players add $temp_2 cook_data 1
execute if score $temp_0 cook_data matches 3 run scoreboard players add $temp_3 cook_data 1
execute if score $temp_0 cook_data matches 4 run scoreboard players add $temp_4 cook_data 1
execute if score $temp_0 cook_data matches 5 run scoreboard players add $temp_5 cook_data 1
execute if score $temp_0 cook_data matches 6..7 run scoreboard players add $temp_6 cook_data 1

#get food levels
execute store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.food
scoreboard players operation $temp_7 cook_data += $temp_0 cook_data

execute store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.quality
scoreboard players operation $temp_8 cook_data += $temp_0 cook_data

#color
execute store result score $in_0 cook_data run data get entity @s HandItems[0].tag.cook.color.red
execute store result score $in_1 cook_data run data get entity @s HandItems[0].tag.cook.color.green
execute store result score $in_2 cook_data run data get entity @s HandItems[0].tag.cook.color.blue

execute if data entity @s HandItems[0].tag.cook.color run scoreboard players add $out_0 cook_data 1

execute if data entity @s HandItems[0].tag.cook.color run scoreboard players operation $out_1 cook_data += $in_0 cook_data
execute if data entity @s HandItems[0].tag.cook.color run scoreboard players operation $out_2 cook_data += $in_1 cook_data
execute if data entity @s HandItems[0].tag.cook.color run scoreboard players operation $out_3 cook_data += $in_2 cook_data

#kill
kill @s
