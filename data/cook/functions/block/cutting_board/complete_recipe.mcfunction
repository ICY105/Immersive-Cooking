


execute store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.cutting
data modify entity @s CustomName set from entity @s HandItems[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 1..3 run data modify entity @s HandItems[0].id set value "minecraft:firework_star"
execute if score $temp_0 cook_data matches 1..3 run data modify entity @s HandItems[0].tag merge value {HideFlags:32,Explosion:{Colors:[I;0]}}
execute if score $temp_0 cook_data matches 1..3 run data modify entity @s HandItems[0].tag.display.Name set value ""

#color
execute store result score $out_0 cook_data run data get entity @s HandItems[0].tag.cook.color.red
execute store result score $out_1 cook_data run data get entity @s HandItems[0].tag.cook.color.green
execute store result score $out_2 cook_data run data get entity @s HandItems[0].tag.cook.color.blue

scoreboard players set $temp_2 cook_data 0
scoreboard players set $temp_1 cook_data 256

scoreboard players operation $temp_2 cook_data += $out_2 cook_data

scoreboard players operation $out_1 cook_data *= $temp_1 cook_data
scoreboard players operation $temp_2 cook_data += $out_1 cook_data

scoreboard players operation $out_0 cook_data *= $temp_1 cook_data
scoreboard players operation $out_0 cook_data *= $temp_1 cook_data
scoreboard players operation $temp_2 cook_data += $out_0 cook_data

execute store result entity @s HandItems[0].tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_2 cook_data

#name and value
tag @s add cook_temp
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.sliced","italic":false,"with":[{"selector":"@e[tag=cook_cutting_board_item,tag=cook_temp]"}]}'
execute if score $temp_0 cook_data matches 1 run data modify entity @s HandItems[0].tag.cook.cutting set value 2b
execute if score $temp_0 cook_data matches 1 run data modify entity @s HandItems[0].tag.CustomModelData set value 6429401

execute if score $temp_0 cook_data matches 2 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.chopped","italic":false,"with":[{"selector":"@e[tag=cook_cutting_board_item,tag=cook_temp]"}]}'
execute if score $temp_0 cook_data matches 2 run data modify entity @s HandItems[0].tag.cook.cutting set value 3b
execute if score $temp_0 cook_data matches 2 run data modify entity @s HandItems[0].tag.CustomModelData set value 6429402

execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.minced","italic":false,"with":[{"selector":"@e[tag=cook_cutting_board_item,tag=cook_temp]"}]}'
execute if score $temp_0 cook_data matches 3 run data modify entity @s HandItems[0].tag.cook.cutting set value 4b
execute if score $temp_0 cook_data matches 3 run data modify entity @s HandItems[0].tag.CustomModelData set value 6429403

execute if score $temp_0 cook_data matches 1..3 run data remove entity @s HandItems[0].tag.cooked.id
execute if score $temp_0 cook_data matches 1..3 run data remove entity @s HandItems[0].tag.cooked.tag.CustomModelData
execute if score $temp_0 cook_data matches 1..3 run data modify entity @s HandItems[0].tag.cook.mashing set value -1b
execute if score $temp_0 cook_data matches 1..3 run data modify entity @s HandItems[0].tag.display.Name set from block -29999999 0 1602 Text1
tag @s remove cook_temp
