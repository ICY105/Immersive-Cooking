
scoreboard players remove @s cook_food 3

execute store result score $temp_0 cook_data run data get block ~ ~ ~ Items[{Slot:6b}].Count
scoreboard players remove $temp_0 cook_data 1
execute store result block ~ ~ ~ Items[{Slot:6b}].Count byte 1 run scoreboard players get $temp_0 cook_data

data modify block ~ ~ ~ Items append from entity @s Item.tag.liquid_item
