
execute store result score $temp_0 cook_data run data get entity @s HandItems[0].tag.cook.mashing
data modify storage cook:temp var set from entity @s HandItems[0].tag.cook.base_name
execute if score $temp_0 cook_data matches 1..4 run data modify entity @s HandItems[0].id set value "minecraft:firework_star"
execute if score $temp_0 cook_data matches 1..4 run data modify entity @s HandItems[0].tag merge value {HideFlags:32,Explosion:{Colors:[I;0]}}
execute if score $temp_0 cook_data matches 1..4 run data modify entity @s HandItems[0].tag.display.Name set value ""

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
execute if score $temp_0 cook_data matches 1 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.mashed","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}'
execute if score $temp_0 cook_data matches 1 run data modify entity @s HandItems[0].tag.cook.mashing set value -1b
execute if score $temp_0 cook_data matches 1 run data modify entity @s HandItems[0].tag.CustomModelData set value 6429404

execute if score $temp_0 cook_data matches 2 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.ground","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}'
execute if score $temp_0 cook_data matches 2 run data modify entity @s HandItems[0].tag.cook.mashing set value -1b
execute if score $temp_0 cook_data matches 2 run data modify entity @s HandItems[0].tag.CustomModelData set value 6429405

execute if score $temp_0 cook_data matches 3 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.juice","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}'
execute if score $temp_0 cook_data matches 3 run data modify entity @s HandItems[0].tag.cook.mashing set value -1b
execute if score $temp_0 cook_data matches 3 run data modify entity @s HandItems[0].tag.cook.type set value 7b
execute if score $temp_0 cook_data matches 3 run data remove entity @s HandItems[0].tag.Explosion
execute if score $temp_0 cook_data matches 3 run data remove entity @s HandItems[0].tag.CustomModelData
execute if score $temp_0 cook_data matches 3 run data modify entity @s HandItems[0].id set value "minecraft:potion"
execute if score $temp_0 cook_data matches 3 store result entity @s HandItems[0].tag.CustomPotionColor int 1 run scoreboard players get $temp_2 cook_data

execute if score $temp_0 cook_data matches 4 run data modify block -29999999 0 1602 Text1 set value '{"translate":"item.cook.flour","italic":false,"with":[{"nbt":"var","storage":"cook:temp","interpret":true}]}'
execute if score $temp_0 cook_data matches 4 run data modify entity @s HandItems[0].tag.cook.mashing set value -1b
execute if score $temp_0 cook_data matches 4 run data modify entity @s HandItems[0].tag.cook.mixing set value 1b
execute if score $temp_0 cook_data matches 4 run data modify entity @s HandItems[0].tag.cook.flour set value 1b
execute if score $temp_0 cook_data matches 4 run data modify entity @s HandItems[0].tag.CustomModelData set value 6429406


#end
execute if score $temp_0 cook_data matches 1..4 run data remove entity @s HandItems[0].tag.cooked.id
execute if score $temp_0 cook_data matches 1..4 run data remove entity @s HandItems[0].tag.cooked.tag.CustomModelData
execute if score $temp_0 cook_data matches 1..4 run data modify entity @s HandItems[0].tag.cook.cutting set value -1b
execute if score $temp_0 cook_data matches 1..4 run data modify entity @s HandItems[0].tag.display.Name set from block -29999999 0 1602 Text1
tag @s remove cook_temp
