
execute if entity @s[tag=cook_open_bag] run function cook:player/tools/close_bag

scoreboard players add @s cook_data 5
execute store result score $temp_6 cook_data run data get entity @s SelectedItem.tag.items[0].tag.cook.food
scoreboard players add $temp_6 cook_data 5

execute if score @s cook_data < $temp_6 cook_data anchored eyes run particle minecraft:item minecraft:bowl ^ ^-0.1 ^0.4 0.05 0.05 0.05 0 2
execute if score @s cook_data < $temp_6 cook_data run playsound minecraft:entity.generic.eat player @a ~ ~ ~ 1 1

execute if score @s cook_data >= $temp_6 cook_data run playsound minecraft:entity.player.burp player @a ~ ~ ~ 1 1
execute if score @s cook_data >= $temp_6 cook_data if data entity @s SelectedItem.tag.items[0].tag{bowl:2b} run give @p minecraft:bowl
execute if score @s cook_data >= $temp_6 cook_data if data entity @s SelectedItem.tag.items[0].tag{plate:2b} run loot give @s loot cook:tools/plate
execute if score @s cook_data >= $temp_6 cook_data if data entity @s SelectedItem.tag.items[0].tag.CustomPotionColor run give @s minecraft:glass_bottle
execute if score @s cook_data >= $temp_6 cook_data store result score $in_0 cook_data run data get entity @s SelectedItem.tag.items[0].tag.cook.food
execute if score @s cook_data >= $temp_6 cook_data store result score $in_1 cook_data run data get entity @s SelectedItem.tag.items[0].tag.cook.quality
execute if score @s cook_data >= $temp_6 cook_data run scoreboard players set $in_2 cook_data 0
execute if score @s cook_data >= $temp_6 cook_data run function cook:player/custom_food

execute if score @s cook_data >= $temp_6 cook_data run function du:player/inv/get_equipment
execute if score @s cook_data >= $temp_6 cook_data store result score $temp_0 cook_data run data get block -29999999 0 1601 Items[0].tag.items[0].Count
execute if score @s cook_data >= $temp_6 cook_data run scoreboard players remove $temp_0 cook_data 1
execute if score @s cook_data >= $temp_6 cook_data store result block -29999999 0 1601 Items[0].tag.items[0].Count byte 1 run scoreboard players get $temp_0 cook_data
execute if score @s cook_data >= $temp_6 cook_data if score $temp_0 cook_data matches 0 run data remove block -29999999 0 1601 Items[0].tag.items[0]
execute if score @s cook_data >= $temp_6 cook_data run function du:player/inv/restore_equipment

execute if score @s cook_data >= $temp_6 cook_data run scoreboard players set @s cook_data 0

