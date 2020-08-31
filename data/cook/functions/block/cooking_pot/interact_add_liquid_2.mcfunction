
#get color
execute store result score $temp_0 cook_data run data get entity @s Item.tag.color.red
execute store result score $temp_1 cook_data run data get entity @s Item.tag.color.green
execute store result score $temp_2 cook_data run data get entity @s Item.tag.color.blue

execute store result score $temp_3 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.red
execute store result score $temp_4 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.green
execute store result score $temp_5 cook_data run data get block -29999999 0 1601 Items[0].tag.cook.color.blue

#set color
scoreboard players operation $temp_0 cook_data += $temp_3 cook_data
scoreboard players operation $temp_1 cook_data += $temp_4 cook_data
scoreboard players operation $temp_2 cook_data += $temp_5 cook_data

execute if score $temp_0 cook_data > $temp_3 cook_data run scoreboard players operation $temp_0 cook_data /= $cons.2 du_data
execute if score $temp_1 cook_data > $temp_4 cook_data run scoreboard players operation $temp_1 cook_data /= $cons.2 du_data
execute if score $temp_2 cook_data > $temp_5 cook_data run scoreboard players operation $temp_2 cook_data /= $cons.2 du_data

execute if data block -29999999 0 1601 Items[0].tag.cook.color store result entity @s Item.tag.color.red int 1 run scoreboard players get $temp_0 cook_data
execute if data block -29999999 0 1601 Items[0].tag.cook.color store result entity @s Item.tag.color.green int 1 run scoreboard players get $temp_1 cook_data
execute if data block -29999999 0 1601 Items[0].tag.cook.color store result entity @s Item.tag.color.blue int 1 run scoreboard players get $temp_2 cook_data

scoreboard players set $temp_3 cook_data 0
scoreboard players operation $temp_3 cook_data += $temp_2 cook_data
scoreboard players operation $temp_1 cook_data *= $cons.256 du_data
scoreboard players operation $temp_3 cook_data += $temp_1 cook_data
scoreboard players operation $temp_0 cook_data *= $cons.256 du_data
scoreboard players operation $temp_0 cook_data *= $cons.256 du_data
scoreboard players operation $temp_3 cook_data += $temp_0 cook_data

execute if data block -29999999 0 1601 Items[0].tag.cook.color store result entity @s Item.tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_3 cook_data
