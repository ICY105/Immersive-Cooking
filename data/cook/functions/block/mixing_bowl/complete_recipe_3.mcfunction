
#add to list
data modify storage cook:temp list append from entity @s Item.tag.item

#get food levels
execute store result score $temp_0 cook_data run data get entity @s Item.tag.item.tag.cook.food
execute if score $temp_0 cook_data > $temp_7 cook_data run scoreboard players operation $temp_7 cook_data = $temp_0 cook_data
execute if score $temp_0 cook_data > $temp_8 cook_data run scoreboard players operation $temp_8 cook_data = $temp_0 cook_data

execute store result score $temp_0 cook_data run data get entity @s Item.tag.item.tag.cooked.tag.cook.food
execute if score $temp_0 cook_data > $temp_8 cook_data run scoreboard players operation $temp_8 cook_data = $temp_0 cook_data

execute store result score $temp_0 cook_data run data get entity @s Item.tag.item.tag.cook.quality
execute if score $temp_0 cook_data > $temp_9 cook_data run scoreboard players operation $temp_9 cook_data = $temp_0 cook_data

#get type
execute store result score $temp_0 cook_data run data get entity @s Item.tag.item.tag.cook.type
execute if score $temp_0 cook_data matches 1 run scoreboard players add $temp_1 cook_data 1
execute if score $temp_0 cook_data matches 2 run scoreboard players add $temp_2 cook_data 1
execute if score $temp_0 cook_data matches 3 run scoreboard players add $temp_3 cook_data 1
execute if score $temp_0 cook_data matches 4 run scoreboard players add $temp_4 cook_data 1
execute if score $temp_0 cook_data matches 5 run scoreboard players add $temp_5 cook_data 1
execute if score $temp_0 cook_data matches 6..7 run scoreboard players add $temp_6 cook_data 1

#color
execute store result score $in_0 cook_data run data get entity @s Item.tag.item.tag.cook.color.red
execute store result score $in_1 cook_data run data get entity @s Item.tag.item.tag.cook.color.green
execute store result score $in_2 cook_data run data get entity @s Item.tag.item.tag.cook.color.blue

execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cook.color run scoreboard players add $out_0 cook_data 1

execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cook.color run scoreboard players operation $out_1 cook_data += $in_0 cook_data
execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cook.color run scoreboard players operation $out_2 cook_data += $in_1 cook_data
execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cook.color run scoreboard players operation $out_3 cook_data += $in_2 cook_data

execute unless score $temp_0 cook_data matches 7 unless data entity @s Item.tag.item.tag.cooked.tag.cook.color run scoreboard players operation $out_4 cook_data += $in_0 cook_data
execute unless score $temp_0 cook_data matches 7 unless data entity @s Item.tag.item.tag.cooked.tag.cook.color run scoreboard players operation $out_5 cook_data += $in_1 cook_data
execute unless score $temp_0 cook_data matches 7 unless data entity @s Item.tag.item.tag.cooked.tag.cook.color run scoreboard players operation $out_6 cook_data += $in_2 cook_data

execute store result score $in_0 cook_data run data get entity @s Item.tag.item.tag.cooked.tag.cook.color.red
execute store result score $in_1 cook_data run data get entity @s Item.tag.item.tag.cooked.tag.cook.color.green
execute store result score $in_2 cook_data run data get entity @s Item.tag.item.tag.cooked.tag.cook.color.blue

execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cooked.tag.cook.color run scoreboard players operation $out_4 cook_data += $in_0 cook_data
execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cooked.tag.cook.color run scoreboard players operation $out_5 cook_data += $in_1 cook_data
execute unless score $temp_0 cook_data matches 7 if data entity @s Item.tag.item.tag.cooked.tag.cook.color run scoreboard players operation $out_6 cook_data += $in_2 cook_data

#kill
kill @s
