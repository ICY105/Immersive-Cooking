
scoreboard players add @s cook_data 5
execute store result score $temp_6 cook_data run data get entity @s SelectedItem.tag.cook.food
scoreboard players add $temp_6 cook_data 5

execute if score @s cook_data < $temp_6 cook_data anchored eyes run particle minecraft:item minecraft:bowl ^ ^-0.1 ^0.4 0.05 0.05 0.05 0 2
execute if score @s cook_data < $temp_6 cook_data run playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1

execute if score @s cook_data >= $temp_6 cook_data run playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1
execute if score @s cook_data >= $temp_6 cook_data if data entity @s SelectedItem.tag{bowl:2b} run give @p minecraft:bowl
execute if score @s cook_data >= $temp_6 cook_data if data entity @s SelectedItem.tag{plate:2b} run loot give @s loot cook:tools/plate
execute if score @s cook_data >= $temp_6 cook_data store result score $in_0 cook_data run data get entity @s SelectedItem.tag.cook.food
execute if score @s cook_data >= $temp_6 cook_data store result score $in_1 cook_data run data get entity @s SelectedItem.tag.cook.quality
execute if score @s cook_data >= $temp_6 cook_data run scoreboard players set $in_2 cook_data 0
execute if score @s cook_data >= $temp_6 cook_data run function cook:utils/take_one_selected_item
execute if score @s cook_data >= $temp_6 cook_data run function cook:player/custom_food
execute if score @s cook_data >= $temp_6 cook_data run scoreboard players set @s cook_data 0
