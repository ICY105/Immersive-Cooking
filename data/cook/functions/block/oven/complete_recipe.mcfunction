
#cooked tag
execute if data entity @s HandItems[0].tag.cooked run data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.cooked
execute if data entity @s HandItems[0].tag.cooked run data remove entity @s HandItems[0].tag.cooked

#apply color
execute if data entity @s HandItems[0].tag.cook.color store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.color.red
execute if data entity @s HandItems[0].tag.cook.color store result score $temp_1 cook_data run data get entity @s HandItems[0].tag.cook.color.green
execute if data entity @s HandItems[0].tag.cook.color store result score $temp_2 cook_data run data get entity @s HandItems[0].tag.cook.color.blue

scoreboard players set $temp_3 cook_data 0
scoreboard players set $temp_4 cook_data 256

scoreboard players operation $temp_3 cook_data += $temp_2 cook_data

scoreboard players operation $temp_1 cook_data *= $temp_4 cook_data
scoreboard players operation $temp_3 cook_data += $temp_1 cook_data

scoreboard players operation $temp_0 cook_data *= $temp_4 cook_data
scoreboard players operation $temp_0 cook_data *= $temp_4 cook_data
scoreboard players operation $temp_3 cook_data += $temp_0 cook_data

execute if data entity @s HandItems[0].tag.cook.color if data entity @s HandItems[{id:"minecraft:firework_star"}] run data modify entity @s HandItems[0].tag.Explosion set value {Colors:[I;0]}
execute if data entity @s HandItems[0].tag.cook.color if data entity @s HandItems[{id:"minecraft:firework_star"}] store result entity @s HandItems[0].tag.Explosion.Colors[0] int 1 run scoreboard players get $temp_3 cook_data

#finish
tag @s add cook_temp
data remove entity @s HandItems[0].tag.cook.baking
data remove entity @s HandItems[0].tag.cook.smoking
data modify entity @s CustomName set from entity @s HandItems[0].tag.cook.base_name
data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.baked","italic":false,"with":[{"selector":"@e[tag=cook_oven_item,tag=cook_temp]"}]}]'
data modify entity @s HandItems[0].tag.display.Name set from block -29999999 0 1602 Text1
tag @s remove cook_temp