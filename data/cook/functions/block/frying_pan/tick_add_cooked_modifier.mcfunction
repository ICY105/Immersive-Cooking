
execute store success score $temp_0 cook_data if data entity @s HandItems[0].tag.cooked

#cooked tags
execute if score $temp_0 cook_data matches 1 if data entity @s HandItems[0].tag.cooked run data modify entity @s HandItems[0] merge from entity @s HandItems[0].tag.cooked
execute if score $temp_0 cook_data matches 1 if data entity @s HandItems[0].tag.cooked run data remove entity @s HandItems[0].tag.cooked

#apply color
execute if data entity @s HandItems[0].tag.cook.color store result score $utils.in_0 cook_data run data get entity @s HandItems[0].tag.cook.color.red
execute if data entity @s HandItems[0].tag.cook.color store result score $utils.in_1 cook_data run data get entity @s HandItems[0].tag.cook.color.green
execute if data entity @s HandItems[0].tag.cook.color store result score $utils.in_2 cook_data run data get entity @s HandItems[0].tag.cook.color.blue

function cook:utils/calc_color

execute if score $temp_0 cook_data matches 1 if data entity @s HandItems[0].tag.cook.color if data entity @s HandItems[{id:"minecraft:firework_star"}] run data modify entity @s HandItems[0].tag.Explosion set value {Colors:[I;0]}
execute if score $temp_0 cook_data matches 1 if data entity @s HandItems[0].tag.cook.color if data entity @s HandItems[{id:"minecraft:firework_star"}] store result entity @s HandItems[0].tag.Explosion.Colors[0] int 1 run scoreboard players get $utils.out_0 cook_data

#set name
execute if score $temp_0 cook_data matches 1 run data modify storage cook:temp var set from entity @s HandItems[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '[{"translate":"item.cook.fried","italic":"false","with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}]'
execute if score $temp_0 cook_data matches 1 run data modify entity @s HandItems[0].tag.display.Name set from block -29999999 0 1602 Text1
